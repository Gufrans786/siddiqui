package com.google.android.play.core.integrity;

import android.content.Context;

public final class bu implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;
    private final com.google.android.play.integrity.internal.az b;
    private final com.google.android.play.integrity.internal.az c;

    private bu(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2, com.google.android.play.integrity.internal.az azVar3, com.google.android.play.integrity.internal.az azVar4) {
        this.a = azVar;
        this.b = azVar2;
        this.c = azVar3;
    }

    public static bu b(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2, com.google.android.play.integrity.internal.az azVar3, com.google.android.play.integrity.internal.az azVar4) {
        return new bu(azVar, azVar2, azVar3, azVar4);
    }

    @Override
    public final Object a() {
        return new bs((Context) this.a.a(), (com.google.android.play.integrity.internal.s) this.b.a(), ((az) this.c).a(), new s());
    }
}
