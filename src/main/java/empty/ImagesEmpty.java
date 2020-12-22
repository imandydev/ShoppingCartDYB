package empty;

import beans.ImagesB;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class ImagesEmpty {
    public List<ImagesB> getImagesByCate(String cate) {
        PreparedStatement s = null;
        try {
            String sql = "select * from images where category = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1,cate);
            List<ImagesB> listImages = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listImages.add(new ImagesB(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
            }
            rs.close();
            s.close();
            Collections.sort(listImages, new Comparator<ImagesB>() {
                @Override
                public int compare(ImagesB o1, ImagesB o2) {
                    return o1.getOrder() - o2.getOrder();
                }
            });
            return listImages;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public ImagesB getImagesSingle(String cate) {
        Statement s = null;
        try {
            s = ConnectionDB.connection();
            ResultSet rs = s.executeQuery("select * from images where category like " + "\"" +cate + "\"");
            rs.next();
            ImagesB images = new ImagesB(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7) );
            rs.close();
            s.close();
            return images;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new ImagesB();
        }
    }
}
