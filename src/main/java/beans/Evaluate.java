package beans;

public class Evaluate {
    private int id;
    private double muc_Danh_Gia;
    private int id_San_Pham;
    private int id_User;
    private String date_Add;

    public Evaluate(int id, double muc_Danh_Gia, int id_San_Pham, int id_User, String date_Add) {
        this.id = id;
        this.muc_Danh_Gia = muc_Danh_Gia;
        this.id_San_Pham = id_San_Pham;
        this.id_User = id_User;
        this.date_Add = date_Add;
    }
    public Evaluate() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getMuc_Danh_Gia() {
        return muc_Danh_Gia;
    }

    public void setMuc_Danh_Gia(double muc_Danh_Gia) {
        this.muc_Danh_Gia = muc_Danh_Gia;
    }

    public int getId_San_Pham() {
        return id_San_Pham;
    }

    public void setId_San_Pham(int id_San_Pham) {
        this.id_San_Pham = id_San_Pham;
    }

    public int getId_User() {
        return id_User;
    }

    public void setId_User(int id_User) {
        this.id_User = id_User;
    }

    public String getDate_Add() {
        return date_Add;
    }

    public void setDate_Add(String date_Add) {
        this.date_Add = date_Add;
    }
}
