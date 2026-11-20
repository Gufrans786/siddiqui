package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzqv implements Supplier {
    private static final zzqv zza = new zzqv();
    private final Supplier zzb = Suppliers.ofInstance(new zzqx());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzqw get() {
        return (zzqw) this.zzb.get();
    }
}
