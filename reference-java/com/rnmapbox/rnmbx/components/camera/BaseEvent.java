package com.rnmapbox.rnmbx.components.camera;

import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\r\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/BaseEvent;", "Lcom/facebook/react/uimanager/events/Event;", "surfaceId", "", "viewTag", "_eventName", "", "eventData", "Lcom/facebook/react/bridge/WritableMap;", "canCoalesce", "", "<init>", "(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Z)V", "getEventName", "getEventData", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BaseEvent extends Event<BaseEvent> {
    private final String _eventName;
    private final boolean canCoalesce;
    private final WritableMap eventData;

    public BaseEvent(int i, int i2, String str, WritableMap writableMap, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, str, writableMap, (i3 & 16) != 0 ? false : z);
    }

    public BaseEvent(int i, int i2, String _eventName, WritableMap eventData, boolean z) {
        super(i, i2);
        Intrinsics.checkNotNullParameter(_eventName, "_eventName");
        Intrinsics.checkNotNullParameter(eventData, "eventData");
        this._eventName = _eventName;
        this.eventData = eventData;
        this.canCoalesce = z;
    }

    @Override
    public String get_eventName() {
        return this._eventName;
    }

    @Override
    public boolean getCanCoalesce() {
        return this.canCoalesce;
    }

    @Override
    protected WritableMap getEventData() {
        return this.eventData;
    }
}
