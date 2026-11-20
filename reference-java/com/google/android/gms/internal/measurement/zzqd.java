package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzqd implements Supplier {
    private static final zzqd zza = new zzqd();
    private final Supplier zzb = Suppliers.ofInstance(new zzqf());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzqe get() {
        return (zzqe) this.zzb.get();
    }
}
