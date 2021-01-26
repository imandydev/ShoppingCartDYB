package servletAdmin.Menu;

import beans.Menu;
import com.google.gson.Gson;
import empty.MenuEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProcessEditMenu", urlPatterns = "/process-edit-menu")
public class ProcessEditMenu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("idmenu"));
        String name = request.getParameter("name");
        int order = Integer.parseInt(request.getParameter("order"));
        int orderbf = Integer.parseInt(request.getParameter("orderbf"));
        Menu menu = new Menu(idMenu,name,null,null,order);
        boolean checkUpdate = new MenuEmpty().updateMenu(menu,orderbf);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}