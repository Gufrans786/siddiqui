package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

final class zzaf extends zzah {
    final zzag zza;

    zzaf(zzag zzagVar) {
        this.zza = zzagVar;
    }

    @Override
    public final void zzc(boolean z) {
        this.zza.setResult(new zzak(z ? Status.RESULT_SUCCESS : zzal.zza));
    }
}
