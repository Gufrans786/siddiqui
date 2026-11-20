package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class DownloadStatus implements Serializable {
    private long downloadId;
    private DownloadOptions downloadOptions;
    private TransferError error;
    private Expected<HttpRequestError, HttpResponseData> httpResult;
    private long receivedBytes;
    private TransferState state;
    private Long totalBytes;
    private long transferredBytes;

    public DownloadStatus(long j, TransferState transferState, TransferError transferError, Long l, long j2, long j3, DownloadOptions downloadOptions, Expected<HttpRequestError, HttpResponseData> expected) {
        this.downloadId = j;
        this.state = transferState;
        this.error = transferError;
        this.totalBytes = l;
        this.receivedBytes = j2;
        this.transferredBytes = j3;
        this.downloadOptions = downloadOptions;
        this.httpResult = expected;
    }

    public DownloadStatus(TransferError transferError, Long l, DownloadOptions downloadOptions, Expected<HttpRequestError, HttpResponseData> expected) {
        this.error = transferError;
        this.totalBytes = l;
        this.downloadOptions = downloadOptions;
        this.httpResult = expected;
        this.downloadId = 0L;
        this.state = TransferState.PENDING;
        this.receivedBytes = 0L;
        this.transferredBytes = 0L;
    }

    public long getDownloadId() {
        return this.downloadId;
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

    public long getReceivedBytes() {
        return this.receivedBytes;
    }

    public long getTransferredBytes() {
        return this.transferredBytes;
    }

    public DownloadOptions getDownloadOptions() {
        return this.downloadOptions;
    }

    public Expected<HttpRequestError, HttpResponseData> getHttpResult() {
        return this.httpResult;
    }

    public void setDownloadId(long j) {
        this.downloadId = j;
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

    public void setReceivedBytes(long j) {
        this.receivedBytes = j;
    }

    public void setTransferredBytes(long j) {
        this.transferredBytes = j;
    }

    public void setDownloadOptions(DownloadOptions downloadOptions) {
        this.downloadOptions = downloadOptions;
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
        DownloadStatus downloadStatus = (DownloadStatus) obj;
        return this.downloadId == downloadStatus.downloadId && Objects.equals(this.state, downloadStatus.state) && Objects.equals(this.error, downloadStatus.error) && Objects.equals(this.totalBytes, downloadStatus.totalBytes) && this.receivedBytes == downloadStatus.receivedBytes && this.transferredBytes == downloadStatus.transferredBytes && Objects.equals(this.downloadOptions, downloadStatus.downloadOptions) && Objects.equals(this.httpResult, downloadStatus.httpResult);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.downloadId), this.state, this.error, this.totalBytes, Long.valueOf(this.receivedBytes), Long.valueOf(this.transferredBytes), this.downloadOptions, this.httpResult);
    }

    public String toString() {
        return "[downloadId: " + RecordUtils.fieldToString(Long.valueOf(this.downloadId)) + ", state: " + RecordUtils.fieldToString(this.state) + ", error: " + RecordUtils.fieldToString(this.error) + ", totalBytes: " + RecordUtils.fieldToString(this.totalBytes) + ", receivedBytes: " + RecordUtils.fieldToString(Long.valueOf(this.receivedBytes)) + ", transferredBytes: " + RecordUtils.fieldToString(Long.valueOf(this.transferredBytes)) + ", downloadOptions: " + RecordUtils.fieldToString(this.downloadOptions) + ", httpResult: " + RecordUtils.fieldToString(this.httpResult) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
