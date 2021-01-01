package Servlet;

import beans.*;
import com.google.gson.Gson;
import empty.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;


@WebServlet(urlPatterns = "/single-infor")
public class ChangeInforSingle extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            String color = request.getParameter("color");
            int id = Integer.parseInt(request.getParameter("id"));
            List<DetailProduct> list = new DetailProductEmpty().getAllProdcutByIdAndColor(id, color);
            PriceDetailSingle priceFormat = null;
            if (action.equals("color-change")) {
                Gson json = new Gson();
                String listSize = json.toJson(list);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            } else if (action.equals("price-change")) {
                DetailProduct dPro = new DetailProductEmpty().getProductBy(id,color,list.get(0).getSize());
                List<PriceDetailSingle> listTemp = new LinkedList<>();
                if (dPro.getGiamGia() == 1)
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGia(),dPro.currentFormatGiaKM(), dPro.getGia(), dPro.getGiaGiam(), dPro.getGiamGia());
                else
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGia(),dPro.getGia(), dPro.getGiamGia());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            } else if (action.equals("size-change")) {
                String size = request.getParameter("size");
                // tìm sản phẩm theo đúng giá, id sản phẩm và size
                DetailProduct dPro = new DetailProductEmpty().getProductBy(id,color,size);
                List<PriceDetailSingle> listTemp = new LinkedList<>();
                // kiểm tra chi tiết sản phẩm có trạng thái giảm giá hay không nếu có thì set giá giảm, giá gốc : set giá gốc
                if (dPro.getGiamGia() == 1)
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGia(),dPro.currentFormatGiaKM(), dPro.getGia(), dPro.getGiaGiam(), dPro.getGiamGia());
                else
                    priceFormat = new PriceDetailSingle(dPro.currentFormatGia(),dPro.getGia(), dPro.getGiamGia());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            }
        }

    }

}

