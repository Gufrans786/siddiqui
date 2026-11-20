package com.mapbox.common.module.okhttp;

import androidx.core.app.NotificationCompat;
import com.mapbox.common.HttpRequestError;
import com.mapbox.common.module.RequestDetail;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u000f\u001a\u00020\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/mapbox/common/module/okhttp/OkHttpRequestDetail;", "Lcom/mapbox/common/module/RequestDetail;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "callback", "Lcom/mapbox/common/module/okhttp/CallbackWrapper;", "(Lokhttp3/Call;Lcom/mapbox/common/module/okhttp/CallbackWrapper;)V", "getCall", "()Lokhttp3/Call;", "getCallback", "()Lcom/mapbox/common/module/okhttp/CallbackWrapper;", "cancel", "", "error", "Lcom/mapbox/common/HttpRequestError;", "start", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OkHttpRequestDetail implements RequestDetail {
    private final Call call;
    private final CallbackWrapper callback;

    public OkHttpRequestDetail(Call call, CallbackWrapper callback) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.call = call;
        this.callback = callback;
    }

    public final Call getCall() {
        return this.call;
    }

    public final CallbackWrapper getCallback() {
        return this.callback;
    }

    @Override
    public void start() {
        this.call.enqueue(this.callback);
    }

    @Override
    public void cancel(HttpRequestError error) {
        if (error == null) {
            this.callback.cancel();
        } else {
            this.callback.cancel(error);
        }
    }
}
