package servletAdmin.Product;

import beans.Category;
import empty.CategoryEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DisplayProductAdd", urlPatterns = "/display-product-add")
public class DisplayProductAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> listCate = new CategoryEmpty().getAllCategory();
        request.setAttribute("listcate",listCate);
        request.getRequestDispatcher("themsp.jsp").forward(request,response);
    }
}