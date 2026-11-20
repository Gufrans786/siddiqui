package com.transistorsoft.locationmanager.event;

public class LocationErrorEvent {
    public int errorCode;
    public String message;

    public LocationErrorEvent(Integer num, String str) {
        this.errorCode = num.intValue();
        this.message = str;
    }

    public LocationErrorEvent(Integer num) {
        this.errorCode = num.intValue();
        this.message = "";
    }
}
