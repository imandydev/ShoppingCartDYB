package beans;

public class Menu {
    private int id;
    private String name;
    private String link;
    private String date;
    private int orderMenu;

    public Menu(int id, String name, String link, String date, int orderMenu) {
        this.id = id;
        this.name = name;
        this.link = link;
        this.date = date;
        this.orderMenu = orderMenu;
    }

    public Menu() {
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLink() {
        return link;
    }

    public String getDate() {
        return date;
    }

    public int getOrderMenu() {
        return orderMenu;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setOrderMenu(int orderMenu) {
        this.orderMenu = orderMenu;
    }
}
