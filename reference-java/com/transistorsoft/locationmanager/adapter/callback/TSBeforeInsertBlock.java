package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.location.TSLocation;
import org.json.JSONObject;

public interface TSBeforeInsertBlock {
    JSONObject onBeforeInsert(TSLocation tSLocation);
}
