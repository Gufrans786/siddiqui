package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;

public class Observable {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native Cancelable subscribe(CameraChangedCallback cameraChangedCallback);

    public native Cancelable subscribe(CameraChangedCoalescedCallback cameraChangedCoalescedCallback);

    public native Cancelable subscribe(MapIdleCallback mapIdleCallback);

    public native Cancelable subscribe(MapLoadedCallback mapLoadedCallback);

    public native Cancelable subscribe(MapLoadingErrorCallback mapLoadingErrorCallback);

    public native Cancelable subscribe(RenderFrameFinishedCallback renderFrameFinishedCallback);

    public native Cancelable subscribe(RenderFrameStartedCallback renderFrameStartedCallback);

    public native Cancelable subscribe(ResourceRequestCallback resourceRequestCallback);

    public native Cancelable subscribe(SourceAddedCallback sourceAddedCallback);

    public native Cancelable subscribe(SourceDataLoadedCallback sourceDataLoadedCallback);

    public native Cancelable subscribe(SourceRemovedCallback sourceRemovedCallback);

    public native Cancelable subscribe(StyleDataLoadedCallback styleDataLoadedCallback);

    public native Cancelable subscribe(StyleImageMissingCallback styleImageMissingCallback);

    public native Cancelable subscribe(StyleImageRemoveUnusedCallback styleImageRemoveUnusedCallback);

    public native Cancelable subscribe(StyleLoadedCallback styleLoadedCallback);

    public native Cancelable subscribe(String str, GenericEventCallback genericEventCallback);

    protected Observable(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new ObservablePeerCleaner(j));
    }

    private static class ObservablePeerCleaner implements Runnable {
        private long peer;

        public ObservablePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            Observable.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
