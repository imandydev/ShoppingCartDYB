package beans;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.LinkedList;
import java.util.List;

public class DetailProduct {
    private int id;
    private int idPro;
    private String mau;
    private String size;
    private int soLuong;
    private BigDecimal gia;
    private BigDecimal giaGiam;


    public DetailProduct(int id, int idPro, String mau, String size, int soLuong, long gia, long giaGiam) {
        this.id = id;
        this.idPro = idPro;
        this.mau = mau;
        this.size = size;
        this.soLuong = soLuong;
        this.gia = new BigDecimal(Long.toString(gia));
        this.giaGiam = new BigDecimal(Long.toString(giaGiam));

    }

    public DetailProduct() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdPro() {
        return idPro;
    }

    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }

    public String getMau() {
        return mau;
    }

    public void setMau(String mau) {
        this.mau = mau;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public BigDecimal getGia() {
        return gia;
    }

    public void setGia(BigDecimal gia) {
        this.gia = gia;
    }

    public BigDecimal getGiaGiam() {
        return giaGiam;
    }

    public void setGiaGiam(BigDecimal giaGiam) {
        this.giaGiam = giaGiam;
    }



    public String currentFormatGia() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(getGia());
    }
    public String currentFormatGiaKM() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(getGiaGiam());
    }

}
