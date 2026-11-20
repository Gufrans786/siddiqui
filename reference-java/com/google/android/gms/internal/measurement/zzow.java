package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzow implements Supplier {
    private static final zzow zza = new zzow();
    private final Supplier zzb = Suppliers.ofInstance(new zzoy());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzox get() {
        return (zzox) this.zzb.get();
    }
}
