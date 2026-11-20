package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class DownloadOptions implements Serializable {
    private final String localPath;
    private final int memoryThreshold;
    private HttpRequest request;
    private boolean resume;

    public DownloadOptions(HttpRequest httpRequest, String str, boolean z, int i) {
        this.request = httpRequest;
        this.localPath = str;
        this.resume = z;
        this.memoryThreshold = i;
    }

    public DownloadOptions(HttpRequest httpRequest, String str) {
        this.request = httpRequest;
        this.localPath = str;
        this.resume = false;
        this.memoryThreshold = 0;
    }

    public HttpRequest getRequest() {
        return this.request;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public boolean getResume() {
        return this.resume;
    }

    public int getMemoryThreshold() {
        return this.memoryThreshold;
    }

    public void setRequest(HttpRequest httpRequest) {
        this.request = httpRequest;
    }

    public void setResume(boolean z) {
        this.resume = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DownloadOptions downloadOptions = (DownloadOptions) obj;
        return Objects.equals(this.request, downloadOptions.request) && Objects.equals(this.localPath, downloadOptions.localPath) && this.resume == downloadOptions.resume && this.memoryThreshold == downloadOptions.memoryThreshold;
    }

    public int hashCode() {
        return Objects.hash(this.request, this.localPath, Boolean.valueOf(this.resume), Integer.valueOf(this.memoryThreshold));
    }

    public String toString() {
        return "[request: " + RecordUtils.fieldToString(this.request) + ", localPath: " + RecordUtils.fieldToString(this.localPath) + ", resume: " + RecordUtils.fieldToString(Boolean.valueOf(this.resume)) + ", memoryThreshold: " + RecordUtils.fieldToString(Integer.valueOf(this.memoryThreshold)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
