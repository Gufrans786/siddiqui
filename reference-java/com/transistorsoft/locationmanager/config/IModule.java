package com.transistorsoft.locationmanager.config;

import org.json.JSONObject;

public interface IModule {
    void applyDefaults();

    JSONObject toJson(boolean z);
}
