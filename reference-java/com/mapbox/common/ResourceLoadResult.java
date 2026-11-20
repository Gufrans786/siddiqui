package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class ResourceLoadResult implements Serializable {
    private final boolean belongsToGroup;
    private final String contentType;
    private final ResourceData data;
    private final String etag;
    private final Date expires;
    private final boolean immutable;
    private final boolean mustRevalidate;
    private final ResourceLoadStatus status;
    private final long totalBytes;
    private final long transferredBytes;

    public ResourceLoadResult(ResourceData resourceData, ResourceLoadStatus resourceLoadStatus, boolean z, boolean z2, Date date, long j, long j2, String str, String str2, boolean z3) {
        this.data = resourceData;
        this.status = resourceLoadStatus;
        this.immutable = z;
        this.mustRevalidate = z2;
        this.expires = date;
        this.totalBytes = j;
        this.transferredBytes = j2;
        this.contentType = str;
        this.etag = str2;
        this.belongsToGroup = z3;
    }

    public ResourceData getData() {
        return this.data;
    }

    public ResourceLoadStatus getStatus() {
        return this.status;
    }

    public boolean getImmutable() {
        return this.immutable;
    }

    public boolean getMustRevalidate() {
        return this.mustRevalidate;
    }

    public Date getExpires() {
        return this.expires;
    }

    public long getTotalBytes() {
        return this.totalBytes;
    }

    public long getTransferredBytes() {
        return this.transferredBytes;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getEtag() {
        return this.etag;
    }

    public boolean getBelongsToGroup() {
        return this.belongsToGroup;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ResourceLoadResult resourceLoadResult = (ResourceLoadResult) obj;
        return Objects.equals(this.data, resourceLoadResult.data) && Objects.equals(this.status, resourceLoadResult.status) && this.immutable == resourceLoadResult.immutable && this.mustRevalidate == resourceLoadResult.mustRevalidate && Objects.equals(this.expires, resourceLoadResult.expires) && this.totalBytes == resourceLoadResult.totalBytes && this.transferredBytes == resourceLoadResult.transferredBytes && Objects.equals(this.contentType, resourceLoadResult.contentType) && Objects.equals(this.etag, resourceLoadResult.etag) && this.belongsToGroup == resourceLoadResult.belongsToGroup;
    }

    public int hashCode() {
        return Objects.hash(this.data, this.status, Boolean.valueOf(this.immutable), Boolean.valueOf(this.mustRevalidate), this.expires, Long.valueOf(this.totalBytes), Long.valueOf(this.transferredBytes), this.contentType, this.etag, Boolean.valueOf(this.belongsToGroup));
    }

    public String toString() {
        return "[data: " + RecordUtils.fieldToString(this.data) + ", status: " + RecordUtils.fieldToString(this.status) + ", immutable: " + RecordUtils.fieldToString(Boolean.valueOf(this.immutable)) + ", mustRevalidate: " + RecordUtils.fieldToString(Boolean.valueOf(this.mustRevalidate)) + ", expires: " + RecordUtils.fieldToString(this.expires) + ", totalBytes: " + RecordUtils.fieldToString(Long.valueOf(this.totalBytes)) + ", transferredBytes: " + RecordUtils.fieldToString(Long.valueOf(this.transferredBytes)) + ", contentType: " + RecordUtils.fieldToString(this.contentType) + ", etag: " + RecordUtils.fieldToString(this.etag) + ", belongsToGroup: " + RecordUtils.fieldToString(Boolean.valueOf(this.belongsToGroup)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
