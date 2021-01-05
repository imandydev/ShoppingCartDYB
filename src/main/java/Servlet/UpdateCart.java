package Servlet;

import DAO.FormatedPriceDAO;
import beans.Cart;
import beans.DetailProduct;
import beans.PriceDetailSingle;
import com.google.gson.Gson;
import empty.DetailProductEmpty;

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
// cập nhật lại giỏ hàng khi thay đổi thông tin sản phẩm: màu, size,...
@WebServlet(urlPatterns = "/change/infor")
public class UpdateCart extends HttpServlet {
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
            int idDetail = 0;
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            // list size theo color
            List<DetailProduct> list = new DetailProductEmpty().getAllProdcutByIdAndColor(idPro, color);
            PriceDetailSingle priceFormat = null;
            // thay đổi size khi màu thay đổi
            if (action.equals("color-change")) {
                Gson json = new Gson();
                String listSize = json.toJson(list);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            }
            // thay đổi màu thì giá thay đổi
            else if (action.equals("price-change")) {
                DetailProduct dPro = new DetailProductEmpty().getProductBy(idPro,color,list.get(0).getSize());
                idDetail = Integer.parseInt(request.getParameter("iddetail"));
                List<PriceDetailSingle> listTemp = new LinkedList<>();
                c.update(idDetail, dPro, quantity);
                c.commit(session);
                if (dPro.getGiamGia() == 1)
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.currentFormatGiaKMThat(quantity), dPro.getGia()*quantity, dPro.getGiaGiam()*quantity, dPro.getGiamGia(), FormatedPriceDAO.formatedGia(c.total()), dPro.getId());
                else
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.getGia()*quantity, dPro.getGiamGia(),  FormatedPriceDAO.formatedGia(c.total()), dPro.getId());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            }
            // thay đổi size thì giá thay đổi
            else if (action.equals("size-change")) {
                String size = request.getParameter("size");
                idDetail = Integer.parseInt(request.getParameter("iddetail"));
                // tìm sản phẩm theo đúng giá, id sản phẩm và size
                DetailProduct dPro = new DetailProductEmpty().getProductBy(idPro,color,size);
                List<PriceDetailSingle> listTemp = new LinkedList<>();
                c.update(idDetail, dPro, quantity);
                c.commit(session);
                // kiểm tra chi tiết sản phẩm có trạng thái giảm giá hay không nếu có thì set giá giảm, giá gốc : set giá gốc
                if (dPro.getGiamGia() == 1)
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.currentFormatGiaKMThat(quantity), dPro.getGia()*quantity, dPro.getGiaGiam()*quantity, dPro.getGiamGia(),  FormatedPriceDAO.formatedGia(c.total()), dPro.getId());
                else
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGiaThat(quantity),dPro.getGia()*quantity, dPro.getGiamGia(),  FormatedPriceDAO.formatedGia(c.total()), dPro.getId());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            }
        }
    }
}

