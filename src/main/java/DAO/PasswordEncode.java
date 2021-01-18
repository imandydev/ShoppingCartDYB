package DAO;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordEncode {
    public static String passwordSHA512(String pass) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String code = "";
        MessageDigest msd = MessageDigest.getInstance("SHA-512");
        byte[] srcTextBytes = pass.getBytes("UTF-8");
        byte[] endTextBytes = msd.digest(srcTextBytes);
        BigInteger bigInt = new BigInteger(1,endTextBytes);
        code = bigInt.toString(16);
        return code;
    }
}
