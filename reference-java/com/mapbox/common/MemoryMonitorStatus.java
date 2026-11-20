package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public final class MemoryMonitorStatus implements Serializable {
    private final MemoryMonitorState state;
    private final long totalMemory;
    private final long usedMemory;

    public MemoryMonitorStatus(MemoryMonitorState memoryMonitorState, long j, long j2) {
        this.state = memoryMonitorState;
        this.totalMemory = j;
        this.usedMemory = j2;
    }

    public MemoryMonitorState getState() {
        return this.state;
    }

    public long getTotalMemory() {
        return this.totalMemory;
    }

    public long getUsedMemory() {
        return this.usedMemory;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MemoryMonitorStatus memoryMonitorStatus = (MemoryMonitorStatus) obj;
        return Objects.equals(this.state, memoryMonitorStatus.state) && this.totalMemory == memoryMonitorStatus.totalMemory && this.usedMemory == memoryMonitorStatus.usedMemory;
    }

    public int hashCode() {
        return Objects.hash(this.state, Long.valueOf(this.totalMemory), Long.valueOf(this.usedMemory));
    }

    public String toString() {
        return "[state: " + RecordUtils.fieldToString(this.state) + ", totalMemory: " + RecordUtils.fieldToString(Long.valueOf(this.totalMemory)) + ", usedMemory: " + RecordUtils.fieldToString(Long.valueOf(this.usedMemory)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
