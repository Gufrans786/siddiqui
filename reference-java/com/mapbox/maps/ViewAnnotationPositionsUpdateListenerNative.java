package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import java.util.List;

final class ViewAnnotationPositionsUpdateListenerNative implements ViewAnnotationPositionsUpdateListener {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onViewAnnotationPositionsUpdate(List<ViewAnnotationPositionDescriptor> list);

    public ViewAnnotationPositionsUpdateListenerNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ViewAnnotationPositionsUpdateListenerPeerCleaner(j));
    }

    private static class ViewAnnotationPositionsUpdateListenerPeerCleaner implements Runnable {
        private long peer;

        public ViewAnnotationPositionsUpdateListenerPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ViewAnnotationPositionsUpdateListenerNative.cleanNativePeer(this.peer);
        }
    }
}
