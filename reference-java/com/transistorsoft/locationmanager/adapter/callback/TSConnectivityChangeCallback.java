package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.event.ConnectivityChangeEvent;

public interface TSConnectivityChangeCallback {
    void onConnectivityChange(ConnectivityChangeEvent connectivityChangeEvent);
}
