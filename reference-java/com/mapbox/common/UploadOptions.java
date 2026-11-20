package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Objects;

public class UploadOptions implements Serializable {
    private final String filePath;
    private HashMap<String, String> headers;
    private final String mediaType;
    private final String metadata;
    private final NetworkRestriction networkRestriction;
    private final SdkInformation sdkInformation;
    private final long timeout;
    private final String url;

    public UploadOptions(String str, String str2, HashMap<String, String> map, String str3, String str4, NetworkRestriction networkRestriction, SdkInformation sdkInformation, long j) {
        this.filePath = str;
        this.url = str2;
        this.headers = map;
        this.metadata = str3;
        this.mediaType = str4;
        this.networkRestriction = networkRestriction;
        this.sdkInformation = sdkInformation;
        this.timeout = j;
    }

    public UploadOptions(String str, String str2, HashMap<String, String> map, String str3, String str4, SdkInformation sdkInformation) {
        this.filePath = str;
        this.url = str2;
        this.headers = map;
        this.metadata = str3;
        this.mediaType = str4;
        this.sdkInformation = sdkInformation;
        this.networkRestriction = NetworkRestriction.NONE;
        this.timeout = 0L;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getUrl() {
        return this.url;
    }

    public HashMap<String, String> getHeaders() {
        return this.headers;
    }

    public String getMetadata() {
        return this.metadata;
    }

    public String getMediaType() {
        return this.mediaType;
    }

    public NetworkRestriction getNetworkRestriction() {
        return this.networkRestriction;
    }

    public SdkInformation getSdkInformation() {
        return this.sdkInformation;
    }

    public long getTimeout() {
        return this.timeout;
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
        UploadOptions uploadOptions = (UploadOptions) obj;
        return Objects.equals(this.filePath, uploadOptions.filePath) && Objects.equals(this.url, uploadOptions.url) && Objects.equals(this.headers, uploadOptions.headers) && Objects.equals(this.metadata, uploadOptions.metadata) && Objects.equals(this.mediaType, uploadOptions.mediaType) && Objects.equals(this.networkRestriction, uploadOptions.networkRestriction) && Objects.equals(this.sdkInformation, uploadOptions.sdkInformation) && this.timeout == uploadOptions.timeout;
    }

    public int hashCode() {
        return Objects.hash(this.filePath, this.url, this.headers, this.metadata, this.mediaType, this.networkRestriction, this.sdkInformation, Long.valueOf(this.timeout));
    }

    public String toString() {
        return "[filePath: " + RecordUtils.fieldToString(this.filePath) + ", url: " + RecordUtils.fieldToString(this.url) + ", headers: " + RecordUtils.fieldToString(this.headers) + ", metadata: " + RecordUtils.fieldToString(this.metadata) + ", mediaType: " + RecordUtils.fieldToString(this.mediaType) + ", networkRestriction: " + RecordUtils.fieldToString(this.networkRestriction) + ", sdkInformation: " + RecordUtils.fieldToString(this.sdkInformation) + ", timeout: " + RecordUtils.fieldToString(Long.valueOf(this.timeout)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
