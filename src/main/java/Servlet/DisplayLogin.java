package Servlet;

import beans.*;
import empty.ImagesEmpty;
import empty.InforEmpty;
import empty.MenuEmpty;
import empty.UserEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
// hiển thị màn hình log in
@WebServlet(urlPatterns = "/login")
public class DisplayLogin extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // nếu chưa đăng nhập thì hiển thị trang login
        if (session.getAttribute("auth") == null) {
            request.setAttribute("images", imagesB);
            request.setAttribute("infor", infor);
            request.setAttribute("listMenu", valuesMenu);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }else
            // ngược lại thì chuyền về trang chủ
            response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");
    }
}

