package com.transistorsoft.locationmanager.event;

public class StartedEvent {
    public Boolean success;

    public StartedEvent(boolean z) {
        this.success = Boolean.valueOf(z);
    }
}
