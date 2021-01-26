package servletAdmin.ProductOther;

import beans.ProductOther;
import com.google.gson.Gson;
import empty.ProductOtherEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProcessEditProductOther", urlPatterns = "/process-edit-product-other")
public class ProcessEditProductOther extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idOther = Integer.parseInt(request.getParameter("idother"));
        int idPro = Integer.parseInt(request.getParameter("idpro"));
        int idMenu = Integer.parseInt(request.getParameter("idmenu"));
        ProductOther productOther = new ProductOther(idOther,idPro,idMenu);
        boolean checkUpdate = new ProductOtherEmpty().updateOtherProduct(productOther);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}