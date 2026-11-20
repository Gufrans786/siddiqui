package com.transistorsoft.locationmanager.event;

public class BatteryOptimizationEvent {
    private boolean a;

    public BatteryOptimizationEvent(boolean z) {
        this.a = z;
    }

    public boolean isIgnoringBatteryOptimizations() {
        return this.a;
    }
}
