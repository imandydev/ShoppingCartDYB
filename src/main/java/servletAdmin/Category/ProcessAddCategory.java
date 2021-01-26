package servletAdmin.Category;

import beans.Category;
import com.google.gson.Gson;
import emptyAdmin.Category.CategoryAdminEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProcessAddCategory", urlPatterns = "/process-add-category")
public class ProcessAddCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int order = Integer.parseInt(request.getParameter("order"));
        int idMenu = Integer.parseInt(request.getParameter("idmenu"));
        Category cate  = new Category(0,idMenu,name,null,order);
        boolean checkUpdate = new CategoryAdminEmpty().insertCate(cate);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}