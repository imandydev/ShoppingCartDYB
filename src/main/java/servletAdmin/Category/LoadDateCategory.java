package servletAdmin.Category;

import beans.Menu;
import beansAdmin.Category.CategoryAllAdmin;
import empty.MenuEmpty;
import emptyAdmin.Category.CategoryAdminEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

// load dữ liệu danh mục
@WebServlet(name = "LoadDateCategory", urlPatterns = "/load-data-category")
public class LoadDateCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CategoryAllAdmin> listCate = new CategoryAdminEmpty().getAllCategoryByAdmin();
        List<Menu> listMenu = new MenuEmpty().getAllMenuOnlyShop();
        request.setAttribute("listcate",listCate);
        request.setAttribute("listmenu",listMenu);
        request.getRequestDispatcher("danhmuc.jsp").forward(request,response);
    }
}