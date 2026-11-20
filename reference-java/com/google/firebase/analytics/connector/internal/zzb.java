package com.google.firebase.analytics.connector.internal;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;

final class zzb implements ComponentFactory {
    static final zzb zza = new zzb();

    private zzb() {
    }

    @Override
    public final Object create(ComponentContainer componentContainer) {
        return AnalyticsConnectorRegistrar.lambda$getComponents$0(componentContainer);
    }
}
