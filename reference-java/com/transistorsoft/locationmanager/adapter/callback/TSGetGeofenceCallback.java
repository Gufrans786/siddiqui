package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.geofence.TSGeofence;

public interface TSGetGeofenceCallback {
    void onFailure(String str);

    void onSuccess(TSGeofence tSGeofence);
}
