package com.rnmapbox.rnmbx.v11compat.httpinterceptor;

import com.mapbox.common.DownloadOptions;
import com.mapbox.common.HttpRequest;
import com.mapbox.common.HttpRequestOrResponse;
import com.mapbox.common.HttpResponse;
import com.mapbox.common.HttpServiceInterceptorInterface;
import com.mapbox.common.HttpServiceInterceptorRequestContinuation;
import com.mapbox.common.HttpServiceInterceptorResponseContinuation;
import com.mapbox.common.UploadOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\rH\u0016J\u0010\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\n\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;", "Lcom/mapbox/common/HttpServiceInterceptorInterface;", "<init>", "()V", "onRequest", "", "request", "Lcom/mapbox/common/HttpRequest;", "continuation", "Lcom/mapbox/common/HttpServiceInterceptorRequestContinuation;", "onResponse", "response", "Lcom/mapbox/common/HttpResponse;", "Lcom/mapbox/common/HttpServiceInterceptorResponseContinuation;", "onDownload", "Lcom/mapbox/common/DownloadOptions;", "download", "onUpload", "Lcom/mapbox/common/UploadOptions;", "options", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class HttpServiceBase implements HttpServiceInterceptorInterface {
    public DownloadOptions onDownload(DownloadOptions download) {
        Intrinsics.checkNotNullParameter(download, "download");
        return download;
    }

    public HttpRequest onRequest(HttpRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return request;
    }

    public HttpResponse onResponse(HttpResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return response;
    }

    public UploadOptions onUpload(UploadOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return options;
    }

    @Override
    public void onRequest(HttpRequest request, HttpServiceInterceptorRequestContinuation continuation) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        continuation.run(new HttpRequestOrResponse(onRequest(request)));
    }

    @Override
    public void onResponse(HttpResponse response, HttpServiceInterceptorResponseContinuation continuation) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        continuation.run(onResponse(response));
    }
}
