package com.rnmapbox.rnmbx.events;

import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.joran.action.Action;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.mapbox.common.location.Location;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.v11compat.location.LocationKt;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bB\u0015\b\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0007\u0010\tJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0001H\u0016J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0000J\b\u0010#\u001a\u00020 H\u0016J\b\u0010$\u001a\u00020\u001dH\u0016R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/rnmapbox/rnmbx/events/LocationEvent;", "Lcom/rnmapbox/rnmbx/events/IEvent;", "location", "Lcom/mapbox/common/location/Location;", "Lcom/rnmapbox/rnmbx/v11compat/location/Location;", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "<init>", "(Lcom/mapbox/common/location/Location;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V", "(Lcom/mapbox/common/location/Location;)V", "uUID", "Ljava/util/UUID;", "getUUID", "()Ljava/util/UUID;", "iD", "", "getID", "()I", Action.KEY_ATTRIBUTE, "", "getKey", "()Ljava/lang/String;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "getType", "timestamp", "", "getTimestamp", "()J", "equals", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/facebook/react/bridge/WritableMap;", "getPayload", "()Lcom/facebook/react/bridge/WritableMap;", "toJSON", "canCoalesce", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationEvent implements IEvent {
    private final Location location;
    private final RNMBXMapView mapView;
    private final UUID uUID;

    @Override
    public boolean canCoalesce() {
        return true;
    }

    public LocationEvent(Location location, RNMBXMapView rNMBXMapView) {
        Intrinsics.checkNotNullParameter(location, "location");
        this.location = location;
        this.mapView = rNMBXMapView;
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        this.uUID = uuidRandomUUID;
    }

    public final UUID getUUID() {
        return this.uUID;
    }

    public LocationEvent(Location location) {
        this(location, null);
        Intrinsics.checkNotNullParameter(location, "location");
    }

    @Override
    public int getMTagID() {
        RNMBXMapView rNMBXMapView = this.mapView;
        if (rNMBXMapView != null) {
            return rNMBXMapView.getId();
        }
        return -1;
    }

    @Override
    public String getKey() {
        return EventKeys.USER_LOCATION_UPDATE.getValue();
    }

    @Override
    public String getMEventType() {
        return EventTypes.USER_LOCATION_UPDATED;
    }

    @Override
    public long getMTimestamp() {
        return System.currentTimeMillis();
    }

    @Override
    public boolean equals(IEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return Intrinsics.areEqual(this.uUID, ((LocationEvent) event).uUID);
    }

    public final boolean equals(LocationEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return Intrinsics.areEqual(this.uUID, event.uUID);
    }

    @Override
    public WritableMap getPayload() {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        WritableNativeMap writableNativeMap2 = new WritableNativeMap();
        writableNativeMap2.putDouble(TSGeofence.FIELD_LONGITUDE, this.location.getLongitude());
        writableNativeMap2.putDouble(TSGeofence.FIELD_LATITUDE, this.location.getLatitude());
        Double altitude = this.location.getAltitude();
        if (altitude != null) {
            writableNativeMap2.putDouble("altitude", altitude.doubleValue());
        }
        writableNativeMap2.putDouble("accuracy", LocationKt.getAccuracy(this.location));
        Double bearing = this.location.getBearing();
        if (bearing != null) {
            double dDoubleValue = bearing.doubleValue();
            writableNativeMap2.putDouble("heading", dDoubleValue);
            writableNativeMap2.putDouble("course", dDoubleValue);
        }
        Double speed = this.location.getSpeed();
        if (speed != null) {
            writableNativeMap2.putDouble("speed", speed.doubleValue());
        }
        writableNativeMap.putMap("coords", writableNativeMap2);
        writableNativeMap.putDouble("timestamp", this.location.getTimestamp());
        return writableNativeMap;
    }

    @Override
    public WritableMap toJSON() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, getMEventType());
        writableMapCreateMap.putMap("payload", getPayload());
        return writableMapCreateMap;
    }
}
