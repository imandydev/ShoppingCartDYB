package Servlet;

import beans.*;
import empty.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.zip.CheckedOutputStream;

@WebServlet(urlPatterns = "/donmua")
public class ListDonMua extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("auth");
        DonMua x = new DonMua() ;
        if (session.getAttribute("auth") != null) {
            List<DonMua> d = new EmptyDonHang().getListDonMuaByidUser(user.getId());
            x.getListDMbyStatus(d);
            Collection<DonMua> sta1 = x.getListStatus1();
            Collection<DonMua> sta2 = x.getListStatus2();
            Collection<DonMua> sta3 = x.getListStatus3();
            Collection<DonMua> sta4 = x.getListStatus4();
            Collection<DonMua> sta5 = x.getListStatus5();
            request.setAttribute("images", imagesB);
            request.setAttribute("infor", infor);
            request.setAttribute("listMenu", valuesMenu);
            request.setAttribute("sta1",sta1);
            request.setAttribute("sta2",sta2);
            request.setAttribute("sta3",sta3);
            request.setAttribute("sta4",sta4);
            request.setAttribute("sta5",sta5);
            request.getRequestDispatcher("donmua.jsp").forward(request, response);
        }else
            // ngược lại thì chuyền về trang login
            response.sendRedirect("/ProjectFinalTest_war_exploded/login");
    }
}
