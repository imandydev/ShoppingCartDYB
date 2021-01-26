package Servlet;

import beans.*;
import empty.DiscountEmpty;
import empty.ImagesEmpty;
import empty.InforEmpty;
import empty.MenuEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

@WebServlet(urlPatterns = "/magiamgia")
public class ListgiamGia extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("auth");
        Collection<Discount> discounts = new DiscountEmpty().getListDiscountCodeByIdUser(user.getId());
        if (session.getAttribute("auth") != null) {
            request.setAttribute("images", imagesB);
            request.setAttribute("infor", infor);
            request.setAttribute("listMenu", valuesMenu);
            request.setAttribute("listgiamgia",discounts);
            request.getRequestDispatcher("magiamgia.jsp").forward(request, response);

        }else
            // ngược lại thì chuyền về trang login
            response.sendRedirect("/ProjectFinalTest_war_exploded/login");
    }


}
