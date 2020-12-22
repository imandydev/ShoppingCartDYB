package empty;

import beans.Infor;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class InforEmpty {
    public Infor getInfor() {
        PreparedStatement s = null;
        try {
            String sql = "select * from thong_tin";
            s = ConnectionDB.connection(sql);
            ResultSet rs = s.executeQuery();
            rs.next();
            Infor infor = new Infor(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13) );
            rs.close();
            s.close();
            return infor;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new Infor();
        }
    }
}
