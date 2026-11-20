package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.event.HeartbeatEvent;

public interface TSHeartbeatCallback {
    void onHeartbeat(HeartbeatEvent heartbeatEvent);
}
