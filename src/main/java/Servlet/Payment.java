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
        int idTemp = Integer.parseInt(request.getParameter("iddis"));
        long priceDis = Long.parseLong(request.getParameter("price_dis"));
        String ghiChu = request.getParameter("ghichu");
        // kiểm tra đã thanh toán thành công hay chưa
        int checkPayment = 0;
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        User user = (User)session.getAttribute("auth");
       if (user != null && cart != null) {
            // nếu đã có sản phẩm trong giỏ hàng và có địa chỉ
           if (cart.getData().size() > 0 && !user.getDiaChi().equalsIgnoreCase("Chưa cập nhật địa chỉ")) {
               long sum = cart.total() - priceDis;
               new CartEmpty().insertCart(user.getId(), ghiChu, idTemp, sum, user.getDiaChi());
               Order order = new CartEmpty().getOrder();
               for (DetailProduct item : cart.getData()) {
                   if (item.getGiamGia() == 0)
                       new CartDetail().insertDetailCart(order.getId(), item.getId(), item.getQuantity(), item.getGia() * item.getQuantity());
                   else
                       new CartDetail().insertDetailCart(order.getId(), item.getId(), item.getQuantity(), item.getGiaGiam() * item.getQuantity());
               }
               cart.removeAll();
               cart.commit(session);
               checkPayment = 1;
               // nếu chưa có hàng trong giỏ
           } else if (cart.getData().size() <= 0)
               checkPayment = 2;
           // nếu chưa có địa chỉ
           else if (user.getDiaChi().equals("Chưa cập nhật địa chỉ"))
               checkPayment = 3;
           // nếu đẵ đăng nhập mà chưa có giỏ hàng hoặc nếu có giỏ hàng và giỏ hàng chưa có hàng
        } else if (user != null && cart == null || (cart != null && cart.getData().size() <= 0))
            checkPayment = 2;
        Gson json = new Gson();
        String change = json.toJson(checkPayment);
        response.setContentType("text/html");
        response.getWriter().write(change);
    }



}

