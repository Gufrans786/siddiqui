package com.transistorsoft.locationmanager.event;

public class SecurityExceptionEvent {
    public int action;
    public SecurityException exception;

    public SecurityExceptionEvent(SecurityException securityException, Integer num) {
        this.action = num.intValue();
        this.exception = securityException;
    }
}
