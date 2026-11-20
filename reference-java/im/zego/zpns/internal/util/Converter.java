package im.zego.zpns.internal.util;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class Converter {
    public static Map<String, Object> ObjectToMap(Object obj) throws Exception {
        HashMap map = new HashMap();
        for (Field field : obj.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            map.put(field.getName(), field.get(obj));
            field.setAccessible(false);
        }
        return map;
    }
}
