package com.mapbox.common.location;

import android.app.Activity;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0011\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\tH\u0016J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0016J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0011H\u0016J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u000e\u0010\b\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0011H\u0016J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u000f2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0011H\u0016J\f\u0010\u0012\u001a\u00060\u0004j\u0002`\u0005H\u0016J\r\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0014J'\u0010\u0013\u001a\u00028\u0000\"\n\b\u0001\u0010\u0015*\u0004\u0018\u00010\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00150\u0018H\u0016¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0016R\u0012\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/mapbox/common/location/FailedTask;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/google/android/gms/tasks/Task;", "exception", "Ljava/lang/Exception;", "Lkotlin/Exception;", "(Ljava/lang/Exception;)V", "addOnCanceledListener", "p0", "Lcom/google/android/gms/tasks/OnCanceledListener;", "addOnFailureListener", "Landroid/app/Activity;", "p1", "Lcom/google/android/gms/tasks/OnFailureListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Ljava/util/concurrent/Executor;", "addOnSuccessListener", "Lcom/google/android/gms/tasks/OnSuccessListener;", "getException", "getResult", "()Ljava/lang/Object;", "X", "", "exceptionType", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "isCanceled", "", "isComplete", "isSuccessful", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FailedTask<T> extends Task<T> {
    private final Exception exception;

    @Override
    public boolean isCanceled() {
        return false;
    }

    @Override
    public boolean isComplete() {
        return true;
    }

    @Override
    public boolean isSuccessful() {
        return false;
    }

    public FailedTask(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        this.exception = exception;
    }

    @Override
    public T getResult() {
        throw new RuntimeExecutionException(this.exception);
    }

    @Override
    public <X extends Throwable> T getResult(Class<X> exceptionType) throws Exception {
        Intrinsics.checkNotNullParameter(exceptionType, "exceptionType");
        if (exceptionType.isInstance(this.exception)) {
            throw this.exception;
        }
        throw new RuntimeExecutionException(this.exception);
    }

    @Override
    public Exception getException() {
        return this.exception;
    }

    @Override
    public Task<T> addOnFailureListener(OnFailureListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        listener.onFailure(this.exception);
        return this;
    }

    @Override
    public Task<T> addOnFailureListener(Executor p0, OnFailureListener p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        throw new NotImplementedError("Please use addOnFailureListener(listener: OnFailureListener)");
    }

    @Override
    public Task<T> addOnFailureListener(Activity p0, OnFailureListener p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        throw new NotImplementedError("Please use addOnFailureListener(listener: OnFailureListener)");
    }

    @Override
    public Task<T> addOnSuccessListener(Activity p0, OnSuccessListener<? super T> p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        return this;
    }

    @Override
    public Task<T> addOnSuccessListener(Executor p0, OnSuccessListener<? super T> p1) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        return this;
    }

    @Override
    public Task<T> addOnSuccessListener(OnSuccessListener<? super T> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return this;
    }

    @Override
    public Task<T> addOnCanceledListener(OnCanceledListener p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return this;
    }
}
