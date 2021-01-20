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
    public boolean insertCart(int idUser, String ghiChu, String idGiamGia, long tongTien) {
        PreparedStatement s = null;
        try {
            String sql ="insert into don_hang values (null,?,NOW(),'Đang Xử Lý',?,?,?)";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idUser);
            s.setString(2,null);
            s.setInt(3,1);
            s.setLong(4,tongTien);
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    // lấy ra đơn hàng vừa thêm vào
    public Order getOrder(int idUser, String ghiChu, long tongTien) {
        PreparedStatement s = null;
        try {
            String sql ="select * form don_hang where iduser = ?  and trangthai = ? and ghichu = ? and tongtien = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idUser);
            s.setString(2,"Đang Xủ Lý");
            s.setString(3,ghiChu);
            s.setLong(4,tongTien);
            ResultSet rs = s.executeQuery();
            Order order = null;
            if (rs.next()) {
                order = new Order(rs.getInt(1),rs.getInt(2), rs.getTimestamp(3), rs.getString(4),rs.getString(5),rs.getInt(6),rs.getLong(7));
            }
            rs.close();
            s.close();
            return order;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
