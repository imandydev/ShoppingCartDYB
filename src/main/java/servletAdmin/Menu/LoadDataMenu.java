package servletAdmin.Menu;

import beans.Menu;
import empty.MenuEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadDataMenu", urlPatterns = "/load-data-menu")
public class LoadDataMenu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Menu> listMenu = new MenuEmpty().getAllMenu();
        request.setAttribute("listmenu",listMenu);
        request.getRequestDispatcher("menu.jsp").forward(request,response);
    }
}