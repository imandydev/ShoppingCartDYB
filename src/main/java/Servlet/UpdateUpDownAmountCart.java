package Servlet;

import DAO.FormatedPriceDAO;
import beans.Cart;
import beans.DetailProduct;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@WebServlet(urlPatterns = "/upordown")
public class UpdateUpDownAmountCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("amount")) {
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int idDetail = Integer.parseInt(request.getParameter("iddetail"));
            HttpSession session = request.getSession();
            Cart c = Cart.getCart(session);
            c.updateQuantity(idDetail, quantity);
            List<String> list = new LinkedList<>();
            list.add(FormatedPriceDAO.formatedGia(c.total()));

            Gson json = new Gson();
            String listSize = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listSize);
        }
    }
}

