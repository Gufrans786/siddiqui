package com.transistorsoft.locationmanager.event;

public class SettingsFailureEvent {
    public String message;
    public String title;

    public SettingsFailureEvent(String str, String str2) {
        this.title = str;
        this.message = str2;
    }
}
