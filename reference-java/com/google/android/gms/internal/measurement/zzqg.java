package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzqg implements Supplier {
    private static final zzqg zza = new zzqg();
    private final Supplier zzb = Suppliers.ofInstance(new zzqi());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzqh get() {
        return (zzqh) this.zzb.get();
    }
}
