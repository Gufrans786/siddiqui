package com.rnmapbox.rnmbx.events;

import android.view.View;
import ch.qos.logback.core.joran.action.Action;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;", "Lcom/rnmapbox/rnmbx/events/AbstractEvent;", "view", "Landroid/view/View;", "reason", "", "idleDurationMs", "", "lastGestureType", "<init>", "(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V", "Ljava/lang/Double;", Action.KEY_ATTRIBUTE, "getKey", "()Ljava/lang/String;", "payload", "Lcom/facebook/react/bridge/WritableMap;", "getPayload", "()Lcom/facebook/react/bridge/WritableMap;", "canCoalesce", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MapSteadyEvent extends AbstractEvent {

    public static final Companion INSTANCE = new Companion(null);
    private final Double idleDurationMs;
    private final String lastGestureType;
    private final String reason;

    @Override
    public boolean canCoalesce() {
        return false;
    }

    public MapSteadyEvent(View view, String reason, Double d, String str) {
        super(view, "mapSteady");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.reason = reason;
        this.idleDurationMs = d;
        this.lastGestureType = str;
    }

    @Override
    public String getKey() {
        return "topOnMapSteady";
    }

    @Override
    public WritableMap getPayload() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.putString("reason", this.reason);
        Double d = this.idleDurationMs;
        if (d != null) {
            writableMapCreateMap.putDouble("idleDurationMs", d.doubleValue());
        } else {
            writableMapCreateMap.putNull("idleDurationMs");
        }
        String str = this.lastGestureType;
        if (str != null) {
            writableMapCreateMap.putString("lastGestureType", str);
        } else {
            writableMapCreateMap.putNull("lastGestureType");
        }
        writableMapCreateMap.putDouble("timestamp", System.currentTimeMillis());
        return writableMapCreateMap;
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;", "", "<init>", "()V", "make", "Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;", "view", "Landroid/view/View;", "reason", "", "idleDurationMs", "", "lastGestureType", "(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MapSteadyEvent make(View view, String reason, Double idleDurationMs, String lastGestureType) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new MapSteadyEvent(view, reason, idleDurationMs, lastGestureType);
        }
    }
}
