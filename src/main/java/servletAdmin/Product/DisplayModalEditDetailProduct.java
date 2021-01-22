package servletAdmin.Product;

import beans.DetailProduct;
import com.google.gson.Gson;
import empty.DetailProductEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DisplayModalEditDetailProduct", urlPatterns = "/display-modal-detail-product-edit")
public class DisplayModalEditDetailProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idDetail = Integer.parseInt(request.getParameter("iddetail"));
        DetailProduct dePro = new DetailProductEmpty().getDetailProductByIdDePro(idDetail);
        Gson json = new Gson();
        String bothJson = json.toJson(dePro);
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(bothJson);
    }
}