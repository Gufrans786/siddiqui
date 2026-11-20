package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class SchedulerNative implements Scheduler {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native SchedulerType getType();

    @Override
    public native void schedule(Task task, TaskOptions taskOptions);

    public SchedulerNative(long j) {
        this.peer = j;
        CleanerService.register(this, new SchedulerPeerCleaner(j));
    }

    private static class SchedulerPeerCleaner implements Runnable {
        private long peer;

        public SchedulerPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SchedulerNative.cleanNativePeer(this.peer);
        }
    }
}
