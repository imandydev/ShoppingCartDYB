package DAO;

import beans.DetailProduct;
import beans.Product;

import java.text.DecimalFormat;

public class FormatedPriceDAO {
    public String formatedGia(double gia) {
        DecimalFormat formatter = new DecimalFormat("###");
        return formatter.format(gia);
    }
    public DetailProduct checkPrice(Product pro, DetailProduct detailPro) {
        if (detailPro.currentFormatGia().equals("0") && detailPro.currentFormatGiaKM().equals("0")) {
            detailPro.setGia(pro.getGia());
            detailPro.setGiaGiam(pro.getGiaKM());
        }
        return detailPro;
    }
}
