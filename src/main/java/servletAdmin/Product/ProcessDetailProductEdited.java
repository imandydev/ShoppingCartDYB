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

@WebServlet(name = "ProcessDetailProductEdited", urlPatterns = "/process-detail-product-edit")
public class ProcessDetailProductEdited extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idDetail = Integer.parseInt(request.getParameter("iddetail"));
        int idPro = Integer.parseInt(request.getParameter("idpro"));
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        int amount = Integer.parseInt(request.getParameter("amount"));
        long price = Long.parseLong(request.getParameter("price"));
        long priceDis = Long.parseLong(request.getParameter("pricedis"));
        int giamGia = Integer.parseInt(request.getParameter("giamgia"));
        DetailProduct detail = new DetailProduct(idDetail,idPro,color,size,amount,price,priceDis,giamGia,0);
        boolean checkUpdate = new DetailProductEmpty().updateDetailProduct(detail);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}