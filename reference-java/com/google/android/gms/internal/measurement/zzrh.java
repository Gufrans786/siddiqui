package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class zzrh implements Supplier {
    private static final zzrh zza = new zzrh();
    private final Supplier zzb = Suppliers.ofInstance(new zzrj());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override
    public final zzri get() {
        return (zzri) this.zzb.get();
    }
}
