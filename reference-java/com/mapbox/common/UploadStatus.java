package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class UploadStatus implements Serializable {
    private TransferError error;
    private Expected<HttpRequestError, HttpResponseData> httpResult;
    private long sentBytes;
    private TransferState state;
    private Long totalBytes;
    private long totalSentBytes;
    private long uploadId;

    public UploadStatus(long j, TransferState transferState, TransferError transferError, Long l, long j2, long j3, Expected<HttpRequestError, HttpResponseData> expected) {
        this.uploadId = j;
        this.state = transferState;
        this.error = transferError;
        this.totalBytes = l;
        this.sentBytes = j2;
        this.totalSentBytes = j3;
        this.httpResult = expected;
    }

    public UploadStatus(TransferError transferError, Long l, Expected<HttpRequestError, HttpResponseData> expected) {
        this.error = transferError;
        this.totalBytes = l;
        this.httpResult = expected;
        this.uploadId = 0L;
        this.state = TransferState.PENDING;
        this.sentBytes = 0L;
        this.totalSentBytes = 0L;
    }

    public long getUploadId() {
        return this.uploadId;
    }

    public TransferState getState() {
        return this.state;
    }

    public TransferError getError() {
        return this.error;
    }

    public Long getTotalBytes() {
        return this.totalBytes;
    }

    public long getSentBytes() {
        return this.sentBytes;
    }

    public long getTotalSentBytes() {
        return this.totalSentBytes;
    }

    public Expected<HttpRequestError, HttpResponseData> getHttpResult() {
        return this.httpResult;
    }

    public void setUploadId(long j) {
        this.uploadId = j;
    }

    public void setState(TransferState transferState) {
        this.state = transferState;
    }

    public void setError(TransferError transferError) {
        this.error = transferError;
    }

    public void setTotalBytes(Long l) {
        this.totalBytes = l;
    }

    public void setSentBytes(long j) {
        this.sentBytes = j;
    }

    public void setTotalSentBytes(long j) {
        this.totalSentBytes = j;
    }

    public void setHttpResult(Expected<HttpRequestError, HttpResponseData> expected) {
        this.httpResult = expected;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UploadStatus uploadStatus = (UploadStatus) obj;
        return this.uploadId == uploadStatus.uploadId && Objects.equals(this.state, uploadStatus.state) && Objects.equals(this.error, uploadStatus.error) && Objects.equals(this.totalBytes, uploadStatus.totalBytes) && this.sentBytes == uploadStatus.sentBytes && this.totalSentBytes == uploadStatus.totalSentBytes && Objects.equals(this.httpResult, uploadStatus.httpResult);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.uploadId), this.state, this.error, this.totalBytes, Long.valueOf(this.sentBytes), Long.valueOf(this.totalSentBytes), this.httpResult);
    }

    public String toString() {
        return "[uploadId: " + RecordUtils.fieldToString(Long.valueOf(this.uploadId)) + ", state: " + RecordUtils.fieldToString(this.state) + ", error: " + RecordUtils.fieldToString(this.error) + ", totalBytes: " + RecordUtils.fieldToString(this.totalBytes) + ", sentBytes: " + RecordUtils.fieldToString(Long.valueOf(this.sentBytes)) + ", totalSentBytes: " + RecordUtils.fieldToString(Long.valueOf(this.totalSentBytes)) + ", httpResult: " + RecordUtils.fieldToString(this.httpResult) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
