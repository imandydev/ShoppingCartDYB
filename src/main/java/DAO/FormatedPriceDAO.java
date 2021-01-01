package DAO;

import beans.DetailProduct;
import beans.Product;

import java.text.DecimalFormat;

public class FormatedPriceDAO {
    public static String formatedGia(long gia) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(gia);
    }

}
