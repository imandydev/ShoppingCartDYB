package Servlet.QuenMatKhau;

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
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DisplayPass", urlPatterns = "/DisplayPass")
public class DisplayPass extends HttpServlet {
    private Infor infor = new InforEmpty().getInfor();
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    ImagesB images = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String key = request.getParameter("key");
        request.setAttribute("key", key);
        request.setAttribute("email", email);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.setAttribute("images", images);
        request.getRequestDispatcher("pass.jsp").forward(request,response);
    }
}