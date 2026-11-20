package com.google.android.gms.internal.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzfe extends zzdr implements RandomAccess, zzff {

    @Deprecated
    public static final zzff zza;
    private static final zzfe zzb;
    private final List zzc;

    static {
        zzfe zzfeVar = new zzfe(false);
        zzb = zzfeVar;
        zza = zzfeVar;
    }

    public zzfe() {
        this(10);
    }

    private static String zzh(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof zzef ? ((zzef) obj).zzl(zzfa.zzb) : zzfa.zzd((byte[]) obj);
    }

    @Override
    public final void add(int i, Object obj) {
        zza();
        this.zzc.add(i, (String) obj);
        this.modCount++;
    }

    @Override
    public final boolean addAll(int i, Collection collection) {
        zza();
        if (collection instanceof zzff) {
            collection = ((zzff) collection).zzg();
        }
        boolean zAddAll = this.zzc.addAll(i, collection);
        this.modCount++;
        return zAddAll;
    }

    @Override
    public final void clear() {
        zza();
        this.zzc.clear();
        this.modCount++;
    }

    @Override
    public final Object remove(int i) {
        zza();
        Object objRemove = this.zzc.remove(i);
        this.modCount++;
        return zzh(objRemove);
    }

    @Override
    public final Object set(int i, Object obj) {
        zza();
        return zzh(this.zzc.set(i, (String) obj));
    }

    @Override
    public final int size() {
        return this.zzc.size();
    }

    @Override
    public final zzez zzd(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzc);
        return new zzfe(arrayList);
    }

    @Override
    public final zzff zze() {
        return zzc() ? new zzhe(this) : this;
    }

    @Override
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzef) {
            zzef zzefVar = (zzef) obj;
            String strZzl = zzefVar.zzl(zzfa.zzb);
            if (zzefVar.zzh()) {
                this.zzc.set(i, strZzl);
            }
            return strZzl;
        }
        byte[] bArr = (byte[]) obj;
        String strZzd = zzfa.zzd(bArr);
        if (zzhn.zzb(bArr)) {
            this.zzc.set(i, strZzd);
        }
        return strZzd;
    }

    @Override
    public final List zzg() {
        return Collections.unmodifiableList(this.zzc);
    }

    public zzfe(int i) {
        ArrayList arrayList = new ArrayList(i);
        super(true);
        this.zzc = arrayList;
    }

    private zzfe(ArrayList arrayList) {
        super(true);
        this.zzc = arrayList;
    }

    private zzfe(boolean z) {
        super(false);
        this.zzc = Collections.emptyList();
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
