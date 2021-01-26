package empty;

import beans.DonMua;
import db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmptyDonHang {
    public List<DonMua> getListDonMuaByidUser(int idUser){
        List<DonMua> listDM = new ArrayList<>();
        PreparedStatement s = null;
        try {
            String sql = "SELECT iduser,trangthai,image,soluongmua,ten_san_pham,mau,size,giasale,soluongmua*giasale,san_pham.id_san_pham FROM don_hang INNER JOIN (chitietdh INNER JOIN( chi_tiet_sp INNER JOIN san_pham on chi_tiet_sp.id_san_pham=san_pham.id_san_pham) on chitietdh.idchitietsp=chi_tiet_sp.idchitietsp) on don_hang.ma_don_hang=chitietdh.ma_don_hang\n" +
                    "WHERE don_hang.iduser = ?";
            s = ConnectionDB.connection(sql);
            s.setInt(1,idUser);
            ResultSet rs = s.executeQuery();
            while (rs.next())
                listDM.add(new DonMua(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getLong(8),rs.getLong(9),rs.getInt(10)));
                rs.close();
                s.close();
                return listDM;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return listDM;
        }
    }

//    public static void main(String[] args) {
//        EmptyDonHang y = new EmptyDonHang();
//        DonMua d = new DonMua();
//        d.getListDMbyStatus(y.getListDonMuaByidUser(3));
//        System.out.println( d.listStatus1.get(0).getImage());
//
//    }
}
