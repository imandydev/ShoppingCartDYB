package beansAdmin.Dashboard;

import DAO.FormatedPriceDAO;

import java.sql.Timestamp;

public class OrderDashboard {
    private int id;
    private int idUser;
    private int amount;
    private Timestamp time;
    private String status;
    private long totalPrice;

    public OrderDashboard(int id, int idUser, int amount, Timestamp time, String status, long totalPrice) {
        this.id = id;
        this.idUser = idUser;
        this.amount = amount;
        this.time = time;
        this.status = status;
        this.totalPrice = totalPrice;
    }

    public OrderDashboard() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(long totalPrice) {
        this.totalPrice = totalPrice;
    }
    public String formatPrice() {
        return FormatedPriceDAO.formatedGia(this.totalPrice);
    }
}
