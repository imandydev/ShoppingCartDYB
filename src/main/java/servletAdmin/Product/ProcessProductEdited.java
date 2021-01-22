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
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "ProcessProductEdited", urlPatterns = "/process-product-edit")
public class ProcessProductEdited extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idPro = Integer.parseInt(request.getParameter("idpro"));
        String name = request.getParameter("name");
        int idCate = Integer.parseInt(request.getParameter("idcate"));
        String status = request.getParameter("status");
        int idMenu = Integer.parseInt(request.getParameter("idmenu"));
        long price = Long.parseLong(request.getParameter("price"));
        long pricedis = Long.parseLong(request.getParameter("pricedis"));
        String moTa = request.getParameter("mota");
        String thongTin = request.getParameter("thongtin");
        String listImgInput = request.getParameter("listimg");
        // tách chuỗi hình ảnh được gửi lên
        // tạo ra hashmap lưu lại vị trí ảnh muốn thay đổi và đường dẫn mới
        HashMap<Integer,String> resultImg = new HashMap<>();
        if (!listImgInput.equals("")) {
            List<String> listImgOut = new LinkedList<>();
            String[] arrImgOut = listImgInput.split(";");
            // lấy ra đường dẫn ngăn cách bởi dấu;
            for (int i = 0; i < arrImgOut.length; i++) {
                if (!arrImgOut[i].equals(""))
                    listImgOut.add(arrImgOut[i]);
            }
            // lấy ra đường dẫn với stt ảnh
            for (int i = 0; i< listImgOut.size(); i++) {
                String[] temp = listImgOut.get(i).split("-");
                resultImg.put(Integer.parseInt(temp[0]),temp[1]);
            }
            // lấy ra sản phẩm với idPro để lấy ra địa chỉ đang có => split theo dấu ; sau đó sắp xếp lại => chèn các đường dẫn mới trong hashmap vào csdl
            Product temp = new ProductEmpty().getAllProdcutByIdProdcut(idPro);
            // lấy ra mảng hình ảnh cách nhau bởi dấu ;
            String[] arrTemp = temp.getImg().split(";");
            // tạo ra mảng chứa tạm
            String[] arrResult = new String[4];
            arrResult[0] = "";
            arrResult[1] = "";
            arrResult[2] = "";
            arrResult[3] = "";
            for (int i =0; i < arrTemp.length; i++) {
                // xét điều kiện để thêm vào mảng
                if (arrTemp[i].endsWith("0.png"))
                    arrResult[0] = arrTemp[i];
                else if (arrTemp[i].endsWith("1.png"))
                    arrResult[1] = arrTemp[i];
                else if (arrTemp[i].endsWith("2.png"))
                    arrResult[2] = arrTemp[i];
                else
                    arrResult[3] = arrTemp[i];
            }
            //set lai vị trí ảnh mới và ảnh cũ
            for (int key : resultImg.keySet())
                arrResult[key] = resultImg.get(key);
            // insert ảnh
            new ProductEmpty().updateImgProcessEdited(idPro,arrResult);
            // download ảnh lên thư mục trên server
            for(int key: resultImg.keySet())
                LoadImageToServer.loadImgProduct(resultImg.get(key),idPro,key+".png");
        }
        // nếu menu là giảm giá thì set giảm giá sản phẩm bằng 1
        int giamGia = 0;
        if (idMenu == 5)
            giamGia = 1;
        Product product = new Product(idPro,name,idCate,price,pricedis,moTa,thongTin,"","","",giamGia,status);
        boolean checkUpdate = false;
        checkUpdate = new ProductEmpty().updateProduct(product);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}