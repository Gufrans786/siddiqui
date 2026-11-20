package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.event.LocationProviderChangeEvent;

public interface TSLocationProviderChangeCallback {
    void onLocationProviderChange(LocationProviderChangeEvent locationProviderChangeEvent);
}
