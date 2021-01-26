package servletAdmin.Discount;

import DAOAdmin.ConvertDateTimeLocalToDateTimeSQL;
import beans.Discount;
import beans.User;
import com.google.gson.Gson;
import empty.DiscountEmpty;
import empty.ProductEmpty;
import empty.UserEmpty;
import emptyAdmin.DiscountUser.DiscountUserAdmin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProcessAddDiscount", urlPatterns = "/process-add-discount")
public class ProcessAddDiscount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String noiDung = request.getParameter("nd");
        long price = Long.parseLong(request.getParameter("price"));
        String startDate = request.getParameter("start");
        String endDate = request.getParameter("end");
        String startConvert = ConvertDateTimeLocalToDateTimeSQL.convertTime(startDate);
        String endConvert = ConvertDateTimeLocalToDateTimeSQL.convertTime(endDate);
        List<User> listUser = new UserEmpty().getAllUser();
        Discount dis = new Discount(-1,noiDung,null,startDate,endDate,price);
        boolean checkInsert = new DiscountEmpty().insertDiscount(dis);
        boolean checkInsertUserDiscount = false;
        if (checkInsert) {
            try {
            int idDiscountNew = new DiscountEmpty().getDiscountNewInsert().getId();
                DiscountUserAdmin disEmpty = new DiscountUserAdmin();
            for(int i = 0; i < listUser.size(); i++)
                disEmpty.insertDiscountUser(listUser.get(i).getId(),idDiscountNew);
            checkInsertUserDiscount  = true;
            } catch (Exception e) {
                checkInsertUserDiscount  = false;
            }
        }
        Gson json = new Gson();
        String output = json.toJson(checkInsertUserDiscount);
        response.setContentType("text/html");
        response.getWriter().write(output);

    }
}