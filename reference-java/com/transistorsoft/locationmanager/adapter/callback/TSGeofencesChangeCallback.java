package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.event.GeofencesChangeEvent;

public interface TSGeofencesChangeCallback {
    void onGeofencesChange(GeofencesChangeEvent geofencesChangeEvent);
}
