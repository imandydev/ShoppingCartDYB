package Servlet;

import DAO.FormatedPriceDAO;
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
            Product product = new ProductEmpty().getAllProdcutByIdProdcut(id);
            List<DetailProduct> list = new DetailProductEmpty().getAllProdcutByIdAndColor(id, color);
            if (action.equals("color-change")) {
                Gson json = new Gson();
                String listSize = json.toJson(list);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            } else if (action.equals("price-change")) {
                DetailProduct dPro = new DetailProductEmpty().getProductBy(id,color,list.get(0).getSize());
                dPro = new FormatedPriceDAO().checkPrice(product,dPro);
                List<PriceFormat> listTemp = new LinkedList<>();
                PriceFormat priceFormat = new PriceFormat(dPro.currentFormatGia(),dPro.currentFormatGiaKM());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            } else if (action.equals("size-change")) {
                String size = request.getParameter("size");
                DetailProduct dPro = new DetailProductEmpty().getProductBy(id,color,size);
                dPro = new FormatedPriceDAO().checkPrice(product,dPro);
                List<PriceFormat> listTemp = new LinkedList<>();
                PriceFormat priceFormat = new PriceFormat(dPro.currentFormatGia(),dPro.currentFormatGiaKM());
                listTemp.add(priceFormat);
                Gson json = new Gson();
                String listSize = json.toJson(listTemp);
                response.setContentType("text/html");
                response.getWriter().write(listSize);
            }
        }

    }

}

