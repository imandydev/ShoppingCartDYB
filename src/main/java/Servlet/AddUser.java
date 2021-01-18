package Servlet;

import com.google.gson.Gson;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(urlPatterns = "/create-account")
public class AddUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String sdt = request.getParameter("sdt");
        String pass = request.getParameter("pass");
        String verifyPass = request.getParameter("verify-pass");
        boolean checkCreate = false;
        if (pass.equals(verifyPass)) {
            try {
                checkCreate = new UserEmpty().insertUser(username, email, sdt, pass);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        Gson json = new Gson();
        String change = json.toJson(checkCreate);
        response.setContentType("text/html");
        response.getWriter().write(change);
    }
}

