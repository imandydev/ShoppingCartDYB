package servletAdmin.Product;

import beans.Category;
import beans.DetailProduct;
import beansAdmin.Product.ProductAllProduct;
import empty.CategoryEmpty;
import emptyAdmin.DetailProduct.DetailProductAdmin;
import emptyAdmin.Product.ProductAdmin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DisplayEditProduct", urlPatterns = "/edit-product")
public class DisplayEditProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                int id = Integer.parseInt(request.getParameter("idPro"));
                ProductAllProduct pro = new ProductAdmin().getProductByIdPro(id);
                List<DetailProduct> listDetail = new DetailProductAdmin().getAllDetailProductByIdProduct(id);
                List<Category> listCate = new CategoryEmpty().getAllCategory();
                request.setAttribute("listcate",listCate);
                request.setAttribute("product", pro);
                request.setAttribute("listDe", listDetail);
                request.getRequestDispatcher("suathongtinsp.jsp").forward(request, response);
            }catch (Exception e) {
                request.getRequestDispatcher("404admin.jsp").forward(request, response);
            }
    }
}