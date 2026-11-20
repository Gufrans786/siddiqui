package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface BatteryChargingStatusCallback {
    void run(Expected<String, Boolean> expected);
}
