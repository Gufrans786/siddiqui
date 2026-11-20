package com.mapbox.common;

public class HttpRequestOrResponse {
    private Type type;
    private Object value;

    public enum Type {
        HTTP_REQUEST,
        HTTP_RESPONSE
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public HttpRequestOrResponse(HttpRequest httpRequest) {
        this.type = Type.HTTP_REQUEST;
        this.value = httpRequest;
    }

    public HttpRequestOrResponse(HttpResponse httpResponse) {
        this.type = Type.HTTP_RESPONSE;
        this.value = httpResponse;
    }

    public static HttpRequestOrResponse valueOf(HttpRequest httpRequest) {
        return new HttpRequestOrResponse(httpRequest);
    }

    public static HttpRequestOrResponse valueOf(HttpResponse httpResponse) {
        return new HttpRequestOrResponse(httpResponse);
    }

    public boolean isHttpRequest() {
        return this.type == Type.HTTP_REQUEST;
    }

    public boolean isHttpResponse() {
        return this.type == Type.HTTP_RESPONSE;
    }

    public HttpRequest getHttpRequest() {
        if (isHttpRequest()) {
            return (HttpRequest) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (HttpRequest)");
    }

    public HttpResponse getHttpResponse() {
        if (isHttpResponse()) {
            return (HttpResponse) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (HttpResponse)");
    }

    public Type getTypeInfo() {
        return this.type;
    }
}
