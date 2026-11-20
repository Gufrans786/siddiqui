package com.rnmapbox.rnmbx.modules;

import com.google.common.net.HttpHeaders;
import com.mapbox.common.DownloadOptions;
import com.mapbox.common.HttpRequest;
import com.mapbox.common.HttpResponse;
import com.mapbox.common.HttpServiceFactory;
import com.rnmapbox.rnmbx.v11compat.httpinterceptor.HttpServiceBase;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005J>\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0013j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006 "}, d2 = {"Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;", "Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;", "<init>", "()V", "LOG_TAG", "", "map", "", "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;", "getMap", "()Ljava/util/Map;", "addCustomHeader", "", "headerName", "headerValue", "options", "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;", "removeCustomHeader", "getCustomRequestHeaders", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "customRequestHeaders", "httpRequest", "Lcom/mapbox/common/HttpRequest;", "onRequest", "request", "onDownload", "Lcom/mapbox/common/DownloadOptions;", "download", "onResponse", "Lcom/mapbox/common/HttpResponse;", "response", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomHttpHeaders extends HttpServiceBase {
    public static final String LOG_TAG = "CustomHttpHeaders";
    public static final CustomHttpHeaders INSTANCE = new CustomHttpHeaders();
    private static final Map<String, CustomHttpHeadersMapValue> map = new LinkedHashMap();

    @Override
    public HttpResponse onResponse(HttpResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return response;
    }

    private CustomHttpHeaders() {
    }

    public final Map<String, CustomHttpHeadersMapValue> getMap() {
        return map;
    }

    public static void addCustomHeader$default(CustomHttpHeaders customHttpHeaders, String str, String str2, CustomHttpHeadersOptions customHttpHeadersOptions, int i, Object obj) {
        if ((i & 4) != 0) {
            customHttpHeadersOptions = null;
        }
        customHttpHeaders.addCustomHeader(str, str2, customHttpHeadersOptions);
    }

    public final void addCustomHeader(String headerName, String headerValue, CustomHttpHeadersOptions options) {
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        Intrinsics.checkNotNullParameter(headerValue, "headerValue");
        HttpServiceFactory.getInstance().setInterceptor(this);
        map.put(headerName, new CustomHttpHeadersMapValue(headerValue, options));
    }

    public final void removeCustomHeader(String headerName) {
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        map.remove(headerName);
    }

    public final HashMap<String, String> getCustomRequestHeaders(Map<String, CustomHttpHeadersMapValue> customRequestHeaders, HttpRequest httpRequest) {
        Intrinsics.checkNotNullParameter(customRequestHeaders, "customRequestHeaders");
        Intrinsics.checkNotNullParameter(httpRequest, "httpRequest");
        HashMap<String, String> map2 = new HashMap<>();
        for (Map.Entry<String, CustomHttpHeadersMapValue> entry : map.entrySet()) {
            CustomHttpHeadersOptions options = entry.getValue().getOptions();
            Regex urlRegexp = options != null ? options.getUrlRegexp() : null;
            if (urlRegexp != null) {
                String orDefault = httpRequest.getHeaders().getOrDefault("location", httpRequest.getUrl());
                Intrinsics.checkNotNull(orDefault);
                if (urlRegexp.matches(orDefault)) {
                    map2.put(entry.getKey(), entry.getValue().getHeaderValue());
                }
            } else {
                map2.put(entry.getKey(), entry.getValue().getHeaderValue());
            }
        }
        return map2;
    }

    @Override
    public HttpRequest onRequest(HttpRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        request.getHeaders().remove(HttpHeaders.AUTHORIZATION);
        request.getHeaders().putAll(getCustomRequestHeaders(map, request));
        return request;
    }

    @Override
    public DownloadOptions onDownload(DownloadOptions download) {
        Intrinsics.checkNotNullParameter(download, "download");
        HashMap<String, String> headers = download.getRequest().getHeaders();
        Map<String, CustomHttpHeadersMapValue> map2 = map;
        HttpRequest request = download.getRequest();
        Intrinsics.checkNotNullExpressionValue(request, "getRequest(...)");
        headers.putAll(getCustomRequestHeaders(map2, request));
        return download;
    }
}
