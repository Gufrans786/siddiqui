package com.rnmapbox.rnmbx.events;

import android.view.View;
import ch.qos.logback.core.joran.action.Action;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.rnmapbox.rnmbx.components.location.UserTrackingMode;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/events/MapUserTrackingModeEvent;", "Lcom/rnmapbox/rnmbx/events/AbstractEvent;", "view", "Landroid/view/View;", "userTrackingMode", "", "basePayload", "Lcom/facebook/react/bridge/WritableMap;", "<init>", "(Landroid/view/View;ILcom/facebook/react/bridge/WritableMap;)V", "getUserTrackingMode", "()I", "getBasePayload", "()Lcom/facebook/react/bridge/WritableMap;", Action.KEY_ATTRIBUTE, "", "getKey", "()Ljava/lang/String;", "payload", "getPayload", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MapUserTrackingModeEvent extends AbstractEvent {
    private final WritableMap basePayload;
    private final int userTrackingMode;

    public MapUserTrackingModeEvent(View view, int i, WritableMap writableMap) {
        super(view, EventTypes.MAP_USER_TRACKING_MODE_CHANGE);
        this.userTrackingMode = i;
        this.basePayload = writableMap;
    }

    public MapUserTrackingModeEvent(View view, int i, WritableMap writableMap, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, i, (i2 & 4) != 0 ? null : writableMap);
    }

    public final WritableMap getBasePayload() {
        return this.basePayload;
    }

    public final int getUserTrackingMode() {
        return this.userTrackingMode;
    }

    @Override
    public String getKey() {
        return EventKeys.MAP_USER_TRACKING_MODE_CHANGE.getValue();
    }

    @Override
    public WritableMap getPayload() {
        WritableMap writableMapCreateMap;
        WritableMap writableMap = this.basePayload;
        if (writableMap == null || (writableMapCreateMap = writableMap.copy()) == null) {
            writableMapCreateMap = Arguments.createMap();
            Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        }
        writableMapCreateMap.putBoolean("followUserLocation", this.userTrackingMode != 0);
        writableMapCreateMap.putString("followUserMode", UserTrackingMode.INSTANCE.toString(this.userTrackingMode));
        return writableMapCreateMap;
    }
}
