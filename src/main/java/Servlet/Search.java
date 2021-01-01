package Servlet;

import DAO.EvaluateDAO;
import DAO.FormatedPriceDAO;
import beans.*;
import empty.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

@WebServlet(urlPatterns = "/search")
public class Search extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private  ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    private FormatedPriceDAO formatedPrice = new FormatedPriceDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action  = request.getParameter("action");
        if (action.equalsIgnoreCase("search"))
            doGetSearchByName(request, response);
        else if (action.equalsIgnoreCase("fill-price"))
            doGetFillPrice(request,response);
        else if(action.equalsIgnoreCase("fillter-cate"))
            doGetFillCate(request,response);
        else if (action.equalsIgnoreCase("search-page") || action.equalsIgnoreCase("evaluate"))
            doGetPage(request,response);

    }


    protected void doGetSearchByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search").trim();
        List<Product> list = new ProductEmpty().getAllProdcutByName(search);
        request.setAttribute("searchRep", search);
        doGetPageSup(request,response,list);
    }



    protected void doGetFillPrice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchRep = request.getParameter("search-rep").trim();
        long priceStart = 0;
        long priceEnd = 0;
        if ( !request.getParameter("priceStart").equalsIgnoreCase(""))
            priceStart = Long.parseLong(request.getParameter("priceStart").trim());;
        if (!request.getParameter("priceEnd").equalsIgnoreCase(""))
            priceEnd =  Long.parseLong(request.getParameter("priceEnd").trim());
        List<Product> list = new ProductEmpty().getAllProdcutFillPrice(searchRep,priceStart,priceEnd);
        request.setAttribute("searchRep", searchRep);
        request.setAttribute("priceS",formatedPrice.formatedGia(priceStart));
        request.setAttribute("priceE",formatedPrice.formatedGia(priceEnd));
        doGetPageSup(request,response,list);

    }
    protected void doGetFillCate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchRep = request.getParameter("search-rep").trim();
        long priceStart = 0;
        long priceEnd = 0;
        if ( !request.getParameter("priceStart").equalsIgnoreCase(""))
            priceStart = Long.parseLong(request.getParameter("priceStart").trim());;
        if (!request.getParameter("priceEnd").equalsIgnoreCase(""))
            priceEnd =  Long.parseLong(request.getParameter("priceEnd").trim());
        int idCateSelec = Integer.parseInt(request.getParameter("idCateSelected"));
        List<Product> list = new ProductEmpty().getAllProdcutFillCate(searchRep,priceStart,priceEnd,idCateSelec);
        request.setAttribute("searchRep", searchRep);
        request.setAttribute("priceS",formatedPrice.formatedGia(priceStart));
        request.setAttribute("priceE",formatedPrice.formatedGia(priceEnd));
        request.setAttribute("idCate", idCateSelec);
        doGetPageSup(request,response,list);

    }

    protected void doGetPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchRep = request.getParameter("search-rep").trim();
        long priceStart = 0;
        long priceEnd = 0;
        if ( !request.getParameter("priceStart").equalsIgnoreCase(""))
            priceStart = Long.parseLong(request.getParameter("priceStart").trim());;
        if (!request.getParameter("priceEnd").equalsIgnoreCase(""))
            priceEnd =  Long.parseLong(request.getParameter("priceEnd").trim());
        List<Product> list= null;
        String idCateSelec = "";
        int ivaluate = 5;
        if (!request.getParameter("eva").equalsIgnoreCase(""))
            ivaluate = Integer.parseInt(request.getParameter("eva"));
        if (!request.getParameter("idCateSelected").equalsIgnoreCase("")) {
            idCateSelec = request.getParameter("idCateSelected");
            list = new ProductEmpty().getAllProdcutFillCate(searchRep, priceStart, priceEnd, Integer.parseInt(request.getParameter("idCateSelected")));
        } else
            list = new ProductEmpty().getAllProdcutFillPrice(searchRep,priceStart,priceEnd);
        new Product().setEvaListPro(list);
        list = new ProductEmpty().getAllProductsByEvaluate(list,ivaluate);
        request.setAttribute("searchRep", searchRep);
        request.setAttribute("priceS",formatedPrice.formatedGia(priceStart));
        request.setAttribute("priceE",formatedPrice.formatedGia(priceEnd));
        request.setAttribute("idCate", idCateSelec);
        request.setAttribute("eva", ivaluate);
        doGetPageSup(request,response,list);
    }
    //    Hỗ trợ
    protected void doGetSupport(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("id"));
        Menu menu = new MenuEmpty().getSingleMenuById(idMenu);
        List<Category> listCate = new CategoryEmpty().getAllCategoryByIdMenu(idMenu);
        List<ProductOther> listProOther = new ProductOtherEmpty().getAllProductEmptyByIdMenu(idMenu);
        request.setAttribute("listCate", listCate);
        request.setAttribute("images",imagesB);
        request.setAttribute("other", listProOther);
        request.setAttribute("menuSingle", menu);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        // kiểm tra đường dẫn
        request.setAttribute("checklink", true);
        request.getRequestDispatcher("shop.jsp").forward(request,response);
    }
    // Hỗ trợ phân trang
    protected void doGetPageSup(HttpServletRequest request, HttpServletResponse response, List<Product> list) throws ServletException, IOException {
        int pageNumber = Integer.parseInt(request.getParameter("page"));
        int pageStart = 0;
        int pageEnd =  pageNumber * ListProduct.sizeProIn1Page;
        if (list.size() < pageEnd) {
            pageStart = (pageNumber - 1) * ListProduct.sizeProIn1Page;
            pageEnd = list.size();
        }
        // lấy sản phẩm theo phân trang
        List<Product> listPro = new ProductEmpty().getAllProductByPage(list, pageStart, pageEnd);
        if (list.size()%ListProduct.sizeProIn1Page == 0)
            // số lượng phân trang
            request.setAttribute("pageNumber",list.size()/ListProduct.sizeProIn1Page);
        else
            request.setAttribute("pageNumber",(list.size()/ListProduct.sizeProIn1Page) + 1);
        request.setAttribute("listPro", listPro);
        request.setAttribute("pageStart", pageNumber);
        doGetSupport(request,response);
    }
    // in giá kiểu string đã format

}

