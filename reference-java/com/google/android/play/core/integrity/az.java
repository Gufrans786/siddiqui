package com.google.android.play.core.integrity;

public final class az implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;
    private final com.google.android.play.integrity.internal.az b;

    private az(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2) {
        this.a = azVar;
        this.b = azVar2;
    }

    public static az c(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2) {
        return new az(azVar, azVar2);
    }

    @Override
    public final ay a() {
        return new ay(this.a, this.b);
    }
}
