package com.google.android.gms.internal.measurement;

final class zzma implements zznk {
    private static final zzma zza = new zzma();

    private zzma() {
    }

    public static zzma zza() {
        return zza;
    }

    @Override
    public final boolean zzb(Class cls) {
        return zzmf.class.isAssignableFrom(cls);
    }

    @Override
    public final zznj zzc(Class cls) {
        if (!zzmf.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            String.valueOf(name);
            throw new IllegalArgumentException("Unsupported message type: ".concat(String.valueOf(name)));
        }
        try {
            return (zznj) zzmf.zzco(cls.asSubclass(zzmf.class)).zzl(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            String.valueOf(name2);
            throw new RuntimeException("Unable to get message info for ".concat(String.valueOf(name2)), e);
        }
    }
}
