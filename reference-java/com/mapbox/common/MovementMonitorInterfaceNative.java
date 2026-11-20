package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class MovementMonitorInterfaceNative implements MovementMonitorInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void getMovementInfo(MovementInfoCallback movementInfoCallback);

    @Override
    public native void registerObserver(MovementModeObserver movementModeObserver);

    @Override
    public native void setMovementInfo(MovementInfo movementInfo);

    @Override
    public native void unregisterObserver(MovementModeObserver movementModeObserver);

    public MovementMonitorInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MovementMonitorInterfacePeerCleaner(j));
    }

    private static class MovementMonitorInterfacePeerCleaner implements Runnable {
        private long peer;

        public MovementMonitorInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MovementMonitorInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
