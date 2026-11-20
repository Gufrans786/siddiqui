package com.mapbox.common;

public interface BatteryMonitorObserver {
    void onBatteryChargingStatusChanged(boolean z);

    void onBatteryStatusError(String str);
}
