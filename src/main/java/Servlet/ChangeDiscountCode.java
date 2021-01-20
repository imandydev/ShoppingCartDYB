package Servlet;

import DAO.FormatedPriceDAO;
import beans.Cart;
import beans.Discount;
import beans.PriceDetailSingle;
import com.google.gson.Gson;
import empty.DiscountEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@WebServlet(urlPatterns = "/change-discount-code")
public class ChangeDiscountCode extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("change-code")) {
            long priceDis = Long.parseLong(request.getParameter("pricedis"));
            HttpSession session = request.getSession();
            Cart cart = (Cart)session.getAttribute("cart");
            // lấy tổng tiền đơn hàng trừ cho số tiền giảm giá
            long sum = 0;
            if (cart != null)
                sum = cart.total() - priceDis;
        //    long sum = cart.total() - priceDis;
            // trả về giá tiền đã format
            List<String> listTemp = new LinkedList<>();
            listTemp.add(FormatedPriceDAO.formatedGia(sum));
            listTemp.add(FormatedPriceDAO.formatedGia(priceDis));
            Gson json = new Gson();
            String discount = json.toJson(listTemp);
            response.setContentType("text/html");
            response.getWriter().write(discount);
        }
    }
}

