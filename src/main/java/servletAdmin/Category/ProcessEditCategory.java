package servletAdmin.Category;

import beans.Category;
import com.google.gson.Gson;
import empty.CategoryEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProcessEditCategory", urlPatterns = "/process-edit-category")
public class ProcessEditCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idCate = Integer.parseInt(request.getParameter("idcate"));
        String name = request.getParameter("name");
        int idMenu = Integer.parseInt(request.getParameter("idmenu"));
        int order = Integer.parseInt(request.getParameter("order"));
        Category cate = new Category(idCate,idMenu,name,null,order);
        boolean checkUpdate = new CategoryEmpty().updateCate(cate);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}