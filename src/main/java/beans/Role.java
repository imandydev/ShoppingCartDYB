package beans;

import empty.MenuEmpty;

import java.util.LinkedList;
import java.util.List;

public class Role {
    // set danh sách quyền
    private List<String> accept = new LinkedList<>();

    public Role(String typeAccount) {
        // nếu tham số truyền vào là admin thì thêm vào list admin
       if (typeAccount.equalsIgnoreCase("admin"))
           admin();
       else
           notAdmin();
    }
    public void admin() {
       accept.add("admin");
    }
    public void notAdmin() {
        accept.add("user");
    }
    public List<String> getAccept() {
        return accept;
    }

    public void setAccept(List<String> accept) {
        this.accept = accept;
    }
    public boolean accept(String name) {
        return accept != null && accept.contains(name);
    }
}
