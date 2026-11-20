package com.mapbox.common.module.okhttp;

import com.google.common.net.HttpHeaders;
import com.mapbox.common.HttpMethod;
import com.mapbox.common.ReadStream;
import com.mapbox.common.http_backend.Request;
import com.mapbox.common.http_backend.RequestObserver;
import com.mapbox.common.module.HttpClientDetail;
import com.mapbox.common.module.RequestDetail;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J@\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u00060\nj\u0002`\u000b2\u0006\u0010\f\u001a\u00020\r2\u001a\u0010\u000e\u001a\u0016\u0012\b\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\u00100\u000fj\u0002`\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/mapbox/common/module/okhttp/OkHttpClientDetail;", "Lcom/mapbox/common/module/HttpClientDetail;", "()V", "httpClient", "Lcom/mapbox/common/module/okhttp/LazyClient;", "buildRequest", "Lcom/mapbox/common/module/RequestDetail;", "request", "Lcom/mapbox/common/http_backend/Request;", "id", "", "Lcom/mapbox/common/module/RequestId;", "requestObserver", "Lcom/mapbox/common/http_backend/RequestObserver;", "onRequestFinished", "Lkotlin/Function1;", "", "Lcom/mapbox/common/module/RequestFinishedCallback;", "executor", "Ljava/util/concurrent/Executor;", "setMaxRequestsPerHost", "max", "", "supportsKeepCompression", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OkHttpClientDetail implements HttpClientDetail {
    private final LazyClient httpClient = new LazyClient(null, false);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            try {
                iArr[HttpMethod.HEAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HttpMethod.GET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HttpMethod.POST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override
    public boolean supportsKeepCompression() {
        return true;
    }

    @Override
    public void setMaxRequestsPerHost(byte max) {
        this.httpClient.setMaxRequestsPerHost(max);
    }

    @Override
    public RequestDetail buildRequest(Request request, long id, RequestObserver requestObserver, Function1<? super Long, Unit> onRequestFinished) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(requestObserver, "requestObserver");
        Intrinsics.checkNotNullParameter(onRequestFinished, "onRequestFinished");
        okhttp3.Request.Builder builder = new okhttp3.Request.Builder();
        String url = request.getUrl();
        Intrinsics.checkNotNullExpressionValue(url, "request.url");
        okhttp3.Request.Builder builderUrl = builder.url(url);
        String lowerCase = url.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        builderUrl.tag(lowerCase);
        HashMap<String, String> headers = request.getHeaders();
        Intrinsics.checkNotNullExpressionValue(headers, "request.headers");
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(key, "key");
            Intrinsics.checkNotNullExpressionValue(value, "value");
            builder.addHeader(key, value);
        }
        if ((request.getFlags() & 1) != 0) {
            builder.addHeader(HttpHeaders.ACCEPT_ENCODING, "gzip, deflate");
        }
        int i = WhenMappings.$EnumSwitchMapping$0[request.getMethod().ordinal()];
        if (i == 1) {
            builder.head();
        } else if (i == 2) {
            builder.get();
        } else if (i == 3) {
            ReadStream body = request.getBody();
            if (body == null) {
                builder.post(RequestBody.Companion.create$default(RequestBody.INSTANCE, new byte[0], (MediaType) null, 0, 0, 7, (Object) null));
            } else {
                builder.post(new StreamingRequestBody(body, null));
            }
        }
        Call callNewCall = this.httpClient.get().newCall(builder.build());
        callNewCall.timeout().timeout(request.getTimeout(), TimeUnit.SECONDS);
        return new OkHttpRequestDetail(callNewCall, new CallbackWrapper(this, id, callNewCall, new HttpCallback(id, requestObserver, onRequestFinished), onRequestFinished));
    }

    @Override
    public Executor executor() {
        return this.httpClient.get().dispatcher().executorService();
    }
}
