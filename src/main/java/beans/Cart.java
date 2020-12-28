package beans;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    Map<Integer, Product> data = new HashMap<>();

    public Cart() {
    }
    public void put(Product p, int amount) {
        if (p == null) return;
        if (data.containsKey(p.getId())){
            data.get(p.getId()).add();
            return;
        }
        p.setQuantity(amount);
        data.put(p.getId(),p);
    }
    public void update(String id, int quantity) {
        if(quantity < 0) return;
        if (data.containsKey(id)) data.get(id).setQuantity(quantity);
    }
    public void remove(String id) {
        data.remove(id);
    }
    public long total() {
        long sum = 0;
        for (Product p: data.values()
             ) {
            if (p.getGiaKM().longValue() != 0 && p.getGiamgia() == 1)
                sum += p.getGiaKM().longValue() * p.getQuantity();
            else
                sum += p.getGia().longValue() * p.getQuantity();
        }
        return sum;
    }
    public static Cart getCart(HttpSession session) {
        return session.getAttribute("cart") == null ? new Cart() : (Cart)session.getAttribute("cart");
    }
    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }
    public Collection<Product> getData() {
        return data.values();
    }
}
