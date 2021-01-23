package servletAdmin.Account;

import com.google.gson.Gson;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProcessDeleteAccount", urlPatterns = "/process-delete-account")
public class ProcessDeleteAccount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idUser = Integer.parseInt(request.getParameter("iduser"));
        boolean checkDel = new UserEmpty().deleteUserByIdUser(idUser);
        Gson json = new Gson();
        String output = json.toJson(checkDel);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}