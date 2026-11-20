package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzpf implements Supplier {
    private static final zzpf zza = new zzpf();
    private final Supplier zzb = Suppliers.ofInstance(new zzph());

    @SideEffectFree
    public static long zza() {
        return zza.get().zza();
    }

    @Override
    public final zzpg get() {
        return (zzpg) this.zzb.get();
    }
}
