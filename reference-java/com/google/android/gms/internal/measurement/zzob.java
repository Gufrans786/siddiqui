package com.google.android.gms.internal.measurement;

import java.util.Map;
import java.util.Objects;

final class zzob implements Map.Entry, Comparable {
    final zzoe zza;
    private final Comparable zzb;
    private Object zzc;

    zzob(zzoe zzoeVar, Comparable comparable, Object obj) {
        Objects.requireNonNull(zzoeVar);
        this.zza = zzoeVar;
        this.zzb = comparable;
        this.zzc = obj;
    }

    private static final boolean zzb(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override
    public final int compareTo(Object obj) {
        return this.zzb.compareTo(((zzob) obj).zzb);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return zzb(this.zzb, entry.getKey()) && zzb(this.zzc, entry.getValue());
    }

    @Override
    public final Object getKey() {
        return this.zzb;
    }

    @Override
    public final Object getValue() {
        return this.zzc;
    }

    @Override
    public final int hashCode() {
        Comparable comparable = this.zzb;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.zzc;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        this.zza.zzh();
        Object obj2 = this.zzc;
        this.zzc = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zzb);
        String strValueOf2 = String.valueOf(this.zzc);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length());
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }

    public final Comparable zza() {
        return this.zzb;
    }
}
