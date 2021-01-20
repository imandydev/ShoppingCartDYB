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
import java.util.List;

@WebServlet(urlPatterns = "/checkout")
public class Checkout extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("auth");
        if (action.equals("cart")) {
            List<Discount> listDiscount = null;
            if (user != null) {
                // lay ra danh sach ma giam gia dua vao id user
                listDiscount = new DiscountEmpty().getListDiscountCodeByIdUser(user.getId());
                request.setAttribute("listDiscount",listDiscount);
            } else
                request.setAttribute("listDiscount",listDiscount);
            doGetInfor(request, response);
        }
    }
    protected void doGetInfor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("images",imagesB);
        request.setAttribute("infor", infor);
        request.setAttribute("listMenu", valuesMenu);
        request.getRequestDispatcher("checkout.jsp").forward(request,response);
    }
}

