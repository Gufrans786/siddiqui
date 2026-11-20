package com.rnmapbox.rnmbx.events;

import android.view.View;
import androidx.core.app.NotificationCompat;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\tJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0001H\u0016J\b\u0010\u001e\u001a\u00020\u0018H\u0016J\b\u0010\u001f\u001a\u00020\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/rnmapbox/rnmbx/events/AbstractEvent;", "Lcom/rnmapbox/rnmbx/events/IEvent;", "view", "Landroid/view/View;", "mEventType", "", "<init>", "(Landroid/view/View;Ljava/lang/String;)V", "eventType", "(Ljava/lang/String;)V", "mTagID", "", "mTimestamp", "", "iD", "getID", "()I", SVGParser.XML_STYLESHEET_ATTR_TYPE, "getType", "()Ljava/lang/String;", "equals", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/facebook/react/bridge/WritableMap;", "getPayload", "()Lcom/facebook/react/bridge/WritableMap;", "timestamp", "getTimestamp", "()J", "toJSON", "canCoalesce", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractEvent implements IEvent {
    private final String mEventType;
    private int mTagID;
    private final long mTimestamp;

    @Override
    public boolean canCoalesce() {
        return true;
    }

    public AbstractEvent(View view, String mEventType) {
        Intrinsics.checkNotNullParameter(mEventType, "mEventType");
        this.mEventType = mEventType;
        if (view != null) {
            this.mTagID = view.getId();
        }
        this.mTimestamp = System.currentTimeMillis();
    }

    public AbstractEvent(String eventType) {
        this(null, eventType);
        Intrinsics.checkNotNullParameter(eventType, "eventType");
    }

    @Override
    public int getMTagID() {
        return this.mTagID;
    }

    @Override
    public String getMEventType() {
        return this.mEventType;
    }

    @Override
    public boolean equals(IEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return Intrinsics.areEqual(getKey(), event.getKey()) && Intrinsics.areEqual(this.mEventType, event.getMEventType());
    }

    @Override
    public WritableMap getPayload() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        return writableMapCreateMap;
    }

    @Override
    public long getMTimestamp() {
        return this.mTimestamp;
    }

    @Override
    public WritableMap toJSON() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, getMEventType());
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap2, "createMap(...)");
        writableMapCreateMap2.merge(getPayload());
        writableMapCreateMap.putMap("payload", writableMapCreateMap2);
        return writableMapCreateMap;
    }
}
