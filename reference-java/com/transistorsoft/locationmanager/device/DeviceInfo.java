package com.transistorsoft.locationmanager.device;

import android.content.Context;
import android.os.Build;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.transistorsoft.locationmanager.a.A;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class DeviceInfo {
    public static final String ACTION_GET_DEVICE_INFO = "getDeviceInfo";
    private static DeviceInfo e = null;
    private static final String f = "Android";
    private String a;
    private final String b = Build.MODEL;
    private final String c = Build.MANUFACTURER;
    private final String d = Build.VERSION.RELEASE;
    private static final String g = A.getPlatform();
    public static String MANUFACTURER_HUAWEI = "Huawei";

    public DeviceInfo(Context context) {
    }

    private static synchronized DeviceInfo a(Context context) {
        if (e == null) {
            e = new DeviceInfo(context.getApplicationContext());
        }
        return e;
    }

    public static DeviceInfo getInstance(Context context) {
        if (e == null) {
            e = a(context.getApplicationContext());
        }
        return e;
    }

    public String getManufacturer() {
        return this.c;
    }

    public String getModel() {
        return this.b;
    }

    public String getPlatform() {
        return f;
    }

    public String getUniqueId() {
        return this.a;
    }

    public String getVersion() {
        return this.d;
    }

    public String print() {
        return this.c + " " + this.b + " @ " + this.d + " (" + A.getPlatform() + ")";
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ModelSourceWrapper.TYPE, this.b);
            jSONObject.put("manufacturer", this.c);
            jSONObject.put("version", this.d);
            jSONObject.put("platform", f);
            jSONObject.put("framework", g);
            return jSONObject;
        } catch (JSONException e2) {
            TSLog.logger.error(TSLog.error(e2.getMessage()), (Throwable) e2);
            return jSONObject;
        }
    }

    public Map<String, Object> toMap() {
        HashMap map = new HashMap();
        map.put(ModelSourceWrapper.TYPE, this.b);
        map.put("manufacturer", this.c);
        map.put("version", this.d);
        map.put("platform", f);
        map.put("framework", g);
        return map;
    }
}
