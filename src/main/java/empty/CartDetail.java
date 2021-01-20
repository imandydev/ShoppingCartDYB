package empty;

import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

public class CartDetail {
    public boolean insertDetailCart(int idmadh, int idctsp, int soluong, long price) {
        PreparedStatement s = null;
        try {
            String sql ="insert into chitietdh values (?,?,?,?)";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idmadh);
            s.setInt(2,idctsp);
            s.setInt(3,soluong);
            s.setLong(4,price);
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
