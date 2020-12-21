package Servlet;

import beans.*;
import beans.Menu;
import empty.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListNews", urlPatterns = "/listnews")
public class ListNews extends HttpServlet {
    private Infor infor = new InforEmpty().getInfor();
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            int idMenu = Integer.parseInt(request.getParameter("id"));
            Menu menu = new MenuEmpty().getSingleMenuById(idMenu);
            if (action.equals("returns") && menu.getLink().equals("/listnews"))
            doGetByIdMenu(request,response);
            else
                doGet404(request,response);
    }
    protected void doGetByIdMenu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // id menu duoc gui ve
        int idMenu = Integer.parseInt(request.getParameter("id"));
        // tim menu theo id duoc gui ve
        Menu menu = new MenuEmpty().getSingleMenuById(idMenu);
        //danh sach tin
        List<News> valuesNews = new NewsEmpty().getAllNews();
        // mat hang khac
        List<ProductOther> listProOther = new ProductOtherEmpty().getAllProductEmptyByIdMenu(idMenu);
        // images slide
        List<ImagesB> listImages = new ImagesEmpty().getImagesByCate("Trang Chủ");
        request.setAttribute("images", listImages);
        request.setAttribute("other", listProOther);
        request.setAttribute("menuSingle", menu);
        request.setAttribute("list", valuesNews);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }
    protected void doGet404(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImagesB images = new ImagesEmpty().getImagesSingle("Các mục khác");
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.setAttribute("images", images);
        request.getRequestDispatcher("404.jsp").forward(request,response);
    }
}

