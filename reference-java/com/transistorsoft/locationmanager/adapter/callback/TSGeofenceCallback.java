package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.event.GeofenceEvent;

public interface TSGeofenceCallback {
    void onGeofence(GeofenceEvent geofenceEvent);
}
