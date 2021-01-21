package servletAdmin.Product;

import DAOAdmin.LoadImageToServer;
import beans.Product;
import com.google.gson.Gson;
import empty.ProductEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "ProcessProductAdd", urlPatterns = "/process-product-add")
public class ProcessProductAdd extends HttpServlet {
    // kích thước danh sách hình ảnh max = 4;
    private static int lengthListImg = 4;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean checkSuccess = false;
//        try {
            String namePro = request.getParameter("namepro");
            String imgMain = request.getParameter("imgmain");
            String img1 = request.getParameter("img1");
            String img2 = request.getParameter("img2");
            String img3 = request.getParameter("img3");
            // danh sách lưu trữ hình ảnh
            List<String> listImg = new LinkedList<>();
            // nếu không có ảnh thì không add vào list
            if (!img1.equals(""))
                listImg.add(img1);
            if (!img2.equals(""))
                listImg.add(img2);
            if (!img3.equals(""))
                listImg.add(img3);

            int idCate = Integer.parseInt(request.getParameter("idcate"));
            int idMenu = Integer.parseInt(request.getParameter("idmenu"));
            String status = request.getParameter("status");
            long price = Long.parseLong(request.getParameter("price"));
            long priceDis = Long.parseLong(request.getParameter("pricedis"));
            String mota = request.getParameter("mota");
            String thongTin = request.getParameter("thongtin");
            int giamGia = 0;
            // nếu idmenu la giảm giá thì set sản phẩm là giảm giá
            if (idMenu == 5)
                giamGia = 1;
            ProductEmpty empty = new ProductEmpty();
            // tạo ra đối tượng sản phẩm mới
            Product pro = new Product(0, namePro, idCate, price, priceDis, mota, thongTin, "", "", "", giamGia, status);
            // insert đối tượng mới vào csdl
            checkSuccess = empty.insertProduct(pro);
            // lấy ra sản phẩm vừa mới insert để lấy id đặt tên cho thư mục hình ảnh
            Product proNew = empty.getProNewInsert();
            empty.updateImg(proNew,listImg,imgMain);
            if (checkSuccess)
                checkSuccess = LoadImageToServer.loadListImg(listImg,proNew.getId(),imgMain);

//        } catch (Exception e) {
//            checkSuccess = false;
//        }
        Gson json = new Gson();
        String output = json.toJson(checkSuccess);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}