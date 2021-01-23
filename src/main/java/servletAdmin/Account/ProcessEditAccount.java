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
// xử lý khi lưu chỉnh sửa sản phẩm
@WebServlet(name = "ProcessEditAccount", urlPatterns = "/process-edit-account")
public class ProcessEditAccount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idUser = Integer.parseInt(request.getParameter("iduser"));
        String loaiTaiKhoan = request.getParameter("loaitaikhoan");
        String email = request.getParameter("email");
        long sdt = Long.parseLong(request.getParameter("sdt"));
        String address = request.getParameter("address");
        String emailbf = request.getParameter("emailbf");
        User user = new User(idUser,address,loaiTaiKhoan,null,email,sdt,null,null,null);
        boolean checkUpdate = new UserEmpty().updateProfileByAdmin(user,emailbf);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}