package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzqa implements Supplier {
    private static final zzqa zza = new zzqa();
    private final Supplier zzb = Suppliers.ofInstance(new zzqc());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzqb get() {
        return (zzqb) this.zzb.get();
    }
}
