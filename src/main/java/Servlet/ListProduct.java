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
import java.util.LinkedList;
import java.util.List;

@WebServlet( name = "ListProduct", urlPatterns = "/listproducts")
public class ListProduct extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private  ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    public static final int sizeProIn1Page = 12;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        int idMenu = Integer.parseInt(request.getParameter("id"));
        Menu menu = new MenuEmpty().getSingleMenuById(idMenu);
        if (action.equalsIgnoreCase("returns")  && menu.getLink().equals("/listproducts"))
            doGetById(request,response);
        else
            doGet404(request,response);

    }
    // tìm sản phẩm theo id menu
    protected void doGetById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("id"));
        int pageNumber = Integer.parseInt(request.getParameter("page"));
        List<Product> list = new ProductEmpty().getAllProdcutByIdMenu(idMenu);
        // phân trang
        int pageStart = 0;
        int pageEnd =  pageNumber * sizeProIn1Page;;
        if (list.size() < pageEnd) {
            pageStart = (pageNumber - 1) * sizeProIn1Page;
            pageEnd = list.size();
        }
        // lấy sản phẩm theo phân trang
        List<Product> listPro = new ProductEmpty().getAllProductByPage(list, pageStart, pageEnd);
        if (list.size()%sizeProIn1Page == 0)
            // số lượng phân trang
            request.setAttribute("pageNumber",list.size()/sizeProIn1Page);
        else
        request.setAttribute("pageNumber",(list.size()/sizeProIn1Page) + 1);
        // trả về phân trang hiện tại
        request.setAttribute("pageStart", pageNumber);
        request.setAttribute("listPro", listPro);
        request.setAttribute("searchRep", "");
        doGetSupport(request,response);

    }
    // đường dẫn sai
    protected void doGet404(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.setAttribute("images",imagesB);
        request.getRequestDispatcher("404.jsp").forward(request,response);
    }


//    // hỗ trợ các func doget
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
        request.setAttribute("checklink", false);
        request.getRequestDispatcher("shop.jsp").forward(request,response);
    }

}

