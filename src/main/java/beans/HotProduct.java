package beans;

public class HotProduct {
    private int idPro;
    private int amount;

    public HotProduct(int idPro, int amount) {
        this.idPro = idPro;
        this.amount = amount;
    }

    public HotProduct() {
    }

    public int getIdPro() {
        return idPro;
    }

    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
