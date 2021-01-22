package beans;

import DAO.FormatedPriceDAO;
import empty.DetailProductEmpty;
import empty.ProductEmpty;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.LinkedList;
import java.util.List;

public class DetailProduct {
    private int id;
    private int idPro;
    private String name;
    private String mau;
    private String size;
    private int soLuong; // số lượng sản phẩm còn lại trong kho
    private long gia;
    private long giaGiam;
    private int quantity; // số lượng sản phẩm chọn thêm vào giỏ hàng
    private int giamGia;
    public DetailProduct(int id, int idPro, String mau, String size, int soLuong, long gia, long giaGiam, int giamGia) {
        this.id = id;
        this.idPro = idPro;
        this.mau = mau;
        this.size = size;
        this.soLuong = soLuong;
        this.gia = gia;
        this.giaGiam = giaGiam;
        this.giamGia = giamGia;
        this.quantity = 0;
        this.name = getProbyId(this.id).getName();
        setPriceProduct();
    }
    // temp chỉ để phân biệt giữa 2 constructor
    public DetailProduct(int id, int idPro, String mau, String size, int soLuong, long gia, long giaGiam, int giamGia,int temp) {
        this.id = id;
        this.idPro = idPro;
        this.mau = mau;
        this.size = size;
        this.soLuong = soLuong;
        this.gia = gia;
        this.giaGiam = giaGiam;
        this.giamGia = giamGia;
    }
    public Product getProbyId(int id) {
        return new ProductEmpty().getAllProdcutByIdProdcut(this.idPro);
    }
    public List<String> getImgFromProduct() {
        Product pro = getProbyId(this.idPro);
        List<String> listImage = new LinkedList<>();
        String[] splitImg = pro.getImg().split(";");
        for (String item:splitImg
        )
            listImage.add(item);

        return listImage;
    }
    public void setPriceProduct() {
        Product pro = getProbyId(this.id);
        if (this.giaGiam == 0 ) {
            setGiaGiam(pro.getGiaKM());
        } if (this.gia == 0 && this.giaGiam == 0) {
            setGia(pro.getGia());
            setGiaGiam(pro.getGiaKM());
        } if (this.gia == 0)
            setGia(pro.getGia());

    }
    public DetailProduct() {
    }

    public int getGiamGia() {
        return giamGia;
    }

    public void setGiamGia(int giamGia) {
        this.giamGia = giamGia;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public long getPriceAmount() {
        if (giamGia == 0)
            return gia * quantity;
        return giaGiam * quantity;
    }
    // tìm kiếm chi tiết sản phẩm theo id để tìm ra được danh sách màu
    public List<DetailProduct> getListProductByIdThis() {
        return new DetailProductEmpty().getListDetailColorNot(this.idPro);
    }
    // tìm kiếm sản phẩm theo id và màu để sử dụng tìm ra danh sách size theo id và màu
    public List<DetailProduct> getListProductByIdColorThis() {
        return new DetailProductEmpty().getAllProdcutByIdAndColor(this.idPro,this.mau);
    }
    public void add(int amount){
        setQuantity(this.quantity + amount);
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean checkSize(String that) {
        return this.size.equalsIgnoreCase(that);
    }

    public boolean checkMau(String that) {
        return this.mau.equalsIgnoreCase(that);
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

    public long getGia() {
        return gia;
    }

    public void setGia(long gia) {
        this.gia = gia;
    }

    public long getGiaGiam() {
        return giaGiam;
    }

    public void setGiaGiam(long giaGiam) {
        this.giaGiam = giaGiam;
    }

    public String formatedPriceAmount(long price) {
        return FormatedPriceDAO.formatedGia(price);
    }

    public String currentFormatGia() {
        return FormatedPriceDAO.formatedGia(getGia());
    }
    public String currentFormatGiaKM() {
        return FormatedPriceDAO.formatedGia(getGiaGiam());
    }
    public String currentFormatGiaThat(int quantity) {
        return FormatedPriceDAO.formatedGia(getGia()*quantity);
    }
    public String currentFormatGiaKMThat(int quantity) {
        return FormatedPriceDAO.formatedGia(getGiaGiam()*quantity);
    }
}
