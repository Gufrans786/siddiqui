package com.google.android.play.integrity.internal;

final class an extends al {
    private final ap a;

    an(ap apVar, int i) {
        super(apVar.size(), i);
        this.a = apVar;
    }

    @Override
    protected final Object a(int i) {
        return this.a.get(i);
    }
}
