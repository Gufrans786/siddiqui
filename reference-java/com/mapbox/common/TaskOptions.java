package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class TaskOptions implements Serializable {
    private final long delay;
    private final TaskPriority priority;

    public TaskOptions(long j, TaskPriority taskPriority) {
        this.delay = j;
        this.priority = taskPriority;
    }

    public TaskOptions(long j) {
        this.delay = j;
        this.priority = TaskPriority.DEFAULT;
    }

    public long getDelay() {
        return this.delay;
    }

    public TaskPriority getPriority() {
        return this.priority;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TaskOptions taskOptions = (TaskOptions) obj;
        return this.delay == taskOptions.delay && Objects.equals(this.priority, taskOptions.priority);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.delay), this.priority);
    }

    public String toString() {
        return "[delay: " + RecordUtils.fieldToString(Long.valueOf(this.delay)) + ", priority: " + RecordUtils.fieldToString(this.priority) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
