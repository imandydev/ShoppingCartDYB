package beans;

import java.sql.Timestamp;

public class Order {
    private int id;
    private int idUser;
    private Timestamp time;
    private String trangThai;
    private String ghiChu;
    private int idGiamGia;
    private long tongTien;
    private String diaChi;
    public Order(int id, int idUser, Timestamp time, String trangThai, String ghiChu, int idGiamGia, long tongTien, String diaChi) {
        this.id = id;
        this.idUser = idUser;
        this.time = time;
        this.trangThai = trangThai;
        this.ghiChu = ghiChu;
        this.idGiamGia = idGiamGia;
        this.tongTien = tongTien;
        this.diaChi = diaChi;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public long getTongTien() {
        return tongTien;
    }

    public void setTongTien(long tongTien) {
        this.tongTien = tongTien;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public int getIdGiamGia() {
        return idGiamGia;
    }

    public void setIdGiamGia(int idGiamGia) {
        this.idGiamGia = idGiamGia;
    }
}
