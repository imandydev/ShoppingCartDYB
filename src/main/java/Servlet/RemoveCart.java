package Servlet;

import DAO.FormatedPriceDAO;
import beans.Cart;
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

@WebServlet(urlPatterns = "/remove-product")
public class RemoveCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("remove")) {
            int idDetail = Integer.parseInt(request.getParameter("iddetail"));
            HttpSession session = request.getSession();
            Cart c = Cart.getCart(session);
            c.remove(idDetail);
            List<String> list = new LinkedList<>();
            list.add(FormatedPriceDAO.formatedGia(c.total()));
            list.add(c.getData().size() +"");
            Gson json = new Gson();
            String listSize = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listSize);
        }
    }
}

