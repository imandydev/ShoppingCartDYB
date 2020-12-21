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
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/contact")
public class Contact extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int idMenu = Integer.parseInt(request.getParameter("id"));
        Menu menu = new MenuEmpty().getSingleMenuById(idMenu);
        if (action.equals("returns") && menu.getLink().equals("/contact"))
            doGetByIdMenu(request,response);
        else
            doGet404(request,response);
    }
    protected void doGetByIdMenu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("id"));
        Menu menu = new MenuEmpty().getSingleMenuById(idMenu);

        request.setAttribute("images",imagesB);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("menuSingle", menu);
        request.setAttribute("infor", infor);
        request.getRequestDispatcher("contact.jsp").forward(request,response);
    }
    protected void doGet404(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("images",imagesB);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.getRequestDispatcher("404.jsp").forward(request,response);
    }
}

