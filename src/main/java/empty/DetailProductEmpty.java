package empty;

import beans.DetailProduct;
import beans.Product;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class DetailProductEmpty {
    public List<DetailProduct> getAllProdcutByIdProduct(int id) {
        PreparedStatement s = null;
        try {
            String sql = "select * from chi_tiet_sp where id_san_pham = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,id);
            List<DetailProduct> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listPro.add( new DetailProduct(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5),rs.getLong(6),rs.getLong(7),rs.getInt(8))) ;
            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    // lay danh sach mau k trung
    public List<DetailProduct> getListDetailColorNot(int id) {
        List<DetailProduct> listPro = new LinkedList<>();
        List<String> listCheck = new LinkedList<>();
        for (DetailProduct item: getAllProdcutByIdProduct(id)) {
            if (!listCheck.contains(item.getMau())) {
                listCheck.add(item.getMau());
                listPro.add(item);
            }
        }
        return listPro;
    }
    public List<DetailProduct> getAllProdcutByIdAndColor(int id, String color) {
        PreparedStatement s = null;
        try {
            String sql = "select * from chi_tiet_sp where id_san_pham = ? and mau = \"" + color +"\"";
            s = ConnectionDB.connection(sql);
            s.setInt(1,id);
            List<DetailProduct> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listPro.add( new DetailProduct(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5),rs.getLong(6),rs.getLong(7),rs.getInt(8))) ;
            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public DetailProduct getProductByIdProduct(int id) {
        PreparedStatement s = null;
        try {
            int check = 0;
            String sql = "select * from chi_tiet_sp where id_san_pham = ?";

            s = ConnectionDB.connection(sql);
            s.setInt(1,id);
            DetailProduct pro = null;
            ResultSet rs = s.executeQuery();
            if (rs.next()) {
                pro = new DetailProduct(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5),rs.getLong(6),rs.getLong(7),rs.getInt(8)) ;
            }
            rs.close();
            s.close();

            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new DetailProduct();
        }
    }
    public DetailProduct getProductBy(int id, String color, String size) {
        PreparedStatement s = null;
        try {

            String sql = "select * from chi_tiet_sp where id_san_pham = ? and mau = ? and size = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,id);
            s.setString(2, color);
            s.setString(3,size);
            DetailProduct pro = null;
            ResultSet rs = s.executeQuery();
            if (rs.next()) {
                pro = new DetailProduct(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5),rs.getLong(6),rs.getLong(7),rs.getInt(8)) ;
            }
            rs.close();
            s.close();

            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new DetailProduct();
        }
    }
    public DetailProduct getDetailProductByIdDePro(int id) {
        PreparedStatement s = null;
        try {
            String sql = "select * from chi_tiet_sp where idchitietsp = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,id);
            DetailProduct pro = null;
            ResultSet rs = s.executeQuery();
            if (rs.next()) {
                pro = new DetailProduct(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5),rs.getLong(6),rs.getLong(7),rs.getInt(8),0) ;
            }
            rs.close();
            s.close();

            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new DetailProduct();
        }
    }
    public boolean updateDetailProduct(DetailProduct detail) {
        PreparedStatement s = null;
            try {
                String sql = "update chi_tiet_sp set id_san_pham = ?, mau = ?, size = ?, soluong = ?, gia = ?, giasale = ?, giamgia = ? where idchitietsp = ?";
                s = ConnectionDB.connection(sql);
                s.setInt(1, detail.getIdPro());
                s.setString(2, detail.getMau());
                s.setString(3, detail.getSize());
                s.setInt(4, detail.getSoLuong());
                s.setLong(5, detail.getGia());
                s.setLong(6, detail.getGiaGiam());
                s.setInt(7, detail.getGiamGia());
                s.setInt(8, detail.getId());
                s.executeUpdate();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
    }
    // thêm chi tiết sản phẩm mới
    public boolean insertDetailProduct(DetailProduct detail) {
        PreparedStatement s = null;
        try {
            String sql = "Insert into chi_tiet_sp values (null,?,?,?,?,?,?,?)";
            s = ConnectionDB.connection(sql);
            s.setInt(1, detail.getIdPro());
            s.setString(2, detail.getMau());
            s.setString(3, detail.getSize());
            s.setInt(4, detail.getSoLuong());
            s.setLong(5, detail.getGia());
            s.setLong(6, detail.getGiaGiam());
            s.setInt(7, detail.getGiamGia());
            s.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
