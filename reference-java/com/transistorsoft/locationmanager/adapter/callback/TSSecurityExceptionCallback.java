package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.event.SecurityExceptionEvent;

public interface TSSecurityExceptionCallback {
    void onSecurityException(SecurityExceptionEvent securityExceptionEvent);
}
