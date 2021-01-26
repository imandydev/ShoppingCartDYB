package empty;

import beans.Menu;
import beans.Product;
import beans.ProductOther;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProductOtherEmpty {
    public List<ProductOther> getAllProductEmptyByIdMenu( int idMenu) {
        PreparedStatement s = null;
        try {
            String sql = "SELECT mat_hang_khac.id_mat_hang_khac, san_pham.id_san_pham, mat_hang_khac.id_menu, san_pham.ten_san_pham, san_pham.image FROM san_pham INNER JOIN mat_hang_khac on san_pham.id_san_pham = mat_hang_khac.id_san_pham WHERE mat_hang_khac.id_menu = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idMenu);
            List<ProductOther> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listPro.add(new ProductOther(rs.getInt(1), rs.getInt(2),rs.getInt(3), rs.getString(4), rs.getString(5)));
            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public List<ProductOther> getAllProductOther( ) {
        PreparedStatement s = null;
        try {
            String sql = "SELECT mat_hang_khac.id_mat_hang_khac, san_pham.id_san_pham, mat_hang_khac.id_menu, san_pham.ten_san_pham, san_pham.image, menu.menu_name FROM san_pham INNER JOIN (mat_hang_khac JOIN menu ON mat_hang_khac.id_menu = menu.idmenu) on san_pham.id_san_pham = mat_hang_khac.id_san_pham";
            s = ConnectionDB.connection(sql);
            List<ProductOther> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listPro.add(new ProductOther(rs.getInt(1), rs.getInt(2),rs.getInt(3), rs.getString(4), rs.getString(5),rs.getString(6)));
            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public ProductOther getSingleProductOther(int idOther ) {
        PreparedStatement s = null;
        try {
            String sql = "SELECT mat_hang_khac.id_mat_hang_khac, san_pham.id_san_pham, mat_hang_khac.id_menu, san_pham.ten_san_pham, san_pham.image FROM san_pham INNER JOIN mat_hang_khac on san_pham.id_san_pham = mat_hang_khac.id_san_pham WHERE mat_hang_khac.id_mat_hang_khac= ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idOther);
            ProductOther pro = null;
            ResultSet rs = s.executeQuery();
            if (rs.next())
                pro = new ProductOther(rs.getInt(1), rs.getInt(2),rs.getInt(3), rs.getString(4), rs.getString(5));
            rs.close();
            s.close();
            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public boolean updateOtherProduct(ProductOther proOther) {
        PreparedStatement s = null;
            try {
                String sql = "update mat_hang_khac set id_menu = ?, id_san_pham = ? where id_mat_hang_khac = ?";
                s = ConnectionDB.connection(sql);
                s.setInt(1, proOther.getIdMenu());
                s.setInt(2, proOther.getIdPro());
                s.setInt(3, proOther.getIdProOther());
                s.executeUpdate();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
    }
}
