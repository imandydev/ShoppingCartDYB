package beans;

import java.math.BigDecimal;

public class PriceFormat {
    private String price;
    private String priceSale;
    private BigDecimal priceR;
    private BigDecimal priceS;
    public PriceFormat(String price, String priceSale, BigDecimal priceR, BigDecimal priceS) {
        this.price = price;
        this.priceSale = priceSale;
        this.priceR = priceR;
        this.priceS = priceS;
    }

    public PriceFormat() {
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

    public BigDecimal getPriceR() {
        return priceR;
    }

    public void setPriceR(BigDecimal priceR) {
        this.priceR = priceR;
    }

    public BigDecimal getPriceS() {
        return priceS;
    }

    public void setPriceS(BigDecimal priceS) {
        this.priceS = priceS;
    }
}
