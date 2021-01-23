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
// thêm chi tiết sản phẩms
@WebServlet(name = "ProcessDetailProductAdd", urlPatterns = "/process-detail-product-add")
public class ProcessDetailProductAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idPro = Integer.parseInt(request.getParameter("idpro"));
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        int amount = Integer.parseInt(request.getParameter("amount"));
        long price = Long.parseLong(request.getParameter("price"));
        long priceDis = Long.parseLong(request.getParameter("pricedis"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        DetailProduct detail = new DetailProduct(0,idPro,color,size,amount,price,priceDis,discount,0);
        boolean checkInsert = new DetailProductEmpty().insertDetailProduct(detail);
        Gson json = new Gson();
        String output = json.toJson(checkInsert);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}