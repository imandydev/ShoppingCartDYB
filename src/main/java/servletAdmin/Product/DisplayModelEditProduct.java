package servletAdmin.Product;

import beans.Product;
import com.google.gson.Gson;
import empty.ProductEmpty;
import sun.plugin2.util.PojoUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
@WebServlet(name = "ProcessProductEdit", urlPatterns = "/display-modal-product-edit")
public class DisplayModelEditProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idpro"));
        Product pro = new ProductEmpty().getAllProdcutByIdProdcut(id);
        Gson json = new Gson();
        List<Object> listObj = new LinkedList<>();
        listObj.add(pro);
        listObj.add(pro.splitStrImg());
        String bothJson = json.toJson(listObj);
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(bothJson);
    }
}