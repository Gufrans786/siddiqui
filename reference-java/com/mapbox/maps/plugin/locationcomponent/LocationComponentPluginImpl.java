package com.mapbox.maps.plugin.locationcomponent;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.location.LocationError;
import com.mapbox.geojson.Point;
import com.mapbox.maps.MapboxLocationComponentException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.QueryRenderedFeaturesCallback;
import com.mapbox.maps.RenderedQueryGeometry;
import com.mapbox.maps.RenderedQueryOptions;
import com.mapbox.maps.plugin.PuckBearing;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.delegates.MapFeatureQueryDelegate;
import com.mapbox.maps.plugin.locationcomponent.animators.PuckAnimatorManager;
import com.mapbox.maps.plugin.locationcomponent.generated.LocationComponentAttributeParser;
import com.mapbox.maps.plugin.locationcomponent.generated.LocationComponentSettings;
import com.mapbox.maps.plugin.locationcomponent.generated.LocationComponentSettingsBase;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010>\u001a\u00020?H\u0002J\u0010\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020\bH\u0016J\u0010\u0010B\u001a\u00020?2\u0006\u0010A\u001a\u00020\rH\u0016J\u0010\u0010C\u001a\u00020?2\u0006\u0010A\u001a\u00020\u0012H\u0016J\b\u0010D\u001a\u00020?H\u0014J\"\u0010E\u001a\u00020?2\u0006\u0010F\u001a\u00020=2\b\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010I\u001a\u00020JH\u0016J7\u0010E\u001a\u00020?2\u0006\u0010F\u001a\u00020=2\b\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010I\u001a\u00020J2\u0006\u0010)\u001a\u00020*2\u0006\u00100\u001a\u000201H\u0001¢\u0006\u0002\bKJ\u0015\u0010L\u001a\u00020?2\u0006\u0010M\u001a\u00020NH\u0000¢\u0006\u0002\bOJ\b\u0010P\u001a\u00020?H\u0002J\n\u0010Q\u001a\u0004\u0018\u00010*H\u0016J\u0018\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020(2\u0006\u0010A\u001a\u00020TH\u0016J/\u0010U\u001a\u00020?2\n\u0010V\u001a\u00020W\"\u00020$2\u0019\u0010X\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020?\u0018\u00010Y¢\u0006\u0002\b[H\u0016J\u0010\u0010\\\u001a\u00020?2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010]\u001a\u00020?2\u0006\u0010^\u001a\u00020_H\u0016J/\u0010`\u001a\u00020?2\n\u0010a\u001a\u00020W\"\u00020$2\u0019\u0010X\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020?\u0018\u00010Y¢\u0006\u0002\b[H\u0016J<\u0010b\u001a\u00020?2\u0012\u0010c\u001a\n\u0012\u0006\b\u0001\u0012\u00020(0d\"\u00020(2\u0019\u0010X\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020?\u0018\u00010Y¢\u0006\u0002\b[H\u0016¢\u0006\u0002\u0010eJ!\u0010f\u001a\u00020?2\u0017\u0010X\u001a\u0013\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020?0Y¢\u0006\u0002\b[H\u0016J!\u0010g\u001a\u00020?2\u0017\u0010X\u001a\u0013\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020?0Y¢\u0006\u0002\b[H\u0016J!\u0010h\u001a\u00020?2\u0017\u0010X\u001a\u0013\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020?0Y¢\u0006\u0002\b[H\u0016J\b\u0010i\u001a\u00020?H\u0016J\b\u0010j\u001a\u00020?H\u0016J\u0010\u0010k\u001a\u00020?2\u0006\u0010l\u001a\u00020mH\u0016J\u0010\u0010n\u001a\u00020?2\u0006\u0010A\u001a\u00020\bH\u0016J\u0010\u0010o\u001a\u00020?2\u0006\u0010A\u001a\u00020\rH\u0016J\u0010\u0010p\u001a\u00020?2\u0006\u0010A\u001a\u00020\u0012H\u0016J\u0010\u0010q\u001a\u00020?2\u0006\u0010)\u001a\u00020*H\u0016J\u0014\u0010r\u001a\u00020?*\u00020s2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u00020\r8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u00020\u00128\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0094.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR$\u0010\u001c\u001a\u00020\u001d8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0012\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0004\n\u0002\u0010%R\u0012\u0010&\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0004\n\u0002\u0010%R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010)\u001a\u0004\u0018\u00010*8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b+\u0010\u0004\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R&\u00100\u001a\u0004\u0018\u0001018\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b2\u0010\u0004\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0014\u00107\u001a\b\u0012\u0004\u0012\u00020\b08X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00109\u001a\b\u0012\u0004\u0012\u00020\r08X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001208X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010;\u001a\b\u0012\u0004\u0012\u00020=0<X\u0082.¢\u0006\u0002\n\u0000¨\u0006t"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPluginImpl;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettingsBase;", "()V", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "indicatorAccuracyRadiusChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorAccuracyRadiusChangedListener;", "getIndicatorAccuracyRadiusChangedListener$plugin_locationcomponent_release$annotations", "getIndicatorAccuracyRadiusChangedListener$plugin_locationcomponent_release", "()Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorAccuracyRadiusChangedListener;", "indicatorBearingChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorBearingChangedListener;", "getIndicatorBearingChangedListener$plugin_locationcomponent_release$annotations", "getIndicatorBearingChangedListener$plugin_locationcomponent_release", "()Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorBearingChangedListener;", "indicatorPositionChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorPositionChangedListener;", "getIndicatorPositionChangedListener$plugin_locationcomponent_release$annotations", "getIndicatorPositionChangedListener$plugin_locationcomponent_release", "()Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorPositionChangedListener;", "internalSettings", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "getInternalSettings", "()Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "setInternalSettings", "(Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;)V", "isLocationComponentActivated", "", "isLocationComponentActivated$plugin_locationcomponent_release$annotations", "isLocationComponentActivated$plugin_locationcomponent_release", "()Z", "setLocationComponentActivated$plugin_locationcomponent_release", "(Z)V", "lastIndicatorAccuracyRadius", "", "Ljava/lang/Double;", "lastIndicatorBearing", "lastIndicatorPosition", "Lcom/mapbox/geojson/Point;", "locationProvider", "Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;", "getLocationProvider$plugin_locationcomponent_release$annotations", "getLocationProvider$plugin_locationcomponent_release", "()Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;", "setLocationProvider$plugin_locationcomponent_release", "(Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;)V", "locationPuckManager", "Lcom/mapbox/maps/plugin/locationcomponent/LocationPuckManager;", "getLocationPuckManager$plugin_locationcomponent_release$annotations", "getLocationPuckManager$plugin_locationcomponent_release", "()Lcom/mapbox/maps/plugin/locationcomponent/LocationPuckManager;", "setLocationPuckManager$plugin_locationcomponent_release", "(Lcom/mapbox/maps/plugin/locationcomponent/LocationPuckManager;)V", "onIndicatorAccuracyRadiusChangedListeners", "Ljava/util/concurrent/CopyOnWriteArraySet;", "onIndicatorBearingChangedListeners", "onIndicatorPositionChangedListeners", "weakContext", "Ljava/lang/ref/WeakReference;", "Landroid/content/Context;", "activateLocationComponent", "", "addOnIndicatorAccuracyRadiusChangedListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addOnIndicatorBearingChangedListener", "addOnIndicatorPositionChangedListener", "applySettings", "bind", CoreConstants.CONTEXT_SCOPE_VALUE, "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "bind$plugin_locationcomponent_release", "bindToAnimatableModel", "animatableModel", "Lcom/mapbox/maps/plugin/locationcomponent/model/AnimatableModel;", "bindToAnimatableModel$plugin_locationcomponent_release", "deactivateLocationComponent", "getLocationProvider", "isLocatedAt", "point", "Lcom/mapbox/maps/plugin/locationcomponent/PuckLocatedAtPointListener;", "onBearingUpdated", "bearing", "", "options", "Lkotlin/Function1;", "Landroid/animation/ValueAnimator;", "Lkotlin/ExtensionFunctionType;", "onDelegateProvider", "onError", "error", "Lcom/mapbox/common/location/LocationError;", "onHorizontalAccuracyRadiusUpdated", TSGeofence.FIELD_RADIUS, "onLocationUpdated", "location", "", "([Lcom/mapbox/geojson/Point;Lkotlin/jvm/functions/Function1;)V", "onPuckAccuracyRadiusAnimatorDefaultOptionsUpdated", "onPuckBearingAnimatorDefaultOptionsUpdated", "onPuckLocationAnimatorDefaultOptionsUpdated", "onStart", "onStop", "onStyleChanged", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "removeOnIndicatorAccuracyRadiusChangedListener", "removeOnIndicatorBearingChangedListener", "removeOnIndicatorPositionChangedListener", "setLocationProvider", "updatePuckBearingSettings", "Lcom/mapbox/maps/plugin/locationcomponent/DefaultLocationProvider;", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationComponentPluginImpl extends LocationComponentSettingsBase implements LocationComponentPlugin, LocationConsumer {
    private MapDelegateProvider delegateProvider;
    protected LocationComponentSettings internalSettings;
    private boolean isLocationComponentActivated;
    private Double lastIndicatorAccuracyRadius;
    private Double lastIndicatorBearing;
    private Point lastIndicatorPosition;
    private LocationProvider locationProvider;
    private LocationPuckManager locationPuckManager;
    private WeakReference<Context> weakContext;
    private final CopyOnWriteArraySet<OnIndicatorPositionChangedListener> onIndicatorPositionChangedListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<OnIndicatorBearingChangedListener> onIndicatorBearingChangedListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<OnIndicatorAccuracyRadiusChangedListener> onIndicatorAccuracyRadiusChangedListeners = new CopyOnWriteArraySet<>();
    private final OnIndicatorPositionChangedListener indicatorPositionChangedListener = new OnIndicatorPositionChangedListener() {
        @Override
        public final void onIndicatorPositionChanged(Point point) {
            LocationComponentPluginImpl.indicatorPositionChangedListener$lambda$1(this.f$0, point);
        }
    };
    private final OnIndicatorBearingChangedListener indicatorBearingChangedListener = new OnIndicatorBearingChangedListener() {
        @Override
        public final void onIndicatorBearingChanged(double d) {
            LocationComponentPluginImpl.indicatorBearingChangedListener$lambda$7(this.f$0, d);
        }
    };
    private final OnIndicatorAccuracyRadiusChangedListener indicatorAccuracyRadiusChangedListener = new OnIndicatorAccuracyRadiusChangedListener() {
        @Override
        public final void onIndicatorAccuracyRadiusChanged(double d) {
            LocationComponentPluginImpl.indicatorAccuracyRadiusChangedListener$lambda$8(this.f$0, d);
        }
    };

    public static void getIndicatorAccuracyRadiusChangedListener$plugin_locationcomponent_release$annotations() {
    }

    public static void getIndicatorBearingChangedListener$plugin_locationcomponent_release$annotations() {
    }

    public static void getIndicatorPositionChangedListener$plugin_locationcomponent_release$annotations() {
    }

    public static void getLocationProvider$plugin_locationcomponent_release$annotations() {
    }

    public static void getLocationPuckManager$plugin_locationcomponent_release$annotations() {
    }

    public static void isLocationComponentActivated$plugin_locationcomponent_release$annotations() {
    }

    @Override
    public void cleanup() {
        LocationComponentPlugin.DefaultImpls.cleanup(this);
    }

    @Override
    public void initialize() {
        LocationComponentPlugin.DefaultImpls.initialize(this);
    }

    public final LocationPuckManager getLocationPuckManager() {
        return this.locationPuckManager;
    }

    public final void setLocationPuckManager$plugin_locationcomponent_release(LocationPuckManager locationPuckManager) {
        this.locationPuckManager = locationPuckManager;
    }

    public final LocationProvider getLocationProvider$plugin_locationcomponent_release() {
        return this.locationProvider;
    }

    public final void setLocationProvider$plugin_locationcomponent_release(LocationProvider locationProvider) {
        this.locationProvider = locationProvider;
    }

    public final boolean getIsLocationComponentActivated() {
        return this.isLocationComponentActivated;
    }

    public final void setLocationComponentActivated$plugin_locationcomponent_release(boolean z) {
        this.isLocationComponentActivated = z;
    }

    @Override
    public void addOnIndicatorPositionChangedListener(OnIndicatorPositionChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onIndicatorPositionChangedListeners.add(listener);
        Point point = this.lastIndicatorPosition;
        if (point != null) {
            listener.onIndicatorPositionChanged(point);
        }
    }

    @Override
    public void removeOnIndicatorPositionChangedListener(OnIndicatorPositionChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onIndicatorPositionChangedListeners.remove(listener);
    }

    public final OnIndicatorPositionChangedListener getIndicatorPositionChangedListener() {
        return this.indicatorPositionChangedListener;
    }

    public static final void indicatorPositionChangedListener$lambda$1(LocationComponentPluginImpl this$0, Point it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.lastIndicatorPosition = it;
        Iterator<OnIndicatorPositionChangedListener> it2 = this$0.onIndicatorPositionChangedListeners.iterator();
        while (it2.hasNext()) {
            it2.next().onIndicatorPositionChanged(it);
        }
    }

    @Override
    public void addOnIndicatorBearingChangedListener(OnIndicatorBearingChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onIndicatorBearingChangedListeners.add(listener);
        Double d = this.lastIndicatorBearing;
        if (d != null) {
            listener.onIndicatorBearingChanged(d.doubleValue());
        }
    }

    @Override
    public void removeOnIndicatorBearingChangedListener(OnIndicatorBearingChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onIndicatorBearingChangedListeners.remove(listener);
    }

    @Override
    public void addOnIndicatorAccuracyRadiusChangedListener(OnIndicatorAccuracyRadiusChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onIndicatorAccuracyRadiusChangedListeners.add(listener);
        Double d = this.lastIndicatorAccuracyRadius;
        if (d != null) {
            listener.onIndicatorAccuracyRadiusChanged(d.doubleValue());
        }
    }

    @Override
    public void removeOnIndicatorAccuracyRadiusChangedListener(OnIndicatorAccuracyRadiusChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onIndicatorAccuracyRadiusChangedListeners.remove(listener);
    }

    @Override
    public void isLocatedAt(Point point, final PuckLocatedAtPointListener listener) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(listener, "listener");
        MapDelegateProvider mapDelegateProvider = this.delegateProvider;
        if (mapDelegateProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
            mapDelegateProvider = null;
        }
        MapFeatureQueryDelegate mapFeatureQueryDelegate = mapDelegateProvider.getMapFeatureQueryDelegate();
        MapDelegateProvider mapDelegateProvider2 = this.delegateProvider;
        if (mapDelegateProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
            mapDelegateProvider2 = null;
        }
        mapFeatureQueryDelegate.queryRenderedFeatures(new RenderedQueryGeometry(mapDelegateProvider2.getMapCameraManagerDelegate().pixelForCoordinate(point)), new RenderedQueryOptions(CollectionsKt.listOf((Object[]) new String[]{LocationComponentConstants.LOCATION_INDICATOR_LAYER, LocationComponentConstants.MODEL_LAYER}), null), new QueryRenderedFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                LocationComponentPluginImpl.isLocatedAt$lambda$6(listener, expected);
            }
        });
    }

    public static final void isLocatedAt$lambda$6(PuckLocatedAtPointListener listener, Expected expected) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(expected, "expected");
        List list = (List) expected.getValue();
        if (list != null) {
            if (!list.isEmpty()) {
                listener.onResult(true);
            } else {
                listener.onResult(false);
            }
        }
        String str = (String) expected.getError();
        if (str != null) {
            throw new MapboxLocationComponentException(str);
        }
    }

    public final OnIndicatorBearingChangedListener getIndicatorBearingChangedListener() {
        return this.indicatorBearingChangedListener;
    }

    public static final void indicatorBearingChangedListener$lambda$7(LocationComponentPluginImpl this$0, double d) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.lastIndicatorBearing = Double.valueOf(d);
        Iterator<OnIndicatorBearingChangedListener> it = this$0.onIndicatorBearingChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onIndicatorBearingChanged(d);
        }
    }

    public final OnIndicatorAccuracyRadiusChangedListener getIndicatorAccuracyRadiusChangedListener() {
        return this.indicatorAccuracyRadiusChangedListener;
    }

    public static final void indicatorAccuracyRadiusChangedListener$lambda$8(LocationComponentPluginImpl this$0, double d) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.lastIndicatorAccuracyRadius = Double.valueOf(d);
        Iterator<OnIndicatorAccuracyRadiusChangedListener> it = this$0.onIndicatorAccuracyRadiusChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onIndicatorAccuracyRadiusChanged(d);
        }
    }

    @Override
    public void setLocationProvider(LocationProvider locationProvider) {
        Intrinsics.checkNotNullParameter(locationProvider, "locationProvider");
        LocationProvider locationProvider2 = this.locationProvider;
        if (locationProvider2 != null) {
            locationProvider2.unRegisterLocationConsumer(this);
        }
        this.locationProvider = locationProvider;
        if (this.isLocationComponentActivated) {
            locationProvider.registerLocationConsumer(this);
        }
    }

    @Override
    public LocationProvider getLocationProvider() {
        return this.locationProvider;
    }

    @Override
    public void onStart() {
        activateLocationComponent();
    }

    private final void activateLocationComponent() {
        WeakReference<Context> weakReference;
        MapDelegateProvider mapDelegateProvider;
        if (getInternalSettings().getEnabled()) {
            MapDelegateProvider mapDelegateProvider2 = this.delegateProvider;
            if (mapDelegateProvider2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
                mapDelegateProvider2 = null;
            }
            MapboxStyleManager mapStyleManagerDelegate = mapDelegateProvider2.getMapStyleManagerDelegate();
            LocationPuckManager locationPuckManager = this.locationPuckManager;
            if (locationPuckManager != null && locationPuckManager.isLayerInitialised() && this.isLocationComponentActivated) {
                return;
            }
            if (this.locationPuckManager == null) {
                LocationComponentSettings internalSettings = getInternalSettings();
                WeakReference<Context> weakReference2 = this.weakContext;
                if (weakReference2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("weakContext");
                    weakReference = null;
                } else {
                    weakReference = weakReference2;
                }
                MapDelegateProvider mapDelegateProvider3 = this.delegateProvider;
                if (mapDelegateProvider3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
                    mapDelegateProvider = null;
                } else {
                    mapDelegateProvider = mapDelegateProvider3;
                }
                this.locationPuckManager = new LocationPuckManager(internalSettings, weakReference, mapDelegateProvider, new LocationComponentPositionManager(mapStyleManagerDelegate, getInternalSettings().getLayerAbove(), getInternalSettings().getLayerBelow()), new PuckAnimatorManager(this.indicatorPositionChangedListener, this.indicatorBearingChangedListener, this.indicatorAccuracyRadiusChangedListener, mapStyleManagerDelegate.getPixelRatio()));
            }
            LocationPuckManager locationPuckManager2 = this.locationPuckManager;
            if (locationPuckManager2 != null) {
                locationPuckManager2.initialize(mapStyleManagerDelegate);
            }
            LocationPuckManager locationPuckManager3 = this.locationPuckManager;
            if (locationPuckManager3 != null) {
                locationPuckManager3.onStart();
            }
            LocationProvider locationProvider = this.locationProvider;
            if (locationProvider != null) {
                locationProvider.registerLocationConsumer(this);
            }
            this.isLocationComponentActivated = true;
        }
    }

    @Override
    public void onStop() {
        this.isLocationComponentActivated = false;
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.onStop();
        }
        LocationProvider locationProvider = this.locationProvider;
        if (locationProvider != null) {
            locationProvider.unRegisterLocationConsumer(this);
        }
    }

    private final void deactivateLocationComponent() {
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.cleanUp();
        }
        this.locationPuckManager = null;
        LocationProvider locationProvider = this.locationProvider;
        if (locationProvider != null) {
            locationProvider.unRegisterLocationConsumer(this);
        }
        this.isLocationComponentActivated = false;
    }

    @Override
    public void bind(Context context, AttributeSet attrs, float pixelRatio) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.weakContext = new WeakReference<>(context);
        setInternalSettings(LocationComponentAttributeParser.INSTANCE.parseLocationComponentSettings(context, attrs, pixelRatio));
        if (getInternalSettings().getEnabled() && this.locationProvider == null) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            DefaultLocationProvider defaultLocationProvider = new DefaultLocationProvider(applicationContext);
            updatePuckBearingSettings(defaultLocationProvider, getInternalSettings());
            this.locationProvider = defaultLocationProvider;
        }
    }

    public final void bind$plugin_locationcomponent_release(Context context, AttributeSet attrs, float pixelRatio, LocationProvider locationProvider, LocationPuckManager locationPuckManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(locationProvider, "locationProvider");
        Intrinsics.checkNotNullParameter(locationPuckManager, "locationPuckManager");
        this.weakContext = new WeakReference<>(context);
        setInternalSettings(LocationComponentAttributeParser.INSTANCE.parseLocationComponentSettings(context, attrs, pixelRatio));
        this.locationProvider = locationProvider;
        this.locationPuckManager = locationPuckManager;
    }

    @Override
    public void onLocationUpdated(Point[] location, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(location, "location");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.updateCurrentPosition((Point[]) Arrays.copyOf(location, location.length), options);
        }
    }

    @Override
    public void onBearingUpdated(double[] bearing, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(bearing, "bearing");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            LocationPuckManager.updateCurrentBearing$default(locationPuckManager, Arrays.copyOf(bearing, bearing.length), options, false, 4, null);
        }
    }

    @Override
    public void onHorizontalAccuracyRadiusUpdated(double[] radius, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(radius, "radius");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.updateHorizontalAccuracyRadius(Arrays.copyOf(radius, radius.length), options);
        }
    }

    @Override
    public void onPuckLocationAnimatorDefaultOptionsUpdated(Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(options, "options");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.updateLocationAnimator(options);
        }
    }

    @Override
    public void onPuckBearingAnimatorDefaultOptionsUpdated(Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(options, "options");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.updateBearingAnimator(options);
        }
    }

    @Override
    public void onError(LocationError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.onLocationError(error);
        }
    }

    @Override
    public void onPuckAccuracyRadiusAnimatorDefaultOptionsUpdated(Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(options, "options");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.updateAccuracyRadiusAnimator(options);
        }
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.delegateProvider = delegateProvider;
    }

    @Override
    public void onStyleChanged(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        LocationPuckManager locationPuckManager = this.locationPuckManager;
        if (locationPuckManager != null) {
            locationPuckManager.updateStyle(style);
        }
    }

    @Override
    protected LocationComponentSettings getInternalSettings() {
        LocationComponentSettings locationComponentSettings = this.internalSettings;
        if (locationComponentSettings != null) {
            return locationComponentSettings;
        }
        Intrinsics.throwUninitializedPropertyAccessException("internalSettings");
        return null;
    }

    @Override
    protected void setInternalSettings(LocationComponentSettings locationComponentSettings) {
        Intrinsics.checkNotNullParameter(locationComponentSettings, "<set-?>");
        this.internalSettings = locationComponentSettings;
    }

    @Override
    protected void applySettings() {
        if (getInternalSettings().getEnabled() && !this.isLocationComponentActivated) {
            WeakReference<Context> weakReference = this.weakContext;
            if (weakReference == null) {
                Intrinsics.throwUninitializedPropertyAccessException("weakContext");
                weakReference = null;
            }
            Context context = weakReference.get();
            if (context != null) {
                if (this.locationProvider == null) {
                    this.locationProvider = new DefaultLocationProvider(context);
                }
                activateLocationComponent();
            }
        }
        if (getInternalSettings().getEnabled()) {
            LocationPuckManager locationPuckManager = this.locationPuckManager;
            if (locationPuckManager != null) {
                locationPuckManager.updateSettings(getInternalSettings());
            }
            LocationProvider locationProvider = this.locationProvider;
            DefaultLocationProvider defaultLocationProvider = locationProvider instanceof DefaultLocationProvider ? (DefaultLocationProvider) locationProvider : null;
            if (defaultLocationProvider != null) {
                updatePuckBearingSettings(defaultLocationProvider, getInternalSettings());
                return;
            }
            return;
        }
        deactivateLocationComponent();
    }

    private final void updatePuckBearingSettings(DefaultLocationProvider defaultLocationProvider, LocationComponentSettings locationComponentSettings) {
        PuckBearing puckBearing = locationComponentSettings.getPuckBearing();
        if (!locationComponentSettings.getPuckBearingEnabled()) {
            puckBearing = null;
        }
        defaultLocationProvider.updatePuckBearing(puckBearing);
    }

    public final void bindToAnimatableModel$plugin_locationcomponent_release(AnimatableModel animatableModel) {
        Intrinsics.checkNotNullParameter(animatableModel, "animatableModel");
        MapDelegateProvider mapDelegateProvider = this.delegateProvider;
        if (mapDelegateProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
            mapDelegateProvider = null;
        }
        animatableModel.bindTo$plugin_locationcomponent_release(mapDelegateProvider.getMapFeatureStateDelegate());
    }
}
