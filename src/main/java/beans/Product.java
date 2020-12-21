package beans;



import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public class Product {
    private int id;
    private String name;
    private int idDanhMuc;
    private BigDecimal gia;
    private BigDecimal giaKM;
    private String moTa;
    private String thongTin;
    private String link;
    private String img;
    private String date;
    private int giamgia;
    private String status;

    public Product(int id, String name, int idDanhMuc, double gia, double giaKM, String moTa, String thongTin, String link, String img, String date, int giamgia, String status) {
        this.id = id;
        this.name = name;
        this.idDanhMuc = idDanhMuc;
        this.gia = new BigDecimal(Double.toString(gia));
        this.giaKM = new BigDecimal(Double.toString(giaKM));;
        this.moTa = moTa;
        this.thongTin = thongTin;
        this.link = link;
        this.img = img;
        this.date = date;
        this.giamgia = giamgia;
        this.status = status;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getIdDanhMuc() {
        return idDanhMuc;
    }

    public int getGiamgia() {
        return giamgia;
    }

    public void setGiamgia(int giamgia) {
        this.giamgia = giamgia;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String currentFormatGia() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(getGia());
    }
    public String currentFormatGiaKM() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(getGiaKM());
    }
    public BigDecimal getGia() {
        return gia;
    }

    public void setGia(BigDecimal gia) {
        this.gia = gia;
    }

    public BigDecimal getGiaKM() {
        return giaKM;
    }

    public void setGiaKM(BigDecimal giaKM) {
        this.giaKM = giaKM;
    }

    public String getMoTa() {
        return moTa;
    }

    public String getThongTin() {
        return thongTin;
    }

    public String getLink() {
        return link;
    }

    public String getImg() {
        return img;
    }

    public String getDate() {
        return date;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setIdDanhMuc(int idDanhMuc) {
        this.idDanhMuc = idDanhMuc;
    }



    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public void setThongTin(String thongTin) {
        this.thongTin = thongTin;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
