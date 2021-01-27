package Servlet.QuenMatKhau;

import com.google.gson.Gson;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "ProcessChangePass", urlPatterns = "/ProcessChangePass")
public class ProcessChangePass extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String key = request.getParameter("key");
        boolean checkKey = new UserEmpty().checkKeyEmpty(key);
        if (checkKey){
            try {
                checkKey = new UserEmpty().updatePassForget(email,pass);
                if (checkKey)
                    checkKey = new UserEmpty().updateKeyAfterCheck(key);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        Gson json = new Gson();
        String listSize = json.toJson(checkKey);
        response.setContentType("text/html");
        response.getWriter().write(listSize);
    }
}