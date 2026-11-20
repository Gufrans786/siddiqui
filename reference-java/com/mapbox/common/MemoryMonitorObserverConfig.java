package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public final class MemoryMonitorObserverConfig implements Serializable {
    private final long maxUsedMemoryPercentThreshold;
    private final long maxUsedMemoryThreshold;
    private final boolean sendAppRunningInBackgroundNotification;
    private final long thresholdReachedNotificationTimeout;

    private MemoryMonitorObserverConfig(boolean z, long j, long j2, long j3) {
        this.sendAppRunningInBackgroundNotification = z;
        this.maxUsedMemoryPercentThreshold = j;
        this.maxUsedMemoryThreshold = j2;
        this.thresholdReachedNotificationTimeout = j3;
    }

    private MemoryMonitorObserverConfig() {
        this.sendAppRunningInBackgroundNotification = true;
        this.maxUsedMemoryPercentThreshold = 75L;
        this.maxUsedMemoryThreshold = 0L;
        this.thresholdReachedNotificationTimeout = 300000L;
    }

    public boolean getSendAppRunningInBackgroundNotification() {
        return this.sendAppRunningInBackgroundNotification;
    }

    public long getMaxUsedMemoryPercentThreshold() {
        return this.maxUsedMemoryPercentThreshold;
    }

    public long getMaxUsedMemoryThreshold() {
        return this.maxUsedMemoryThreshold;
    }

    public long getThresholdReachedNotificationTimeout() {
        return this.thresholdReachedNotificationTimeout;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MemoryMonitorObserverConfig memoryMonitorObserverConfig = (MemoryMonitorObserverConfig) obj;
        return this.sendAppRunningInBackgroundNotification == memoryMonitorObserverConfig.sendAppRunningInBackgroundNotification && this.maxUsedMemoryPercentThreshold == memoryMonitorObserverConfig.maxUsedMemoryPercentThreshold && this.maxUsedMemoryThreshold == memoryMonitorObserverConfig.maxUsedMemoryThreshold && this.thresholdReachedNotificationTimeout == memoryMonitorObserverConfig.thresholdReachedNotificationTimeout;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.sendAppRunningInBackgroundNotification), Long.valueOf(this.maxUsedMemoryPercentThreshold), Long.valueOf(this.maxUsedMemoryThreshold), Long.valueOf(this.thresholdReachedNotificationTimeout));
    }

    public static final class Builder {
        private boolean sendAppRunningInBackgroundNotification = true;
        private long maxUsedMemoryPercentThreshold = 75;
        private long maxUsedMemoryThreshold = 0;
        private long thresholdReachedNotificationTimeout = 300000;

        public Builder sendAppRunningInBackgroundNotification(boolean z) {
            this.sendAppRunningInBackgroundNotification = z;
            return this;
        }

        public Builder maxUsedMemoryPercentThreshold(long j) {
            this.maxUsedMemoryPercentThreshold = j;
            return this;
        }

        public Builder maxUsedMemoryThreshold(long j) {
            this.maxUsedMemoryThreshold = j;
            return this;
        }

        public Builder thresholdReachedNotificationTimeout(long j) {
            this.thresholdReachedNotificationTimeout = j;
            return this;
        }

        public MemoryMonitorObserverConfig build() {
            return new MemoryMonitorObserverConfig(this.sendAppRunningInBackgroundNotification, this.maxUsedMemoryPercentThreshold, this.maxUsedMemoryThreshold, this.thresholdReachedNotificationTimeout);
        }
    }

    public Builder toBuilder() {
        return new Builder().sendAppRunningInBackgroundNotification(this.sendAppRunningInBackgroundNotification).maxUsedMemoryPercentThreshold(this.maxUsedMemoryPercentThreshold).maxUsedMemoryThreshold(this.maxUsedMemoryThreshold).thresholdReachedNotificationTimeout(this.thresholdReachedNotificationTimeout);
    }

    public String toString() {
        return "[sendAppRunningInBackgroundNotification: " + RecordUtils.fieldToString(Boolean.valueOf(this.sendAppRunningInBackgroundNotification)) + ", maxUsedMemoryPercentThreshold: " + RecordUtils.fieldToString(Long.valueOf(this.maxUsedMemoryPercentThreshold)) + ", maxUsedMemoryThreshold: " + RecordUtils.fieldToString(Long.valueOf(this.maxUsedMemoryThreshold)) + ", thresholdReachedNotificationTimeout: " + RecordUtils.fieldToString(Long.valueOf(this.thresholdReachedNotificationTimeout)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
