package empty;

import beans.Category;
import beans.Menu;
import db.ConnectionDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class CategoryEmpty {
    public List<Category> getAllCategoryByIdMenu(int idMenu) {
        Statement s = null;
        try {
            s = ConnectionDB.connection();
            List<Category> listMenu = new LinkedList<>();
            ResultSet rs = s.executeQuery("select * from danh_muc where idmenu = " + idMenu);

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

}
