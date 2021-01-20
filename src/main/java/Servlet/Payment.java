package Servlet;

import beans.Cart;
import beans.DetailProduct;
import beans.Order;
import beans.User;
import com.google.gson.Gson;
import empty.CartDetail;
import empty.CartEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

@WebServlet(urlPatterns = "/payment-cart")
public class Payment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idTemp = request.getParameter("iddis");
        long priceDis = Long.parseLong(request.getParameter("price_dis"));
        String ghiChu = request.getParameter("ghichu");
        boolean checkPayment = false;
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        User user = (User)session.getAttribute("auth");
        if (user == null)
            response.sendRedirect("/ProjectFinalTest_war_exploded/login");
        else if (cart.getData().size() > 0) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            if (idTemp.equals(null))
                new CartEmpty().insertCart(user.getId(),ghiChu,null,priceDis);
            else
                new CartEmpty().insertCart(user.getId(),ghiChu,idTemp,priceDis);
            Order order = new CartEmpty().getOrder(user.getId(),ghiChu,priceDis);
            for (DetailProduct item: cart.getData()) {
                if (item.getGiaGiam() <= 0)
                    new CartDetail().insertDetailCart(order.getId(),item.getId(),item.getQuantity(),item.getGia());
                else
                    new CartDetail().insertDetailCart(order.getId(),item.getId(),item.getQuantity(),item.getGiaGiam());
            }
            cart.removeAll();
            cart.commit(session);
            checkPayment = true;
        }
        Gson json = new Gson();
        String change = json.toJson(checkPayment);
        response.setContentType("text/html");
        response.getWriter().write(change);
    }
}

