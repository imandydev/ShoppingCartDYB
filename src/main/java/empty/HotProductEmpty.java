package empty;

import DAO.RandomNumber;
import beans.HotProduct;
import beans.Product;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class HotProductEmpty {
    private Product eva = new Product();
    public List<HotProduct> getAllAmountHotProduct() {
        PreparedStatement s = null;
        try {
            String sql = "SELECT id_san_pham, count(*) FROM chitietdh INNER JOIN chi_tiet_sp ON chitietdh.idchitietsp = chi_tiet_sp .idchitietsp GROUP BY chi_tiet_sp.id_san_pham";
            s = ConnectionDB.connection(sql);
            List<HotProduct> listPro = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
              listPro.add(new HotProduct(rs.getInt(1),rs.getInt(2)));
            }
            rs.close();
            s.close();
            Collections.sort(listPro, new Comparator<HotProduct>() {
                @Override
                public int compare(HotProduct o1, HotProduct o2) {
                    return o2.getAmount() - o1.getAmount();
                }
            });
            return listPro;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public List<Product> get4HotProduct(List<HotProduct> listPro) {
        List<Product> list = new LinkedList<>();
        List<Integer> check = new LinkedList<>();
        int size = new HotProductEmpty().getAllAmountHotProduct().size();
        if (size < 4) {
            for (int i = 0; i < size; i++) {
                int rd = 0;
                do {
                    rd = RandomNumber.random0To(20);
                } while (check.contains(rd));
                check.add(rd);
                list.add(new ProductEmpty().getAllProdcutByIdProdcut(listPro.get(rd).getIdPro()));
            }
        } else {
            for (int i = 0; i < 4; i++) {
                int rd = 0;
                do {
                    rd = RandomNumber.random0To(20);
                } while (check.contains(rd));
                check.add(rd);
                list.add(new ProductEmpty().getAllProdcutByIdProdcut(listPro.get(rd).getIdPro()));
            }
        }
        eva.setEvaListPro(list);
        return list;
    }
}
