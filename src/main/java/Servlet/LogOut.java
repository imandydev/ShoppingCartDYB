package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
// xử lý đăng xuất
@WebServlet(urlPatterns = "/logout")
public class LogOut extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // khi chưa đăng nhập thì chuyển về trang chủ giữ nguyên session
        if (session.getAttribute("auth") == null)
            response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");
        else {
            // ngược lại thì xóa session
            session.invalidate();
            response.sendRedirect("/ProjectFinalTest_war_exploded/login");
        }
    }
}

