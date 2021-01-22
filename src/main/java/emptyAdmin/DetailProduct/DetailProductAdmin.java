package emptyAdmin.DetailProduct;

import beans.DetailProduct;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class DetailProductAdmin {
    public boolean deleteDetailProductByIdProduct(int idPro) {
        PreparedStatement s = null;
        try {
            String sql ="DELETE FROM chi_tiet_sp WHERE id_san_pham = ?";
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
    public List<DetailProduct> getAllDetailProductByIdProduct(int id) {
        PreparedStatement s = null;
        try {
            String sql = "select * from chi_tiet_sp where id_san_pham = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,id);
            List<DetailProduct> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listPro.add( new DetailProduct(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5),rs.getLong(6),rs.getLong(7),rs.getInt(8),0)) ;
            }
            rs.close();
            s.close();
            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
}
