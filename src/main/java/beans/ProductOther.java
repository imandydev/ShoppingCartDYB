package beans;

public class ProductOther {
    private int idProOther;
    private int idPro;
    private int idMenu;
    private String proName;
    private String img;

    public ProductOther(int idProOther, int idPro, int idMenu, String proName, String img) {
        this.idProOther = idProOther;
        this.idPro = idPro;
        this.idMenu = idMenu;
        this.proName = proName;
        this.img = img;
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
