package beans;

import empty.EmptyDonHang;

import java.util.ArrayList;
import java.util.Arrays;

import java.util.List;

public class DonMua {
    private int idUSer;
    private String status;
    private String image;
    private int soLuong;
    private String name;
    private String mauSac;
    private  String size;
    private long priceSale;
    private long tongTien;
    private int idSP;



    public DonMua(int idUSer, String status, String image, int soLuong, String name, String mauSac, String size, long priceSale, long tongTien, int idSP) {
        this.idUSer = idUSer;
        this.status = status;
        this.image = splitStrImg(image).get(0);
        this.soLuong = soLuong;
        this.name=name;
        this.mauSac = mauSac;
        this.size = size;
        this.priceSale = priceSale;
        this.tongTien=tongTien;
        this.idSP=idSP;
    }

    public List<String> splitStrImg(String image) {
        String[] splitImg = image.split(";");
        return new ArrayList<>(Arrays.asList(splitImg));
    }

    public int getIdSP() {
        return idSP;
    }

    public void setIdSP(int idSP) {
        this.idSP = idSP;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdUSer() {
        return idUSer;
    }

    public void setIdUSer(int idUSer) {
        this.idUSer = idUSer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getMauSac() {
        return mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public long getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(long priceSale) {
        this.priceSale = priceSale;
    }

    public long getTongTien() {
        return tongTien;
    }

    public void setTongTien(long tongTien) {
        this.tongTien = soLuong*priceSale;
    }


    public DonMua (){

    }

    public List<DonMua> listStatus1 = new ArrayList<>();
    public List<DonMua> listStatus2 = new ArrayList<>();
    public List<DonMua> listStatus3 = new ArrayList<>();
    public List<DonMua> listStatus4 = new ArrayList<>();
    public List<DonMua> listStatus5 = new ArrayList<>();

    public List<DonMua> getListStatus1() {
        return listStatus1;
    }

    public List<DonMua> getListStatus2() {
        return listStatus2;
    }

    public List<DonMua> getListStatus3() {
        return listStatus3;
    }

    public List<DonMua> getListStatus4() {
        return listStatus4;
    }

    public List<DonMua> getListStatus5() {
        return listStatus5;
    }



    public void getListDMbyStatus(List<DonMua> l){
        if(l.isEmpty()){
            new EmptyDonHang();
        }
        for (DonMua donMua : l) {
            if (donMua.status.equalsIgnoreCase("choxuly")) {
                listStatus1.add(donMua);
            }
            if (donMua.status.equalsIgnoreCase("cholayhang")) {
                listStatus2.add(donMua);
            }
            if (donMua.status.equalsIgnoreCase("danggiao")) {
                listStatus3.add(donMua);
            }
            if (donMua.status.equalsIgnoreCase("dagiao")) {
                listStatus4.add(donMua);
            }
            if (donMua.status.equalsIgnoreCase("dahuy")) {
                listStatus5.add(donMua);
            }
        }
    }
}
