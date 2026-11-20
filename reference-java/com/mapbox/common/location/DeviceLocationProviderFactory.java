package com.mapbox.common.location;

import com.mapbox.bindgen.Expected;

public interface DeviceLocationProviderFactory {
    Expected<LocationError, DeviceLocationProvider> build(LocationProviderRequest locationProviderRequest);
}
