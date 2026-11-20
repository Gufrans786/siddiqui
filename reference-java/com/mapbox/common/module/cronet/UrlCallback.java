package com.mapbox.common.module.cronet;

import app.notifee.core.event.LogEvent;
import com.mapbox.common.HttpRequestError;
import com.mapbox.common.HttpRequestErrorType;
import com.mapbox.common.NetworkUsageMetricsMeter;
import com.mapbox.common.ResponseReadStream;
import com.mapbox.common.http_backend.RequestObserver;
import com.mapbox.common.http_backend.ResponseData;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001.B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001a\u0010\u0006\u001a\u0016\u0012\b\u0012\u00060\u0003j\u0002`\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0018J\u001c\u0010\u001b\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J&\u0010 \u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J&\u0010#\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J&\u0010&\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u001c\u0010)\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001c\u0010*\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J \u0010+\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\u0016H\u0002J\u000e\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\u000eR\u0016\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0006\u001a\u0016\u0012\b\u0012\u00060\u0003j\u0002`\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/mapbox/common/module/cronet/UrlCallback;", "Lorg/chromium/net/UrlRequest$Callback;", "id", "", "observer", "Lcom/mapbox/common/http_backend/RequestObserver;", "onRequestFinished", "Lkotlin/Function1;", "Lcom/mapbox/common/module/RequestId;", "", "Lcom/mapbox/common/module/RequestFinishedCallback;", "(JLcom/mapbox/common/http_backend/RequestObserver;Lkotlin/jvm/functions/Function1;)V", "cancelReason", "Ljava/util/concurrent/atomic/AtomicReference;", "Lcom/mapbox/common/HttpRequestError;", "chunkSize", "", "failed", "", "intermediateBuffer", "Lokio/Buffer;", "notifyObserverOnData", "Lkotlin/Function0;", "statusCallback", "Lcom/mapbox/common/module/cronet/UrlCallback$StatusCallback;", "getStatus", "callback", "onCanceled", "request", "Lorg/chromium/net/UrlRequest;", LogEvent.LEVEL_INFO, "Lorg/chromium/net/UrlResponseInfo;", "onFailed", "exception", "Lorg/chromium/net/CronetException;", "onReadCompleted", "byteBuffer", "Ljava/nio/ByteBuffer;", "onRedirectReceived", "newLocationUrl", "", "onResponseStarted", "onSucceeded", "runCallback", "setCancelReason", "reason", "StatusCallback", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UrlCallback extends UrlRequest.Callback {
    private AtomicReference<HttpRequestError> cancelReason;
    private final int chunkSize;
    private boolean failed;
    private final long id;
    private final Buffer intermediateBuffer;
    private final Function0<Unit> notifyObserverOnData;
    private final RequestObserver observer;
    private final Function1<Long, Unit> onRequestFinished;
    private StatusCallback statusCallback;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/mapbox/common/module/cronet/UrlCallback$StatusCallback;", "", "onDone", "", "onRead", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StatusCallback {
        void onDone();

        void onRead();
    }

    public UrlCallback(long j, RequestObserver observer, Function1<? super Long, Unit> onRequestFinished) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        Intrinsics.checkNotNullParameter(onRequestFinished, "onRequestFinished");
        this.id = j;
        this.observer = observer;
        this.onRequestFinished = onRequestFinished;
        this.chunkSize = 65536;
        this.intermediateBuffer = new Buffer();
        this.cancelReason = new AtomicReference<>(null);
        this.notifyObserverOnData = new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                this.this$0.observer.onData(this.this$0.id);
            }
        };
    }

    public final void setCancelReason(HttpRequestError reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.cancelReason.set(reason);
    }

    public final void getStatus(StatusCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.statusCallback = callback;
    }

    @Override
    public void onRedirectReceived(UrlRequest request, UrlResponseInfo info, String newLocationUrl) {
        if (request != null) {
            request.followRedirect();
        }
    }

    @Override
    public void onResponseStarted(UrlRequest request, final UrlResponseInfo info) {
        if (request == null || info == null) {
            if (request != null) {
                request.cancel();
                return;
            }
            return;
        }
        Map<String, List<String>> allHeaders = info.getAllHeaders();
        Intrinsics.checkNotNullExpressionValue(allHeaders, "info.allHeaders");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, List<String>> entry : allHeaders.entrySet()) {
            if (entry.getValue().size() > 0) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = linkedHashMap;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap2.size()));
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            Object key = entry2.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "it.key");
            String lowerCase = ((String) key).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            linkedHashMap3.put(lowerCase, entry2.getValue());
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap3.size()));
        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
            linkedHashMap4.put(entry3.getKey(), (String) ((List) entry3.getValue()).get(0));
        }
        final HashMap map = new HashMap(linkedHashMap4);
        NetworkUsageMetricsMeter.onHttpCodeReceived(info.getHttpStatusCode());
        runCallback(request, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                UrlCallback.this.observer.onResponse(UrlCallback.this.id, new ResponseData(map, info.getHttpStatusCode(), new ResponseReadStream(UrlCallback.this.intermediateBuffer)));
            }
        });
        request.read(ByteBuffer.allocateDirect(this.chunkSize));
    }

    @Override
    public void onReadCompleted(UrlRequest request, UrlResponseInfo info, ByteBuffer byteBuffer) {
        int i;
        int iWrite;
        Intrinsics.checkNotNull(byteBuffer);
        byteBuffer.flip();
        try {
            synchronized (this) {
                i = 0;
                do {
                    iWrite = this.intermediateBuffer.write(byteBuffer);
                    i += iWrite;
                } while (iWrite > 0);
                Unit unit = Unit.INSTANCE;
            }
            byteBuffer.clear();
            Intrinsics.checkNotNull(request);
            request.read(byteBuffer);
            if (i > 0) {
                StatusCallback statusCallback = this.statusCallback;
                if (statusCallback != null) {
                    statusCallback.onRead();
                }
                runCallback(request, this.notifyObserverOnData);
            }
        } catch (IOException e) {
            setCancelReason(new HttpRequestError(HttpRequestErrorType.OTHER_ERROR, "Error reading network buffer: " + e));
            if (request != null) {
                request.cancel();
            }
        }
    }

    @Override
    public void onSucceeded(UrlRequest request, UrlResponseInfo info) {
        runCallback(request, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                UrlCallback.this.observer.onSucceeded(UrlCallback.this.id);
            }
        });
        StatusCallback statusCallback = this.statusCallback;
        if (statusCallback != null) {
            statusCallback.onDone();
        }
        this.onRequestFinished.invoke(Long.valueOf(this.id));
    }

    @Override
    public void onFailed(UrlRequest request, UrlResponseInfo info, CronetException exception) {
        String message;
        HttpRequestErrorType httpRequestErrorType = HttpRequestErrorType.OTHER_ERROR;
        if (exception instanceof NetworkException) {
            httpRequestErrorType = HttpRequestErrorType.CONNECTION_ERROR;
            int errorCode = ((NetworkException) exception).getErrorCode();
            if (errorCode == 4 || errorCode == 6) {
                httpRequestErrorType = HttpRequestErrorType.REQUEST_TIMED_OUT;
            } else if (errorCode == 11) {
                httpRequestErrorType = HttpRequestErrorType.OTHER_ERROR;
            }
        }
        if (exception == null) {
            message = "No info";
        } else {
            message = exception.getMessage();
            if (message == null) {
                message = "Exception of type " + exception.getClass().getSimpleName();
            }
            if (message == null) {
                message = "No info";
            }
        }
        final HttpRequestError httpRequestError = new HttpRequestError(httpRequestErrorType, "Couldn't connect to server: " + message);
        runCallback(request, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                UrlCallback.this.failed = true;
                UrlCallback.this.observer.onFailed(UrlCallback.this.id, httpRequestError);
            }
        });
        StatusCallback statusCallback = this.statusCallback;
        if (statusCallback != null) {
            statusCallback.onDone();
        }
        this.onRequestFinished.invoke(Long.valueOf(this.id));
    }

    @Override
    public void onCanceled(UrlRequest request, UrlResponseInfo info) {
        final HttpRequestError httpRequestError = this.cancelReason.get();
        if (httpRequestError == null) {
            httpRequestError = new HttpRequestError(HttpRequestErrorType.REQUEST_CANCELLED, "Request cancelled");
        }
        runCallback(request, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                UrlCallback.this.failed = true;
                UrlCallback.this.observer.onFailed(UrlCallback.this.id, httpRequestError);
            }
        });
        StatusCallback statusCallback = this.statusCallback;
        if (statusCallback != null) {
            statusCallback.onDone();
        }
        this.onRequestFinished.invoke(Long.valueOf(this.id));
    }

    private final void runCallback(UrlRequest request, Function0<Unit> callback) {
        try {
            if (this.failed) {
                return;
            }
            callback.invoke();
        } catch (Exception e) {
            if (request != null ? request.isDone() : false) {
                return;
            }
            setCancelReason(new HttpRequestError(HttpRequestErrorType.OTHER_ERROR, "Exception during callback: " + e));
            if (request != null) {
                request.cancel();
            }
        }
    }
}
