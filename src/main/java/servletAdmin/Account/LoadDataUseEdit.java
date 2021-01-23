package servletAdmin.Account;

import beans.User;
import com.google.gson.Gson;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoadDataUseEdit", urlPatterns = "/load-data-by-id")
public class LoadDataUseEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idUser = Integer.parseInt(request.getParameter("iduser"));
        User user = new UserEmpty().getUserByIdUser(idUser);
        Gson json = new Gson();
        String output = json.toJson(user);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}