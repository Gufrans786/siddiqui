package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import java.util.Objects;

final class bx implements StandardIntegrityManager.StandardIntegrityTokenProvider {
    final long a;
    final long b;
    final int c;
    final by d;

    bx(by byVar, long j, long j2, int i) {
        this.a = j;
        this.b = j2;
        this.c = i;
        Objects.requireNonNull(byVar);
        this.d = byVar;
    }

    @Override
    public final Task<StandardIntegrityManager.StandardIntegrityToken> request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.d.a.d(standardIntegrityTokenRequest, this.a, this.b, this.c);
    }
}
