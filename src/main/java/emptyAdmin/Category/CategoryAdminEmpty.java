package emptyAdmin.Category;

import beans.Category;
import beansAdmin.Category.CategoryAllAdmin;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class CategoryAdminEmpty {
    public List<CategoryAllAdmin> getAllCategoryByAdmin() {
        PreparedStatement s = null;
        try {
            String sql ="select danh_muc.*,menu.menu_name from danh_muc join menu on danh_muc.idmenu = menu.idmenu";
            s = ConnectionDB.connection(sql);
            List<CategoryAllAdmin> listMenu = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
               listMenu.add(new CategoryAllAdmin(rs.getInt(1),rs.getString(3),rs.getString(6),rs.getInt(5),rs.getString(4)));
            }
            rs.close();
            s.close();
            return listMenu;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public boolean insertCate(Category cate) {
        PreparedStatement s = null;
        try {
            String sql ="insert into danh_muc values (null,?,?,now(),?)";
            s = ConnectionDB.connection(sql);
            s.setInt(1,cate.getIdMenu());
            s.setString(2,cate.getName());
            s.setInt(3,cate.getOrder());
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
