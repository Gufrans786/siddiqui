package android.content;
import java.util.HashMap;
import java.util.Map;
public class Context {
    public static final int MODE_PRIVATE = 0;
    private static final Map<String, Memory> stores = new HashMap<>();
    public Context getApplicationContext() { return this; }
    public SharedPreferences getSharedPreferences(String name, int mode) {
        return stores.computeIfAbsent(name, key -> new Memory());
    }
    private static class Memory implements SharedPreferences {
        private final Map<String, Object> values = new HashMap<>();
        public String getString(String k, String d) { return (String) values.getOrDefault(k, d); }
        public boolean getBoolean(String k, boolean d) { return (Boolean) values.getOrDefault(k, d); }
        public float getFloat(String k, float d) { return (Float) values.getOrDefault(k, d); }
        public int getInt(String k, int d) { return (Integer) values.getOrDefault(k, d); }
        public Editor edit() {
            return new Editor() {
                public Editor putString(String k, String v) { values.put(k, v); return this; }
                public Editor putBoolean(String k, boolean v) { values.put(k, v); return this; }
                public Editor putFloat(String k, float v) { values.put(k, v); return this; }
                public Editor putInt(String k, int v) { values.put(k, v); return this; }
                public Editor remove(String k) { values.remove(k); return this; }
                public void apply() {}
            };
        }
    }
}
