package com.mapbox.common.http_backend;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.HttpMethod;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;
import com.mapbox.common.NetworkRestriction;
import com.mapbox.common.ReadStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Objects;

public class Request implements Serializable {
    private final ReadStream body;
    private final int flags;
    private HashMap<String, String> headers;
    private HttpMethod method;
    private final NetworkRestriction networkRestriction;
    private final long timeout;
    private final String url;

    private Request(HttpMethod httpMethod, String str, HashMap<String, String> map, long j, NetworkRestriction networkRestriction, ReadStream readStream, int i) {
        this.method = httpMethod;
        this.url = str;
        this.headers = map;
        this.timeout = j;
        this.networkRestriction = networkRestriction;
        this.body = readStream;
        this.flags = i;
    }

    private Request(String str, HashMap<String, String> map, ReadStream readStream) {
        this.url = str;
        this.headers = map;
        this.body = readStream;
        this.method = HttpMethod.GET;
        this.timeout = 0L;
        this.networkRestriction = NetworkRestriction.NONE;
        this.flags = 0;
    }

    public HttpMethod getMethod() {
        return this.method;
    }

    public String getUrl() {
        return this.url;
    }

    public HashMap<String, String> getHeaders() {
        return this.headers;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public NetworkRestriction getNetworkRestriction() {
        return this.networkRestriction;
    }

    public ReadStream getBody() {
        return this.body;
    }

    public int getFlags() {
        return this.flags;
    }

    public void setMethod(HttpMethod httpMethod) {
        this.method = httpMethod;
    }

    public void setHeaders(HashMap<String, String> map) {
        this.headers = map;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Request request = (Request) obj;
        return Objects.equals(this.method, request.method) && Objects.equals(this.url, request.url) && Objects.equals(this.headers, request.headers) && this.timeout == request.timeout && Objects.equals(this.networkRestriction, request.networkRestriction) && Objects.equals(this.body, request.body) && this.flags == request.flags;
    }

    public int hashCode() {
        return Objects.hash(this.method, this.url, this.headers, Long.valueOf(this.timeout), this.networkRestriction, this.body, Integer.valueOf(this.flags));
    }

    public static final class Builder {
        private ReadStream body;
        private HashMap<String, String> headers;
        private String url;
        private HttpMethod method = HttpMethod.GET;
        private long timeout = 0;
        private NetworkRestriction networkRestriction = NetworkRestriction.NONE;
        private int flags = 0;

        public Builder method(HttpMethod httpMethod) {
            this.method = httpMethod;
            return this;
        }

        public Builder url(String str) {
            this.url = str;
            return this;
        }

        public Builder headers(HashMap<String, String> map) {
            this.headers = map;
            return this;
        }

        public Builder timeout(long j) {
            this.timeout = j;
            return this;
        }

        public Builder networkRestriction(NetworkRestriction networkRestriction) {
            this.networkRestriction = networkRestriction;
            return this;
        }

        public Builder body(ReadStream readStream) {
            this.body = readStream;
            return this;
        }

        public Builder flags(int i) {
            this.flags = i;
            return this;
        }

        public Request build() {
            if (this.method == null) {
                throw new NullPointerException("method shouldn't be null");
            }
            if (this.url == null) {
                throw new NullPointerException("url shouldn't be null");
            }
            if (this.headers == null) {
                throw new NullPointerException("headers shouldn't be null");
            }
            if (this.networkRestriction == null) {
                throw new NullPointerException("networkRestriction shouldn't be null");
            }
            return new Request(this.method, this.url, this.headers, this.timeout, this.networkRestriction, this.body, this.flags);
        }
    }

    public Builder toBuilder() {
        return new Builder().method(this.method).url(this.url).headers(this.headers).timeout(this.timeout).networkRestriction(this.networkRestriction).body(this.body).flags(this.flags);
    }

    public String toString() {
        return "[method: " + RecordUtils.fieldToString(this.method) + ", url: " + RecordUtils.fieldToString(this.url) + ", headers: " + RecordUtils.fieldToString(this.headers) + ", timeout: " + RecordUtils.fieldToString(Long.valueOf(this.timeout)) + ", networkRestriction: " + RecordUtils.fieldToString(this.networkRestriction) + ", body: " + RecordUtils.fieldToString(this.body) + ", flags: " + RecordUtils.fieldToString(Integer.valueOf(this.flags)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
