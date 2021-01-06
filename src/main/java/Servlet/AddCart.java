package Servlet;

import beans.Cart;
import beans.DetailProduct;
import beans.Product;
import com.google.gson.Gson;
import empty.DetailProductEmpty;
import empty.ProductEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(urlPatterns = "/cart/add")
public class AddCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id  = Integer.parseInt(request.getParameter("id"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        if(id == 0)
            response.sendRedirect("/listproducts?action=returns&id=2&page=1");
        DetailProduct p = new DetailProductEmpty().getProductBy(id,color,size);
        if (p == null) {
            response.sendRedirect("/listproducts?action=returns&id=2&page=1");
            return;
        }
        // trạng thái thêm thành công or thất bại
        boolean status = false;
        if (p.getSoLuong() > 0) {
            HttpSession session = request.getSession();
            Cart c = Cart.getCart(session);
            c.put(p, amount);
            c.commit(session);
            status = true;
        }
        Gson json = new Gson();
        String listSize = json.toJson(status);
        response.setContentType("text/html");
        response.getWriter().write(listSize);
    }
}

