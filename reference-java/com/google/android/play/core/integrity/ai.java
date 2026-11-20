package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;

final class ai implements IntegrityManager {
    private final ar a;

    ai(ar arVar) {
        this.a = arVar;
    }

    @Override
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.a.c(integrityTokenRequest);
    }

    @Override
    public final Task<Integer> showDialog(IntegrityDialogRequest integrityDialogRequest) {
        return this.a.d(integrityDialogRequest);
    }
}
