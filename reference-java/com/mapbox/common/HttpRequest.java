package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Objects;

public class HttpRequest implements Serializable {
    private final byte[] body;
    private final int flags;
    private HashMap<String, String> headers;
    private HttpMethod method;
    private final NetworkRestriction networkRestriction;
    private final SdkInformation sdkInformation;
    private final long timeout;
    private final String url;

    private HttpRequest(HttpMethod httpMethod, String str, HashMap<String, String> map, long j, NetworkRestriction networkRestriction, SdkInformation sdkInformation, byte[] bArr, int i) {
        this.method = httpMethod;
        this.url = str;
        this.headers = map;
        this.timeout = j;
        this.networkRestriction = networkRestriction;
        this.sdkInformation = sdkInformation;
        this.body = bArr;
        this.flags = i;
    }

    private HttpRequest(String str, HashMap<String, String> map, SdkInformation sdkInformation, byte[] bArr) {
        this.url = str;
        this.headers = map;
        this.sdkInformation = sdkInformation;
        this.body = bArr;
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

    public SdkInformation getSdkInformation() {
        return this.sdkInformation;
    }

    public byte[] getBody() {
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
        HttpRequest httpRequest = (HttpRequest) obj;
        return Objects.equals(this.method, httpRequest.method) && Objects.equals(this.url, httpRequest.url) && Objects.equals(this.headers, httpRequest.headers) && this.timeout == httpRequest.timeout && Objects.equals(this.networkRestriction, httpRequest.networkRestriction) && Objects.equals(this.sdkInformation, httpRequest.sdkInformation) && Objects.equals(this.body, httpRequest.body) && this.flags == httpRequest.flags;
    }

    public int hashCode() {
        return Objects.hash(this.method, this.url, this.headers, Long.valueOf(this.timeout), this.networkRestriction, this.sdkInformation, this.body, Integer.valueOf(this.flags));
    }

    public static final class Builder {
        private byte[] body;
        private HashMap<String, String> headers;
        private SdkInformation sdkInformation;
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

        public Builder sdkInformation(SdkInformation sdkInformation) {
            this.sdkInformation = sdkInformation;
            return this;
        }

        public Builder body(byte[] bArr) {
            this.body = bArr;
            return this;
        }

        public Builder flags(int i) {
            this.flags = i;
            return this;
        }

        public HttpRequest build() {
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
            if (this.sdkInformation == null) {
                throw new NullPointerException("sdkInformation shouldn't be null");
            }
            return new HttpRequest(this.method, this.url, this.headers, this.timeout, this.networkRestriction, this.sdkInformation, this.body, this.flags);
        }
    }

    public Builder toBuilder() {
        return new Builder().method(this.method).url(this.url).headers(this.headers).timeout(this.timeout).networkRestriction(this.networkRestriction).sdkInformation(this.sdkInformation).body(this.body).flags(this.flags);
    }

    public String toString() {
        return "[method: " + RecordUtils.fieldToString(this.method) + ", url: " + RecordUtils.fieldToString(this.url) + ", headers: " + RecordUtils.fieldToString(this.headers) + ", timeout: " + RecordUtils.fieldToString(Long.valueOf(this.timeout)) + ", networkRestriction: " + RecordUtils.fieldToString(this.networkRestriction) + ", sdkInformation: " + RecordUtils.fieldToString(this.sdkInformation) + ", body: " + RecordUtils.fieldToString(this.body) + ", flags: " + RecordUtils.fieldToString(Integer.valueOf(this.flags)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
