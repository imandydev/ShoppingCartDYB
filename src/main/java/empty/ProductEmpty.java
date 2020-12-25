package empty;

import DAO.EvaluateDAO;
import beans.Menu;
import beans.Product;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class ProductEmpty {
    private Product eva = new Product();
    public List<Product> getAllProduct() {
        PreparedStatement s = null;
        try {
            String sql = "SELECT * FROM san_pham";
            s = ConnectionDB.connection(sql);
            List<Product> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                    listPro.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),rs.getInt(11),rs.getString(12)));

            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public List<Product> getAllProdcutByIdMenu(int id) {
        PreparedStatement s = null;
        try {
            String sql = "";
            if (id == 5)
                sql = "SELECT * FROM san_pham INNER JOIN (danh_muc INNER JOIN menu on danh_muc.idmenu = menu.idmenu) on san_pham.id_danh_muc = danh_muc.id_danh_muc WHERE menu.idmenu = ? and san_pham.status = 'public' and san_pham.giamgia = 1";
            else
                sql = "SELECT * FROM san_pham INNER JOIN (danh_muc INNER JOIN menu on danh_muc.idmenu = menu.idmenu) on san_pham.id_danh_muc = danh_muc.id_danh_muc WHERE menu.idmenu = ? and san_pham.status = 'public' and san_pham.giamgia = 0";
            s = ConnectionDB.connection(sql);
            s.setInt(1,id);
            List<Product> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listPro.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12)));

            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public Product getAllProdcutByIdProdcut(int idPro) {
        PreparedStatement s = null;
        try {
            String sql = "SELECT * FROM san_pham where id_san_pham = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idPro);
            Product pro = null;
            ResultSet rs = s.executeQuery();
            if (rs.next())
                pro = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12));


            rs.close();
            s.close();

            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new Product();
        }
    }
    public List<Product> getAllProdcutByName(String name) {
        PreparedStatement s = null;
        try {
            String sql = "SELECT * FROM san_pham INNER JOIN (danh_muc INNER JOIN menu on danh_muc.idmenu = menu.idmenu) on san_pham.id_danh_muc = danh_muc.id_danh_muc WHERE san_pham.ten_san_pham like \"%"  + name  +"%\" and san_pham.status = 'public'";
            s = ConnectionDB.connection(sql);
            List<Product> listPro = new LinkedList<>();
            List<Integer> check = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                if (!check.contains(rs.getInt(1))) {
                    check.add(rs.getInt(1));
                    listPro.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),rs.getInt(11),rs.getString(12)));
                }
            }
            rs.close();
            s.close();

            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public List<Product> getAllProdcutFillPrice(String searchRep, double priceStart, double priceEnd ) {
        List<Product> listPro = new LinkedList<>();
        List<Product> listProSearchByName = getAllProdcutByName(searchRep);
        if (priceStart == 0 && priceEnd ==0)
            return listProSearchByName;
        for (Product item: listProSearchByName) {
           if (item.getGia().doubleValue() >= priceStart && item.getGia().doubleValue() <= priceEnd)
                listPro.add(item);
        }

        return listPro;
    }
    public List<Product> getAllProdcutFillCate(String searchRep, double priceStart, double priceEnd, int idCate) {
        List<Product> listPro = new LinkedList<>();
        List<Product> listProSearchByIdCate = getAllProdcutFillPrice(searchRep,priceStart,priceEnd);
        for (Product item: listProSearchByIdCate) {
            if (item.getIdDanhMuc() == idCate)
                listPro.add(item);
        }

        return listPro;
    }
    public List<Product> getAllProductByPage(List<Product> listPro, int start, int end) {
        List<Product> listProByPage = new LinkedList<>();
        for (int i = start; i < end; i++) {
            listProByPage.add(listPro.get(i));
        }
        eva.setEvaListPro(listProByPage);
        return listProByPage;
    }
    public List<Product> getAllProductsByEvaluate(List<Product> list, int evaluate ) {
        List<Product> listProByPage = new LinkedList<>();
        for (Product item:
             list) {
            if (item.getDanhGia() >= evaluate)
                listProByPage.add(item);
        }
        return  listProByPage;
    }

}
