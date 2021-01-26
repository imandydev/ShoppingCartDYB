package servletAdmin.Information;

import beans.Infor;
import com.google.gson.Gson;
import empty.InforEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProcessUpdateInfor", urlPatterns = "/process-update-infor")
public class ProcessUpdateInfor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String logo = request.getParameter("logo");
        String email = request.getParameter("email");
        String nameC = request.getParameter("namec");
        String hotLine = request.getParameter("hotline");
        String cpr = request.getParameter("cpr");
        String fb = request.getParameter("fb");
        String twi = request.getParameter("twi");
        String ins = request.getParameter("ins");
        String pin = request.getParameter("pin");
        String banDo = request.getParameter("bando");
        String diaChi = request.getParameter("diachi");
        Infor infor = new Infor(1,logo,nameC,diaChi,hotLine,email,cpr,fb,ins,twi,pin,null,banDo);
        boolean checkUpdate = new InforEmpty().updateInfor(infor);
        Gson json = new Gson();
        String output = json.toJson(checkUpdate);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}