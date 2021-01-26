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
import java.security.NoSuchAlgorithmException;

@WebServlet(urlPatterns = "/update-profile")
public class UpdateProfile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("auth");
        if (user != null) {
            int id = user.getId();
            UserEmpty updateUser = new UserEmpty();
            // nếu là update profile
            if (action.equalsIgnoreCase("set-profile")) {
                String email = request.getParameter("email");
                String sdt = request.getParameter("sdt");
                String emailbf = request.getParameter("emailbf");
                if (updateUser.updateProfile(email, sdt, id,emailbf)) {
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
                if (address.equalsIgnoreCase(""))
                    address = "Chưa cập nhật địa chỉ";
                if (updateUser.updateAddress(id, address)) {
                    session.removeAttribute("auth");
                    user.setDiaChi(address);
                    session.setAttribute("auth", user);
                    response.sendRedirect("/ProjectFinalTest_war_exploded/address");
                } else
                    response.sendRedirect("/ProjectFinalTest_war_exploded/address");
            } else if (action.equalsIgnoreCase("set-pass")) {
                String oldPass = request.getParameter("oldpass");
                String newPass = request.getParameter("newpass");
                String verifyPass = request.getParameter("verifypass");
                try {
                    User user_temp = new UserEmpty().getUserByUserNamePass(user.getUsername(), oldPass);
                    if (user_temp != null && (newPass.equals(verifyPass))) {
                        if (updateUser.updatePass(user_temp.getId(), newPass)) {
                            session.removeAttribute("auth");
                            user.setPass(newPass);
                            session.setAttribute("auth", user);
                            response.sendRedirect("/ProjectFinalTest_war_exploded/changepass");
                        } else
                            response.sendRedirect("/ProjectFinalTest_war_exploded/changepass");
                    } else
                        response.sendRedirect("/ProjectFinalTest_war_exploded/changepass");
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }
            }
        } else
            response.sendRedirect("/ProjectFinalTest_war_exploded/login");
    }

}

