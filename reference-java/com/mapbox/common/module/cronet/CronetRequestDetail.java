package com.mapbox.common.module.cronet;

import com.mapbox.common.HttpRequestError;
import com.mapbox.common.HttpRequestErrorType;
import com.mapbox.common.Scheduler;
import com.mapbox.common.Task;
import com.mapbox.common.module.RequestDetail;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.chromium.net.UrlRequest;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u00192\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0019B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\tH\u0002J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\b\u0010\u0016\u001a\u00020\u0010H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\b\u0010\u0018\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/mapbox/common/module/cronet/CronetRequestDetail;", "Lcom/mapbox/common/module/RequestDetail;", "Lcom/mapbox/common/module/cronet/UrlCallback$StatusCallback;", "Lcom/mapbox/common/Task;", "request", "Lorg/chromium/net/UrlRequest;", "callback", "Lcom/mapbox/common/module/cronet/UrlCallback;", "timeoutSeconds", "", "scheduler", "Lcom/mapbox/common/Scheduler;", "(Lorg/chromium/net/UrlRequest;Lcom/mapbox/common/module/cronet/UrlCallback;JLcom/mapbox/common/Scheduler;)V", "timeout", "Lcom/mapbox/common/module/cronet/CronetTimeout;", "cancel", "", "error", "Lcom/mapbox/common/HttpRequestError;", "createTimeout", "seconds", "onDone", "onRead", "run", "start", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CronetRequestDetail implements RequestDetail, UrlCallback.StatusCallback, Task {
    public static final long DEFAULT_READ_TIMEOUT = 60;
    private final UrlCallback callback;
    private final UrlRequest request;
    private final Scheduler scheduler;
    private CronetTimeout timeout;
    private long timeoutSeconds;

    public CronetRequestDetail(UrlRequest request, UrlCallback callback, long j, Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        this.request = request;
        this.callback = callback;
        this.timeoutSeconds = j;
        this.scheduler = scheduler;
        if (j <= 0) {
            this.timeoutSeconds = 60L;
        }
    }

    @Override
    public void start() {
        CronetTimeout cronetTimeoutCreateTimeout = createTimeout(this.timeoutSeconds);
        this.timeout = cronetTimeoutCreateTimeout;
        if (cronetTimeoutCreateTimeout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeout");
            cronetTimeoutCreateTimeout = null;
        }
        cronetTimeoutCreateTimeout.start();
        this.callback.getStatus(this);
        this.request.start();
    }

    @Override
    public void cancel(HttpRequestError error) {
        if (error != null) {
            this.callback.setCancelReason(error);
        }
        this.request.cancel();
    }

    @Override
    public void run() {
        if (this.request.isDone()) {
            return;
        }
        cancel(new HttpRequestError(HttpRequestErrorType.REQUEST_TIMED_OUT, "Request timed out (" + this.timeoutSeconds + " seconds)"));
    }

    private final CronetTimeout createTimeout(long seconds) {
        return new CronetTimeout(this.scheduler, seconds, this);
    }

    @Override
    public void onRead() {
        CronetTimeout cronetTimeout = this.timeout;
        if (cronetTimeout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeout");
            cronetTimeout = null;
        }
        cronetTimeout.resetDeadline();
    }

    @Override
    public void onDone() {
        CronetTimeout cronetTimeout = this.timeout;
        if (cronetTimeout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeout");
            cronetTimeout = null;
        }
        cronetTimeout.cancel();
    }
}
