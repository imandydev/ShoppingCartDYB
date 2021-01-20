package empty;

import beans.Category;
import beans.Order;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class CartEmpty {
    public boolean insertCart(int idUser, String ghiChu, int idGiamGia, long tongTien, String diaChi) {
        PreparedStatement s = null;
        try {
            String sql ="insert into don_hang values (null,?,NOW(),'Đang Xử Lý',?,?,?,?)";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idUser);
            s.setString(2,ghiChu);
            s.setInt(3,idGiamGia);
            s.setLong(4,tongTien);
            s.setString(5,diaChi);
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    // lấy ra đơn hàng vừa thêm vào
    public Order getOrder() {
        PreparedStatement s = null;
        try {
            String sql ="SELECT * FROM don_hang ORDER BY ma_don_hang DESC LIMIT 1";
            s = ConnectionDB.connection(sql);
            ResultSet rs = s.executeQuery();
            Order order = null;
            if (rs.next()) {
                order = new Order(rs.getInt(1),rs.getInt(2), rs.getTimestamp(3), rs.getString(4),rs.getString(5),rs.getInt(6),rs.getLong(7),rs.getString(8));
            }
            rs.close();
            s.close();
            return order;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public Order getOrderById(int idOrder) {
        PreparedStatement s = null;
        try {
            String sql ="SELECT * FROM don_hang where ma_don_hang = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idOrder);
            ResultSet rs = s.executeQuery();
            Order order = null;
            if (rs.next()) {
                order = new Order(rs.getInt(1),rs.getInt(2), rs.getTimestamp(3), rs.getString(4),rs.getString(5),rs.getInt(6),rs.getLong(7),rs.getString(8));
            }
            rs.close();
            s.close();
            return order;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public boolean updateStatusOrder(int idOrder, String status) {
        PreparedStatement s = null;
        try {
            String sql ="update don_hang set trangthai = ? where ma_don_hang = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1,status);
            s.setInt(2,idOrder);
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
