package Servlet.QuenMatKhau;

import DAO.PasswordEncode;
import DAO.SendMail;
import com.google.gson.Gson;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "SendEmailVerify", urlPatterns = "/SendEmailVerify")
public class SendEmailVerify extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mail = request.getParameter("email");
        boolean checkEmail = new UserEmpty().checkEmailEmpty(mail);
        boolean checkUpKey = false;
        if (checkEmail) {
            try {
                String passEncode = PasswordEncode.passwordSHA512(mail);
                checkUpKey = new UserEmpty().updateKey(passEncode,mail);
                checkUpKey = SendMail.sendMail(passEncode,mail);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        Gson json = new Gson();
        String listSize = json.toJson(checkUpKey);
        response.setContentType("text/html");
        response.getWriter().write(listSize);
    }
}