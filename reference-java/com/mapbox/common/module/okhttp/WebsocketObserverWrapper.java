package com.mapbox.common.module.okhttp;

import app.notifee.core.event.LogEvent;
import com.mapbox.common.HttpRequestError;
import com.mapbox.common.HttpRequestErrorType;
import com.mapbox.common.MapboxCommonLogger;
import com.mapbox.common.ResponseReadStream;
import com.mapbox.common.ResultCallback;
import com.mapbox.common.experimental.wss_backend.RequestObserver;
import com.mapbox.common.experimental.wss_backend.ResponseData;
import com.mapbox.common.experimental.wss_backend.WsOpCode;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.Buffer;
import okio.ByteString;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u0000 .2\u00020\u0001:\u0001.B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ,\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001cj\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d`\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J \u0010!\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001dH\u0016J\"\u0010&\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010'\u001a\u00020(2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0018\u0010)\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u001dH\u0016J\u0018\u0010)\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010+\u001a\u00020,H\u0016J\u0018\u0010-\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006/"}, d2 = {"Lcom/mapbox/common/module/okhttp/WebsocketObserverWrapper;", "Lokhttp3/WebSocketListener;", "requestObserver", "Lcom/mapbox/common/experimental/wss_backend/RequestObserver;", "id", "", LogEvent.LEVEL_VERBOSE, "", "(Lcom/mapbox/common/experimental/wss_backend/RequestObserver;JZ)V", "buffer", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "onClosedCallback", "Lcom/mapbox/common/ResultCallback;", "getOnClosedCallback", "()Lcom/mapbox/common/ResultCallback;", "setOnClosedCallback", "(Lcom/mapbox/common/ResultCallback;)V", "getRequestObserver", "()Lcom/mapbox/common/experimental/wss_backend/RequestObserver;", "webSocket", "Lokhttp3/WebSocket;", "getWebSocket", "()Lokhttp3/WebSocket;", "setWebSocket", "(Lokhttp3/WebSocket;)V", "generateOutputHeaders", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "response", "Lokhttp3/Response;", "onClosed", "", "code", "", "reason", "onFailure", JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "", "onMessage", "text", "bytes", "Lokio/ByteString;", "onOpen", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
final class WebsocketObserverWrapper extends WebSocketListener {

    public static final Companion INSTANCE = new Companion(null);
    private static final int websocketClosedNormalCode = 1000;
    private final Buffer buffer;
    private final long id;
    public ResultCallback onClosedCallback;
    private final RequestObserver requestObserver;
    private final boolean verbose;
    public WebSocket webSocket;

    public WebsocketObserverWrapper(RequestObserver requestObserver, long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(requestObserver, j, (i & 4) != 0 ? false : z);
    }

    public final RequestObserver getRequestObserver() {
        return this.requestObserver;
    }

    public WebsocketObserverWrapper(RequestObserver requestObserver, long j, boolean z) {
        Intrinsics.checkNotNullParameter(requestObserver, "requestObserver");
        this.requestObserver = requestObserver;
        this.id = j;
        this.verbose = z;
        this.buffer = new Buffer();
    }

    public final WebSocket getWebSocket() {
        WebSocket webSocket = this.webSocket;
        if (webSocket != null) {
            return webSocket;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webSocket");
        return null;
    }

    public final void setWebSocket(WebSocket webSocket) {
        Intrinsics.checkNotNullParameter(webSocket, "<set-?>");
        this.webSocket = webSocket;
    }

    public final Buffer getBuffer() {
        return this.buffer;
    }

    public final ResultCallback getOnClosedCallback() {
        ResultCallback resultCallback = this.onClosedCallback;
        if (resultCallback != null) {
            return resultCallback;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onClosedCallback");
        return null;
    }

    public final void setOnClosedCallback(ResultCallback resultCallback) {
        Intrinsics.checkNotNullParameter(resultCallback, "<set-?>");
        this.onClosedCallback = resultCallback;
    }

    private final HashMap<String, String> generateOutputHeaders(Response response) {
        HashMap<String, String> map = new HashMap<>();
        Headers headers = response.headers();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String lowerCase = headers.name(i).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            map.put(lowerCase, headers.value(i));
        }
        return map;
    }

    @Override
    public void onOpen(WebSocket webSocket, Response response) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.code() == 101) {
            if (this.verbose) {
                MapboxCommonLogger.INSTANCE.logD$common_release(WssBackend.TAG, "Websocket opened with code 101, switching protocols");
            }
            this.requestObserver.onSwitchingProtocols(this.id);
        }
        ResponseData responseData = new ResponseData(generateOutputHeaders(response), response.code(), new ResponseReadStream(this.buffer));
        if (this.verbose) {
            MapboxCommonLogger.INSTANCE.logD$common_release(WssBackend.TAG, "Calling onResponse with code " + response.code() + '}');
        }
        this.requestObserver.onResponse(this.id, responseData);
    }

    @Override
    public void onMessage(WebSocket webSocket, ByteString bytes) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (this.verbose) {
            MapboxCommonLogger.INSTANCE.logD$common_release(WssBackend.TAG, "Websocket onMessage (binary): " + bytes);
        }
        this.buffer.write(bytes);
        this.requestObserver.onData(this.id, WsOpCode.BINARY, true);
    }

    @Override
    public void onMessage(WebSocket webSocket, String text) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(text, "text");
        if (this.verbose) {
            MapboxCommonLogger.INSTANCE.logD$common_release(WssBackend.TAG, "Websocket onMessage (text): " + text);
        }
        Buffer buffer = this.buffer;
        byte[] bytes = text.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        buffer.write(bytes);
        this.requestObserver.onData(this.id, WsOpCode.TEXT, true);
    }

    @Override
    public void onFailure(WebSocket webSocket, Throwable t, Response response) {
        String message;
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(t, "t");
        if (this.verbose) {
            MapboxCommonLogger.INSTANCE.logD$common_release(WssBackend.TAG, "Websocket onFailure: " + response + ", " + t);
        }
        HttpRequestErrorType httpRequestErrorType = HttpRequestErrorType.OTHER_ERROR;
        if ((response == null || (message = response.message()) == null) && (message = t.getMessage()) == null) {
            message = "Unknown error";
        }
        this.requestObserver.onFailed(this.id, new HttpRequestError(httpRequestErrorType, message), response != null ? Integer.valueOf(response.code()) : null);
    }

    @Override
    public void onClosed(WebSocket webSocket, int code, String reason) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(reason, "reason");
        try {
            if (this.verbose) {
                MapboxCommonLogger.INSTANCE.logD$common_release(WssBackend.TAG, "Websocket onClosed code: " + code + ", reason: " + reason);
            }
            if (this.onClosedCallback != null) {
                if (code == websocketClosedNormalCode) {
                    getOnClosedCallback().run(true);
                    return;
                } else {
                    getOnClosedCallback().run(false);
                    return;
                }
            }
            this.requestObserver.onFailed(this.id, new HttpRequestError(HttpRequestErrorType.OTHER_ERROR, "Unexpected socket closure: " + code + CardNumberHelper.DIVIDER + reason), null);
        } catch (Throwable unused) {
            if (this.verbose) {
                MapboxCommonLogger.INSTANCE.logD$common_release(WssBackend.TAG, "Websocket onClosed exception, probably callback is null or crashed");
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/mapbox/common/module/okhttp/WebsocketObserverWrapper$Companion;", "", "()V", "websocketClosedNormalCode", "", "getWebsocketClosedNormalCode", "()I", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getWebsocketClosedNormalCode() {
            return WebsocketObserverWrapper.websocketClosedNormalCode;
        }
    }
}
