package empty;

import beans.Category;
import beans.Menu;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class CategoryEmpty {
    public List<Category> getAllCategoryByIdMenu(int idMenu) {
        PreparedStatement s = null;
        try {
            String sql ="select * from danh_muc where idmenu = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idMenu);
            List<Category> listMenu = new LinkedList<>();
            ResultSet rs = s.executeQuery();

            while (rs.next()) {
                listMenu.add(new Category(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getInt(5)));
            }
            rs.close();
            s.close();
            Collections.sort(listMenu, new Comparator<Category>() {
                @Override
                public int compare(Category o1, Category o2) {
                    return o1.getOrder() - o2.getOrder();
                }
            });
            return listMenu;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public List<Category> getAllCategory() {
        PreparedStatement s = null;
        try {
            String sql ="select * from danh_muc";
            s = ConnectionDB.connection(sql);
            List<Category> listMenu = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                if(rs.getInt(2)== 5)
                    listMenu.add(new Category(rs.getInt(1),rs.getInt(2),rs.getString(3)+" (Giảm giá)",rs.getString(4),rs.getInt(5)));
                else
                    listMenu.add(new Category(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getInt(5)));

            }
            rs.close();
            s.close();
            return listMenu;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public Category getSingleCategoryById(int idCate) {
        PreparedStatement s = null;
        try {
            String sql ="select * from danh_muc where id_danh_muc = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idCate);
            Category cate = null;
            ResultSet rs = s.executeQuery();
           if (rs.next())
               cate = new Category(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getInt(5));
            rs.close();
            s.close();
            return cate;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public boolean updateCate(Category cate) {
        PreparedStatement s = null;
            try {
                String sql = "update danh_muc set idmenu = ?, ten_danh_muc = ?, orther_dm = ? where id_danh_muc = ?";
                s = ConnectionDB.connection(sql);
                s.setInt(1, cate.getIdMenu());
                s.setString(2, cate.getName());
                s.setInt(3, cate.getOrder());
                s.setInt(4,cate.getId());
                s.executeUpdate();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
    }
    public boolean deleteCategory(int idCate) {
        PreparedStatement s = null;
        try {
            String sql ="DELETE FROM danh_muc WHERE id_danh_muc = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idCate);
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
