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
    public boolean updateInfor(Infor infor) {
        PreparedStatement s = null;
        try {
            String sql = "update thong_tin set logo = ?, ten_cong_ty = ?,dia_chi = ?, hotline = ? , email = ?, copyright = ?, fb = ?, ins = ? , twi = ? , pri = ? , ban_do = ? where id_thong_tin = ?";
            s = ConnectionDB.connection(sql);
            s.setString(1,infor.getLogo());
            s.setString(2,infor.getTenCongTy());
            s.setString(3,infor.getDiaChi());
            s.setLong(4,Long.parseLong(infor.getHotLine()));
            s.setString(5,infor.getEmail());
            s.setString(6,infor.getCopyRight());
            s.setString(7,infor.getFb());
            s.setString(8,infor.getIns());
            s.setString(9,infor.getTwi());
            s.setString(10,infor.getPri());
            s.setString(11,infor.getBanDo());
            s.setInt(12,infor.getId());
            s.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
