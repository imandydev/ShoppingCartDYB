package emptyAdmin.Product;

import beans.Product;
import beansAdmin.Product.ProductAllProduct;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class ProductAdmin {
    public List<ProductAllProduct> getAllProduct() {
        PreparedStatement s = null;
        try {
            String sql = "SELECT san_pham.id_san_pham,san_pham.image,san_pham.ten_san_pham,menu.menu_name,danh_muc.ten_danh_muc,san_pham.`status`,san_pham.gia,san_pham.gia_km FROM  san_pham join (danh_muc join menu on danh_muc.idmenu = menu.idmenu) on san_pham.id_danh_muc = danh_muc.id_danh_muc";
            s = ConnectionDB.connection(sql);
            List<ProductAllProduct> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listPro.add(new ProductAllProduct(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getLong(7), rs.getLong(8)));
            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public boolean deleteProductByIdCategory(int idCate) {
        PreparedStatement s = null;
        try {
            String sql ="DELETE FROM san_pham WHERE id_danh_muc = ?";
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
    public boolean deleteProductByIdProduct(int idPro) {
        PreparedStatement s = null;
        try {
            String sql ="DELETE FROM san_pham WHERE id_san_pham = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idPro);
            s.executeUpdate();
            s.close();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public ProductAllProduct getProductByIdPro(int idPro) {
        PreparedStatement s = null;
        try {
            String sql = "SELECT san_pham.id_san_pham,san_pham.image,san_pham.ten_san_pham,menu.menu_name,danh_muc.ten_danh_muc,san_pham.`status`,san_pham.gia,san_pham.gia_km FROM  san_pham join (danh_muc join menu on danh_muc.idmenu = menu.idmenu) on san_pham.id_danh_muc = danh_muc.id_danh_muc where san_pham.id_san_pham = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idPro);
            ProductAllProduct pro = null;
            ResultSet rs = s.executeQuery();
            if (rs.next())
                pro = new ProductAllProduct(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getLong(7), rs.getLong(8));
            rs.close();
            s.close();
            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
