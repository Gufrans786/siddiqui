package com.mapbox.common.module.okhttp;

import com.mapbox.bindgen.Value;
import com.mapbox.common.HttpRequestError;
import com.mapbox.common.HttpRequestErrorType;
import com.mapbox.common.MapboxCommonLogger;
import com.mapbox.common.ResultCallback;
import com.mapbox.common.SettingsService;
import com.mapbox.common.SettingsServiceFactory;
import com.mapbox.common.SettingsServiceStorageType;
import com.mapbox.common.experimental.wss_backend.Data;
import com.mapbox.common.experimental.wss_backend.Request;
import com.mapbox.common.experimental.wss_backend.RequestObserver;
import com.mapbox.common.experimental.wss_backend.Service;
import com.mapbox.common.module.NetworkIdGenerator;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.WebSocket;
import okio.ByteString;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0004H\u0016J\u0018\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/mapbox/common/module/okhttp/WssBackend;", "Lcom/mapbox/common/experimental/wss_backend/Service;", "()V", "connectTimeoutMs", "", "pingTimeoutMs", "settings", "Lcom/mapbox/common/SettingsService;", "kotlin.jvm.PlatformType", "socketMap", "", "Lcom/mapbox/common/module/okhttp/WebsocketObserverWrapper;", "wssClient", "Lokhttp3/OkHttpClient;", "cancelConnection", "", "id", "callback", "Lcom/mapbox/common/ResultCallback;", "connect", "request", "Lcom/mapbox/common/experimental/wss_backend/Request;", "observer", "Lcom/mapbox/common/experimental/wss_backend/RequestObserver;", "setConnectionTimeout", "connectTimeout", "setPingTimeout", "pingTimeout", "write", "data", "Lcom/mapbox/common/experimental/wss_backend/Data;", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class WssBackend implements Service {
    public static final String TAG = "WssBackend";
    public static final String verboseSettingName = "com.mapbox.common.network.wss.enable_android_verbose_logging";
    private long pingTimeoutMs = 20000;
    private long connectTimeoutMs = 10000;
    private OkHttpClient wssClient = new OkHttpClient.Builder().connectTimeout(10, TimeUnit.SECONDS).pingInterval(20, TimeUnit.SECONDS).build();
    private Map<Long, WebsocketObserverWrapper> socketMap = new LinkedHashMap();
    private final SettingsService settings = SettingsServiceFactory.getInstance(SettingsServiceStorageType.NON_PERSISTENT);

    @Override
    public void setPingTimeout(long pingTimeout) {
        this.pingTimeoutMs = pingTimeout;
        this.wssClient = new OkHttpClient.Builder().connectTimeout(this.connectTimeoutMs, TimeUnit.MILLISECONDS).pingInterval(this.pingTimeoutMs, TimeUnit.MILLISECONDS).build();
    }

    public final void setConnectionTimeout(long connectTimeout) {
        this.connectTimeoutMs = connectTimeout;
        this.wssClient = new OkHttpClient.Builder().connectTimeout(this.connectTimeoutMs, TimeUnit.MILLISECONDS).pingInterval(this.pingTimeoutMs, TimeUnit.MILLISECONDS).build();
    }

    @Override
    public long connect(Request request, RequestObserver observer) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(observer, "observer");
        long jNewId = NetworkIdGenerator.INSTANCE.newId();
        okhttp3.Request.Builder builder = new okhttp3.Request.Builder().get();
        String url = request.getUrl();
        Intrinsics.checkNotNullExpressionValue(url, "request.url");
        okhttp3.Request.Builder builderUrl = builder.url(url);
        HashMap<String, String> headers = request.getHeaders();
        Intrinsics.checkNotNullExpressionValue(headers, "request.headers");
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Intrinsics.checkNotNull(key);
            Intrinsics.checkNotNull(value);
            builderUrl.addHeader(key, value);
        }
        boolean zAreEqual = Intrinsics.areEqual(this.settings.get(verboseSettingName, new Value(false)).getValue(), new Value(true));
        WebsocketObserverWrapper websocketObserverWrapper = new WebsocketObserverWrapper(observer, jNewId, zAreEqual);
        okhttp3.Request requestBuild = builderUrl.build();
        websocketObserverWrapper.setWebSocket(this.wssClient.newWebSocket(requestBuild, websocketObserverWrapper));
        this.socketMap.put(Long.valueOf(jNewId), websocketObserverWrapper);
        if (zAreEqual) {
            MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Connecting, id " + jNewId + ", request " + requestBuild);
        }
        return jNewId;
    }

    @Override
    public void cancelConnection(long id, ResultCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        boolean zAreEqual = Intrinsics.areEqual(this.settings.get(verboseSettingName, new Value(false)).getValue(), new Value(true));
        if (zAreEqual) {
            MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Cancel for id " + id);
        }
        if (this.socketMap.containsKey(Long.valueOf(id))) {
            if (zAreEqual) {
                MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Cancel for id " + id + ": connection exists, closing and removing from socket map");
            }
            WebsocketObserverWrapper websocketObserverWrapper = this.socketMap.get(Long.valueOf(id));
            Intrinsics.checkNotNull(websocketObserverWrapper);
            websocketObserverWrapper.setOnClosedCallback(callback);
            WebsocketObserverWrapper websocketObserverWrapper2 = this.socketMap.get(Long.valueOf(id));
            Intrinsics.checkNotNull(websocketObserverWrapper2);
            websocketObserverWrapper2.getWebSocket().close(WebsocketObserverWrapper.INSTANCE.getWebsocketClosedNormalCode(), "Closed by client");
            this.socketMap.remove(Long.valueOf(id));
            return;
        }
        if (zAreEqual) {
            MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Cancel for id " + id + ": connection does not exist");
        }
        try {
            callback.run(false);
        } catch (Throwable unused) {
            if (zAreEqual) {
                MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Cancel for id " + id + ": connection does not exist, callback crashed or null");
            }
        }
    }

    @Override
    public void write(long id, Data data) {
        WebSocket webSocket;
        RequestObserver requestObserver;
        WebSocket webSocket2;
        Intrinsics.checkNotNullParameter(data, "data");
        boolean zSend = false;
        boolean zAreEqual = Intrinsics.areEqual(this.settings.get(verboseSettingName, new Value(false)).getValue(), new Value(true));
        if (zAreEqual) {
            MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Write for id " + id);
        }
        if (data.isByteArray()) {
            WebsocketObserverWrapper websocketObserverWrapper = this.socketMap.get(Long.valueOf(id));
            if (websocketObserverWrapper != null && (webSocket2 = websocketObserverWrapper.getWebSocket()) != null) {
                ByteString.Companion companion = ByteString.INSTANCE;
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(data.getByteArray());
                Intrinsics.checkNotNullExpressionValue(byteBufferWrap, "wrap(data.byteArray)");
                zSend = webSocket2.send(companion.of(byteBufferWrap));
            }
        } else {
            WebsocketObserverWrapper websocketObserverWrapper2 = this.socketMap.get(Long.valueOf(id));
            if (websocketObserverWrapper2 != null && (webSocket = websocketObserverWrapper2.getWebSocket()) != null) {
                String string = data.getString();
                Intrinsics.checkNotNullExpressionValue(string, "data.string");
                zSend = webSocket.send(string);
            }
        }
        if (zSend) {
            return;
        }
        if (zAreEqual) {
            MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Write for id " + id + " failed");
        }
        HttpRequestError httpRequestError = new HttpRequestError(HttpRequestErrorType.OTHER_ERROR, "Message would overflow buffer or shutdown in progress");
        WebsocketObserverWrapper websocketObserverWrapper3 = this.socketMap.get(Long.valueOf(id));
        if (websocketObserverWrapper3 == null || (requestObserver = websocketObserverWrapper3.getRequestObserver()) == null) {
            return;
        }
        requestObserver.onFailed(id, httpRequestError, null);
    }
}
