package beans;

public class User {
    private int id;
    private String diaChi;
    private String loaiTaiKhoan;
    private String username;
    private String email;
    private long sdt;
    private String pass;
    private String key;
    private String dateAdd;
    Role role;

    public User(int id, String diaChi, String loaiTaiKhoan, String username, String email, long sdt, String pass, String key, String dateAdd) {
        this.id = id;
        this.diaChi = diaChi;
        this.loaiTaiKhoan = loaiTaiKhoan;
        this.username = username;
        this.email = email;
        this.sdt = sdt;
        this.pass = pass;
        this.key = key;
        this.dateAdd = dateAdd;
    }
    // kiểm tra có phải các quyền trong role
    public boolean accept(String name) {
        return role.accept(name);
    }

    public String getUsername() {
        return username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getLoaiTaiKhoan() {
        return loaiTaiKhoan;
    }

    public void setLoaiTaiKhoan(String loaiTaiKhoan) {
        this.loaiTaiKhoan = loaiTaiKhoan;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getSdt() {
        return sdt;
    }

    public void setSdt(long sdt) {
        this.sdt = sdt;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }



    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getDateAdd() {
        return dateAdd;
    }

    public void setDateAdd(String dateAdd) {
        this.dateAdd = dateAdd;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
