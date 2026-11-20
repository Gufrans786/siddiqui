package com.google.android.gms.internal.p000authapi;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Objects;

final class zbbh extends zbbi {
    final transient int zba;
    final transient int zbb;
    final zbbi zbc;

    zbbh(zbbi zbbiVar, int i, int i2) {
        Objects.requireNonNull(zbbiVar);
        this.zbc = zbbiVar;
        this.zba = i;
        this.zbb = i2;
    }

    @Override
    public final Object get(int i) {
        zbbc.zba(i, this.zbb, FirebaseAnalytics.Param.INDEX);
        return this.zbc.get(i + this.zba);
    }

    @Override
    public final int size() {
        return this.zbb;
    }

    @Override
    public final List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override
    final Object[] zbb() {
        return this.zbc.zbb();
    }

    @Override
    final int zbc() {
        return this.zbc.zbc() + this.zba;
    }

    @Override
    final int zbd() {
        return this.zbc.zbc() + this.zba + this.zbb;
    }

    @Override
    final boolean zbf() {
        return true;
    }

    @Override
    public final zbbi subList(int i, int i2) {
        zbbc.zbc(i, i2, this.zbb);
        int i3 = this.zba;
        return this.zbc.subList(i + i3, i2 + i3);
    }
}
