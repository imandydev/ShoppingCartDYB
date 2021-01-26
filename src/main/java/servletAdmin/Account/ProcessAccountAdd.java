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
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "ProcessAccoutnAdd", urlPatterns = "/process-account-add")
public class ProcessAccountAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        if (address.equalsIgnoreCase(""))
            address = "Chưa cập nhật địa chỉ";
        Long sdt = Long.parseLong(request.getParameter("sdt"));
        String pass = request.getParameter("pass");
        String loaiTaiKhoan = request.getParameter("loaitk");
        User user = new User(0,address,loaiTaiKhoan,username,email,sdt,pass,null,null);
        boolean checkInsert = false;
        try {
            checkInsert = new UserEmpty().insertUserByAdmin(user);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        Gson json = new Gson();
        String output = json.toJson(checkInsert);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}