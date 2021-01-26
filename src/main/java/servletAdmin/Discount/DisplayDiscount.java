package servletAdmin.Discount;

import beans.Discount;
import empty.DiscountEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DisplayDiscount", urlPatterns = "/display-load-discount")
public class DisplayDiscount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Discount> listDis = new DiscountEmpty().getAllDiscount();
        request.setAttribute("listDis",listDis);
        request.getRequestDispatcher("magiamgia.jsp").forward(request,response);
    }
}