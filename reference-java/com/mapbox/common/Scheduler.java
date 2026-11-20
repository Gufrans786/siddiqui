package com.mapbox.common;

public interface Scheduler {
    SchedulerType getType();

    void schedule(Task task, TaskOptions taskOptions);
}
