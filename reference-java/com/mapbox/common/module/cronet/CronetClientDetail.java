package com.mapbox.common.module.cronet;

import com.mapbox.common.HttpHeaders;
import com.mapbox.common.HttpMethod;
import com.mapbox.common.ReadStream;
import com.mapbox.common.Scheduler;
import com.mapbox.common.SchedulerExecutorDispatcherKt;
import com.mapbox.common.SchedulerFactory;
import com.mapbox.common.ThreadServiceType;
import com.mapbox.common.http_backend.Request;
import com.mapbox.common.http_backend.RequestObserver;
import com.mapbox.common.module.HttpClientDetail;
import com.mapbox.common.module.RequestDetail;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;
import org.chromium.net.apihelpers.UploadDataProviders;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J@\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u001a\u0010\u0011\u001a\u0016\u0012\b\u0012\u00060\rj\u0002`\u000e\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014H\u0016JH\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u001a\u0010\u0011\u001a\u0016\u0012\b\u0012\u00060\rj\u0002`\u000e\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014H\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/mapbox/common/module/cronet/CronetClientDetail;", "Lcom/mapbox/common/module/HttpClientDetail;", "fallback", "(Lcom/mapbox/common/module/HttpClientDetail;)V", "cronetEngine", "Lcom/mapbox/common/module/cronet/LazyEngine;", "executor", "Ljava/util/concurrent/Executor;", "buildRequest", "Lcom/mapbox/common/module/RequestDetail;", "request", "Lcom/mapbox/common/http_backend/Request;", "id", "", "Lcom/mapbox/common/module/RequestId;", "requestObserver", "Lcom/mapbox/common/http_backend/RequestObserver;", "onRequestFinished", "Lkotlin/Function1;", "", "Lcom/mapbox/common/module/RequestFinishedCallback;", "buildRequestWithEngine", "Lcom/mapbox/common/module/cronet/CronetRequestDetail;", "engine", "Lorg/chromium/net/CronetEngine;", "setMaxRequestsPerHost", "max", "", "supportsKeepCompression", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CronetClientDetail implements HttpClientDetail {
    private final LazyEngine cronetEngine;
    private final Executor executor;
    private final HttpClientDetail fallback;

    @Override
    public boolean supportsKeepCompression() {
        return false;
    }

    public CronetClientDetail(HttpClientDetail fallback) {
        Intrinsics.checkNotNullParameter(fallback, "fallback");
        this.fallback = fallback;
        Scheduler schedulerThreadPool = SchedulerFactory.threadPool();
        Intrinsics.checkNotNullExpressionValue(schedulerThreadPool, "threadPool()");
        this.executor = SchedulerExecutorDispatcherKt.asExecutor(schedulerThreadPool);
        this.cronetEngine = new LazyEngine(getExecutor());
    }

    @Override
    public RequestDetail buildRequest(Request request, long id, RequestObserver requestObserver, Function1<? super Long, Unit> onRequestFinished) {
        CronetRequestDetail cronetRequestDetailBuildRequestWithEngine;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(requestObserver, "requestObserver");
        Intrinsics.checkNotNullParameter(onRequestFinished, "onRequestFinished");
        CronetEngine engine = this.cronetEngine.getEngine();
        return (engine == null || (cronetRequestDetailBuildRequestWithEngine = buildRequestWithEngine(engine, request, id, requestObserver, onRequestFinished)) == null) ? this.fallback.buildRequest(request, id, requestObserver, onRequestFinished) : cronetRequestDetailBuildRequestWithEngine;
    }

    @Override
    public Executor getExecutor() {
        return this.executor;
    }

    private final CronetRequestDetail buildRequestWithEngine(CronetEngine engine, Request request, long id, RequestObserver requestObserver, Function1<? super Long, Unit> onRequestFinished) {
        ReadStream body;
        Scheduler schedulerCreateSequenced = SchedulerFactory.createSequenced(ThreadServiceType.DEFAULT);
        Intrinsics.checkNotNullExpressionValue(schedulerCreateSequenced, "createSequenced(ThreadServiceType.DEFAULT)");
        Executor executorAsExecutor = SchedulerExecutorDispatcherKt.asExecutor(schedulerCreateSequenced);
        UrlCallback urlCallback = new UrlCallback(id, requestObserver, onRequestFinished);
        UrlRequest.Builder builderNewUrlRequestBuilder = engine.newUrlRequestBuilder(request.getUrl(), urlCallback, executorAsExecutor);
        HashMap<String, String> headers = request.getHeaders();
        Intrinsics.checkNotNullExpressionValue(headers, "request.headers");
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            builderNewUrlRequestBuilder.addHeader(entry.getKey(), entry.getValue());
        }
        String string = request.getMethod().toString();
        Intrinsics.checkNotNullExpressionValue(string, "request.method.toString()");
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        builderNewUrlRequestBuilder.setHttpMethod(upperCase);
        if (request.getMethod() == HttpMethod.POST && (body = request.getBody()) != null) {
            if (!headers.containsKey(HttpHeaders.CONTENT_TYPE) && !headers.containsKey(com.google.common.net.HttpHeaders.CONTENT_TYPE)) {
                builderNewUrlRequestBuilder.addHeader(com.google.common.net.HttpHeaders.CONTENT_TYPE, "application/octet-stream");
            }
            builderNewUrlRequestBuilder.setUploadDataProvider(UploadDataProviders.create(CronetClientDetailKt.toOkioBuffer(body).readByteArray()), executorAsExecutor);
        }
        UrlRequest urlRequestBuild = builderNewUrlRequestBuilder.build();
        Intrinsics.checkNotNullExpressionValue(urlRequestBuild, "requestBuilder.build()");
        return new CronetRequestDetail(urlRequestBuild, urlCallback, request.getTimeout(), schedulerCreateSequenced);
    }

    @Override
    public void setMaxRequestsPerHost(byte max) {
        this.fallback.setMaxRequestsPerHost(max);
    }
}
