package beans;

import DAO.FormatedPriceDAO;

import java.math.BigDecimal;

public class PriceDetailSingle {
    private String price;
    private String priceSale;
    private long priceR;
    private long priceS;
    private int statusDiscount;
    private String total;
    private int idDetail;
    private int soLuongConLai;
    public PriceDetailSingle(String price, String priceSale, long priceR, long priceS, int statusDiscount, int soluong) {
        this.price = price;
        this.priceSale = priceSale;
        this.priceR = priceR;
        this.priceS = priceS;
        this.statusDiscount = statusDiscount;
        this.soLuongConLai = soluong;
    }
    public PriceDetailSingle(String price, long priceR, int statusDiscount, int soluong) {
        this.price = price;
        this.priceR = priceR;
        this.statusDiscount = statusDiscount;
        this.soLuongConLai = soluong;
    }
    public PriceDetailSingle(String price, String priceSale, long priceR, long priceS, int statusDiscount, String total, int idDetail) {
        this.price = price;
        this.priceSale = priceSale;
        this.priceR = priceR;
        this.priceS = priceS;
        this.statusDiscount = statusDiscount;
        this.total = total;
        this.idDetail = idDetail;
    }
    public PriceDetailSingle(String price, long priceR, int statusDiscount, String total, int idDetail) {
        this.price = price;
        this.priceR = priceR;
        this.statusDiscount = statusDiscount;
        this.total = total;
        this.idDetail = idDetail;
    }

    public PriceDetailSingle() {
    }

    public int getStatusDiscount() {
        return statusDiscount;
    }

    public void setStatusDiscount(int statusDiscount) {
        this.statusDiscount = statusDiscount;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(String priceSale) {
        this.priceSale = priceSale;
    }

    public long getPriceR() {
        return priceR;
    }

    public void setPriceR(long priceR) {
        this.priceR = priceR;
    }

    public long getPriceS() {
        return priceS;
    }

    public void setPriceS(long priceS) {
        this.priceS = priceS;
    }

    public int getSoLuongConLai() {
        return soLuongConLai;
    }

    public void setSoLuongConLai(int soLuongConLai) {
        this.soLuongConLai = soLuongConLai;
    }
}
