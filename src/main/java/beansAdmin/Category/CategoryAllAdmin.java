package beansAdmin.Category;
// lấy ra cate để phục vụ trang danh mục admin
public class CategoryAllAdmin {
    private int id;
    private String name;
    private String nameMenu;
    private int order;
    private String date;

    public CategoryAllAdmin(int id, String name, String nameMenu, int order, String date) {
        this.id = id;
        this.name = name;
        this.nameMenu = nameMenu;
        this.order = order;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNameMenu() {
        return nameMenu;
    }

    public void setNameMenu(String nameMenu) {
        this.nameMenu = nameMenu;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
