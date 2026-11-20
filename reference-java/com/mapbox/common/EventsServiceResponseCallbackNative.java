package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

final class EventsServiceResponseCallbackNative implements EventsServiceResponseCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<EventsServiceError, None> expected);

    private EventsServiceResponseCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new EventsServiceResponseCallbackPeerCleaner(j));
    }

    private static class EventsServiceResponseCallbackPeerCleaner implements Runnable {
        private long peer;

        public EventsServiceResponseCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            EventsServiceResponseCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
