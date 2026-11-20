package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.Set;

public final class zzg implements zza {
    private final AnalyticsConnector.AnalyticsConnectorListener zza;
    private final AppMeasurementSdk zzb;
    private final zzf zzc;

    public zzg(AppMeasurementSdk appMeasurementSdk, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.zza = analyticsConnectorListener;
        this.zzb = appMeasurementSdk;
        zzf zzfVar = new zzf(this);
        this.zzc = zzfVar;
        appMeasurementSdk.registerOnMeasurementEventListener(zzfVar);
    }

    @Override
    public final AnalyticsConnector.AnalyticsConnectorListener zza() {
        return this.zza;
    }

    @Override
    public final void zzb(Set set) {
    }

    @Override
    public final void zzc() {
    }

    final AnalyticsConnector.AnalyticsConnectorListener zzd() {
        return this.zza;
    }
}
