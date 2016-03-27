package utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class CreateMD5 {

    public static String getMd5(String plainText , Long id) {  
        try {  
            MessageDigest md = MessageDigest.getInstance("MD5");  
            md.update(plainText.getBytes());  
            MessageDigest md2 = MessageDigest.getInstance("MD5");  
            byte b[] = md.digest();  
            md2.update(id.toString().getBytes());
            byte b2[] = md2.digest();

            int i;  
  
            StringBuffer buf = new StringBuffer("");  
            for (int offset = 0; offset < b.length; offset++) {  
                i = b[offset];  
                if (i < 0)  
                    i += 256;  
                if (i < 16)  
                    buf.append("0");  
                buf.append(Integer.toHexString(i));  
            }  
            for (int offset = 0; offset < b2.length; offset++) {  
                i = b[offset];  
                if (i < 0)  
                    i += 256;  
                if (i < 16)  
                    buf.append("0");  
                buf.append(Integer.toHexString(i));  
            }  
            //32位加密  
            return buf.toString();  
            // 16位的加密  
            //return buf.toString().substring(8, 24);  
        } catch (NoSuchAlgorithmException e) {  
            e.printStackTrace();  
            return null;  
        }  
    }  
      
    public static void main(String[] args) {      
        //测试      
        System.out.println(CreateMD5.getMd5("hello",1L));  
    }  
  
}  
