package com.nsoftware.ipworks3ds.sdk;

public interface SecurityEventListener {

    public enum SecurityEvent {
        ROOT,
        TAMPERED,
        INSTALLED_FROM_UNTRUSTED_STORE,
        HOOK,
        EMULATOR,
        DEBUGGING,
        DEBUG_ENABLED
    }

    public enum Severity {
        LOW,
        MEDIUM,
        HIGH
    }

    void alarm(Severity severity, SecurityEvent securityEvent);
}
