package servletAdmin.Information;

import beans.Infor;
import empty.InforEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoadDataInfor", urlPatterns = "/load-data-infor")
public class LoadDataInfor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Infor infor = new InforEmpty().getInfor();

        request.setAttribute("infor",infor);
        request.getRequestDispatcher("thongtin.jsp").forward(request,response);
    }
}