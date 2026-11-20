package com.transistorsoft.locationmanager.event;

public class PowerSaveModeChangeEvent {
    Boolean a;

    public PowerSaveModeChangeEvent(Boolean bool) {
        this.a = bool;
    }

    public Boolean isPowerSaveMode() {
        return this.a;
    }
}
