package com.google.android.gms.measurement.internal;

import com.mapbox.maps.plugin.locationcomponent.LocationComponentConstants;
import java.util.Objects;

final class zzkg extends zzay {
    final zzlj zza;

    zzkg(zzlj zzljVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zzljVar);
        this.zza = zzljVar;
    }

    @Override
    public final void zza() {
        zzlj zzljVar = this.zza;
        if (zzljVar.zzu.zzI()) {
            zzljVar.zzap().zzb(LocationComponentConstants.MAX_ANIMATION_DURATION_MS);
        }
    }
}
