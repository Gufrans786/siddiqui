package com.mapbox.common;

import com.mapbox.bindgen.Value;

public interface EventsServiceObserver {
    void didEncounterError(EventsServiceError eventsServiceError, Value value);

    void didSendEvents(Value value);
}
