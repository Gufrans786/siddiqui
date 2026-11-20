package com.transistorsoft.locationmanager.event;

import android.content.Context;
import com.transistorsoft.locationmanager.location.TSLocation;
import org.json.JSONObject;

public class PersistEvent {
    private final TSLocation a;
    private final JSONObject b;
    private final Context c;

    public PersistEvent(Context context, TSLocation tSLocation, JSONObject jSONObject) {
        this.c = context;
        this.b = jSONObject;
        this.a = tSLocation;
    }

    public Context getContext() {
        return this.c;
    }

    public TSLocation getLocation() {
        return this.a;
    }

    public JSONObject getParams() {
        return this.b;
    }
}
