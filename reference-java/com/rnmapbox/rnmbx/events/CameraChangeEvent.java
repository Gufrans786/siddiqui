package com.rnmapbox.rnmbx.events;

import android.view.View;
import com.facebook.react.bridge.WritableMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcom/rnmapbox/rnmbx/events/CameraChangeEvent;", "Lcom/rnmapbox/rnmbx/events/MapChangeEvent;", "view", "Landroid/view/View;", "eventType", "", "payload", "Lcom/facebook/react/bridge/WritableMap;", "<init>", "(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V", "canCoalesce", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraChangeEvent extends MapChangeEvent {
    @Override
    public boolean canCoalesce() {
        return true;
    }

    public CameraChangeEvent(View view, String eventType, WritableMap payload) {
        super(view, eventType, payload);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(payload, "payload");
    }
}
