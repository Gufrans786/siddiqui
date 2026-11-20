package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzrk implements Supplier {
    private static final zzrk zza = new zzrk();
    private final Supplier zzb = Suppliers.ofInstance(new zzrm());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzrl get() {
        return (zzrl) this.zzb.get();
    }
}
