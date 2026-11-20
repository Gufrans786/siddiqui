package com.rnmapbox.rnmbx.components.location;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.geojson.Point;
import com.mapbox.maps.MapView;
import com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentPlugin;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentUtils;
import com.mapbox.maps.plugin.locationcomponent.LocationConsumer;
import com.mapbox.maps.plugin.locationcomponent.LocationProvider;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.utils.PropertyChanges;
import com.rnmapbox.rnmbx.utils.PropertyUpdaterWithName;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u00010B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\u0019J\u0006\u0010!\u001a\u00020\u0019J\u0006\u0010\"\u001a\u00020\u0019J\u0016\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\f2\u0006\u0010%\u001a\u00020\fJ\u000e\u0010&\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\fJ\u000e\u0010-\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020.J\u000e\u0010/\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020.R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR@\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R*\u0010\u0012\u001a\u0004\u0018\u00010\f2\b\u0010\n\u001a\u0004\u0018\u00010\f@FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "changes", "Lcom/rnmapbox/rnmbx/utils/PropertyChanges;", "getChanges", "()Lcom/rnmapbox/rnmbx/utils/PropertyChanges;", "value", "Lkotlin/Pair;", "", "coordinate", "getCoordinate", "()Lkotlin/Pair;", "setCoordinate", "(Lkotlin/Pair;)V", "heading", "getHeading", "()Ljava/lang/Double;", "setHeading", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "addToMap", "", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "applyCoordinate", "applyHeading", "applyAllChanges", "updateCorodinate", TSGeofence.FIELD_LATITUDE, TSGeofence.FIELD_LONGITUDE, "updateHeading", "locationConsumers", "", "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;", "customLocationProvider", "Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;", "defaultLocationProvider", "installCustomLocationProviderIfNeeded", "Lcom/mapbox/maps/MapView;", "removeCustomLocationProvider", "Property", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCustomLocationProvider extends AbstractMapFeature {
    private final PropertyChanges<RNMBXCustomLocationProvider> changes;
    private Pair<Double, Double> coordinate;
    private LocationProvider customLocationProvider;
    private LocationProvider defaultLocationProvider;
    private Double heading;
    private List<LocationConsumer> locationConsumers;

    public RNMBXCustomLocationProvider(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.changes = new PropertyChanges<>();
        this.locationConsumers = new ArrayList();
    }

    public final PropertyChanges<RNMBXCustomLocationProvider> getChanges() {
        return this.changes;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0003B\u001d\b\u0002\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000f"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$Property;", "Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;", "Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;", "", "_apply", "Lkotlin/Function1;", "", "<init>", "(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V", "get_apply", "()Lkotlin/jvm/functions/Function1;", "COORDINATE", "HEADING", "apply", "locationProvider", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum Property implements PropertyUpdaterWithName<RNMBXCustomLocationProvider> {
        COORDINATE(AnonymousClass1.INSTANCE),
        HEADING(AnonymousClass2.INSTANCE);

        private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final Function1<RNMBXCustomLocationProvider, Unit> _apply;

        public static EnumEntries<Property> getEntries() {
            return $ENTRIES;
        }

        Property(Function1 function1) {
            this._apply = function1;
        }

        @Override
        public String getName() {
            return name();
        }

        public final Function1<RNMBXCustomLocationProvider, Unit> get_apply() {
            return this._apply;
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass1 extends FunctionReferenceImpl implements Function1<RNMBXCustomLocationProvider, Unit> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1, RNMBXCustomLocationProvider.class, "applyCoordinate", "applyCoordinate()V", 0);
            }

            @Override
            public Unit invoke(RNMBXCustomLocationProvider rNMBXCustomLocationProvider) {
                invoke2(rNMBXCustomLocationProvider);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXCustomLocationProvider p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyCoordinate();
            }
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass2 extends FunctionReferenceImpl implements Function1<RNMBXCustomLocationProvider, Unit> {
            public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

            AnonymousClass2() {
                super(1, RNMBXCustomLocationProvider.class, "applyHeading", "applyHeading()V", 0);
            }

            @Override
            public Unit invoke(RNMBXCustomLocationProvider rNMBXCustomLocationProvider) {
                invoke2(rNMBXCustomLocationProvider);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXCustomLocationProvider p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyHeading();
            }
        }

        @Override
        public void apply(RNMBXCustomLocationProvider locationProvider) {
            Intrinsics.checkNotNullParameter(locationProvider, "locationProvider");
            this._apply.invoke(locationProvider);
        }
    }

    public final Pair<Double, Double> getCoordinate() {
        return this.coordinate;
    }

    public final void setCoordinate(Pair<Double, Double> pair) {
        this.coordinate = pair;
        this.changes.add(Property.COORDINATE);
    }

    public final Double getHeading() {
        return this.heading;
    }

    public final void setHeading(Double d) {
        this.heading = d;
        this.changes.add(Property.HEADING);
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        installCustomLocationProviderIfNeeded(mapView.getMapView());
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        removeCustomLocationProvider(mapView.getMapView());
        return super.removeFromMap(mapView, reason);
    }

    public final void applyCoordinate() {
        Pair<Double, Double> pair = this.coordinate;
        if (pair != null) {
            updateCorodinate(pair.getSecond().doubleValue(), pair.getFirst().doubleValue());
        }
    }

    public final void applyHeading() {
        Double d = this.heading;
        if (d != null) {
            updateHeading(d.doubleValue());
        }
    }

    public final void applyAllChanges() {
        this.changes.apply(this);
    }

    public final void updateCorodinate(double latitude, double longitude) {
        Point pointFromLngLat = Point.fromLngLat(longitude, latitude);
        Iterator<T> it = this.locationConsumers.iterator();
        while (it.hasNext()) {
            LocationConsumer.DefaultImpls.onLocationUpdated$default((LocationConsumer) it.next(), new Point[]{pointFromLngLat}, null, 2, null);
        }
    }

    public final void updateHeading(double heading) {
        Iterator<T> it = this.locationConsumers.iterator();
        while (it.hasNext()) {
            LocationConsumer.DefaultImpls.onBearingUpdated$default((LocationConsumer) it.next(), new double[]{heading}, null, 2, null);
        }
    }

    public final void installCustomLocationProviderIfNeeded(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        LocationProvider locationProvider = new LocationProvider() {
            @Override
            public void registerLocationConsumer(LocationConsumer locationConsumer) {
                Intrinsics.checkNotNullParameter(locationConsumer, "locationConsumer");
                Double heading = RNMBXCustomLocationProvider.this.getHeading();
                if (heading != null) {
                    LocationConsumer.DefaultImpls.onBearingUpdated$default(locationConsumer, new double[]{heading.doubleValue()}, null, 2, null);
                }
                Pair<Double, Double> coordinate = RNMBXCustomLocationProvider.this.getCoordinate();
                if (coordinate != null) {
                    LocationConsumer.DefaultImpls.onLocationUpdated$default(locationConsumer, new Point[]{Point.fromLngLat(coordinate.getFirst().doubleValue(), coordinate.getSecond().doubleValue())}, null, 2, null);
                }
                RNMBXCustomLocationProvider.this.locationConsumers.add(locationConsumer);
            }

            @Override
            public void unRegisterLocationConsumer(LocationConsumer locationConsumer) {
                Intrinsics.checkNotNullParameter(locationConsumer, "locationConsumer");
                RNMBXCustomLocationProvider.this.locationConsumers.remove(locationConsumer);
            }
        };
        MapView mapView2 = mapView;
        this.defaultLocationProvider = LocationComponentUtils.getLocationComponent(mapView2).getLocationProvider();
        LocationComponentUtils.getLocationComponent(mapView2).setLocationProvider(locationProvider);
        this.customLocationProvider = locationProvider;
    }

    public final void removeCustomLocationProvider(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        LocationComponentPlugin locationComponent = LocationComponentUtils.getLocationComponent(mapView);
        DefaultLocationProvider defaultLocationProvider = this.defaultLocationProvider;
        if (defaultLocationProvider == null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            defaultLocationProvider = new DefaultLocationProvider(context);
        }
        locationComponent.setLocationProvider(defaultLocationProvider);
        this.customLocationProvider = null;
    }
}
