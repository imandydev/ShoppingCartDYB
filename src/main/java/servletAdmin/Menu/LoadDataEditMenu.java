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
// load lên thông tin menu khi ấn vào button edit
@WebServlet(name = "LoadDataEditMenu", urlPatterns = "/load-data-edit-menu")
public class LoadDataEditMenu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMenu = Integer.parseInt(request.getParameter("idmenu"));
        Menu menu = new MenuEmpty().getSingleMenuById(idMenu);
        Gson json = new Gson();
        String output = json.toJson(menu);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}