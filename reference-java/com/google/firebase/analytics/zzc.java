package com.google.firebase.analytics;

import java.util.Objects;
import java.util.concurrent.Callable;

final class zzc implements Callable {
    final FirebaseAnalytics zza;

    zzc(FirebaseAnalytics firebaseAnalytics) {
        Objects.requireNonNull(firebaseAnalytics);
        this.zza = firebaseAnalytics;
    }

    @Override
    public final Object call() throws Exception {
        return this.zza.zza().zzH();
    }
}
