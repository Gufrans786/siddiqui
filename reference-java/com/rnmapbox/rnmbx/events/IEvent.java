package com.rnmapbox.rnmbx.events;

import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.joran.action.Action;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.WritableMap;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0000H&J\b\u0010\u0013\u001a\u00020\u0011H&J\b\u0010\u0018\u001a\u00020\u0015H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0012\u0010\u0014\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/rnmapbox/rnmbx/events/IEvent;", "", "iD", "", "getID", "()I", Action.KEY_ATTRIBUTE, "", "getKey", "()Ljava/lang/String;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "getType", "timestamp", "", "getTimestamp", "()J", "equals", "", NotificationCompat.CATEGORY_EVENT, "canCoalesce", "payload", "Lcom/facebook/react/bridge/WritableMap;", "getPayload", "()Lcom/facebook/react/bridge/WritableMap;", "toJSON", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface IEvent {
    boolean canCoalesce();

    boolean equals(IEvent event);

    int getID();

    String getKey();

    WritableMap getPayload();

    long getTimestamp();

    String getType();

    WritableMap toJSON();
}
