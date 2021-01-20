package Servlet;

import beans.Role;
import beans.User;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(urlPatterns = "/access-login")
public class ProcessLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username").trim();
        String pass = request.getParameter("pass").trim();
        HttpSession session = request.getSession();
        // tạo user bằng cách tìm trong db theo tên và pass vừa nhập vào
        User user = null;
        try {
            user = new UserEmpty().getUserByUserNamePass(name,pass);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        if (user != null) {
            // set quyền đăng nhập cho user
            user.setRole(new Role(user.getLoaiTaiKhoan()));
            // commit lên session
            session.setAttribute("auth",user);
            // chuyển sang trang chủ
            if (user.getLoaiTaiKhoan().equals("admin"))
                response.sendRedirect("/ProjectFinalTest_war_exploded/admin");
            else
                response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");
        } else
            // vẫn ở trang login
            response.sendRedirect("/ProjectFinalTest_war_exploded/login");


    }
}

