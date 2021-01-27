package DAO;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class SendMail {
    public static boolean sendMail(String code, String mail) {
        Properties pro = new Properties();
        pro.put("mail.smtp.host", "smtp.gmail.com");
        pro.put("mail.smtp.port", "587");
        pro.put("mail.smtp.auth", "true");
        pro.put("mail.smtp.starttls.enable", "true");
        String username = "czeus305@gmail.com";
        String password = "enrrpedltxrcoqhq";

        Session session = Session.getInstance(pro,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                }
        );
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress("czeus305@gmail.com", "DYB Store"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(mail));
            message.setSubject("Confirm password forgetten");
            message.setText("Please click this link to confirm:\n"+"http://localhost:8080/ProjectFinalTest_war_exploded/CheckKeyEmail?key-code=" + code+"&email="+mail);
            Transport.send(message);
            return true;
        } catch (UnsupportedEncodingException | MessagingException e) {
            e.printStackTrace();
            return false;
        }

    }
    public static boolean sendMailChangePass(String mail, String key) {
        Properties pro = new Properties();
        pro.put("mail.smtp.host", "smtp.gmail.com");
        pro.put("mail.smtp.port", "587");
        pro.put("mail.smtp.auth", "true");
        pro.put("mail.smtp.starttls.enable", "true");

        String username = "czeus305@gmail.com";
        String password = "enrrpedltxrcoqhq";

        Session session = Session.getInstance(pro,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                }
        );
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress("czeus305@gmail.com", "DYB Store"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(mail));
            message.setSubject("Change Password");
            message.setText("Please click this link to change password:\n"+"http://localhost:8080/ProjectFinalTest_war_exploded/DisplayPass?email="+mail+"&key="+key);
            Transport.send(message);
            return true;
        } catch (UnsupportedEncodingException | MessagingException e) {
            e.printStackTrace();
            return false;
        }

    }
}