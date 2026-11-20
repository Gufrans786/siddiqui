package com.google.android.play.core.integrity;

import android.text.TextUtils;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

final class be implements StandardIntegrityManager {
    private final bs a;
    private final by b;

    be(bs bsVar, by byVar) {
        this.a = bsVar;
        this.b = byVar;
    }

    @Override
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        prepareIntegrityTokenRequest.c();
        if (TextUtils.isEmpty(null)) {
            return this.a.f(prepareIntegrityTokenRequest.b(), prepareIntegrityTokenRequest.a()).onSuccessTask(new SuccessContinuation() {
                @Override
                public final Task then(Object obj) {
                    be beVar = this.a;
                    StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest2 = prepareIntegrityTokenRequest;
                    return Tasks.forResult(new bx(beVar.b, prepareIntegrityTokenRequest2.b(), ((Long) obj).longValue(), prepareIntegrityTokenRequest2.a()));
                }
            });
        }
        try {
            by byVar = this.b;
            long jB = prepareIntegrityTokenRequest.b();
            prepareIntegrityTokenRequest.c();
            return Tasks.forResult(new bx(byVar, jB, Long.parseLong(null), prepareIntegrityTokenRequest.a()));
        } catch (NumberFormatException e) {
            return Tasks.forException(e);
        }
    }

    @Override
    public final Task<Integer> showDialog(StandardIntegrityManager.StandardIntegrityDialogRequest standardIntegrityDialogRequest) {
        return this.a.e(standardIntegrityDialogRequest);
    }
}
