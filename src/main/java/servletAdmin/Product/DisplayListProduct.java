package servletAdmin.Product;

import beansAdmin.Product.ProductAllProduct;
import emptyAdmin.Product.ProductAdmin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DisplayListProduct", urlPatterns = "/list-product-manager")
public class DisplayListProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductAllProduct> listPro = new ProductAdmin().getAllProduct();
        request.setAttribute("listpro",listPro);
        request.getRequestDispatcher("allsanpham.jsp").forward(request,response);
    }
}