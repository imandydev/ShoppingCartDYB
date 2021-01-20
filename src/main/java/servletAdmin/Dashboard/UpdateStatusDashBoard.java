package servletAdmin.Dashboard;

import com.google.gson.Gson;
import empty.CartEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
// cập nhật khi thay đổi trạng thái của một đơn hàng
@WebServlet(name = "UpdateStatusDashBoard", urlPatterns = "/update-status-dashboard")
public class UpdateStatusDashBoard extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idOrder = Integer.parseInt(request.getParameter("idorder"));
        String statusOrder = request.getParameter("statusorder");
        boolean checkUpdate = new CartEmpty().updateStatusOrder(idOrder,statusOrder);
        Gson json = new Gson();
        String result = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(result);
    }
}