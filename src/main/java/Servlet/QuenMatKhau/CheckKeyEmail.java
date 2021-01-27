package Servlet.QuenMatKhau;

import DAO.SendMail;
import beans.ImagesB;
import beans.Infor;
import beans.Menu;
import empty.ImagesEmpty;
import empty.InforEmpty;
import empty.MenuEmpty;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CheckKeyEmail", urlPatterns = "/CheckKeyEmail")
public class CheckKeyEmail extends HttpServlet {
    private Infor infor = new InforEmpty().getInfor();
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    ImagesB images = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String getKey = request.getParameter("key-code");
        String mail = request.getParameter("email");
        boolean checkKey = new UserEmpty().checkKeyEmpty(getKey);
        if (checkKey)
            SendMail.sendMailChangePass(mail,getKey);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.setAttribute("images", images);
        request.getRequestDispatcher("acceptemail.jsp").forward(request,response);
    }
}