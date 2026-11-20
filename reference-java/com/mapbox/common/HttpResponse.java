package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class HttpResponse implements Serializable {
    private final HttpRequest request;
    private final long requestId;
    private final Expected<HttpRequestError, HttpResponseData> result;

    public HttpResponse(long j, HttpRequest httpRequest, Expected<HttpRequestError, HttpResponseData> expected) {
        this.requestId = j;
        this.request = httpRequest;
        this.result = expected;
    }

    public long getRequestId() {
        return this.requestId;
    }

    public HttpRequest getRequest() {
        return this.request;
    }

    public Expected<HttpRequestError, HttpResponseData> getResult() {
        return this.result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        return this.requestId == httpResponse.requestId && Objects.equals(this.request, httpResponse.request) && Objects.equals(this.result, httpResponse.result);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.requestId), this.request, this.result);
    }

    public String toString() {
        return "[requestId: " + RecordUtils.fieldToString(Long.valueOf(this.requestId)) + ", request: " + RecordUtils.fieldToString(this.request) + ", result: " + RecordUtils.fieldToString(this.result) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
