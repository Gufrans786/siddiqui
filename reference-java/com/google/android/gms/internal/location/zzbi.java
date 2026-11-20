package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

public final class zzbi implements Continuation {
    public final TaskCompletionSource zza;

    @Override
    public final Object then(Task task) {
        TaskCompletionSource taskCompletionSource = this.zza;
        Api api = zzbp.zzb;
        if (task.isSuccessful()) {
            taskCompletionSource.trySetResult((Location) task.getResult());
            return null;
        }
        Exception exception = task.getException();
        exception.getClass();
        taskCompletionSource.trySetException(exception);
        return null;
    }
}
