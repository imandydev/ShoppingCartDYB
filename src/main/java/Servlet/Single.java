package Servlet;

import DAO.FormatedPriceDAO;
import beans.*;
import empty.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

@WebServlet(urlPatterns = "/single")
public class Single extends HttpServlet {
    private List<Menu> valuesMenu = new MenuEmpty().getAllMenu();
    private Infor infor = new InforEmpty().getInfor();
    private ImagesB imagesB = new ImagesEmpty().getImagesSingle("Các mục khác");
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("detail"))
            doGetSingleProduct(request,response);
        else {
            new ListProduct().doGet404(request,response);
        }
    }
    protected void doGetSingleProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        List<HotProduct> listHotPro = new HotProductEmpty().getAllAmountHotProduct();
        List<Product> Hot4Pro = new HotProductEmpty().get4HotProduct(listHotPro);
        //list color
        List<DetailProduct> listPro = new DetailProductEmpty().getListDetailColorNot(id);
        Product product = new ProductEmpty().getAllProdcutByIdProdcut(id);
        DetailProduct detail = new DetailProductEmpty().getProductByIdProduct(id);
//        list size
        List<DetailProduct> listSize = new DetailProductEmpty().getAllProdcutByIdAndColor(id,listPro.get(0).getMau());
        product.setDanhGia();
        request.setAttribute("hot", Hot4Pro);
        request.setAttribute("listSize",listSize);
        request.setAttribute("detail",detail);
        request.setAttribute("pro",product);
        request.setAttribute("listPro",listPro);
        request.setAttribute("images",imagesB);
        request.setAttribute("listMenu", valuesMenu);
        request.setAttribute("infor", infor);
        request.getRequestDispatcher("single.jsp").forward(request,response);
    }


}

