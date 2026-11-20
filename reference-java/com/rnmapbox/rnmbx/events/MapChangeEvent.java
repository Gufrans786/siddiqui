package com.rnmapbox.rnmbx.events;

import android.view.View;
import ch.qos.logback.core.joran.action.Action;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\b\u0016\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/rnmapbox/rnmbx/events/MapChangeEvent;", "Lcom/rnmapbox/rnmbx/events/AbstractEvent;", "view", "Landroid/view/View;", "eventType", "", "mPayload", "Lcom/facebook/react/bridge/WritableMap;", "<init>", "(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V", Action.KEY_ATTRIBUTE, "getKey", "()Ljava/lang/String;", "payload", "getPayload", "()Lcom/facebook/react/bridge/WritableMap;", "canCoalesce", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class MapChangeEvent extends AbstractEvent {
    private final WritableMap mPayload;

    @Override
    public boolean canCoalesce() {
        return false;
    }

    public MapChangeEvent(View view, String str, WritableMap writableMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, str, (i & 4) != 0 ? Arguments.createMap() : writableMap);
    }

    public MapChangeEvent(View view, String eventType, WritableMap mPayload) {
        super(view, eventType);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(mPayload, "mPayload");
        this.mPayload = mPayload;
    }

    @Override
    public String getKey() {
        return EventKeys.MAP_ONCHANGE.getValue();
    }

    @Override
    public WritableMap getPayload() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.merge(this.mPayload);
        return writableMapCreateMap;
    }
}
