package beans;

public class PriceFormat {
    private String price;
    private String priceSale;

    public PriceFormat(String price, String priceSale) {
        this.price = price;
        this.priceSale = priceSale;
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
}
