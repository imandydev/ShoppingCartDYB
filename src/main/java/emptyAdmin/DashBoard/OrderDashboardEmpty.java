package emptyAdmin.DashBoard;

import beansAdmin.Dashboard.OrderDashboard;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class OrderDashboardEmpty {
    public List<OrderDashboard> getTop10Order() {
        PreparedStatement s = null;
        try {
            String sql ="SELECT don_hang.ma_don_hang, don_hang.iduser, SUM(chitietdh.soluongmua),don_hang.ngaymua,don_hang.trangthai,don_hang.tongtien FROM don_hang JOIN chitietdh on don_hang.ma_don_hang = chitietdh.ma_don_hang where don_hang.trangthai = 'Đang Xử Lý' GROUP BY don_hang.ma_don_hang ORDER BY don_hang.ma_don_hang DESC LIMIT 10";
            s = ConnectionDB.connection(sql);
            List<OrderDashboard> listTop10 = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listTop10.add(new OrderDashboard(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getTimestamp(4),rs.getString(5),rs.getLong(6)));
            }
            rs.close();
            s.close();
            // sắp xếp tăng dần theo id đơn hàng
            Collections.sort(listTop10, new Comparator<OrderDashboard>() {
                @Override
                public int compare(OrderDashboard o1, OrderDashboard o2) {
                    return o1.getId() - o2.getId();
                }
            });
            return listTop10;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public List<OrderDashboard> getAllOrder() {
        PreparedStatement s = null;
        try {
            String sql ="SELECT don_hang.ma_don_hang, don_hang.iduser, SUM(chitietdh.soluongmua),don_hang.ngaymua,don_hang.trangthai,don_hang.tongtien FROM don_hang JOIN chitietdh on don_hang.ma_don_hang = chitietdh.ma_don_hang GROUP BY don_hang.ma_don_hang";
            s = ConnectionDB.connection(sql);
            List<OrderDashboard> listTop10 = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listTop10.add(new OrderDashboard(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getTimestamp(4),rs.getString(5),rs.getLong(6)));
            }
            rs.close();
            s.close();
            return listTop10;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
}
