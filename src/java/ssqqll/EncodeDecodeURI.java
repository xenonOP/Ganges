package ssqqll;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;


public class EncodeDecodeURI {
    
    public static String decode(String givenURI){
        String decodeURl =givenURI;
        try{
           decodeURl = URLDecoder.decode(givenURI, StandardCharsets.UTF_8.name());
        }
        catch(UnsupportedEncodingException e)
        {
            e.printStackTrace();;
        }
        return decodeURl;
    } 
    
}
