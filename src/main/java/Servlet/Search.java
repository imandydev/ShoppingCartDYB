package Servlet;

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
    }
    protected void doGetSearchByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("id"));
        String search = request.getParameter("search").trim();
        Menu menu = new MenuEmpty().getSingleMenuById(idMenu);
        List<Product> listPro = new ProductEmpty().getAllProdcutByName(search);
        request.setAttribute("listPro", listPro);
        request.setAttribute("searchRep", search);

        doGetSupport(request,response);
    }
    protected void doGetFillPrice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("id"));
        String searchRep = request.getParameter("search-rep").trim();
        double priceStart = 0;
        double priceEnd = 0;
        if ( !request.getParameter("priceStart").equalsIgnoreCase(""))
            priceStart = Double.parseDouble(request.getParameter("priceStart").trim());;
        if (!request.getParameter("priceEnd").equalsIgnoreCase(""))
            priceEnd = Double.parseDouble(request.getParameter("priceEnd").trim());
        List<Product> listPro = new ProductEmpty().getAllProdcutFillPrice(searchRep,priceStart,priceEnd);
        request.setAttribute("listPro", listPro);
        request.setAttribute("searchRep", searchRep);
        request.setAttribute("priceS",formatedGia(priceStart));
        request.setAttribute("priceE",formatedGia(priceEnd));

        doGetSupport(request,response);
    }
    protected void doGetFillCate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("id"));
        String searchRep = request.getParameter("search-rep").trim();
        double priceStart = 0;
        double priceEnd = 0;
        if ( !request.getParameter("priceStart").equalsIgnoreCase(""))
            priceStart = Double.parseDouble(request.getParameter("priceStart").trim());;
        if (!request.getParameter("priceEnd").equalsIgnoreCase(""))
            priceEnd = Double.parseDouble(request.getParameter("priceEnd").trim());
        int idCateSelec = Integer.parseInt(request.getParameter("idCateSelected"));
        List<Product> listPro = new ProductEmpty().getAllProdcutFillCate(searchRep,priceStart,priceEnd,idCateSelec);
        request.setAttribute("listPro", listPro);
        request.setAttribute("searchRep", searchRep);
        request.setAttribute("priceS",formatedGia(priceStart));
        request.setAttribute("priceE",formatedGia(priceEnd));
        request.setAttribute("idCate", idCateSelec);
        doGetSupport(request,response);
    }
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
    public String formatedGia(double gia) {
        DecimalFormat formatter = new DecimalFormat("###");
        return formatter.format(gia);
    }
}

