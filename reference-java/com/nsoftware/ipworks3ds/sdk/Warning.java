package com.nsoftware.ipworks3ds.sdk;

public interface Warning {

    public enum Severity {
        LOW,
        MEDIUM,
        HIGH
    }

    String getID();

    String getMessage();

    Severity getSeverity();
}
