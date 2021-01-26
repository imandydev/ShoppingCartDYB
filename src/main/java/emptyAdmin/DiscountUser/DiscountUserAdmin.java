package emptyAdmin.DiscountUser;

import beans.Discount;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DiscountUserAdmin {
    public boolean insertDiscountUser( int idUser,int idDis) {
        PreparedStatement s = null;
        try {
            String sql = "insert into giam_gia_user values (?,?)";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idUser);
            s.setInt(2,idDis);
            s.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
