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

@WebServlet(name = "LoadDataEditCategory", urlPatterns = "/load-data-edit-category")
public class LoadDataEditCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idCate = Integer.parseInt(request.getParameter("idcate"));
        Category cate = new CategoryEmpty().getSingleCategoryById(idCate);
        Gson json = new Gson();
        String output = json.toJson(cate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}