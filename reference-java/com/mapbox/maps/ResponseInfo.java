package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public final class ResponseInfo implements Serializable {
    private final ResourceRequestError error;
    private final String etag;
    private final Date expires;
    private final Date modified;
    private final boolean mustRevalidate;
    private final boolean noContent;
    private final boolean notModified;
    private final long size;
    private final ResponseSourceType source;

    public ResponseInfo(boolean z, boolean z2, boolean z3, ResponseSourceType responseSourceType, long j, Date date, Date date2, String str, ResourceRequestError resourceRequestError) {
        this.noContent = z;
        this.notModified = z2;
        this.mustRevalidate = z3;
        this.source = responseSourceType;
        this.size = j;
        this.modified = date;
        this.expires = date2;
        this.etag = str;
        this.error = resourceRequestError;
    }

    public boolean getNoContent() {
        return this.noContent;
    }

    public boolean getNotModified() {
        return this.notModified;
    }

    public boolean getMustRevalidate() {
        return this.mustRevalidate;
    }

    public ResponseSourceType getSource() {
        return this.source;
    }

    public long getSize() {
        return this.size;
    }

    public Date getModified() {
        return this.modified;
    }

    public Date getExpires() {
        return this.expires;
    }

    public String getEtag() {
        return this.etag;
    }

    public ResourceRequestError getError() {
        return this.error;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ResponseInfo responseInfo = (ResponseInfo) obj;
        return this.noContent == responseInfo.noContent && this.notModified == responseInfo.notModified && this.mustRevalidate == responseInfo.mustRevalidate && Objects.equals(this.source, responseInfo.source) && this.size == responseInfo.size && Objects.equals(this.modified, responseInfo.modified) && Objects.equals(this.expires, responseInfo.expires) && Objects.equals(this.etag, responseInfo.etag) && Objects.equals(this.error, responseInfo.error);
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.noContent), Boolean.valueOf(this.notModified), Boolean.valueOf(this.mustRevalidate), this.source, Long.valueOf(this.size), this.modified, this.expires, this.etag, this.error);
    }

    public String toString() {
        return "[noContent: " + RecordUtils.fieldToString(Boolean.valueOf(this.noContent)) + ", notModified: " + RecordUtils.fieldToString(Boolean.valueOf(this.notModified)) + ", mustRevalidate: " + RecordUtils.fieldToString(Boolean.valueOf(this.mustRevalidate)) + ", source: " + RecordUtils.fieldToString(this.source) + ", size: " + RecordUtils.fieldToString(Long.valueOf(this.size)) + ", modified: " + RecordUtils.fieldToString(this.modified) + ", expires: " + RecordUtils.fieldToString(this.expires) + ", etag: " + RecordUtils.fieldToString(this.etag) + ", error: " + RecordUtils.fieldToString(this.error) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
