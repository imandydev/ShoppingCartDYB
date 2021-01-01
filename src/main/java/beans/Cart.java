package beans;

import DAO.FormatedPriceDAO;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    Map<Integer, DetailProduct> data = new HashMap<>();

    public Cart() {
    }
    public void put(DetailProduct p, int amount) {
        if (p == null) return;
        if (data.containsKey(p.getId())){
            data.get(p.getId()).add(amount);
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
        for (DetailProduct p: data.values()
             ) {
            if (p.getGiamGia() == 1)
                sum += p.getGiaGiam() * p.getQuantity();
            else
                sum += p.getGia() * p.getQuantity();
        }
        return sum;
    }
    public String formatPrice(long priceTotal) {
        return FormatedPriceDAO.formatedGia(priceTotal);
    }
    public static Cart getCart(HttpSession session) {
        return session.getAttribute("cart") == null ? new Cart() : (Cart)session.getAttribute("cart");
    }
    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }
    public Collection<DetailProduct> getData() {
        return data.values();
    }
}
