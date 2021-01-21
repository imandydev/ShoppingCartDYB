package DAOAdmin;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

public class LoadImageToServer {
    // load ảnh từ client
    public static void loadImgProduct(String source, int id, String name) throws IOException {
        File dest = new File("C:\\Users\\PavilionHP\\Desktop\\full-stack-dyb\\src\\main\\webapp\\SaveImage\\Product\\" + id);
        if (!dest.exists())
            dest.mkdir();
        BufferedInputStream bIS = new BufferedInputStream(new FileInputStream("C:\\Users\\PavilionHP\\Desktop\\images\\"+source));
        BufferedOutputStream bOS = new BufferedOutputStream(new FileOutputStream(dest.getPath() +"\\"+ name));
        byte[] arr,temp = new byte[1024*1000];
        int readF = 0;
        while((readF = bIS.read(temp)) != -1) {
            arr = new byte[readF];
            System.arraycopy(temp,0,arr,0,readF);
            bOS.write(arr,0,readF);
            bOS.flush();
        }
        bIS.close();
        bOS.close();
    }
    public static boolean loadListImg(List<String> listImg, int idPro, String imgMain) throws IOException {
        if (!imgMain.equals(""))
            loadImgProduct(imgMain,idPro,"0.png");
        for (int i = 0; i< listImg.size(); i++) {
            try {
                loadImgProduct(listImg.get(i),idPro,(i + 1) +".png");
            } catch (IOException e) {
                return false;
            }
        }
        return true;
    }
}
