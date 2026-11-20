package com.rnmapbox.rnmbx.components;

import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\f\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/rnmapbox/rnmbx/components/AbstractEvent;", "Lcom/facebook/react/uimanager/events/Event;", "viewId", "", "mEventName", "", "mCanCoalesce", "", "mEvent", "Lcom/facebook/react/bridge/WritableMap;", "<init>", "(ILjava/lang/String;ZLcom/facebook/react/bridge/WritableMap;)V", "getEventName", "dispatch", "", "rctEventEmitter", "Lcom/facebook/react/uimanager/events/RCTEventEmitter;", "canCoalesce", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AbstractEvent extends Event<AbstractEvent> {
    private final boolean mCanCoalesce;
    private final WritableMap mEvent;
    private final String mEventName;

    public AbstractEvent(int i, String mEventName, boolean z, WritableMap writableMap) {
        super(i);
        Intrinsics.checkNotNullParameter(mEventName, "mEventName");
        this.mEventName = mEventName;
        this.mCanCoalesce = z;
        this.mEvent = writableMap;
    }

    @Override
    public String getMEventName() {
        return this.mEventName;
    }

    @Override
    public void dispatch(RCTEventEmitter rctEventEmitter) {
        Intrinsics.checkNotNullParameter(rctEventEmitter, "rctEventEmitter");
        rctEventEmitter.receiveEvent(getViewTag(), internal_getEventNameCompat(), this.mEvent);
    }

    @Override
    public boolean getMCanCoalesce() {
        return this.mCanCoalesce;
    }
}
