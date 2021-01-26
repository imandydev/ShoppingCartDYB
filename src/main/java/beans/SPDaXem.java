package beans;


import javax.servlet.http.HttpSession;

import java.util.*;

public class SPDaXem {


    public List<Product> list = new ArrayList<>(10);



    public SPDaXem(){
    }




//        if (id == p.getId()) {
//            if (list.isEmpty()) {
//                list.add(p);
//            }else {
//                for (int i = 0; i < list.size(); i++) {
//                    if (list.get(i).getId() == p.getId()) {
//                        list.remove(i);
//                        list.add(p);
//                        break;
//                    }else {
//                        list.add(p);
//                    }
//                }
//
//            }
//        }
//    }


//        if(list.size()<20 && id == p.getId()){
//            list.add(p);
//        }
//        else if(list.size()==20){
//            for (Product x :list){
//                if(x.getId()==id){
//                    return;
//                }else {
//                    for (int i=18;i>0;i--){
//                        Product j = list.get(i);
//                        for(int t=19;  t >= 1 ; t--){
//                            list.remove(t);
//                            list.add(t,j);
//                        }
//                    }
//                    list.add(p);
//                }
//            }
//        }



    public static SPDaXem getSPDaXem(HttpSession session) {
        return session.getAttribute("spdaxem") == null ? new SPDaXem() : (SPDaXem) session.getAttribute("spdaxem");
    }


    public Collection<Product> getData() {
        return list;
    }
    public void put(Product p) {
        if(list.isEmpty())list.add(p);
        for(int i = 0 ;i<list.size();i++){
            if (list.get(i).getId()==p.getId()){
                list.set(i,p);
                break;
            }
            else list.add(p);
        }
    }
    public void commit(HttpSession session) {
        session.setAttribute("spdaxem", this);
    }






}
