package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Objects;

final class zzfa implements Application.ActivityLifecycleCallbacks {
    final zzfb zza;

    zzfa(zzfb zzfbVar) {
        Objects.requireNonNull(zzfbVar);
        this.zza = zzfbVar;
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.zza.zzM(new zzet(this, bundle, activity));
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        this.zza.zzM(new zzez(this, activity));
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        this.zza.zzM(new zzew(this, activity));
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        this.zza.zzM(new zzev(this, activity));
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzco zzcoVar = new zzco();
        this.zza.zzM(new zzey(this, activity, zzcoVar));
        Bundle bundleZze = zzcoVar.zze(50L);
        if (bundleZze != null) {
            bundle.putAll(bundleZze);
        }
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        this.zza.zzM(new zzeu(this, activity));
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        this.zza.zzM(new zzex(this, activity));
    }
}
