package beans;

import java.util.LinkedList;
import java.util.List;

public class News {
    private int id;
    private String topic;
    private String content;
    private String buttonText;
    private String link;
    private String img;

    public News(int id, String topic, String content, String buttonText, String link, String img) {
        this.id = id;
        this.topic = topic;
        this.content = content;
        this.buttonText = buttonText;
        this.link = link;
        this.img = img;
    }
    public List<String> getImageIndex() {
        List<String> listImage = new LinkedList<>();
        String[] splitImg = img.split(";");
        for (String item:splitImg
             ) {
            listImage.add(item);
        }
        return listImage;
    }
    public News() {
    }

    public int getId() {
        return id;
    }

    public String getTopic() {
        return topic;
    }

    public String getContent() {
        return content;
    }

    public String getButtonText() {
        return buttonText;
    }

    public String getLink() {
        return link;
    }

    public String getImg() {
        return img;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setButtonText(String buttonText) {
        this.buttonText = buttonText;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
