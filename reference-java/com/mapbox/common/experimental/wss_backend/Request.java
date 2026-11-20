package com.mapbox.common.experimental.wss_backend;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;
import com.mapbox.common.NetworkRestriction;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Objects;

public class Request implements Serializable {
    private final int flags;
    private HashMap<String, String> headers;
    private final NetworkRestriction networkRestriction;
    private final long timeout;
    private final String url;

    private Request(String str, HashMap<String, String> map, long j, NetworkRestriction networkRestriction, int i) {
        this.url = str;
        this.headers = map;
        this.timeout = j;
        this.networkRestriction = networkRestriction;
        this.flags = i;
    }

    private Request(String str, HashMap<String, String> map) {
        this.url = str;
        this.headers = map;
        this.timeout = 0L;
        this.networkRestriction = NetworkRestriction.NONE;
        this.flags = 0;
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

    public int getFlags() {
        return this.flags;
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
        return Objects.equals(this.url, request.url) && Objects.equals(this.headers, request.headers) && this.timeout == request.timeout && Objects.equals(this.networkRestriction, request.networkRestriction) && this.flags == request.flags;
    }

    public int hashCode() {
        return Objects.hash(this.url, this.headers, Long.valueOf(this.timeout), this.networkRestriction, Integer.valueOf(this.flags));
    }

    public static final class Builder {
        private HashMap<String, String> headers;
        private String url;
        private long timeout = 0;
        private NetworkRestriction networkRestriction = NetworkRestriction.NONE;
        private int flags = 0;

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

        public Builder flags(int i) {
            this.flags = i;
            return this;
        }

        public Request build() {
            if (this.url == null) {
                throw new NullPointerException("url shouldn't be null");
            }
            if (this.headers == null) {
                throw new NullPointerException("headers shouldn't be null");
            }
            if (this.networkRestriction == null) {
                throw new NullPointerException("networkRestriction shouldn't be null");
            }
            return new Request(this.url, this.headers, this.timeout, this.networkRestriction, this.flags);
        }
    }

    public Builder toBuilder() {
        return new Builder().url(this.url).headers(this.headers).timeout(this.timeout).networkRestriction(this.networkRestriction).flags(this.flags);
    }

    public String toString() {
        return "[url: " + RecordUtils.fieldToString(this.url) + ", headers: " + RecordUtils.fieldToString(this.headers) + ", timeout: " + RecordUtils.fieldToString(Long.valueOf(this.timeout)) + ", networkRestriction: " + RecordUtils.fieldToString(this.networkRestriction) + ", flags: " + RecordUtils.fieldToString(Integer.valueOf(this.flags)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
