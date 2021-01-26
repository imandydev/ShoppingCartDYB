package empty;

import DAO.PasswordEncode;
import beans.Category;
import beans.User;
import db.ConnectionDB;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class UserEmpty {
    public User getUserByUserNamePass(String username, String pass) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        String passEncode = PasswordEncode.passwordSHA512(pass);
        PreparedStatement s = null;
        try {
            String sql = "select * from user where ten_dang_nhap = ? and pass = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1, username);
            s.setString(2, passEncode);
            ResultSet rs = s.executeQuery();
            User user = null;
            if (rs.next()) {

                user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getLong(6), rs.getString(7), rs.getString(8), rs.getString(9));
            }
            rs.close();
            s.close();
            return user;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    // kiểm tra email k được trùng mới được update
    public boolean updateProfile(String email, String sdt, int id, String emailbf) {
        PreparedStatement s = null;
        boolean checkUpdate = false;
        if (!emailbf.equals(email))
            checkUpdate = checkEmptyUsername("",email);
        if (!checkUpdate) {
            try {
                String sql = "update user set email = ?, sdt = ? where iduser = ?";
                s = ConnectionDB.connection(sql);
                s.setString(1, email);
                s.setString(2, sdt);
                s.setInt(3, id);
                s.executeUpdate();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
        } else
            return false;
    }
    public boolean updateProfileByAdmin(User user, String emailbf) {
        PreparedStatement s = null;
        boolean checkUpdate = false;
        // nếu email trước và sau trùng nhau thì k kiểm tra trùng email trong csdl
        if (!emailbf.equals(user.getEmail()))
            checkUpdate = checkEmptyUsername("",user.getEmail());
        // nếu không tìm thấy email trùng thì insert
        if (!checkUpdate) {
            try {
                String sql = "update user set email = ?, sdt = ?, loai_tai_khoan = ?, dia_chi = ? where iduser = ?";
                s = ConnectionDB.connection(sql);
                s.setString(1, user.getEmail());
                s.setLong(2, user.getSdt());
                s.setString(3, user.getLoaiTaiKhoan());
                s.setString(4,user.getDiaChi());
                s.setInt(5,user.getId());
                s.executeUpdate();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
        } else
            return false;
    }
    public boolean updateAddress(int id, String address) {
        PreparedStatement s = null;
        try {
            String sql = "update user set dia_chi = ? where iduser = ?";
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

    public boolean updatePass(int id, String newPass) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        String passEncode = PasswordEncode.passwordSHA512(newPass);
        PreparedStatement s = null;
        try {
            String sql = "update user set pass = ? where iduser = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1, passEncode);
            s.setInt(2, id);
            s.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkEmptyUsername(String username, String email) {
        PreparedStatement s = null;
        try {
            String sql = "select * from user where ten_dang_nhap = ? or email = ? ";
            s = ConnectionDB.connection(sql);
            s.setString(1, username);
            s.setString(2,email);
            ResultSet rs = s.executeQuery();
            if (rs.next())
                return true;
            rs.close();
            s.close();
            return false;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return true;
        }
    }

    public boolean insertUser(String username, String mail, String sdt, String pass) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        if (!checkEmptyUsername(username, mail)) {
            String passEncode = PasswordEncode.passwordSHA512(pass);
            PreparedStatement s = null;
            try {
                String sql = "insert into user values (null,'Chưa cập nhật địa chỉ','user',?,?,?,?,null,Now())";
                s = ConnectionDB.connection(sql);
                s.setString(1, username);
                s.setString(2, mail);
                s.setString(3,sdt);
                s.setString(4, passEncode);
                s.executeUpdate();
                s.close();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }
    public boolean insertUserByAdmin(User user) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        if (!checkEmptyUsername(user.getUsername(), user.getEmail())) {
            String passEncode = PasswordEncode.passwordSHA512(user.getPass());
            PreparedStatement s = null;
            try {
                String sql = "insert into user values (null,?,?,?,?,?,?,null,Now())";
                s = ConnectionDB.connection(sql);
                s.setString(1, user.getDiaChi());
                s.setString(2, user.getLoaiTaiKhoan());
                s.setString(3,user.getUsername());
                s.setString(4,user.getEmail());
                s.setLong(5,user.getSdt());
                s.setString(6, passEncode);
                s.executeUpdate();
                s.close();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }
    public List<User> getAllUser( ) {
        List<User> listUser = new LinkedList<>();
        PreparedStatement s = null;
        try {
            String sql = "select * from user";
            s = ConnectionDB.connection(sql);
            ResultSet rs = s.executeQuery();
            while (rs.next())
                listUser.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getLong(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            rs.close();
            s.close();
            return listUser;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return listUser;
        }
    }
    // lấy ra user by id user
    public User getUserByIdUser(int idUser) {
        PreparedStatement s = null;
        try {
            String sql = "select * from user where iduser = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1, idUser);
            ResultSet rs = s.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getLong(6), rs.getString(7), rs.getString(8), rs.getString(9));
            }
            rs.close();
            s.close();
            return user;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public boolean deleteUserByIdUser(int idUser) {
        PreparedStatement s = null;
        try {
            String sql ="DELETE FROM user WHERE iduser = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idUser);
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
