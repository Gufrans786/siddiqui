package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class TaskNative implements Task {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run();

    private TaskNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TaskPeerCleaner(j));
    }

    private static class TaskPeerCleaner implements Runnable {
        private long peer;

        public TaskPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TaskNative.cleanNativePeer(this.peer);
        }
    }
}
