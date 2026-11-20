package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class ReachabilityInterfaceNative implements ReachabilityInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native long addListener(ReachabilityChanged reachabilityChanged);

    @Override
    public native NetworkStatus currentNetworkStatus();

    @Override
    public native boolean isReachable();

    @Override
    public native boolean removeListener(long j);

    public ReachabilityInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ReachabilityInterfacePeerCleaner(j));
    }

    private static class ReachabilityInterfacePeerCleaner implements Runnable {
        private long peer;

        public ReachabilityInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ReachabilityInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
