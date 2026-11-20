package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class LifecycleMonitorInterfaceNative implements LifecycleMonitorInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void getLifecycleState(GetLifecycleStateCallback getLifecycleStateCallback);

    @Override
    public native void getMonitoringState(GetLifecycleMonitoringStateCallback getLifecycleMonitoringStateCallback);

    @Override
    public native void registerObserver(LifecycleObserver lifecycleObserver);

    @Override
    public native void unregisterObserver(LifecycleObserver lifecycleObserver);

    public LifecycleMonitorInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new LifecycleMonitorInterfacePeerCleaner(j));
    }

    private static class LifecycleMonitorInterfacePeerCleaner implements Runnable {
        private long peer;

        public LifecycleMonitorInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LifecycleMonitorInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
