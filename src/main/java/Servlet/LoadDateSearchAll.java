package Servlet;

import DAO.FormatedPriceDAO;
import beans.ImagesB;
import beans.Infor;
import beans.Menu;
import beans.Product;
import empty.ImagesEmpty;
import empty.InforEmpty;
import empty.MenuEmpty;
import empty.ProductEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet( urlPatterns = "/load-all-data-search")
public class LoadDateSearchAll extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search").trim();
        List<Product> list = new ProductEmpty().getAllProdcutByName(search);
        // lấy sản phẩm theo phân trang
        request.setAttribute("listPro", list);
        request.setAttribute("images",imagesB);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.getRequestDispatcher("searchall.jsp").forward(request,response);
    }
}