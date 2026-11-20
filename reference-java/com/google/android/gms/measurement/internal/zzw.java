package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzqp;
import java.util.Objects;

public final class zzw extends BroadcastReceiver {
    private final zzic zza;

    public zzw(zzic zzicVar) {
        this.zza = zzicVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        byte b;
        if (intent == null) {
            this.zza.zzaV().zze().zza("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            this.zza.zzaV().zze().zza("App receiver called with null action");
            return;
        }
        int iHashCode = action.hashCode();
        if (iHashCode != -1928239649) {
            if (iHashCode == 1279883384 && action.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b != 0) {
            if (b != 1) {
                this.zza.zzaV().zze().zza("App receiver called with unknown action");
                return;
            }
            zzic zzicVar = this.zza;
            zzicVar.zzaV().zzk().zza("[sgtm] App Receiver notified batches are available");
            zzicVar.zzaW().zzj(new Runnable() {
                @Override
                public final void run() {
                    this.zza.zza();
                }
            });
            return;
        }
        final zzic zzicVar2 = this.zza;
        zzqp.zza();
        if (zzicVar2.zzc().zzp(null, zzfy.zzaQ)) {
            zzicVar2.zzaV().zzk().zza("App receiver notified triggers are available");
            zzicVar2.zzaW().zzj(new Runnable() {
                @Override
                public final void run() {
                    zzic zzicVar3 = zzicVar2;
                    if (!zzicVar3.zzk().zzS()) {
                        zzicVar3.zzaV().zze().zza("registerTrigger called but app not eligible");
                        return;
                    }
                    zzicVar3.zzj().zzv();
                    final zzlj zzljVarZzj = zzicVar3.zzj();
                    Objects.requireNonNull(zzljVarZzj);
                    new Thread(new Runnable() {
                        @Override
                        public final void run() {
                            zzljVarZzj.zzw();
                        }
                    }).start();
                }
            });
        }
    }

    final void zza() {
        this.zza.zzx().zzh(((Long) zzfy.zzC.zzb(null)).longValue());
    }
}
