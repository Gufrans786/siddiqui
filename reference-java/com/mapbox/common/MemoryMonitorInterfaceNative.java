package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class MemoryMonitorInterfaceNative implements MemoryMonitorInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void getMemoryMonitorStatus(MemoryMonitorObserverConfig memoryMonitorObserverConfig, MemoryMonitorStatusCallback memoryMonitorStatusCallback);

    @Override
    public native void notifySystemMemoryWarningReceived();

    @Override
    public native void registerObserver(MemoryMonitorObserver memoryMonitorObserver);

    @Override
    public native void registerObserverWithConfig(MemoryMonitorObserverConfig memoryMonitorObserverConfig, MemoryMonitorObserver memoryMonitorObserver);

    @Override
    public native void unregisterObserver(MemoryMonitorObserver memoryMonitorObserver);

    public MemoryMonitorInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MemoryMonitorInterfacePeerCleaner(j));
    }

    private static class MemoryMonitorInterfacePeerCleaner implements Runnable {
        private long peer;

        public MemoryMonitorInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MemoryMonitorInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
