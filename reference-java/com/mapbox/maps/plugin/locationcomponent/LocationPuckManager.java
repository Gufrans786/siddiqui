package com.mapbox.maps.plugin.locationcomponent;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.common.location.LocationError;
import com.mapbox.geojson.Point;
import com.mapbox.maps.MapboxLocationComponentException;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.plugin.LocationPuck;
import com.mapbox.maps.plugin.LocationPuck2D;
import com.mapbox.maps.plugin.LocationPuck3D;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.locationcomponent.animators.PuckAnimatorManager;
import com.mapbox.maps.plugin.locationcomponent.generated.LocationComponentSettings;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.DoubleSpreadBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;

@Metadata(d1 = {"\u0000\u008b\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\n*\u0001\u000f\b\u0001\u0018\u0000 ]2\u00020\u0001:\u0001]B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ5\u00108\u001a\u0002012\u0006\u00109\u001a\u00020:2\u001b\b\u0002\u0010;\u001a\u0015\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u000201\u0018\u000100¢\u0006\u0002\b=2\u0006\u0010>\u001a\u00020\u0012H\u0007J\u0006\u0010?\u001a\u000201J\u0010\u0010@\u001a\u00020)2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0006\u0010A\u001a\u000201J\u000e\u0010B\u001a\u0002012\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u00020\u0012J\u000e\u0010F\u001a\u0002012\u0006\u0010G\u001a\u00020HJ\u0006\u0010I\u001a\u000201J\u0006\u0010J\u001a\u000201J\u0010\u0010K\u001a\u0002012\b\b\u0002\u0010>\u001a\u00020\u0012J\u0015\u0010L\u001a\u0002012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001¢\u0006\u0002\bMJ\u001f\u0010N\u001a\u0002012\u0017\u0010O\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020100¢\u0006\u0002\b=J\u001f\u0010P\u001a\u0002012\u0017\u0010O\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020100¢\u0006\u0002\b=J9\u0010Q\u001a\u0002012\n\u00109\u001a\u00020:\"\u00020\u001a2\u001b\b\u0002\u0010;\u001a\u0015\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u000201\u0018\u000100¢\u0006\u0002\b=2\b\b\u0002\u0010>\u001a\u00020\u0012J<\u0010R\u001a\u0002012\u0012\u0010S\u001a\n\u0012\u0006\b\u0001\u0012\u00020\"0T\"\u00020\"2\u001b\b\u0002\u0010;\u001a\u0015\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u000201\u0018\u000100¢\u0006\u0002\b=¢\u0006\u0002\u0010UJ/\u0010V\u001a\u0002012\n\u0010W\u001a\u00020:\"\u00020\u001a2\u001b\b\u0002\u0010;\u001a\u0015\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u000201\u0018\u000100¢\u0006\u0002\b=J\u001f\u0010X\u001a\u0002012\u0017\u0010O\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020100¢\u0006\u0002\b=J\u0015\u0010Y\u001a\u0002012\u0006\u0010W\u001a\u00020\u001aH\u0001¢\u0006\u0002\bZJ\u000e\u0010[\u001a\u0002012\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\\\u001a\u0002012\u0006\u0010C\u001a\u00020DR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010R$\u0010\u0011\u001a\u00020\u00128\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001b\u001a\u00020\u001a8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R&\u0010!\u001a\u0004\u0018\u00010\"8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u0014\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010(\u001a\u00020)8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b*\u0010\u0014\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00103\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006^"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationPuckManager;", "", "settings", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "weakContext", "Ljava/lang/ref/WeakReference;", "Landroid/content/Context;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "positionManager", "Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPositionManager;", "animationManager", "Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckAnimatorManager;", "(Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;Ljava/lang/ref/WeakReference;Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPositionManager;Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckAnimatorManager;)V", "disablePuckAnimationOnEnd", "com/mapbox/maps/plugin/locationcomponent/LocationPuckManager$disablePuckAnimationOnEnd$1", "Lcom/mapbox/maps/plugin/locationcomponent/LocationPuckManager$disablePuckAnimationOnEnd$1;", "isHidden", "", "isHidden$plugin_locationcomponent_release$annotations", "()V", "isHidden$plugin_locationcomponent_release", "()Z", "setHidden$plugin_locationcomponent_release", "(Z)V", "lastAccuracyRadius", "", "lastBearing", "getLastBearing$plugin_locationcomponent_release$annotations", "getLastBearing$plugin_locationcomponent_release", "()D", "setLastBearing$plugin_locationcomponent_release", "(D)V", "lastLocation", "Lcom/mapbox/geojson/Point;", "getLastLocation$plugin_locationcomponent_release$annotations", "getLastLocation$plugin_locationcomponent_release", "()Lcom/mapbox/geojson/Point;", "setLastLocation$plugin_locationcomponent_release", "(Lcom/mapbox/geojson/Point;)V", "locationLayerRenderer", "Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerRenderer;", "getLocationLayerRenderer$plugin_locationcomponent_release$annotations", "getLocationLayerRenderer$plugin_locationcomponent_release", "()Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerRenderer;", "setLocationLayerRenderer$plugin_locationcomponent_release", "(Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerRenderer;)V", "onAccuracyRadiusUpdated", "Lkotlin/Function1;", "", "onBearingUpdated", "onLocationUpdated", "getSettings", "()Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "setSettings", "(Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;)V", "animateToBearing", "bearings", "", "options", "Landroid/animation/ValueAnimator;", "Lkotlin/ExtensionFunctionType;", "forceUpdate", "cleanUp", "getLocationLayerRenderer", "hide", "initialize", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "isLayerInitialised", "onLocationError", "error", "Lcom/mapbox/common/location/LocationError;", "onStart", "onStop", "show", "styleScaling", "styleScaling$plugin_locationcomponent_release", "updateAccuracyRadiusAnimator", "block", "updateBearingAnimator", "updateCurrentBearing", "updateCurrentPosition", "points", "", "([Lcom/mapbox/geojson/Point;Lkotlin/jvm/functions/Function1;)V", "updateHorizontalAccuracyRadius", TSGeofence.FIELD_RADIUS, "updateLocationAnimator", "updateMaxPulsingRadiusToFollowAccuracyRing", "updateMaxPulsingRadiusToFollowAccuracyRing$plugin_locationcomponent_release", "updateSettings", "updateStyle", "Companion", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationPuckManager {

    @Deprecated
    public static final double BEARING_UPDATE_THRESHOLD = 1.0d;
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String TAG = "LocationPuckManager";
    private final PuckAnimatorManager animationManager;
    private final MapDelegateProvider delegateProvider;
    private final LocationPuckManager$disablePuckAnimationOnEnd$1 disablePuckAnimationOnEnd;
    private boolean isHidden;
    private double lastAccuracyRadius;
    private double lastBearing;
    private Point lastLocation;
    private LocationLayerRenderer locationLayerRenderer;
    private final Function1<Double, Unit> onAccuracyRadiusUpdated;
    private final Function1<Double, Unit> onBearingUpdated;
    private final Function1<Point, Unit> onLocationUpdated;
    private final LocationComponentPositionManager positionManager;
    private LocationComponentSettings settings;
    private final WeakReference<Context> weakContext;

    public static void getLastBearing$plugin_locationcomponent_release$annotations() {
    }

    public static void getLastLocation$plugin_locationcomponent_release$annotations() {
    }

    public static void getLocationLayerRenderer$plugin_locationcomponent_release$annotations() {
    }

    public static void isHidden$plugin_locationcomponent_release$annotations() {
    }

    public LocationPuckManager(LocationComponentSettings settings, WeakReference<Context> weakContext, MapDelegateProvider delegateProvider, LocationComponentPositionManager positionManager, PuckAnimatorManager animationManager) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(weakContext, "weakContext");
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        Intrinsics.checkNotNullParameter(positionManager, "positionManager");
        Intrinsics.checkNotNullParameter(animationManager, "animationManager");
        this.settings = settings;
        this.weakContext = weakContext;
        this.delegateProvider = delegateProvider;
        this.positionManager = positionManager;
        this.animationManager = animationManager;
        this.isHidden = true;
        this.onLocationUpdated = new Function1<Point, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Point point) {
                invoke2(point);
                return Unit.INSTANCE;
            }

            public final void invoke2(Point it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.this$0.setLastLocation$plugin_locationcomponent_release(it);
            }
        };
        this.lastBearing = delegateProvider.getMapCameraManagerDelegate().getCameraState().getBearing();
        this.onBearingUpdated = new Function1<Double, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Double d) {
                invoke(d.doubleValue());
                return Unit.INSTANCE;
            }

            public final void invoke(double d) {
                this.this$0.setLastBearing$plugin_locationcomponent_release(d);
            }
        };
        this.disablePuckAnimationOnEnd = new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                this.this$0.animationManager.setPuckAnimationEnabled$plugin_locationcomponent_release(false);
                animation.removeListener(this);
            }
        };
        this.onAccuracyRadiusUpdated = new Function1<Double, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Double d) {
                invoke(d.doubleValue());
                return Unit.INSTANCE;
            }

            public final void invoke(double d) {
                this.this$0.lastAccuracyRadius = d;
            }
        };
        this.locationLayerRenderer = getLocationLayerRenderer(this.settings);
    }

    public final LocationComponentSettings getSettings() {
        return this.settings;
    }

    public final void setSettings(LocationComponentSettings locationComponentSettings) {
        Intrinsics.checkNotNullParameter(locationComponentSettings, "<set-?>");
        this.settings = locationComponentSettings;
    }

    public final boolean getIsHidden() {
        return this.isHidden;
    }

    public final void setHidden$plugin_locationcomponent_release(boolean z) {
        this.isHidden = z;
    }

    public final Point getLastLocation() {
        return this.lastLocation;
    }

    public final void setLastLocation$plugin_locationcomponent_release(Point point) {
        this.lastLocation = point;
    }

    public final double getLastBearing() {
        return this.lastBearing;
    }

    public final void setLastBearing$plugin_locationcomponent_release(double d) {
        this.lastBearing = d;
    }

    public final LocationLayerRenderer getLocationLayerRenderer() {
        return this.locationLayerRenderer;
    }

    public final void setLocationLayerRenderer$plugin_locationcomponent_release(LocationLayerRenderer locationLayerRenderer) {
        Intrinsics.checkNotNullParameter(locationLayerRenderer, "<set-?>");
        this.locationLayerRenderer = locationLayerRenderer;
    }

    private final LocationLayerRenderer getLocationLayerRenderer(LocationComponentSettings settings) {
        LocationPuck locationPuck = settings.getLocationPuck();
        if (locationPuck instanceof LocationPuck2D) {
            return LayerSourceProvider.INSTANCE.getLocationIndicatorLayerRenderer((LocationPuck2D) locationPuck, this.weakContext);
        }
        if (locationPuck instanceof LocationPuck3D) {
            return LayerSourceProvider.INSTANCE.getModelLayerRenderer((LocationPuck3D) locationPuck);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void updateStyle(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.locationLayerRenderer.updateStyle(style);
        this.positionManager.updateStyle(style);
    }

    public final void initialize(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        if (this.locationLayerRenderer.isRendererInitialised()) {
            return;
        }
        this.animationManager.setUpdateListeners(this.onLocationUpdated, this.onBearingUpdated, this.onAccuracyRadiusUpdated);
        this.animationManager.setLocationLayerRenderer(this.locationLayerRenderer);
        this.animationManager.applySettings(this.settings);
        Point point = this.lastLocation;
        if (point != null) {
            updateCurrentPosition$default(this, new Point[]{point}, null, 2, null);
        }
        updateCurrentBearing$default(this, new double[]{this.lastBearing}, null, true, 2, null);
        this.locationLayerRenderer.addLayers(this.positionManager);
        this.locationLayerRenderer.initializeComponents(style);
        styleScaling$plugin_locationcomponent_release(this.settings);
        if (this.lastLocation != null && this.settings.getEnabled()) {
            show(true);
        } else {
            hide();
        }
        if (this.settings.getShowAccuracyRing()) {
            updateHorizontalAccuracyRadius$default(this, new double[]{this.lastAccuracyRadius}, null, 2, null);
        }
    }

    public final void cleanUp() {
        hide();
        this.animationManager.onStop();
        this.locationLayerRenderer.clearBitmaps();
        this.locationLayerRenderer.removeLayers();
    }

    public final boolean isLayerInitialised() {
        return this.locationLayerRenderer.isRendererInitialised();
    }

    public final void updateSettings(LocationComponentSettings settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.settings = settings;
        this.positionManager.setLayerAbove$plugin_locationcomponent_release(settings.getLayerAbove());
        this.positionManager.setLayerBelow$plugin_locationcomponent_release(settings.getLayerBelow());
        this.locationLayerRenderer.clearBitmaps();
        this.locationLayerRenderer.removeLayers();
        LocationLayerRenderer locationLayerRenderer = getLocationLayerRenderer(settings);
        this.locationLayerRenderer = locationLayerRenderer;
        locationLayerRenderer.slot(settings.getSlot());
        initialize(this.delegateProvider.getMapStyleManagerDelegate());
    }

    public final void onStart() {
        this.animationManager.onStart();
    }

    public final void onStop() {
        this.animationManager.onStop();
    }

    public static void updateCurrentPosition$default(LocationPuckManager locationPuckManager, Point[] pointArr, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        locationPuckManager.updateCurrentPosition(pointArr, function1);
    }

    public final void updateCurrentPosition(Point[] points, Function1<? super ValueAnimator, Unit> options) {
        Point[] pointArr;
        Intrinsics.checkNotNullParameter(points, "points");
        if (this.settings.getEnabled()) {
            show$default(this, false, 1, null);
        }
        Point point = this.lastLocation;
        if (point != null) {
            SpreadBuilder spreadBuilder = new SpreadBuilder(2);
            spreadBuilder.add(point);
            spreadBuilder.addSpread(points);
            pointArr = (Point[]) spreadBuilder.toArray(new Point[spreadBuilder.size()]);
            if (pointArr == null) {
                SpreadBuilder spreadBuilder2 = new SpreadBuilder(2);
                spreadBuilder2.addSpread(points);
                spreadBuilder2.addSpread(points);
                pointArr = (Point[]) spreadBuilder2.toArray(new Point[spreadBuilder2.size()]);
            }
        } else {
            SpreadBuilder spreadBuilder3 = new SpreadBuilder(2);
            spreadBuilder3.addSpread(points);
            spreadBuilder3.addSpread(points);
            pointArr = (Point[]) spreadBuilder3.toArray(new Point[spreadBuilder3.size()]);
        }
        this.animationManager.animatePosition((Point[]) Arrays.copyOf(pointArr, pointArr.length), options);
    }

    public static void updateCurrentBearing$default(LocationPuckManager locationPuckManager, double[] dArr, Function1 function1, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        locationPuckManager.updateCurrentBearing(dArr, function1, z);
    }

    public final void updateCurrentBearing(double[] bearings, Function1<? super ValueAnimator, Unit> options, boolean forceUpdate) {
        Intrinsics.checkNotNullParameter(bearings, "bearings");
        if (this.settings.getPuckBearingEnabled()) {
            this.animationManager.setPuckAnimationEnabled$plugin_locationcomponent_release(true);
            animateToBearing(bearings, options, forceUpdate);
        } else if (this.animationManager.getPuckAnimationEnabled$plugin_locationcomponent_release()) {
            animateToBearing(new double[]{0.0d}, new Function1<ValueAnimator, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(ValueAnimator valueAnimator) {
                    invoke2(valueAnimator);
                    return Unit.INSTANCE;
                }

                public final void invoke2(ValueAnimator animateToBearing) {
                    Intrinsics.checkNotNullParameter(animateToBearing, "$this$animateToBearing");
                    animateToBearing.setDuration(0L);
                    animateToBearing.addListener(LocationPuckManager.this.disablePuckAnimationOnEnd);
                }
            }, forceUpdate);
        }
    }

    public static void animateToBearing$default(LocationPuckManager locationPuckManager, double[] dArr, Function1 function1, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        locationPuckManager.animateToBearing(dArr, function1, z);
    }

    public final void animateToBearing(double[] bearings, Function1<? super ValueAnimator, Unit> options, boolean forceUpdate) {
        Intrinsics.checkNotNullParameter(bearings, "bearings");
        if (forceUpdate || Math.abs(ArraysKt.last(bearings) - this.lastBearing) >= 1.0d) {
            DoubleSpreadBuilder doubleSpreadBuilder = new DoubleSpreadBuilder(2);
            doubleSpreadBuilder.add(this.lastBearing);
            doubleSpreadBuilder.addSpread(bearings);
            double[] array = doubleSpreadBuilder.toArray();
            this.animationManager.animateBearing(Arrays.copyOf(array, array.length), options);
        }
    }

    public static void updateHorizontalAccuracyRadius$default(LocationPuckManager locationPuckManager, double[] dArr, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        locationPuckManager.updateHorizontalAccuracyRadius(dArr, function1);
    }

    public final void updateHorizontalAccuracyRadius(double[] radius, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(radius, "radius");
        DoubleSpreadBuilder doubleSpreadBuilder = new DoubleSpreadBuilder(2);
        doubleSpreadBuilder.add(this.lastAccuracyRadius);
        doubleSpreadBuilder.addSpread(radius);
        double[] array = doubleSpreadBuilder.toArray();
        this.animationManager.animateAccuracyRadius(Arrays.copyOf(array, array.length), options);
        updateMaxPulsingRadiusToFollowAccuracyRing$plugin_locationcomponent_release(ArraysKt.last(radius));
    }

    public final void updateMaxPulsingRadiusToFollowAccuracyRing$plugin_locationcomponent_release(double radius) {
        if (((int) this.settings.getPulsingMaxRadius()) == -1) {
            this.animationManager.updatePulsingRadius(radius / this.delegateProvider.getMapProjectionDelegate().getMetersPerPixelAtLatitude(this.delegateProvider.getMapCameraManagerDelegate().getCameraState().getCenter().latitude(), this.delegateProvider.getMapCameraManagerDelegate().getCameraState().getZoom()), this.settings);
        }
    }

    public final void updateLocationAnimator(Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.animationManager.updatePositionAnimator(block);
    }

    public final void updateBearingAnimator(Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.animationManager.updateBearingAnimator(block);
    }

    public final void updateAccuracyRadiusAnimator(Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.animationManager.updateAccuracyRadiusAnimator(block);
    }

    public final void onLocationError(LocationError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        MapboxLogger.logW(TAG, "Location error: " + error);
    }

    public static void show$default(LocationPuckManager locationPuckManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        locationPuckManager.show(z);
    }

    public final void show(boolean forceUpdate) {
        if (forceUpdate || this.isHidden) {
            this.isHidden = false;
            this.locationLayerRenderer.show();
        }
    }

    public final void hide() {
        this.isHidden = true;
        this.locationLayerRenderer.hide();
    }

    public final void styleScaling$plugin_locationcomponent_release(LocationComponentSettings settings) {
        String modelScaleExpression;
        Intrinsics.checkNotNullParameter(settings, "settings");
        LocationPuck locationPuck = settings.getLocationPuck();
        if (locationPuck instanceof LocationPuck2D) {
            modelScaleExpression = ((LocationPuck2D) locationPuck).getScaleExpression();
        } else if (locationPuck instanceof LocationPuck3D) {
            modelScaleExpression = ((LocationPuck3D) locationPuck).getModelScaleExpression();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        if (modelScaleExpression != null) {
            LocationLayerRenderer locationLayerRenderer = this.locationLayerRenderer;
            Expected<String, Value> expectedFromJson = Value.fromJson(modelScaleExpression);
            Intrinsics.checkNotNullExpressionValue(expectedFromJson, "fromJson(it)");
            String error = expectedFromJson.getError();
            if (error != null) {
                throw new MapboxLocationComponentException(error);
            }
            Value value = expectedFromJson.getValue();
            if (value != null) {
                Intrinsics.checkNotNullExpressionValue(value, "fromJson(it).take()");
                locationLayerRenderer.styleScaling(value);
                return;
            }
            throw new MapboxLocationComponentException("Error in parsing expression.");
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationPuckManager$Companion;", "", "()V", "BEARING_UPDATE_THRESHOLD", "", "TAG", "", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
