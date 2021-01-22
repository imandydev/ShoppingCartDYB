package beansAdmin.Product;

import DAO.FormatedPriceDAO;

import java.util.LinkedList;
import java.util.List;

public class ProductAllProduct {
    private int id;
    private String img;
    private String name;
    private String menuName;
    private String menuCate;
    private String status;
    private String price;
    private String priceDis;

    public ProductAllProduct(int id, String img, String name, String menuName, String menuCate, String status, long price, long priceDis) {
        this.id = id;
        this.img = img;
        this.name = name;
        this.menuName = menuName;
        this.menuCate = menuCate;
        this.status = status;
        this.price = FormatedPriceDAO.formatedGia(price);
        this.priceDis = FormatedPriceDAO.formatedGia(priceDis);
    }
    public List<String> splitStrImg() {
        List<String> listImage = new LinkedList<>();
        String[] splitImg = img.split(";");
        for (String item:splitImg
        )
            listImage.add(item);

        return listImage;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuCate() {
        return menuCate;
    }

    public void setMenuCate(String menuCate) {
        this.menuCate = menuCate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPriceDis() {
        return priceDis;
    }

    public void setPriceDis(String priceDis) {
        this.priceDis = priceDis;
    }
}
