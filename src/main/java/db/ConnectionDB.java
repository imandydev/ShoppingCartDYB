package db;

import java.sql.*;

public class ConnectionDB {
    static Connection con;
    public static Statement connection() throws SQLException, ClassNotFoundException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/finaltest?useUnicode=true&characterEncoding=utf-8", "root","anhduy");
            return con.createStatement();
        } else {
            return con.createStatement();
        }
    }
    public static PreparedStatement connection(String sql) throws SQLException, ClassNotFoundException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/finaltest?useUnicode=true&characterEncoding=utf-8", "root","anhduy");
            return con.prepareStatement(sql);
        } else {
            return con.prepareStatement(sql);
        }
    }
}
