package Servlet;

import beans.User;
import com.google.gson.Gson;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(urlPatterns = "/update-profile")
public class UpdateProfile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        User user =  user = (User)session.getAttribute("auth");
        int id = user.getId();
        UserEmpty updateUser = new UserEmpty();
        // nếu là update profile
        if (action.equalsIgnoreCase("set-profile")) {
            String email = request.getParameter("email");
            String sdt = request.getParameter("sdt");
            if (updateUser.updateProfile(email,sdt,id)) {
                session.removeAttribute("auth");
                user.setEmail(email);
                user.setSdt(Long.parseLong(sdt));
                session.setAttribute("auth", user);
                response.sendRedirect("/ProjectFinalTest_war_exploded/profile");
            } else
                response.sendRedirect("/ProjectFinalTest_war_exploded/profile");
            // nếu là update địa chỉ
        } else if (action.equalsIgnoreCase("set-address")) {
            String address = request.getParameter("address");
            System.out.println(address);
            if(updateUser.updateAddress(id, address)) {
                session.removeAttribute("auth");
                user.setDiaChi(address);
                session.setAttribute("auth", user);
                response.sendRedirect("/ProjectFinalTest_war_exploded/address");
            } else
                response.sendRedirect("/ProjectFinalTest_war_exploded/address");
        }
    }

}

