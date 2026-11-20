package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Value;

final class EventsServiceObserverNative implements EventsServiceObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void didEncounterError(EventsServiceError eventsServiceError, Value value);

    @Override
    public native void didSendEvents(Value value);

    public EventsServiceObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new EventsServiceObserverPeerCleaner(j));
    }

    private static class EventsServiceObserverPeerCleaner implements Runnable {
        private long peer;

        public EventsServiceObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            EventsServiceObserverNative.cleanNativePeer(this.peer);
        }
    }
}
