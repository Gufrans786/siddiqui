package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class DeferredDeliveryServiceOptions implements Serializable {
    private final long batchFlushTimeout;
    private final long batchLengthToFlush;
    private final String dataStoragePath;
    private final Long maxStorageUsage;
    private final long memoryQueueFlushTimeout;
    private final long memoryQueueLengthToFlush;
    private final Long memoryQueueMaxLength;
    private final DeferredDeliveryOverflowPolicy memoryQueueOverflowPolicy;
    private final long persistentQueueFlushTimeout;
    private final long persistentQueueLengthToFlush;
    private final Long persistentQueueMaxLength;
    private final DeferredDeliveryOverflowPolicy persistentQueueOverflowPolicy;
    private final DeferredDeliveryOverflowPolicy storageOverflowPolicy;

    public DeferredDeliveryServiceOptions(long j, long j2, Long l, long j3, long j4, DeferredDeliveryOverflowPolicy deferredDeliveryOverflowPolicy, Long l2, long j5, long j6, DeferredDeliveryOverflowPolicy deferredDeliveryOverflowPolicy2, String str, Long l3, DeferredDeliveryOverflowPolicy deferredDeliveryOverflowPolicy3) {
        this.batchLengthToFlush = j;
        this.batchFlushTimeout = j2;
        this.memoryQueueMaxLength = l;
        this.memoryQueueLengthToFlush = j3;
        this.memoryQueueFlushTimeout = j4;
        this.memoryQueueOverflowPolicy = deferredDeliveryOverflowPolicy;
        this.persistentQueueMaxLength = l2;
        this.persistentQueueLengthToFlush = j5;
        this.persistentQueueFlushTimeout = j6;
        this.persistentQueueOverflowPolicy = deferredDeliveryOverflowPolicy2;
        this.dataStoragePath = str;
        this.maxStorageUsage = l3;
        this.storageOverflowPolicy = deferredDeliveryOverflowPolicy3;
    }

    public DeferredDeliveryServiceOptions(Long l, Long l2, String str, Long l3) {
        this.memoryQueueMaxLength = l;
        this.persistentQueueMaxLength = l2;
        this.dataStoragePath = str;
        this.maxStorageUsage = l3;
        this.batchLengthToFlush = 180L;
        this.batchFlushTimeout = 180000L;
        this.memoryQueueLengthToFlush = 180L;
        this.memoryQueueFlushTimeout = 180000L;
        this.memoryQueueOverflowPolicy = DeferredDeliveryOverflowPolicy.RETIRE_OLDEST;
        this.persistentQueueLengthToFlush = 180L;
        this.persistentQueueFlushTimeout = 180000L;
        this.persistentQueueOverflowPolicy = DeferredDeliveryOverflowPolicy.RETIRE_OLDEST;
        this.storageOverflowPolicy = DeferredDeliveryOverflowPolicy.DISCARD_INCOMING;
    }

    public long getBatchLengthToFlush() {
        return this.batchLengthToFlush;
    }

    public long getBatchFlushTimeout() {
        return this.batchFlushTimeout;
    }

    public Long getMemoryQueueMaxLength() {
        return this.memoryQueueMaxLength;
    }

    public long getMemoryQueueLengthToFlush() {
        return this.memoryQueueLengthToFlush;
    }

    public long getMemoryQueueFlushTimeout() {
        return this.memoryQueueFlushTimeout;
    }

    public DeferredDeliveryOverflowPolicy getMemoryQueueOverflowPolicy() {
        return this.memoryQueueOverflowPolicy;
    }

    public Long getPersistentQueueMaxLength() {
        return this.persistentQueueMaxLength;
    }

    public long getPersistentQueueLengthToFlush() {
        return this.persistentQueueLengthToFlush;
    }

    public long getPersistentQueueFlushTimeout() {
        return this.persistentQueueFlushTimeout;
    }

    public DeferredDeliveryOverflowPolicy getPersistentQueueOverflowPolicy() {
        return this.persistentQueueOverflowPolicy;
    }

    public String getDataStoragePath() {
        return this.dataStoragePath;
    }

    public Long getMaxStorageUsage() {
        return this.maxStorageUsage;
    }

    public DeferredDeliveryOverflowPolicy getStorageOverflowPolicy() {
        return this.storageOverflowPolicy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DeferredDeliveryServiceOptions deferredDeliveryServiceOptions = (DeferredDeliveryServiceOptions) obj;
        return this.batchLengthToFlush == deferredDeliveryServiceOptions.batchLengthToFlush && this.batchFlushTimeout == deferredDeliveryServiceOptions.batchFlushTimeout && Objects.equals(this.memoryQueueMaxLength, deferredDeliveryServiceOptions.memoryQueueMaxLength) && this.memoryQueueLengthToFlush == deferredDeliveryServiceOptions.memoryQueueLengthToFlush && this.memoryQueueFlushTimeout == deferredDeliveryServiceOptions.memoryQueueFlushTimeout && Objects.equals(this.memoryQueueOverflowPolicy, deferredDeliveryServiceOptions.memoryQueueOverflowPolicy) && Objects.equals(this.persistentQueueMaxLength, deferredDeliveryServiceOptions.persistentQueueMaxLength) && this.persistentQueueLengthToFlush == deferredDeliveryServiceOptions.persistentQueueLengthToFlush && this.persistentQueueFlushTimeout == deferredDeliveryServiceOptions.persistentQueueFlushTimeout && Objects.equals(this.persistentQueueOverflowPolicy, deferredDeliveryServiceOptions.persistentQueueOverflowPolicy) && Objects.equals(this.dataStoragePath, deferredDeliveryServiceOptions.dataStoragePath) && Objects.equals(this.maxStorageUsage, deferredDeliveryServiceOptions.maxStorageUsage) && Objects.equals(this.storageOverflowPolicy, deferredDeliveryServiceOptions.storageOverflowPolicy);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.batchLengthToFlush), Long.valueOf(this.batchFlushTimeout), this.memoryQueueMaxLength, Long.valueOf(this.memoryQueueLengthToFlush), Long.valueOf(this.memoryQueueFlushTimeout), this.memoryQueueOverflowPolicy, this.persistentQueueMaxLength, Long.valueOf(this.persistentQueueLengthToFlush), Long.valueOf(this.persistentQueueFlushTimeout), this.persistentQueueOverflowPolicy, this.dataStoragePath, this.maxStorageUsage, this.storageOverflowPolicy);
    }

    public String toString() {
        return "[batchLengthToFlush: " + RecordUtils.fieldToString(Long.valueOf(this.batchLengthToFlush)) + ", batchFlushTimeout: " + RecordUtils.fieldToString(Long.valueOf(this.batchFlushTimeout)) + ", memoryQueueMaxLength: " + RecordUtils.fieldToString(this.memoryQueueMaxLength) + ", memoryQueueLengthToFlush: " + RecordUtils.fieldToString(Long.valueOf(this.memoryQueueLengthToFlush)) + ", memoryQueueFlushTimeout: " + RecordUtils.fieldToString(Long.valueOf(this.memoryQueueFlushTimeout)) + ", memoryQueueOverflowPolicy: " + RecordUtils.fieldToString(this.memoryQueueOverflowPolicy) + ", persistentQueueMaxLength: " + RecordUtils.fieldToString(this.persistentQueueMaxLength) + ", persistentQueueLengthToFlush: " + RecordUtils.fieldToString(Long.valueOf(this.persistentQueueLengthToFlush)) + ", persistentQueueFlushTimeout: " + RecordUtils.fieldToString(Long.valueOf(this.persistentQueueFlushTimeout)) + ", persistentQueueOverflowPolicy: " + RecordUtils.fieldToString(this.persistentQueueOverflowPolicy) + ", dataStoragePath: " + RecordUtils.fieldToString(this.dataStoragePath) + ", maxStorageUsage: " + RecordUtils.fieldToString(this.maxStorageUsage) + ", storageOverflowPolicy: " + RecordUtils.fieldToString(this.storageOverflowPolicy) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
