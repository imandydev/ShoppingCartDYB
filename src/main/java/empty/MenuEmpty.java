package empty;

import beans.Menu;
import beans.News;
import db.ConnectionDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class MenuEmpty {
    public List<Menu> getAllMenu() {
        Statement s = null;
        try {
            s = ConnectionDB.connection();
            List<Menu> listMenu = new LinkedList<>();
            ResultSet rs = s.executeQuery("select * from menu");

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
        Statement s = null;
        try {
            s = ConnectionDB.connection();

            ResultSet rs = s.executeQuery("select * from menu where idmenu ="+id);
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
