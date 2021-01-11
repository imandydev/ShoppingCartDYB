package Servlet;

import beans.ImagesB;
import beans.Infor;
import beans.Menu;
import empty.ImagesEmpty;
import empty.InforEmpty;
import empty.MenuEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
// Hiển thị thông tin cá nhân user
@WebServlet(urlPatterns = "/profile")
public class DisplayProfile extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // nếu đã đăng nhập thì hiển thị thông tin
        if (session.getAttribute("auth") != null) {
            request.setAttribute("images", imagesB);
            request.setAttribute("infor", infor);
            request.setAttribute("listMenu", valuesMenu);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        }else
            // ngược lại thì chuyền về trang login
            response.sendRedirect("/ProjectFinalTest_war_exploded/login");
    }
}

