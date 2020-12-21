package beans;

public class Category {
    private int id;
    private int idMenu;
    private String name;
    private String date;
    private int order;

    public Category(int id, int idMenu, String name, String date, int order) {
        this.id = id;
        this.idMenu = idMenu;
        this.name = name;
        this.date = date;
        this.order = order;
    }

    public Category() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(int idMenu) {
        this.idMenu = idMenu;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }
}
