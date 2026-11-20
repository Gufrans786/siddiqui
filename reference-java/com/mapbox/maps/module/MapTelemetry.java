package com.mapbox.maps.module;

import android.os.Bundle;
import com.mapbox.common.TelemetryUtils;

public interface MapTelemetry {
    void disableTelemetrySession();

    void onAppUserTurnstileEvent();

    void onPerformanceEvent(Bundle bundle);

    void setUserTelemetryRequestState(boolean z);

    default boolean getUserTelemetryRequestState() {
        return TelemetryUtils.getEventsCollectionState();
    }
}
