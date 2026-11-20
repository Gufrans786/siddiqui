package android.os;
import java.util.HashMap;
public class Bundle extends HashMap<String, Object> {
    public Bundle() {}
    public Bundle(Bundle other) { super(other); }
    public void putBoolean(String key, boolean value) { put(key, value); }
}
