package com.mapbox.common.module.okhttp;

import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.FileAppender;
import com.mapbox.common.HttpRequestError;
import com.mapbox.common.ResponseReadStream;
import com.mapbox.common.http_backend.RequestObserver;
import com.mapbox.common.http_backend.ResponseData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001a\u0010\u0006\u001a\u0016\u0012\b\u0012\u00060\u0003j\u0002`\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\f\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0006\u001a\u0016\u0012\b\u0012\u00060\u0003j\u0002`\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/mapbox/common/module/okhttp/HttpCallback;", "Lcom/mapbox/common/module/okhttp/CallbackWrapper$RequestCallback;", "id", "", "observer", "Lcom/mapbox/common/http_backend/RequestObserver;", "onRequestFinished", "Lkotlin/Function1;", "Lcom/mapbox/common/module/RequestId;", "", "Lcom/mapbox/common/module/RequestFinishedCallback;", "(JLcom/mapbox/common/http_backend/RequestObserver;Lkotlin/jvm/functions/Function1;)V", "chunkSize", "onFailure", "error", "Lcom/mapbox/common/HttpRequestError;", "onResponse", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "response", "Lokhttp3/Response;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HttpCallback implements CallbackWrapper.RequestCallback {
    private final long chunkSize;
    private final long id;
    private final RequestObserver observer;
    private final Function1<Long, Unit> onRequestFinished;

    public HttpCallback(long j, RequestObserver observer, Function1<? super Long, Unit> onRequestFinished) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        Intrinsics.checkNotNullParameter(onRequestFinished, "onRequestFinished");
        this.id = j;
        this.observer = observer;
        this.onRequestFinished = onRequestFinished;
        this.chunkSize = 65536L;
    }

    @Override
    public void onFailure(HttpRequestError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.observer.onFailed(this.id, error);
    }

    @Override
    public void onResponse(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            Buffer buffer = new Buffer();
            this.observer.onResponse(this.id, new ResponseData(HttpCallbackKt.generateOutputHeaders(response), response.code(), new ResponseReadStream(buffer)));
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody != null) {
                ResponseBody responseBody = responseBodyBody;
                try {
                    BufferedSource source = responseBody.getSource();
                    try {
                        BufferedSource bufferedSource = source;
                        boolean z = false;
                        while (!z) {
                            long j = 0;
                            do {
                                long j2 = bufferedSource.read(buffer, this.chunkSize - j);
                                if (j2 == -1) {
                                    z = true;
                                    break;
                                } else {
                                    j += j2;
                                    if (j2 != FileAppender.DEFAULT_BUFFER_SIZE) {
                                        break;
                                    }
                                }
                            } while (j < this.chunkSize);
                            if (j > 0) {
                                this.observer.onData(this.id);
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(source, null);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(responseBody, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(source, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(responseBody, th3);
                        throw th4;
                    }
                }
            }
            this.observer.onSucceeded(this.id);
            this.onRequestFinished.invoke(Long.valueOf(this.id));
        } catch (Throwable th5) {
            this.onRequestFinished.invoke(Long.valueOf(this.id));
            throw th5;
        }
    }
}
