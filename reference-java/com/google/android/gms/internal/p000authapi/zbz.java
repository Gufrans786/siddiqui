package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

final class zbz extends IStatusCallback.Stub {
    final TaskCompletionSource zba;

    zbz(zbad zbadVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
        Objects.requireNonNull(zbadVar);
    }

    @Override
    public final void onResult(Status status) throws RemoteException {
        if (status.isSuccess()) {
            this.zba.setResult(null);
        } else {
            this.zba.setException(ApiExceptionUtil.fromStatus(status));
        }
    }
}
