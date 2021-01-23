package servletAdmin.Order;

import beans.Order;
import beansAdmin.Dashboard.OrderDashboard;
import beansAdmin.Dashboard.OrderDetailDashboard;
import com.google.gson.Gson;
import empty.CartEmpty;
import emptyAdmin.DashBoard.OrderDashboardEmpty;
import emptyAdmin.DashBoard.OrderDetailDashboardEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DisplayOrder", urlPatterns = "/display-order")
public class DisplayOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<OrderDashboard> list10Pro = new OrderDashboardEmpty().getAllOrder();
        request.setAttribute("list10Pro",list10Pro);
        request.getRequestDispatcher("alldonhang.jsp").forward(request,response);
    }
}