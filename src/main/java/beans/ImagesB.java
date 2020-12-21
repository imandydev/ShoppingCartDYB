package beans;

public class ImagesB {
    private int id;
    private String cate;
    private String img;
    private String location;
    private int order;
    private String date;
    private String text;

    public ImagesB(int id, String cate, String img, String location, int order, String date, String text) {
        this.id = id;
        this.cate = cate;
        this.img = img;
        this.location = location;
        this.order = order;
        this.date = date;
        this.text = text;
    }

    public ImagesB() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
