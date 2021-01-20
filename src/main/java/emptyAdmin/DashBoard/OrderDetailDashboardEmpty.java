package emptyAdmin.DashBoard;

import beansAdmin.Dashboard.OrderDetailDashboard;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class OrderDetailDashboardEmpty {
    public List<OrderDetailDashboard> getListDetailOrders(int idOrder) {
        PreparedStatement s = null;
        try {
            String sql ="SELECT san_pham.id_san_pham,san_pham.ten_san_pham,chi_tiet_sp.size,chi_tiet_sp.mau,SUM(chitietdh.soluongmua),chitietdh.giatien FROM chitietdh JOIN (chi_tiet_sp JOIN san_pham ON chi_tiet_sp.id_san_pham = san_pham.id_san_pham) ON chitietdh.idchitietsp = chi_tiet_sp.idchitietsp WHERE chitietdh.ma_don_hang = ? GROUP BY chitietdh.idchitietsp";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idOrder);
            List<OrderDetailDashboard> listOrderDetail = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listOrderDetail.add(new OrderDetailDashboard(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getLong(6)));
            }
            rs.close();
            s.close();
            return listOrderDetail;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
}
