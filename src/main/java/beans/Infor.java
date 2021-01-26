package beans;

import java.util.LinkedList;
import java.util.List;

public class Infor {
    private int id;
    private String logo;
    private String tenCongTy;
    private String diaChi;
    private String hotLine;
    private String email;
    private String copyRight;
    private String fb;
    private String ins;
    private String twi;
    private String pri;
    private String imgLogo;
    private String banDo;

    public Infor(int id, String logo, String tenCongTy, String diaChi, String hotLine, String email, String copyRight, String fb, String ins, String twi, String pri, String imgLogo, String banDo) {
        this.id = id;
        this.logo = logo;
        this.tenCongTy = tenCongTy;
        this.diaChi = diaChi;
        this.hotLine = hotLine;
        this.email = email;
        this.copyRight = copyRight;
        this.fb = fb;
        this.ins = ins;
        this.twi = twi;
        this.pri = pri;
        this.imgLogo = imgLogo;
        this.banDo = banDo;
    }
    public List<String> splitStr(String str) {
        List<String> listStr = new LinkedList<>();
        String[] arrStr = str.split(";");
        for (String item: arrStr) {
            listStr.add(item);
        }
        return listStr;
    }
    public List<String> splitStr() {
        List<String> listStr = new LinkedList<>();
        String[] arrStr = logo.split(";");
        for (String item: arrStr) {
            listStr.add(item);
        }
        return listStr;
    }
    public Infor() {
    }

    public int getId() {
        return id;
    }

    public String getLogo() {
        return logo;
    }

    public String getTenCongTy() {
        return tenCongTy;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public String getHotLine() {
        return hotLine;
    }

    public String getEmail() {
        return email;
    }

    public String getCopyRight() {
        return copyRight;
    }

    public String getFb() {
        return fb;
    }

    public String getIns() {
        return ins;
    }

    public String getTwi() {
        return twi;
    }

    public String getPri() {
        return pri;
    }

    public String getImgLogo() {
        return imgLogo;
    }

    public String getBanDo() {
        return banDo;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public void setTenCongTy(String tenCongTy) {
        this.tenCongTy = tenCongTy;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public void setHotLine(String hotLine) {
        this.hotLine = hotLine;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setCopyRight(String copyRight) {
        this.copyRight = copyRight;
    }

    public void setFb(String fb) {
        this.fb = fb;
    }

    public void setIns(String ins) {
        this.ins = ins;
    }

    public void setTwi(String twi) {
        this.twi = twi;
    }

    public void setPri(String pri) {
        this.pri = pri;
    }

    public void setImgLogo(String imgLogo) {
        this.imgLogo = imgLogo;
    }

    public void setBanDo(String banDo) {
        this.banDo = banDo;
    }
}

