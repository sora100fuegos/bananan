package Clases;

import java.io.BufferedReader;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class JSONPost {
	
    
    public static JsonObject getJsonObject(BufferedReader reqReader) {
        StringBuilder jb = new StringBuilder();
        String line = null;
        
        try {
            BufferedReader reader = reqReader;
            while ((line = reader.readLine()) != null) {
                jb.append(line);
            }
        } catch (Exception e) {
        }
        
        String jsonString = jb.toString();
        
        /*
        JsonParser jsonParser = new JsonParser();
        JsonObject jsonObject = (JsonObject)jsonParser.parse(jsonString);
        return jsonObject;
        */
        
        JsonObject jsonObject = new Gson().fromJson(jsonString, JsonObject.class);
        return jsonObject;
    }

}
