package DAO;

import beans.Evaluate;
import beans.Product;

import java.util.List;

public class EvaluateDAO {

    public double everageEva(List<Evaluate> listEva) {
        double total = 0;
        for (Evaluate item:listEva)
            total += item.getMuc_Danh_Gia();
        if (total == 0)
            return 5;
        return total/listEva.size();
    }

}
