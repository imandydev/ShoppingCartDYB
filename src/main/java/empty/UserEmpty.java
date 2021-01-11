package empty;

import beans.Category;
import beans.User;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class UserEmpty {
    public User getUserByUserNamePass(String username, String pass) {
        PreparedStatement s = null;
        try {
            String sql ="select * from user where ten_dang_nhap = ? and pass = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1,username);
            s.setString(2, pass);
            ResultSet rs = s.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getLong(6),rs.getString(7),rs.getString(8),rs.getString(9));
            }
            rs.close();
            s.close();
            return user;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public boolean updateProfile(String email, String sdt, int id) {
        PreparedStatement s = null;
        try {
            String sql ="update user set email = ?, sdt = ? where iduser = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1, email);
            s.setString(2, sdt);
            s.setInt(3,id);
            s.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean updateAddress( int id, String address) {
        PreparedStatement s = null;
        try {
            String sql ="update user set dia_chi = ? where iduser = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1, address);
            s.setInt(2, id);
            s.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
