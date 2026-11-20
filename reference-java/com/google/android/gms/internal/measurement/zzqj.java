package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzqj implements Supplier {
    private static final zzqj zza = new zzqj();
    private final Supplier zzb = Suppliers.ofInstance(new zzql());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzqk get() {
        return (zzqk) this.zzb.get();
    }
}
