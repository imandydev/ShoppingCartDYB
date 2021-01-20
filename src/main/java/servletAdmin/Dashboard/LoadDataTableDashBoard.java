package servletAdmin.Dashboard;

import beans.Order;
import beansAdmin.Dashboard.OrderDetailDashboard;
import com.google.gson.Gson;
import empty.CartEmpty;
import emptyAdmin.DashBoard.OrderDetailDashboardEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
// load dữ liệu khi click vào button sửa
@WebServlet(name = "LoadDataTableDashBoard", urlPatterns = "/load-data-table-dashboard")
public class LoadDataTableDashBoard extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int idOrder = Integer.parseInt(request.getParameter("idOrder"));
            Order order = new CartEmpty().getOrderById(idOrder);
            List<OrderDetailDashboard> listOrderDetail = new OrderDetailDashboardEmpty().getListDetailOrders(idOrder);
        Gson json = new Gson();
        ArrayList<Object> obj_arr = new ArrayList<Object>();
        obj_arr.add(order);
        obj_arr.add(listOrderDetail);
        obj_arr.add(listOrderDetail.size());
        String bothJson = json.toJson(obj_arr);
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(bothJson);


    }
}