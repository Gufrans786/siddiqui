package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class OnBillingServiceErrorNative implements OnBillingServiceError {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(BillingServiceError billingServiceError);

    private OnBillingServiceErrorNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OnBillingServiceErrorPeerCleaner(j));
    }

    private static class OnBillingServiceErrorPeerCleaner implements Runnable {
        private long peer;

        public OnBillingServiceErrorPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OnBillingServiceErrorNative.cleanNativePeer(this.peer);
        }
    }
}
