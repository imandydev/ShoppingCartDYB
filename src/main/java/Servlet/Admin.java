package Servlet;

import beansAdmin.Dashboard.OrderDashboard;
import emptyAdmin.DashBoard.OrderDashboardEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/admin")
public class Admin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<OrderDashboard> list10Pro = new OrderDashboardEmpty().getTop10Order();
        request.setAttribute("list10Pro",list10Pro);
        request.getRequestDispatcher("admin.jsp").forward(request,response);
    }
}

