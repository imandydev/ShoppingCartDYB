package empty;

import DAO.EvaluateDAO;
import DAO.PasswordEncode;
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
                    listPro.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getLong(4), rs.getLong(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),rs.getInt(11),rs.getString(12)));

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
                listPro.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getLong(4), rs.getLong(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12)));

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
                pro = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getLong(4), rs.getLong(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12));
            rs.close();
            s.close();
            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
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
                    listPro.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getLong(4), rs.getLong(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),rs.getInt(11),rs.getString(12)));
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
           if (item.getGia() >= priceStart && item.getGia() <= priceEnd)
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
    public void updateImgProcessEdited(int id, String[] arr) {
        PreparedStatement s = null;
        String root = "SaveImage/Product/" + id;
        String path = "";
                for(int i = 0; i < arr.length; i++) {
                    if (arr[i] != "")
                        path += root + "/" + i + ".png;";
                }
        try {
            String sql_2 = "update san_pham set image = ? where id_san_pham = ? ";
            s = ConnectionDB.connection(sql_2);
            s.setString(1,path);
            s.setInt(2,id);
            s.executeUpdate();
            s.close();
        }catch (ClassNotFoundException | SQLException e) {
        }
    }
    public void updateImg(Product pro, List<String> listImg, String imgMain) {
        PreparedStatement s = null;
        //đường dẫn cố địch
        String root = "SaveImage/Product/" + pro.getId();
        // hình ảnh
        String pathImage = "";
        if (!imgMain.equals(""))
            pathImage += root + "/" + "0.png;";
        for (int i = 0; i < listImg.size(); i++)
                pathImage += root + "/" + (1 + i) + ".png;";
        try {
            String sql_2 = "update san_pham set image = ? where id_san_pham = ? ";
            s = ConnectionDB.connection(sql_2);
            s.setString(1,pathImage);
            s.setInt(2,pro.getId());
            s.executeUpdate();
            s.close();
        }catch (ClassNotFoundException | SQLException e) {
        }
    }
    public Product getProNewInsert() {
        Product pro = null;
        PreparedStatement s = null;
        try {
            String sql = "Select * From san_pham ORDER BY id_san_pham DESC LIMIT 1";
            s = ConnectionDB.connection(sql);
            ResultSet rs = s.executeQuery();
            if (rs.next())
                pro = new Product(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getLong(4),rs.getLong(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12));
            rs.close();
            s.close();
            return pro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public boolean insertProduct(Product pro) {
            PreparedStatement s = null;

            try {
                String sql = "insert into san_pham values (null,?,?,?,?,?,?,null,null,Now(),?,?)";
                s = ConnectionDB.connection(sql);
                s.setString(1,pro.getName());
                s.setInt(2,pro.getIdDanhMuc());
                s.setLong(3,pro.getGia());
                s.setLong(4,pro.getGiaKM());
                s.setString(5,pro.getMoTa());
                s.setString(6,pro.getThongTin());
                s.setInt(7,pro.getGiamgia());
                s.setString(8,pro.getStatus());
                s.executeUpdate();
                s.close();
                return true;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }
    }
    // update lại sản phẩm
    public boolean updateProduct(Product product) {
        PreparedStatement s = null;
        try {
            String sql = "update san_pham set ten_san_pham = ?, id_danh_muc = ?, gia = ?, gia_km = ?, mo_ta = ?, thong_tin = ?, giamgia = ?, status = ? where id_san_pham = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1, product.getName());
            s.setInt(2, product.getIdDanhMuc());
            s.setLong(3, product.getGia());
            s.setLong(4, product.getGiaKM());
            s.setString(5,product.getMoTa());
            s.setString(6,product.getThongTin());
            s.setInt(7,product.getGiamgia());
            s.setString(8,product.getStatus());
            s.setInt(9,product.getId());
            s.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
