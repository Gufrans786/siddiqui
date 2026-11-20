package com.transistorsoft.locationmanager.adapter.callback;

import org.json.JSONObject;

public interface TSConfigureCallback {
    void onFailure(String str);

    void onSuccess(JSONObject jSONObject);
}
