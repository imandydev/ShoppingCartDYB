package DAO;

import java.text.DecimalFormat;

public class FormatedPriceDAO {
    public String formatedGia(double gia) {
        DecimalFormat formatter = new DecimalFormat("###");
        return formatter.format(gia);
    }
}
