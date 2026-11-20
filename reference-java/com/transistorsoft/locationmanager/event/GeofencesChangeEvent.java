package com.transistorsoft.locationmanager.event;

import com.transistorsoft.locationmanager.geofence.TSGeofence;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GeofencesChangeEvent {
    private final List<TSGeofence> a;
    private final List<String> b;

    public GeofencesChangeEvent() {
        this.a = new ArrayList();
        this.b = new ArrayList();
    }

    public List<TSGeofence> getActivatedGeofences() {
        return this.a;
    }

    public List<String> getDeactivatedGeofences() {
        return this.b;
    }

    public GeofencesChangeEvent setOff(List<String> list) {
        this.b.clear();
        this.b.addAll(list);
        return this;
    }

    public GeofencesChangeEvent setOn(List<TSGeofence> list) {
        this.a.clear();
        this.a.addAll(list);
        return this;
    }

    public JSONObject toJson() {
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator<String> it = this.b.iterator();
            while (it.hasNext()) {
                jSONArray2.put(it.next());
            }
            Iterator<TSGeofence> it2 = this.a.iterator();
            while (it2.hasNext()) {
                jSONArray.put(it2.next().toJson());
            }
            jSONObject.put("on", jSONArray);
            jSONObject.put("off", jSONArray2);
            return jSONObject;
        } catch (JSONException e) {
            TSLog.logger.error(TSLog.error(e.getMessage()));
            e.printStackTrace();
            return jSONObject;
        }
    }

    public Map<String, List> toMap() {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        map.put("off", new ArrayList(this.b));
        map.put("on", arrayList);
        Iterator<TSGeofence> it = this.a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toMap());
        }
        return map;
    }

    public GeofencesChangeEvent(List<TSGeofence> list, List<String> list2) {
        this.a = list;
        this.b = list2;
    }
}
