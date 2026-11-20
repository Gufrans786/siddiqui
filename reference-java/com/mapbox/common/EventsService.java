package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class EventsService implements EventsServiceInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native EventsService getOrCreate(EventsServerOptions eventsServerOptions);

    @Override
    public native void flush(FlushOperationResultCallback flushOperationResultCallback);

    @Override
    public native void registerObserver(EventsServiceObserver eventsServiceObserver);

    @Override
    public native void sendCrashEvent(CrashEvent crashEvent, EventsServiceResponseCallback eventsServiceResponseCallback);

    @Override
    public native void sendEvent(Event event, EventsServiceResponseCallback eventsServiceResponseCallback);

    @Override
    public native void sendTurnstileEvent(TurnstileEvent turnstileEvent, EventsServiceResponseCallback eventsServiceResponseCallback);

    @Override
    public native void unregisterObserver(EventsServiceObserver eventsServiceObserver);

    protected EventsService(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new EventsServicePeerCleaner(j));
    }

    private static class EventsServicePeerCleaner implements Runnable {
        private long peer;

        public EventsServicePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            EventsService.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
