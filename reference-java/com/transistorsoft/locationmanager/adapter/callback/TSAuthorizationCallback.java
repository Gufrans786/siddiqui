package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.event.AuthorizationEvent;

public interface TSAuthorizationCallback {
    void onResponse(AuthorizationEvent authorizationEvent);
}
