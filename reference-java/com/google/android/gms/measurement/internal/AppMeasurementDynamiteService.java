package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import sa.lg.android.locate.BuildConfig;

public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzcq {
    zzic zza = null;
    private final Map zzb = new ArrayMap();

    @EnsuresNonNull({"scion"})
    private final void zzb() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    private final void zzc(com.google.android.gms.internal.measurement.zzcu zzcuVar, String str) {
        zzb();
        this.zza.zzk().zzal(zzcuVar, str);
    }

    @Override
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzw().zza(str, j);
    }

    @Override
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zzb();
        this.zza.zzj().zzab(str, str2, bundle);
    }

    @Override
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zzb();
        this.zza.zzj().zzn(null);
    }

    @Override
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzw().zzb(str, j);
    }

    @Override
    public void generateEventId(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        long jZzd = this.zza.zzk().zzd();
        zzb();
        this.zza.zzk().zzam(zzcuVar, jZzd);
    }

    @Override
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        this.zza.zzaW().zzj(new zzi(this, zzcuVar));
    }

    @Override
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        zzc(zzcuVar, this.zza.zzj().zzQ());
    }

    @Override
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        this.zza.zzaW().zzj(new zzm(this, zzcuVar, str, str2));
    }

    @Override
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        zzc(zzcuVar, this.zza.zzj().zzae());
    }

    @Override
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        zzc(zzcuVar, this.zza.zzj().zzad());
    }

    @Override
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        zzc(zzcuVar, this.zza.zzj().zzaf());
    }

    @Override
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        this.zza.zzj().zzY(str);
        zzb();
        this.zza.zzk().zzan(zzcuVar, 25);
    }

    @Override
    public void getSessionId(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        zzlj zzljVarZzj = this.zza.zzj();
        zzljVarZzj.zzu.zzaW().zzj(new zzkm(zzljVarZzj, zzcuVar));
    }

    @Override
    public void getTestFlag(com.google.android.gms.internal.measurement.zzcu zzcuVar, int i) throws RemoteException {
        zzb();
        if (i == 0) {
            this.zza.zzk().zzal(zzcuVar, this.zza.zzj().zzj());
            return;
        }
        if (i == 1) {
            this.zza.zzk().zzam(zzcuVar, this.zza.zzj().zzk().longValue());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.zza.zzk().zzan(zzcuVar, this.zza.zzj().zzl().intValue());
                return;
            } else {
                if (i != 4) {
                    return;
                }
                this.zza.zzk().zzap(zzcuVar, this.zza.zzj().zzi().booleanValue());
                return;
            }
        }
        zzpp zzppVarZzk = this.zza.zzk();
        double dDoubleValue = this.zza.zzj().zzm().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble(JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR, dDoubleValue);
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            zzppVarZzk.zzu.zzaV().zze().zzb("Error returning double value to wrapper", e);
        }
    }

    @Override
    public void getUserProperties(String str, String str2, boolean z, com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        this.zza.zzaW().zzj(new zzk(this, zzcuVar, str, str2, z));
    }

    @Override
    public void initForTests(Map map) throws RemoteException {
        zzb();
    }

    @Override
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdd zzddVar, long j) throws RemoteException {
        zzic zzicVar = this.zza;
        if (zzicVar == null) {
            this.zza = zzic.zzy((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzddVar, Long.valueOf(j));
        } else {
            zzicVar.zzaV().zze().zza("Attempting to initialize multiple times");
        }
    }

    @Override
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzcu zzcuVar) throws RemoteException {
        zzb();
        this.zza.zzaW().zzj(new zzn(this, zzcuVar));
    }

    @Override
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zzb();
        this.zza.zzj().zzC(str, str2, bundle, z, z2, j);
    }

    @Override
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzcu zzcuVar, long j) throws RemoteException {
        zzb();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.zzaW().zzj(new zzj(this, zzcuVar, new zzbg(str2, new zzbe(bundle), "app", j), str));
    }

    @Override
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        zzb();
        this.zza.zzaV().zzm(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        zzb();
        onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), bundle, j);
    }

    @Override
    public void onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, Bundle bundle, long j) {
        zzb();
        zzky zzkyVar = this.zza.zzj().zza;
        if (zzkyVar != null) {
            this.zza.zzj().zzh();
            zzkyVar.zza(zzdfVar, bundle);
        }
    }

    @Override
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override
    public void onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, long j) throws RemoteException {
        zzb();
        zzky zzkyVar = this.zza.zzj().zza;
        if (zzkyVar != null) {
            this.zza.zzj().zzh();
            zzkyVar.zzb(zzdfVar);
        }
    }

    @Override
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override
    public void onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, long j) throws RemoteException {
        zzb();
        zzky zzkyVar = this.zza.zzj().zza;
        if (zzkyVar != null) {
            this.zza.zzj().zzh();
            zzkyVar.zzc(zzdfVar);
        }
    }

    @Override
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override
    public void onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, long j) throws RemoteException {
        zzb();
        zzky zzkyVar = this.zza.zzj().zza;
        if (zzkyVar != null) {
            this.zza.zzj().zzh();
            zzkyVar.zzd(zzdfVar);
        }
    }

    @Override
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzcu zzcuVar, long j) throws RemoteException {
        zzb();
        onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), zzcuVar, j);
    }

    @Override
    public void onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, com.google.android.gms.internal.measurement.zzcu zzcuVar, long j) throws RemoteException {
        zzb();
        zzky zzkyVar = this.zza.zzj().zza;
        Bundle bundle = new Bundle();
        if (zzkyVar != null) {
            this.zza.zzj().zzh();
            zzkyVar.zze(zzdfVar, bundle);
        }
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zza.zzaV().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    @Override
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override
    public void onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, long j) throws RemoteException {
        zzb();
        if (this.zza.zzj().zza != null) {
            this.zza.zzj().zzh();
        }
    }

    @Override
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), j);
    }

    @Override
    public void onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, long j) throws RemoteException {
        zzb();
        if (this.zza.zzj().zza != null) {
            this.zza.zzj().zzh();
        }
    }

    @Override
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzcu zzcuVar, long j) throws RemoteException {
        zzb();
        zzcuVar.zzb(null);
    }

    @Override
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzda zzdaVar) throws RemoteException {
        zzjq zzqVar;
        zzb();
        Map map = this.zzb;
        synchronized (map) {
            zzqVar = (zzjq) map.get(Integer.valueOf(zzdaVar.zzf()));
            if (zzqVar == null) {
                zzqVar = new zzq(this, zzdaVar);
                map.put(Integer.valueOf(zzdaVar.zzf()), zzqVar);
            }
        }
        this.zza.zzj().zzW(zzqVar);
    }

    @Override
    public void resetAnalyticsData(long j) throws RemoteException {
        zzb();
        this.zza.zzj().zzT(j);
    }

    @Override
    public void retrieveAndUploadBatches(final com.google.android.gms.internal.measurement.zzcx zzcxVar) {
        zzb();
        this.zza.zzj().zzt(new Runnable() {
            @Override
            public final void run() {
                try {
                    zzcxVar.zze();
                } catch (RemoteException e) {
                    ((zzic) Preconditions.checkNotNull(this.zza.zza)).zzaV().zze().zzb("Failed to call IDynamiteUploadBatchesCallback", e);
                }
            }
        });
    }

    @Override
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        zzb();
        if (bundle == null) {
            this.zza.zzaV().zzb().zza("Conditional user property must not be null");
        } else {
            this.zza.zzj().zzaa(bundle, j);
        }
    }

    @Override
    public void setConsent(Bundle bundle, long j) throws RemoteException {
    }

    @Override
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        zzb();
        this.zza.zzj().zzp(bundle, -20, j);
    }

    @Override
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        zzb();
        setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf.zza((Activity) Preconditions.checkNotNull((Activity) ObjectWrapper.unwrap(iObjectWrapper))), str, str2, j);
    }

    @Override
    public void setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.zzdf zzdfVar, String str, String str2, long j) throws RemoteException {
        zzb();
        this.zza.zzs().zzk(zzdfVar, str, str2);
    }

    @Override
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zzb();
        zzlj zzljVarZzj = this.zza.zzj();
        zzljVarZzj.zzb();
        zzic zzicVar = zzljVarZzj.zzu;
        zzljVarZzj.zzu.zzaW().zzj(new zzjy(zzljVarZzj, z));
    }

    @Override
    public void setDefaultEventParameters(Bundle bundle) {
        zzb();
        final zzlj zzljVarZzj = this.zza.zzj();
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        zzljVarZzj.zzu.zzaW().zzj(new Runnable() {
            @Override
            public final void run() {
                zzljVarZzj.zzah(bundle2);
            }
        });
    }

    @Override
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzda zzdaVar) throws RemoteException {
        zzb();
        zzp zzpVar = new zzp(this, zzdaVar);
        if (this.zza.zzaW().zze()) {
            this.zza.zzj().zzV(zzpVar);
        } else {
            this.zza.zzaW().zzj(new zzl(this, zzpVar));
        }
    }

    @Override
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzdc zzdcVar) throws RemoteException {
        zzb();
    }

    @Override
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzj().zzn(Boolean.valueOf(z));
    }

    @Override
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zzb();
    }

    @Override
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zzb();
        zzlj zzljVarZzj = this.zza.zzj();
        zzic zzicVar = zzljVarZzj.zzu;
        zzljVarZzj.zzu.zzaW().zzj(new zzka(zzljVarZzj, j));
    }

    @Override
    public void setSgtmDebugInfo(Intent intent) throws RemoteException {
        zzb();
        zzlj zzljVarZzj = this.zza.zzj();
        Uri data = intent.getData();
        if (data == null) {
            zzljVarZzj.zzu.zzaV().zzi().zza("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter == null || !queryParameter.equals(BuildConfig.IOS_VERSION_CODE)) {
            zzic zzicVar = zzljVarZzj.zzu;
            zzicVar.zzaV().zzi().zza("[sgtm] Preview Mode was not enabled.");
            zzicVar.zzc().zzy(null);
        } else {
            String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
            if (TextUtils.isEmpty(queryParameter2)) {
                return;
            }
            zzic zzicVar2 = zzljVarZzj.zzu;
            zzicVar2.zzaV().zzi().zzb("[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ", queryParameter2);
            zzicVar2.zzc().zzy(queryParameter2);
        }
    }

    @Override
    public void setUserId(final String str, long j) throws RemoteException {
        zzb();
        final zzlj zzljVarZzj = this.zza.zzj();
        if (str != null && TextUtils.isEmpty(str)) {
            zzljVarZzj.zzu.zzaV().zze().zza("User ID must be non-empty or null");
        } else {
            zzljVarZzj.zzu.zzaW().zzj(new Runnable() {
                @Override
                public final void run() {
                    zzic zzicVar = zzljVarZzj.zzu;
                    if (zzicVar.zzv().zzq(str)) {
                        zzicVar.zzv().zzi();
                    }
                }
            });
            zzljVarZzj.zzL(null, "_id", str, true, j);
        }
    }

    @Override
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzj().zzL(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzda zzdaVar) throws RemoteException {
        zzjq zzqVar;
        zzb();
        Map map = this.zzb;
        synchronized (map) {
            zzqVar = (zzjq) map.remove(Integer.valueOf(zzdaVar.zzf()));
        }
        if (zzqVar == null) {
            zzqVar = new zzq(this, zzdaVar);
        }
        this.zza.zzj().zzX(zzqVar);
    }
}
