package empty;

import beans.News;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class NewsEmpty {
    public List<News> getAllNews() {
        PreparedStatement s = null;
        try {
            String sql = "select * from dstin";
            s = ConnectionDB.connection(sql);
            List<News> listNews = new LinkedList<>();
            ResultSet rs = s.executeQuery();

            while (rs.next()) {
                listNews.add(new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
            }
            rs.close();
            s.close();
            return listNews;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
}
