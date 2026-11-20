package com.mapbox.common.module.okhttp;

import androidx.core.app.NotificationCompat;
import com.mapbox.common.HttpRequestError;
import com.mapbox.common.HttpRequestErrorType;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import javax.net.ssl.SSLException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001aBA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u001a\u0010\n\u001a\u0016\u0012\b\u0012\u00060\u0005j\u0002`\f\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000e¢\u0006\u0002\u0010\u000fJ\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0016\u0012\b\u0012\u00060\u0005j\u0002`\f\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/mapbox/common/module/okhttp/CallbackWrapper;", "Lokhttp3/Callback;", NotificationCompat.CATEGORY_SERVICE, "Lcom/mapbox/common/module/okhttp/OkHttpClientDetail;", "id", "", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "callback", "Lcom/mapbox/common/module/okhttp/CallbackWrapper$RequestCallback;", "onRequestFinished", "Lkotlin/Function1;", "Lcom/mapbox/common/module/RequestId;", "", "Lcom/mapbox/common/module/RequestFinishedCallback;", "(Lcom/mapbox/common/module/okhttp/OkHttpClientDetail;JLokhttp3/Call;Lcom/mapbox/common/module/okhttp/CallbackWrapper$RequestCallback;Lkotlin/jvm/functions/Function1;)V", "requestError", "Lcom/mapbox/common/HttpRequestError;", "cancel", "error", "onFailure", JWKParameterNames.RSA_EXPONENT, "Ljava/io/IOException;", "onResponse", "response", "Lokhttp3/Response;", "RequestCallback", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CallbackWrapper implements Callback {
    private final Call call;
    private final RequestCallback callback;
    private final long id;
    private final Function1<Long, Unit> onRequestFinished;
    private HttpRequestError requestError;
    private final OkHttpClientDetail service;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lcom/mapbox/common/module/okhttp/CallbackWrapper$RequestCallback;", "", "onFailure", "", "error", "Lcom/mapbox/common/HttpRequestError;", "onResponse", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "response", "Lokhttp3/Response;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface RequestCallback {
        void onFailure(HttpRequestError error);

        void onResponse(Call call, Response response) throws IOException;
    }

    public CallbackWrapper(OkHttpClientDetail service, long j, Call call, RequestCallback callback, Function1<? super Long, Unit> onRequestFinished) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(onRequestFinished, "onRequestFinished");
        this.service = service;
        this.id = j;
        this.call = call;
        this.callback = callback;
        this.onRequestFinished = onRequestFinished;
    }

    @Override
    public void onFailure(Call call, IOException e) {
        HttpRequestError httpRequestError;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(e, "e");
        if (call.isCanceled() && (httpRequestError = this.requestError) != null) {
            RequestCallback requestCallback = this.callback;
            Intrinsics.checkNotNull(httpRequestError);
            requestCallback.onFailure(httpRequestError);
        } else {
            HttpRequestErrorType httpRequestErrorType = HttpRequestErrorType.OTHER_ERROR;
            if (e instanceof UnknownHostException ? true : e instanceof SSLException ? true : e instanceof UnknownServiceException ? true : e instanceof SocketException ? true : e instanceof ProtocolException) {
                httpRequestErrorType = HttpRequestErrorType.CONNECTION_ERROR;
            } else if (e instanceof InterruptedIOException) {
                httpRequestErrorType = HttpRequestErrorType.REQUEST_TIMED_OUT;
            }
            this.callback.onFailure(new HttpRequestError(httpRequestErrorType, String.valueOf(e.getMessage())));
        }
        this.onRequestFinished.invoke(Long.valueOf(this.id));
    }

    @Override
    public void onResponse(Call call, Response response) throws IOException {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            this.callback.onResponse(call, response);
        } catch (IOException e) {
            onFailure(call, e);
        } catch (Exception e2) {
            this.callback.onFailure(new HttpRequestError(HttpRequestErrorType.OTHER_ERROR, String.valueOf(e2.getMessage())));
        }
    }

    public final void cancel() {
        this.requestError = new HttpRequestError(HttpRequestErrorType.REQUEST_CANCELLED, "Request cancelled");
        this.call.cancel();
    }

    public final void cancel(HttpRequestError error) {
        this.requestError = error;
        this.call.cancel();
    }
}
