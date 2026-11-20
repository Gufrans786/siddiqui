package com.transistorsoft.locationmanager.event;

import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class HeartbeatEvent {
    private TSLocation a;

    public TSLocation getLocation() {
        return this.a;
    }

    public void setLocation(TSLocation tSLocation) {
        this.a = tSLocation;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            TSLocation tSLocation = this.a;
            if (tSLocation != null) {
                jSONObject.put("location", tSLocation.toJson());
            }
            return jSONObject;
        } catch (JSONException e) {
            TSLog.logger.error(TSLog.error(e.getMessage()));
            e.printStackTrace();
            return jSONObject;
        }
    }

    public Map<String, Object> toMap() {
        HashMap map = new HashMap();
        TSLocation tSLocation = this.a;
        if (tSLocation != null) {
            try {
                map.put("location", tSLocation.toMap());
                return map;
            } catch (JSONException e) {
                TSLog.logger.warn(TSLog.warn(e.getMessage()));
                e.printStackTrace();
            }
        }
        return map;
    }
}
