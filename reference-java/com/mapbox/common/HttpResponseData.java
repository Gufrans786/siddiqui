package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Objects;

public class HttpResponseData implements Serializable {
    private final int code;
    private final byte[] data;
    private final HashMap<String, String> headers;

    public HttpResponseData(HashMap<String, String> map, int i, byte[] bArr) {
        this.headers = map;
        this.code = i;
        this.data = bArr;
    }

    public HashMap<String, String> getHeaders() {
        return this.headers;
    }

    public int getCode() {
        return this.code;
    }

    public byte[] getData() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HttpResponseData httpResponseData = (HttpResponseData) obj;
        return Objects.equals(this.headers, httpResponseData.headers) && this.code == httpResponseData.code && Objects.equals(this.data, httpResponseData.data);
    }

    public int hashCode() {
        return Objects.hash(this.headers, Integer.valueOf(this.code), this.data);
    }

    public String toString() {
        return "[headers: " + RecordUtils.fieldToString(this.headers) + ", code: " + RecordUtils.fieldToString(Integer.valueOf(this.code)) + ", data: " + RecordUtils.fieldToString(this.data) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
