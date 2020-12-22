package empty;

import beans.Category;
import beans.Evaluate;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class EvaluateEmpty {
    public List<Evaluate> getAllEvaluateProductByIdProduct(int idPro) {
        PreparedStatement s = null;
        try {
            String sql ="select * from danh_gia where id_san_pham = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idPro);
            List<Evaluate> listEva = new LinkedList<>();
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                listEva.add(new Evaluate(rs.getInt(1),rs.getDouble(2),rs.getInt(3),rs.getInt(4),rs.getString(5)));
            }
            rs.close();
            s.close();
            return listEva;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
}
