package servletAdmin.Discount;

import DAOAdmin.ConvertDateTimeLocalToDateTimeSQL;
import beans.Discount;
import com.google.gson.Gson;
import empty.DiscountEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProcessEditDiscount", urlPatterns = "/process-edit-discount")
public class ProcessEditDiscount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idDis = Integer.parseInt(request.getParameter("iddis"));
        String noiDung = request.getParameter("nd");
        long giaGiam = Long.parseLong(request.getParameter("giagiam"));
        String dateS = request.getParameter("dates");
        String dateE = request.getParameter("datee");
        String dateConvertStart = ConvertDateTimeLocalToDateTimeSQL.convertTime(dateS);
        String dateConvertEnd = ConvertDateTimeLocalToDateTimeSQL.convertTime(dateE);
        Discount dis = new Discount(idDis,noiDung,null,dateConvertStart,dateConvertEnd,giaGiam);
        boolean checkUpdate = new DiscountEmpty().updateDiscount(dis);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }

}