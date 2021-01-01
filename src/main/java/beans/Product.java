package beans;



import DAO.EvaluateDAO;
import DAO.FormatedPriceDAO;
import empty.DetailProductEmpty;
import empty.EvaluateEmpty;
import empty.ProductEmpty;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class Product {
    private int id;
    private String name;
    private int idDanhMuc;
    private long gia;
    private long giaKM;
    private String moTa;
    private String thongTin;
    private String link;
    private String img;
    private String date;
    private int giamgia;
    private String status;
    private double danhGia;
    private int quantity;

    public Product(int id, String name, int idDanhMuc, long gia, long giaKM, String moTa, String thongTin, String link, String img, String date, int giamgia, String status) {
        this.id = id;
        this.name = name;
        this.idDanhMuc = idDanhMuc;
        this.gia = gia;
        this.giaKM = giaKM;
        this.moTa = moTa;
        this.thongTin = thongTin;
        this.link = link;
        this.img = img;
        this.date = date;
        this.giamgia = giamgia;
        this.status = status;
        this.danhGia = 0;
        this.quantity = 0;
    }

    public Product() {
    }
    public List<String> splitStrImg() {
        List<String> listImage = new LinkedList<>();
        String[] splitImg = img.split(";");
        for (String item:splitImg
        )
            listImage.add(item);

        return listImage;
    }
    public double getDanhGia() {
        return danhGia;
    }

    public void setEvaListPro(List<Product> listPro) {
        for (Product item:
                listPro) {
            item.setDanhGia();
        }
    }
    public void setDanhGia() {
        List<Evaluate> listEva = new EvaluateEmpty().getAllEvaluateProductByIdProduct(this.id);
        this.danhGia = new EvaluateDAO().everageEva(listEva);
    }
    // xet' số sao lẻ < 0.5 set 0.5 : set 1
    public int getOldEva() {
        double temp = this.danhGia%(int)this.danhGia;
        if ( temp != 0) {
            if (temp > 0.5)
                return 2;
            else
                return 1;
        }
        return 0;
    }



    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
        return FormatedPriceDAO.formatedGia(getGia());
    }
    public String currentFormatGiaKM() {
        return FormatedPriceDAO.formatedGia(getGiaKM());
    }
    public long getGia() {
        return gia;
    }

    public void setGia(long gia) {
        this.gia = gia;
    }

    public long getGiaKM() {
        return giaKM;
    }

    public void setGiaKM(long giaKM) {
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
