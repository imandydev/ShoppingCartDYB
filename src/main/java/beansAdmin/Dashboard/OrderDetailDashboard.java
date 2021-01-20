package beansAdmin.Dashboard;
// tạo ra chi tiết đơn hàng trong table trang dashboard
public class OrderDetailDashboard {
    private int idPro;
    private String namePro;
    private String size;
    private String color;
    private int amount;
    private long price;

    public OrderDetailDashboard(int idPro, String namePro, String size, String color, int amount, long price) {
        this.idPro = idPro;
        this.namePro = namePro;
        this.size = size;
        this.color = color;
        this.amount = amount;
        this.price = price;
    }

    public OrderDetailDashboard() {
    }

    public int getIdPro() {
        return idPro;
    }

    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }

    public String getNamePro() {
        return namePro;
    }

    public void setNamePro(String namePro) {
        this.namePro = namePro;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }
}
