package servletAdmin.ProductOther;

import beans.Menu;
import beans.ProductOther;
import empty.MenuEmpty;
import empty.ProductOtherEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DisplayProductOther", urlPatterns = "/display-product-other")
public class DisplayProductOther extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductOther> listOther = new ProductOtherEmpty().getAllProductOther();
        List<Menu> listMenu = new MenuEmpty().getAllMenuOtherProduct();
        request.setAttribute("listMenu",listMenu);
        request.setAttribute("listOther",listOther);
        request.getRequestDispatcher("mathangkhac.jsp").forward(request,response);
    }
}