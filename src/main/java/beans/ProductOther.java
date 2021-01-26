package beans;

import java.util.LinkedList;
import java.util.List;

public class ProductOther {
    private int idProOther;
    private int idPro;
    private int idMenu;
    private String proName;
    private String img;
    private String menuName;
    public ProductOther(int idProOther, int idPro, int idMenu, String proName, String img) {
        this.idProOther = idProOther;
        this.idPro = idPro;
        this.idMenu = idMenu;
        this.proName = proName;
        this.img = getImgFromProduct(img);
    }
    public ProductOther(int idProOther, int idPro, int idMenu) {
        this.idProOther = idProOther;
        this.idPro = idPro;
        this.idMenu = idMenu;
    }
    public ProductOther(int idProOther, int idPro, int idMenu, String proName, String img, String menuName) {
        this.idProOther = idProOther;
        this.idPro = idPro;
        this.idMenu = idMenu;
        this.proName = proName;
        this.img = getImgFromProduct(img);
        this.menuName = menuName;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getImgFromProduct(String imgInput) {
        String[] arr = imgInput.split(";");
        return arr[0];
    }
    public ProductOther() {
    }

    public int getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(int idMenu) {
        this.idMenu = idMenu;
    }

    public int getIdProOther() {
        return idProOther;
    }

    public int getIdPro() {
        return idPro;
    }

    public String getProName() {
        return proName;
    }

    public String getImg() {
        return img;
    }

    public void setIdProOther(int idProOther) {
        this.idProOther = idProOther;
    }

    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
