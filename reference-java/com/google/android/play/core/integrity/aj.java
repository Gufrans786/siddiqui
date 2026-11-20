package com.google.android.play.core.integrity;

public final class aj implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;

    private aj(com.google.android.play.integrity.internal.az azVar) {
        this.a = azVar;
    }

    public static aj b(com.google.android.play.integrity.internal.az azVar) {
        return new aj(azVar);
    }

    @Override
    public final Object a() {
        return new ai((ar) this.a.a());
    }
}
