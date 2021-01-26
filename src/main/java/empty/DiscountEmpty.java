package empty;

import beans.Category;
import beans.Discount;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class DiscountEmpty {
    public List<Discount> getListDiscountCodeByIdUser(int idUser) {
        List<Discount> listDiscount = new LinkedList<>();
        PreparedStatement s = null;
        try {
            String sql ="SELECT ma_giam_gia.idgiamgia,ma_giam_gia.magiamgia,ma_giam_gia.hinhthucgiam,ma_giam_gia.thoigianbatdau,ma_giam_gia.thoigianketthuc,ma_giam_gia.giagiam FROM giam_gia_user JOIN ma_giam_gia on giam_gia_user.idgiamgia = ma_giam_gia.idgiamgia join `user` ON giam_gia_user.iduser = `user`.iduser WHERE `user`.iduser = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idUser);
            ResultSet rs = s.executeQuery();
            while (rs.next())
                listDiscount.add(new Discount(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getTimestamp(4),rs.getTimestamp(5),rs.getLong(6)));
            rs.close();
            s.close();
            return listDiscount;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return listDiscount;
        }

    }
    public Discount getDiscountCodeByIdDiscount(int idDiscount) {
        Discount dis = null;
        PreparedStatement s = null;
        try {
            String sql ="SELECT * from ma_giam_gia where idgiamgia = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idDiscount);
            ResultSet rs = s.executeQuery();
            if (rs.next())
                dis = new Discount(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getTimestamp(4),rs.getTimestamp(5),rs.getLong(6));
            rs.close();
            s.close();
            return dis;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return dis;
        }

    }
    public List<Discount> getAllDiscount() {
        List<Discount> listDiscount = new LinkedList<>();
        PreparedStatement s = null;
        try {
            String sql ="SELECT * from ma_giam_gia where idgiamgia != -1";
            s = ConnectionDB.connection(sql);
            ResultSet rs = s.executeQuery();
            while (rs.next())
                listDiscount.add(new Discount(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getTimestamp(4),rs.getTimestamp(5),rs.getLong(6)));
            rs.close();
            s.close();
            return listDiscount;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return listDiscount;
        }

    }
}
