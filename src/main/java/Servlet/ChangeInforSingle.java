package Servlet;

import beans.*;
import com.google.gson.Gson;
import empty.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;


@WebServlet(urlPatterns = "/single-infor")
public class ChangeInforSingle extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            Cart c = Cart.getCart(session);
            String action = request.getParameter("action");
            String color = request.getParameter("color");
            int idPro = Integer.parseInt(request.getParameter("id"));
            int quantity = 0;
            List<DetailProduct> list = new DetailProductEmpty().getAllProdcutByIdAndColor(idPro, color);
            PriceDetailSingle priceFormat = null;
            if (action.equals("color-change")) {
                Gson json = new Gson();
                String listSize = json.toJson(list);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            } else if (action.equals("price-change")) {
                quantity = Integer.parseInt(request.getParameter("quantity"));
                DetailProduct dPro = new DetailProductEmpty().getProductBy(idPro,color,list.get(0).getSize());
                List<PriceDetailSingle> listTemp = new LinkedList<>();
                if (dPro.getGiamGia() == 1)
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.currentFormatGiaKMThat(quantity), dPro.getGia()*quantity, dPro.getGiaGiam()*quantity, dPro.getGiamGia(), dPro.getSoLuong());
                else
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.getGia()*quantity, dPro.getGiamGia(),dPro.getSoLuong());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            } else if (action.equals("size-change")) {
                quantity = Integer.parseInt(request.getParameter("quantity"));
                String size = request.getParameter("size");
                // tìm sản phẩm theo đúng giá, id sản phẩm và size
                DetailProduct dPro = new DetailProductEmpty().getProductBy(idPro,color,size);
                List<PriceDetailSingle> listTemp = new LinkedList<>();
                // kiểm tra chi tiết sản phẩm có trạng thái giảm giá hay không nếu có thì set giá giảm, giá gốc : set giá gốc
                if (dPro.getGiamGia() == 1)
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.currentFormatGiaKMThat(quantity), dPro.getGia()*quantity, dPro.getGiaGiam()*quantity, dPro.getGiamGia(),dPro.getSoLuong());
                else
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.getGia()*quantity, dPro.getGiamGia(),dPro.getSoLuong());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            }
        }

    }

}

