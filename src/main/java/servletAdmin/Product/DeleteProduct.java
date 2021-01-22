package servletAdmin.Product;

import com.google.gson.Gson;
import emptyAdmin.DetailProduct.DetailProductAdmin;
import emptyAdmin.Product.ProductAdmin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteProduct", urlPatterns = "/delete-product")
public class DeleteProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idpro"));
        boolean checkDelDe = new DetailProductAdmin().deleteDetailProductByIdProduct(id);
        boolean checkDelPro = new ProductAdmin().deleteProductByIdProduct(id);
        Gson json = new Gson();
        String output = json.toJson(false);
        if (checkDelDe && checkDelPro)
           output  = json.toJson(true);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}