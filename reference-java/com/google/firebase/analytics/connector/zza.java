package com.google.firebase.analytics.connector;

import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;

final class zza implements EventHandler {
    static final zza zza = new zza();

    private zza() {
    }

    @Override
    public final void handle(Event event) {
        AnalyticsConnectorImpl.zza(event);
    }
}
