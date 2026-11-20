package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzoz implements Supplier {
    private static final zzoz zza = new zzoz();
    private final Supplier zzb = Suppliers.ofInstance(new zzpb());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzpa get() {
        return (zzpa) this.zzb.get();
    }
}
