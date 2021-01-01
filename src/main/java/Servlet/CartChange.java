package Servlet;

import beans.DetailProduct;
import beans.PriceDetailSingle;
import beans.Product;
import com.google.gson.Gson;
import empty.DetailProductEmpty;
import empty.ProductEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
@WebServlet(urlPatterns = "/cart/change")
public class CartChange extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            String color = request.getParameter("color");
            int id = Integer.parseInt(request.getParameter("id"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            List<DetailProduct> list = new DetailProductEmpty().getAllProdcutByIdAndColor(id, color);
            PriceDetailSingle priceFormat = null;
            if (action.equals("price-change")) {
                DetailProduct dPro = new DetailProductEmpty().getProductBy(id,color,list.get(0).getSize());
                List<PriceDetailSingle> listTemp = new LinkedList<>();
                if (dPro.getGiamGia() == 1)
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.currentFormatGiaKMThat(quantity), dPro.getGia()*quantity, dPro.getGiaGiam()*quantity, dPro.getGiamGia());
                else
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.getGia()*quantity, dPro.getGiamGia());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            }
        }
    }
}

