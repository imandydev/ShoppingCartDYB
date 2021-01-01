package beans;

import DAO.FormatedPriceDAO;

import java.math.BigDecimal;

public class PriceDetailSingle {
    private String price;
    private String priceSale;
    private long priceR;
    private long priceS;
    private int statusDiscount;
    public PriceDetailSingle(String price, String priceSale, long priceR, long priceS, int statusDiscount) {
        this.price = price;
        this.priceSale = priceSale;
        this.priceR = priceR;
        this.priceS = priceS;
        this.statusDiscount = statusDiscount;
    }
    public PriceDetailSingle(String price, long priceR, int giamGia) {
        this.price = price;
        this.priceR = priceR;
        this.statusDiscount = giamGia;
    }
    public PriceDetailSingle() {
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
}
