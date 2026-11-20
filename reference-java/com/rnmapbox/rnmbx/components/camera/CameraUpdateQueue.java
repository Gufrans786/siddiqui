package com.rnmapbox.rnmbx.components.camera;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import java.util.LinkedList;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0014\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/CameraUpdateQueue;", "", "<init>", "()V", "mQueue", "Ljava/util/Queue;", "Lcom/rnmapbox/rnmbx/components/camera/CameraStop;", "mCompleteListener", "Lcom/rnmapbox/rnmbx/components/camera/CameraUpdateQueue$OnCompleteAllListener;", "offer", "", "item", "size", "", "isEmpty", "", "()Z", "flush", "setOnCompleteAllListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "execute", "map", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "OnCompleteAllListener", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraUpdateQueue {
    private OnCompleteAllListener mCompleteListener;
    private Queue<CameraStop> mQueue = new LinkedList();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/CameraUpdateQueue$OnCompleteAllListener;", "", "onCompleteAll", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnCompleteAllListener {
        void onCompleteAll();
    }

    public final void offer(CameraStop item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.mQueue.offer(item);
    }

    public final int size() {
        return this.mQueue.size();
    }

    public final boolean isEmpty() {
        return this.mQueue.isEmpty();
    }

    public final void flush() {
        while (this.mQueue.size() > 0) {
            this.mQueue.remove();
        }
        this.mQueue = new LinkedList();
    }

    public final void setOnCompleteAllListener(OnCompleteAllListener listener) {
        this.mCompleteListener = listener;
    }

    public final void execute(RNMBXMapView map) {
        if (this.mQueue.isEmpty()) {
            OnCompleteAllListener onCompleteAllListener = this.mCompleteListener;
            if (onCompleteAllListener != null) {
                onCompleteAllListener.onCompleteAll();
                return;
            }
            return;
        }
        CameraStop cameraStopPoll = this.mQueue.poll();
        if (cameraStopPoll == null) {
            return;
        }
        Intrinsics.checkNotNull(map);
        cameraStopPoll.toCameraUpdate(map).run();
        execute(map);
    }
}
