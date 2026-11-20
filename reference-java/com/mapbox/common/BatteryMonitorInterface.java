package com.mapbox.common;

public interface BatteryMonitorInterface {
    void getBatteryChargingStatus(BatteryChargingStatusCallback batteryChargingStatusCallback);

    void registerObserver(BatteryMonitorObserver batteryMonitorObserver);

    void unregisterObserver(BatteryMonitorObserver batteryMonitorObserver);
}
