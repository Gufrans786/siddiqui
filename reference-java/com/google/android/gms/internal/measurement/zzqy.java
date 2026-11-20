package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzqy implements Supplier {
    private static final zzqy zza = new zzqy();
    private final Supplier zzb = Suppliers.ofInstance(new zzra());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzqz get() {
        return (zzqz) this.zzb.get();
    }
}
