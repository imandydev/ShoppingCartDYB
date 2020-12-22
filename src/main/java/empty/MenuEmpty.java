package empty;

import beans.Menu;
import beans.News;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class MenuEmpty {
    public List<Menu> getAllMenu() {
        PreparedStatement s = null;
        try {
            String sql = "select * from menu";
            s = ConnectionDB.connection(sql);
            List<Menu> listMenu = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listMenu.add(new Menu(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5)));
            }
            rs.close();
            s.close();
            Collections.sort(listMenu, new Comparator<Menu>() {
                @Override
                public int compare(Menu o1, Menu o2) {
                    return o1.getOrderMenu() - o2.getOrderMenu();
                }
            });
            return listMenu;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public Menu getSingleMenuById(int id) {
        PreparedStatement s = null;
        try {
            String sql = "select * from menu where idmenu = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1, id);
            ResultSet rs = s.executeQuery();
            rs.next();
            Menu menu  = new Menu(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
            rs.close();
            s.close();

            return menu;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new Menu();
        }
    }
}
