package com.google.android.gms.internal.p000authapi;

final class zbbg extends zbbe {
    private final zbbi zba;

    zbbg(zbbi zbbiVar, int i) {
        super(zbbiVar.size(), i);
        this.zba = zbbiVar;
    }

    @Override
    protected final Object zba(int i) {
        return this.zba.get(i);
    }
}
