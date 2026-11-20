package com.rnmapbox.rnmbx.components.camera;

import android.animation.Animator;
import android.content.Context;
import android.location.Location;
import android.util.DisplayMetrics;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraBoundsOptions;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.ExtensionUtils;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.Style;
import com.mapbox.maps.plugin.PuckBearing;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentPlugin;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentUtils;
import com.mapbox.maps.plugin.locationcomponent.LocationProvider;
import com.mapbox.maps.plugin.viewport.ViewportPlugin;
import com.mapbox.maps.plugin.viewport.ViewportStatus;
import com.mapbox.maps.plugin.viewport.ViewportStatusObserver;
import com.mapbox.maps.plugin.viewport.ViewportUtils;
import com.mapbox.maps.plugin.viewport.data.FollowPuckViewportStateBearing;
import com.mapbox.maps.plugin.viewport.data.FollowPuckViewportStateOptions;
import com.mapbox.maps.plugin.viewport.data.ViewportStatusChangeReason;
import com.mapbox.maps.plugin.viewport.state.FollowPuckViewportState;
import com.mapbox.maps.plugin.viewport.state.OverviewViewportState;
import com.mapbox.maps.plugin.viewport.state.ViewportState;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.location.LocationComponentManager;
import com.rnmapbox.rnmbx.components.location.UserLocation;
import com.rnmapbox.rnmbx.components.location.UserTrackingMode;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.events.MapUserTrackingModeEvent;
import com.rnmapbox.rnmbx.location.LocationManager;
import com.rnmapbox.rnmbx.utils.LatLngBounds;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.WriteableMapArrayOfKt;
import com.rnmapbox.rnmbx.v11compat.location.LocationKt;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import io.reactivex.annotations.SchedulerSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0084\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016J\u0018\u0010<\u001a\u00020\t2\u0006\u0010:\u001a\u00020;2\u0006\u0010=\u001a\u00020>H\u0016J\u000e\u0010?\u001a\u0002092\u0006\u0010@\u001a\u00020\u0010J\u000e\u0010A\u001a\u0002092\u0006\u0010B\u001a\u00020CJ\u0010\u0010D\u001a\u0002092\b\u0010@\u001a\u0004\u0018\u00010\u0010J\u0010\u0010E\u001a\u0002092\b\u0010F\u001a\u0004\u0018\u00010$J\u0015\u0010G\u001a\u0002092\b\u0010H\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010IJ\u0015\u0010J\u001a\u0002092\b\u0010K\u001a\u0004\u0018\u00010!¢\u0006\u0002\u0010LJ\u0015\u0010M\u001a\u0002092\b\u0010N\u001a\u0004\u0018\u00010!¢\u0006\u0002\u0010LJ\u0015\u0010O\u001a\u0002092\b\u0010P\u001a\u0004\u0018\u00010!¢\u0006\u0002\u0010LJ\u000e\u0010Q\u001a\u0002092\u0006\u0010R\u001a\u00020CJ\u0010\u0010S\u001a\u0002092\b\u0010T\u001a\u0004\u0018\u00010/J\u0010\u0010U\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0002J\u0010\u0010V\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0002J\u0018\u0010W\u001a\u0002092\u0006\u0010X\u001a\u00020\u00102\u0006\u0010:\u001a\u00020;H\u0002J\u0010\u0010Y\u001a\u0002092\u0006\u0010Z\u001a\u00020\tH\u0002J\b\u0010^\u001a\u00020\tH\u0002J\u0010\u0010_\u001a\u0002092\u0006\u0010`\u001a\u00020aH\u0002J\u0015\u0010b\u001a\u0002092\b\u0010K\u001a\u0004\u0018\u00010!¢\u0006\u0002\u0010LJ\u0015\u0010c\u001a\u0002092\b\u0010K\u001a\u0004\u0018\u00010!¢\u0006\u0002\u0010LJ\u000e\u0010d\u001a\u0002092\u0006\u0010K\u001a\u00020!J\u0018\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020\tH\u0002J\u0010\u0010j\u001a\u0002092\u0006\u0010i\u001a\u00020\tH\u0002J\u000e\u0010k\u001a\u0002092\u0006\u0010l\u001a\u00020\u0017J\u000e\u0010m\u001a\u00020\t2\u0006\u0010n\u001a\u00020oJ\u0010\u0010p\u001a\u0004\u0018\u00010$2\u0006\u0010q\u001a\u00020rJ\u0010\u0010p\u001a\u0004\u0018\u00010$2\u0006\u0010s\u001a\u00020oJ\u000e\u0010t\u001a\u00020\u00172\u0006\u0010q\u001a\u00020rJ\u000e\u0010t\u001a\u00020\u00172\u0006\u0010s\u001a\u00020oJ\u000e\u0010u\u001a\u00020C2\u0006\u0010s\u001a\u00020oJ\u000e\u0010v\u001a\u0002092\u0006\u0010:\u001a\u00020wJ\u000e\u0010x\u001a\u00020$2\u0006\u0010=\u001a\u00020yJ\u0006\u0010z\u001a\u000209J\b\u0010{\u001a\u000209H\u0002J\u0014\u0010\u0080\u0001\u001a\u00030\u0081\u00012\b\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\tX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0004\n\u0002\u0010&R\u0012\u0010'\u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0004\n\u0002\u0010&R\u0012\u0010(\u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0004\n\u0002\u0010&R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0004\n\u0002\u0010&R\u0012\u0010-\u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0004\n\u0002\u0010&R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u00100\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u000e\u00106\u001a\u000207X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010[\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010]R\u0013\u0010|\u001a\u0004\u0018\u00010}8F¢\u0006\u0006\u001a\u0004\b~\u0010\u007f¨\u0006\u0085\u0001"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "mContext", "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/camera/RNMBXCameraManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/camera/RNMBXCameraManager;)V", "requiresStyleLoad", "", "getRequiresStyleLoad", "()Z", "setRequiresStyleLoad", "(Z)V", "hasSentFirstRegion", "mDefaultStop", "Lcom/rnmapbox/rnmbx/components/camera/CameraStop;", "mCameraStop", "mCameraUpdateQueue", "Lcom/rnmapbox/rnmbx/components/camera/CameraUpdateQueue;", "mLocationComponentManager", "Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;", "mUserTrackingMode", "", "mUserTrackingState", "mLocationManager", "Lcom/rnmapbox/rnmbx/location/LocationManager;", "mUserLocation", "Lcom/rnmapbox/rnmbx/components/location/UserLocation;", "mCenterCoordinate", "Lcom/mapbox/maps/ScreenCoordinate;", "mAnimated", "mHeading", "", "mFollowUserLocation", "mFollowUserMode", "", "mFollowZoomLevel", "Ljava/lang/Double;", "mFollowPitch", "mFollowHeading", "mFollowPadding", "Lcom/mapbox/maps/EdgeInsets;", "mZoomLevel", "mMinZoomLevel", "mMaxZoomLevel", "mMaxBounds", "Lcom/rnmapbox/rnmbx/utils/LatLngBounds;", "ts", "getTs", "()Ljava/lang/Integer;", "setTs", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "mCameraCallback", "Landroid/animation/Animator$AnimatorListener;", "addToMap", "", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "setStop", "stop", "updateCameraStop", "map", "Lcom/facebook/react/bridge/ReadableMap;", "setDefaultStop", "setFollowUserMode", "mode", "setFollowUserLocation", "value", "(Ljava/lang/Boolean;)V", "setFollowZoomLevel", "zoomLevel", "(Ljava/lang/Double;)V", "setFollowPitch", "pitch", "setFollowHeading", "heading", "setFollowPadding", ViewProps.PADDING, "setMaxBounds", "bounds", "updateMaxBounds", "setInitialCamera", "updateCamera", "cameraStop", "updateUserLocation", "isAnimated", "directionForUserLocationUpdate", "getDirectionForUserLocationUpdate", "()D", "hasSetCenterCoordinate", "updateLocationLayer", "style", "Lcom/mapbox/maps/Style;", "setMinZoomLevel", "setMaxZoomLevel", "setZoomLevel", "buildCamera", "Lcom/mapbox/maps/CameraOptions;", "previousPosition", "Lcom/mapbox/maps/CameraState;", "shouldUpdateTarget", "updateCameraPositionIfNeeded", "setUserTrackingMode", "userTrackingMode", "toFollowUserLocation", "toStatus", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", "toFollowUserMode", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "status", "toUserTrackingMode", "toReadableMap", "_observeViewportState", "Lcom/mapbox/maps/MapView;", "toString", "Lcom/mapbox/maps/plugin/viewport/data/ViewportStatusChangeReason;", "_updateViewportState", "updatedFollowUserMode", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "getMapboxMap", "()Lcom/mapbox/maps/MapboxMap;", "makeLocationChangePayload", "Lcom/facebook/react/bridge/WritableMap;", "location", "Landroid/location/Location;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCamera extends AbstractMapFeature {
    public static final String LOG_TAG = "RNMBXCamera";
    public static final int USER_LOCATION_CAMERA_MOVE_DURATION = 1000;
    public static final boolean defaultFollowUserLocation = false;
    public static final double defaultZoomLevelForUserTracking = 14.0d;
    public static final double minimumZoomLevelForUserTracking = 10.5d;
    private boolean hasSentFirstRegion;
    private final boolean mAnimated;
    private final Animator.AnimatorListener mCameraCallback;
    private CameraStop mCameraStop;
    private final CameraUpdateQueue mCameraUpdateQueue;
    private final ScreenCoordinate mCenterCoordinate;
    private final Context mContext;
    private CameraStop mDefaultStop;
    private Double mFollowHeading;
    private EdgeInsets mFollowPadding;
    private Double mFollowPitch;
    private boolean mFollowUserLocation;
    private String mFollowUserMode;
    private Double mFollowZoomLevel;
    private final double mHeading;
    private LocationComponentManager mLocationComponentManager;
    private final LocationManager mLocationManager;
    private final RNMBXCameraManager mManager;
    private LatLngBounds mMaxBounds;
    private Double mMaxZoomLevel;
    private Double mMinZoomLevel;
    private final UserLocation mUserLocation;
    private int mUserTrackingMode;
    private int mUserTrackingState;
    private double mZoomLevel;
    private boolean requiresStyleLoad;
    private Integer ts;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PuckBearing.values().length];
            try {
                iArr[PuckBearing.HEADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PuckBearing.COURSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void updateUserLocation(boolean isAnimated) {
    }

    public RNMBXCamera(Context mContext, RNMBXCameraManager mManager) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mContext = mContext;
        this.mManager = mManager;
        this.mCameraUpdateQueue = new CameraUpdateQueue();
        this.mUserLocation = new UserLocation();
        this.mZoomLevel = -1.0d;
        this.mCameraCallback = new Animator.AnimatorListener() {
            @Override
            public void onAnimationRepeat(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                if (this.this$0.hasSentFirstRegion) {
                    return;
                }
                RNMBXMapView mMapView = this.this$0.getMMapView();
                if (mMapView != null) {
                    mMapView.sendRegionChangeEvent(false);
                }
                this.this$0.hasSentFirstRegion = true;
            }

            @Override
            public void onAnimationCancel(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                if (this.this$0.hasSentFirstRegion) {
                    return;
                }
                RNMBXMapView mMapView = this.this$0.getMMapView();
                if (mMapView != null) {
                    mMapView.sendRegionChangeEvent(false);
                }
                this.this$0.hasSentFirstRegion = true;
            }
        };
        this.mLocationManager = LocationManager.INSTANCE.getInstance(mContext);
    }

    @Override
    public boolean getRequiresStyleLoad() {
        return this.requiresStyleLoad;
    }

    @Override
    public void setRequiresStyleLoad(boolean z) {
        this.requiresStyleLoad = z;
    }

    public final Integer getTs() {
        return this.ts;
    }

    public final void setTs(Integer num) {
        this.ts = num;
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        mapView.callIfAttachedToWindow(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXCamera.addToMap$lambda$2(this.f$0);
            }
        });
        _observeViewportState(mapView.getMapView());
        _updateViewportState();
    }

    public static final Unit addToMap$lambda$2(final RNMBXCamera rNMBXCamera) {
        rNMBXCamera.withMapView$rnmapbox_maps_release(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCamera.addToMap$lambda$2$lambda$1(this.f$0, (RNMBXMapView) obj);
            }
        });
        return Unit.INSTANCE;
    }

    public static final Unit addToMap$lambda$2$lambda$1(RNMBXCamera rNMBXCamera, RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        rNMBXCamera.setInitialCamera(mapView);
        rNMBXCamera.updateMaxBounds(mapView);
        CameraStop cameraStop = rNMBXCamera.mCameraStop;
        if (cameraStop != null) {
            rNMBXCamera.updateCamera(cameraStop, mapView);
        }
        return Unit.INSTANCE;
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (reason == RemovalReason.STYLE_CHANGE) {
            return false;
        }
        return super.removeFromMap(mapView, reason);
    }

    public final void setStop(final CameraStop stop) {
        Intrinsics.checkNotNullParameter(stop, "stop");
        this.mCameraStop = stop;
        stop.setCallback(this.mCameraCallback);
        withMapView$rnmapbox_maps_release(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCamera.setStop$lambda$4(stop, this, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit setStop$lambda$4(CameraStop cameraStop, RNMBXCamera rNMBXCamera, RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        rNMBXCamera.updateCamera(cameraStop, mapView);
        return Unit.INSTANCE;
    }

    public final void updateCameraStop(ReadableMap map) {
        Intrinsics.checkNotNullParameter(map, "map");
        setStop(CameraStop.INSTANCE.fromReadableMap(this.mContext, map, null));
    }

    public final void setDefaultStop(CameraStop stop) {
        this.mDefaultStop = stop;
    }

    public final void setFollowUserMode(String mode) {
        this.mFollowUserMode = mode;
        _updateViewportState();
    }

    public final void setFollowUserLocation(Boolean value) {
        this.mFollowUserLocation = value != null ? value.booleanValue() : false;
        _updateViewportState();
    }

    public final void setFollowZoomLevel(Double zoomLevel) {
        this.mFollowZoomLevel = zoomLevel;
        _updateViewportState();
    }

    public final void setFollowPitch(Double pitch) {
        this.mFollowPitch = pitch;
        _updateViewportState();
    }

    public final void setFollowHeading(Double heading) {
        this.mFollowHeading = heading;
        _updateViewportState();
    }

    public final void setFollowPadding(ReadableMap padding) {
        Intrinsics.checkNotNullParameter(padding, "padding");
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.mFollowPadding = new EdgeInsets(padding.hasKey(ViewProps.PADDING_TOP) ? padding.getDouble(ViewProps.PADDING_TOP) * ((double) displayMetrics.density) : 0.0d, padding.hasKey(ViewProps.PADDING_LEFT) ? padding.getDouble(ViewProps.PADDING_LEFT) * ((double) displayMetrics.density) : 0.0d, padding.hasKey(ViewProps.PADDING_BOTTOM) ? padding.getDouble(ViewProps.PADDING_BOTTOM) * ((double) displayMetrics.density) : 0.0d, padding.hasKey(ViewProps.PADDING_RIGHT) ? padding.getDouble(ViewProps.PADDING_RIGHT) * ((double) displayMetrics.density) : 0.0d);
        _updateViewportState();
    }

    public final void setMaxBounds(LatLngBounds bounds) {
        this.mMaxBounds = bounds;
        withMapView$rnmapbox_maps_release(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCamera.setMaxBounds$lambda$5(this.f$0, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit setMaxBounds$lambda$5(RNMBXCamera rNMBXCamera, RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        rNMBXCamera.updateMaxBounds(mapView);
        return Unit.INSTANCE;
    }

    private final void updateMaxBounds(RNMBXMapView mapView) {
        MapboxMap mapboxMap = mapView.getMapboxMap();
        CameraBoundsOptions.Builder builder = new CameraBoundsOptions.Builder();
        LatLngBounds latLngBounds = this.mMaxBounds;
        builder.bounds(latLngBounds != null ? latLngBounds.toBounds() : null);
        Double d = this.mMinZoomLevel;
        builder.minZoom(Double.valueOf(d != null ? d.doubleValue() : 0.0d));
        Double d2 = this.mMaxZoomLevel;
        builder.maxZoom(Double.valueOf(d2 != null ? d2.doubleValue() : 25.0d));
        CameraBoundsOptions cameraBoundsOptionsBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(cameraBoundsOptionsBuild, "build(...)");
        mapboxMap.setBounds(cameraBoundsOptionsBuild);
        CameraStop cameraStop = this.mCameraStop;
        if (cameraStop != null) {
            updateCamera(cameraStop, mapView);
        }
    }

    private final void setInitialCamera(RNMBXMapView mapView) {
        CameraStop cameraStop = this.mDefaultStop;
        if (cameraStop != null) {
            mapView.getMapboxMap();
            cameraStop.setDuration(0);
            cameraStop.setMode(5);
            cameraStop.toCameraUpdate(mapView).run();
        }
    }

    private final void updateCamera(CameraStop cameraStop, RNMBXMapView mapView) {
        this.mCameraUpdateQueue.offer(cameraStop);
        this.mCameraUpdateQueue.execute(mapView);
    }

    private final double getDirectionForUserLocationUpdate() {
        RNMBXMapView mMapView = getMMapView();
        Intrinsics.checkNotNull(mMapView);
        double bearing = mMapView.getMapboxMap().getCameraState().getBearing();
        int trackingMode = this.mUserLocation.getTrackingMode();
        if (trackingMode == 3 || trackingMode == 2) {
            return this.mUserLocation.getBearing();
        }
        double d = this.mHeading;
        return d == 0.0d ? bearing : d;
    }

    private final boolean hasSetCenterCoordinate() {
        MapboxMap mapboxMap = getMapboxMap();
        Intrinsics.checkNotNull(mapboxMap);
        Point center = mapboxMap.getCameraState().getCenter();
        Intrinsics.checkNotNullExpressionValue(center, "getCenter(...)");
        return (center.latitude() == 0.0d || center.longitude() == 0.0d) ? false : true;
    }

    private final void updateLocationLayer(Style style) {
        if (this.mLocationComponentManager == null) {
            RNMBXMapView mMapView = getMMapView();
            Intrinsics.checkNotNull(mMapView);
            this.mLocationComponentManager = mMapView.getLocationComponentManager();
        }
        LocationComponentManager locationComponentManager = this.mLocationComponentManager;
        Intrinsics.checkNotNull(locationComponentManager);
        locationComponentManager.update();
    }

    public final void setMinZoomLevel(Double zoomLevel) {
        this.mMinZoomLevel = zoomLevel;
        withMapView$rnmapbox_maps_release(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCamera.setMinZoomLevel$lambda$8(this.f$0, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit setMinZoomLevel$lambda$8(RNMBXCamera rNMBXCamera, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        rNMBXCamera.updateMaxBounds(it);
        return Unit.INSTANCE;
    }

    public final void setMaxZoomLevel(Double zoomLevel) {
        this.mMaxZoomLevel = zoomLevel;
        withMapView$rnmapbox_maps_release(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCamera.setMaxZoomLevel$lambda$9(this.f$0, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit setMaxZoomLevel$lambda$9(RNMBXCamera rNMBXCamera, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        rNMBXCamera.updateMaxBounds(it);
        return Unit.INSTANCE;
    }

    public final void setZoomLevel(double zoomLevel) {
        this.mZoomLevel = zoomLevel;
        updateCameraPositionIfNeeded(false);
    }

    private final CameraOptions buildCamera(CameraState previousPosition, boolean shouldUpdateTarget) {
        if (shouldUpdateTarget) {
            return ExtensionUtils.toCameraOptions(previousPosition, this.mCenterCoordinate);
        }
        return ExtensionUtils.toCameraOptions(previousPosition, null);
    }

    private final void updateCameraPositionIfNeeded(boolean shouldUpdateTarget) {
        if (getMMapView() != null) {
            MapboxMap mapboxMap = getMapboxMap();
            Intrinsics.checkNotNull(mapboxMap);
            CameraOptions cameraOptionsBuildCamera = buildCamera(mapboxMap.getCameraState(), shouldUpdateTarget);
            if (this.mAnimated) {
                MapboxMap mapboxMap2 = getMapboxMap();
                Intrinsics.checkNotNull(mapboxMap2);
                CameraAnimationsUtils.flyTo$default(mapboxMap2, cameraOptionsBuildCamera, null, null, 4, null);
            } else {
                MapboxMap mapboxMap3 = getMapboxMap();
                Intrinsics.checkNotNull(mapboxMap3);
                mapboxMap3.setCamera(cameraOptionsBuildCamera);
            }
        }
    }

    public final void setUserTrackingMode(int userTrackingMode) {
        int i = this.mUserTrackingMode;
        this.mUserTrackingMode = userTrackingMode;
        this.mManager.handleEvent(new MapUserTrackingModeEvent(this, userTrackingMode, null, 4, null));
        int i2 = this.mUserTrackingMode;
        if (i2 == 0) {
            this.mUserTrackingState = 0;
        } else if ((i2 == 1 || i2 == 2 || i2 == 3) && i == 0) {
            this.mUserTrackingState = 0;
        }
        if (getMapboxMap() != null) {
            MapboxMap mapboxMap = getMapboxMap();
            Intrinsics.checkNotNull(mapboxMap);
            Style styleDeprecated = mapboxMap.getStyleDeprecated();
            Intrinsics.checkNotNull(styleDeprecated);
            updateLocationLayer(styleDeprecated);
        }
    }

    public final boolean toFollowUserLocation(ViewportStatus toStatus) {
        Intrinsics.checkNotNullParameter(toStatus, "toStatus");
        if (Intrinsics.areEqual(toStatus, ViewportStatus.Idle.INSTANCE)) {
            return false;
        }
        if ((toStatus instanceof ViewportStatus.State) || (toStatus instanceof ViewportStatus.Transition)) {
            return true;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final String toFollowUserMode(ViewportState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (state instanceof FollowPuckViewportState) {
            FollowPuckViewportState followPuckViewportState = (FollowPuckViewportState) state;
            FollowPuckViewportStateBearing bearing = followPuckViewportState.getOptions().getBearing();
            if (bearing instanceof FollowPuckViewportStateBearing.SyncWithLocationPuck) {
                return "normal";
            }
            if (bearing instanceof FollowPuckViewportStateBearing.Constant) {
                return "constant";
            }
            Logger.INSTANCE.w("RNMBXCamera", "Unexpected bearing: " + followPuckViewportState.getOptions().getBearing());
            return "normal";
        }
        if (state instanceof OverviewViewportState) {
            return "overview";
        }
        return SchedulerSupport.CUSTOM;
    }

    public final String toFollowUserMode(ViewportStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        if (Intrinsics.areEqual(status, ViewportStatus.Idle.INSTANCE)) {
            return null;
        }
        if (status instanceof ViewportStatus.State) {
            return toFollowUserMode(((ViewportStatus.State) status).getState());
        }
        if (!(status instanceof ViewportStatus.Transition)) {
            throw new NoWhenBranchMatchedException();
        }
        return toFollowUserMode(((ViewportStatus.Transition) status).getToState());
    }

    public final int toUserTrackingMode(ViewportState state) {
        MapView mapView;
        Intrinsics.checkNotNullParameter(state, "state");
        if (state instanceof FollowPuckViewportState) {
            FollowPuckViewportState followPuckViewportState = (FollowPuckViewportState) state;
            FollowPuckViewportStateBearing bearing = followPuckViewportState.getOptions().getBearing();
            if (bearing instanceof FollowPuckViewportStateBearing.SyncWithLocationPuck) {
                RNMBXMapView mMapView = getMMapView();
                LocationComponentPlugin location2 = (mMapView == null || (mapView = mMapView.getMapView()) == null) ? null : LocationKt.getLocation2(mapView);
                if (location2 == null || !location2.getPuckBearingEnabled()) {
                    return 1;
                }
                int i = WhenMappings.$EnumSwitchMapping$0[LocationKt.getPuckBearingSource(location2).ordinal()];
                if (i != 1) {
                    return i != 2 ? 1 : 2;
                }
                return 3;
            }
            if (bearing instanceof FollowPuckViewportStateBearing.Constant) {
                return 1;
            }
            Logger.INSTANCE.w("RNMBXCamera", "Unexpected bearing: " + followPuckViewportState.getOptions().getBearing());
            return 1;
        }
        boolean z = state instanceof OverviewViewportState;
        return 0;
    }

    public final int toUserTrackingMode(ViewportStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        if (Intrinsics.areEqual(status, ViewportStatus.Idle.INSTANCE)) {
            return 0;
        }
        if (status instanceof ViewportStatus.State) {
            return toUserTrackingMode(((ViewportStatus.State) status).getState());
        }
        if (!(status instanceof ViewportStatus.Transition)) {
            throw new NoWhenBranchMatchedException();
        }
        return toUserTrackingMode(((ViewportStatus.Transition) status).getToState());
    }

    public final ReadableMap toReadableMap(ViewportStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        if (Intrinsics.areEqual(status, ViewportStatus.Idle.INSTANCE)) {
            return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to(RemoteConfigConstants.ResponseFieldKey.STATE, "idle"));
        }
        if (status instanceof ViewportStatus.State) {
            return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to(RemoteConfigConstants.ResponseFieldKey.STATE, ((ViewportStatus.State) status).toString()));
        }
        if (!(status instanceof ViewportStatus.Transition)) {
            throw new NoWhenBranchMatchedException();
        }
        return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("transition", ((ViewportStatus.Transition) status).toString()));
    }

    public final void _observeViewportState(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        ViewportUtils.getViewport(mapView).addStatusObserver(new ViewportStatusObserver() {
            @Override
            public void onViewportStatusChanged(ViewportStatus fromStatus, ViewportStatus toStatus, ViewportStatusChangeReason reason) {
                Intrinsics.checkNotNullParameter(fromStatus, "fromStatus");
                Intrinsics.checkNotNullParameter(toStatus, "toStatus");
                Intrinsics.checkNotNullParameter(reason, "reason");
                if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.USER_INTERACTION) || Intrinsics.areEqual(reason, ViewportStatusChangeReason.TRANSITION_SUCCEEDED)) {
                    boolean followUserLocation = RNMBXCamera.this.toFollowUserLocation(toStatus);
                    int userTrackingMode = RNMBXCamera.this.toUserTrackingMode(toStatus);
                    RNMBXCameraManager rNMBXCameraManager = RNMBXCamera.this.mManager;
                    RNMBXCamera rNMBXCamera = RNMBXCamera.this;
                    rNMBXCameraManager.handleEvent(new MapUserTrackingModeEvent(rNMBXCamera, userTrackingMode, WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("followUserMode", rNMBXCamera.toFollowUserMode(toStatus)), TuplesKt.to("followUserLocation", Boolean.valueOf(followUserLocation)), TuplesKt.to("fromViewportState", RNMBXCamera.this.toReadableMap(fromStatus)), TuplesKt.to("toViewportState", RNMBXCamera.this.toReadableMap(toStatus)), TuplesKt.to("reason", RNMBXCamera.this.toString(reason)))));
                }
            }
        });
    }

    public final String toString(ViewportStatusChangeReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.IDLE_REQUESTED)) {
            return "idleRequested";
        }
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.TRANSITION_FAILED)) {
            return "transitionFailed";
        }
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.TRANSITION_STARTED)) {
            return "transitionStarted";
        }
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.TRANSITION_SUCCEEDED)) {
            return "transitionSucceeded";
        }
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.USER_INTERACTION)) {
            return "userInteraction";
        }
        Logger.INSTANCE.w("RNMBXCamera", "toString; unkown reason: " + reason);
        return "unkown: " + reason;
    }

    public final void _updateViewportState() {
        Style styleDeprecated;
        LocationProvider locationProvider;
        RNMBXMapView mMapView = getMMapView();
        if (mMapView != null) {
            MapView mapView = mMapView.getMapView();
            MapView mapView2 = mapView;
            ViewportPlugin viewport = ViewportUtils.getViewport(mapView2);
            if (this.mLocationComponentManager == null) {
                this.mLocationComponentManager = mMapView.getLocationComponentManager();
            }
            if (!this.mFollowUserLocation) {
                viewport.idle();
                LocationComponentManager locationComponentManager = this.mLocationComponentManager;
                if (locationComponentManager != null) {
                    locationComponentManager.setFollowLocation(false);
                    return;
                }
                return;
            }
            LocationComponentManager locationComponentManager2 = this.mLocationComponentManager;
            if (locationComponentManager2 != null) {
                locationComponentManager2.setFollowLocation(true);
            }
            LocationManager locationManager = this.mLocationManager;
            if (locationManager != null && (locationProvider = LocationComponentUtils.getLocationComponent(mapView2).getLocationProvider()) != null) {
                locationManager.setProvider(locationProvider);
            }
            LocationComponentPlugin location2 = LocationKt.getLocation2(mapView);
            FollowPuckViewportStateOptions.Builder builder = new FollowPuckViewportStateOptions.Builder();
            CameraState cameraState = mapView.getMapboxMapDeprecated().getCameraState();
            String str = this.mFollowUserMode;
            if (str == null) {
                str = "normal";
            }
            int iHashCode = str.hashCode();
            if (iHashCode != -1354571749) {
                if (iHashCode != -1039745817) {
                    if (iHashCode == 950484242 && str.equals("compass")) {
                        location2.setPuckBearingEnabled(true);
                        LocationKt.setPuckBearingSource(location2, PuckBearing.HEADING);
                        builder.bearing(FollowPuckViewportStateBearing.SyncWithLocationPuck.INSTANCE);
                    } else {
                        Logger.INSTANCE.e("RNMBXCamera", "unexpected follow mode: " + this.mFollowUserMode);
                        Unit unit = Unit.INSTANCE;
                    }
                } else if (str.equals("normal")) {
                    location2.setPuckBearingEnabled(false);
                    if (this.mFollowHeading == null) {
                        builder.bearing(new FollowPuckViewportStateBearing.Constant(cameraState.getBearing()));
                    } else {
                        builder.bearing(new FollowPuckViewportStateBearing.Constant(cameraState.getBearing()));
                    }
                } else {
                    Logger.INSTANCE.e("RNMBXCamera", "unexpected follow mode: " + this.mFollowUserMode);
                    Unit unit2 = Unit.INSTANCE;
                }
            } else if (str.equals("course")) {
                location2.setPuckBearingEnabled(true);
                LocationKt.setPuckBearingSource(location2, PuckBearing.COURSE);
                builder.bearing(FollowPuckViewportStateBearing.SyncWithLocationPuck.INSTANCE);
            } else {
                Logger.INSTANCE.e("RNMBXCamera", "unexpected follow mode: " + this.mFollowUserMode);
                Unit unit3 = Unit.INSTANCE;
            }
            Double d = this.mFollowZoomLevel;
            if (d == null) {
                builder.zoom(Double.valueOf(cameraState.getZoom()));
            } else {
                builder.zoom(d);
            }
            Double d2 = this.mFollowPitch;
            if (d2 == null) {
                builder.pitch(Double.valueOf(cameraState.getPitch()));
            } else {
                builder.pitch(d2);
            }
            EdgeInsets edgeInsets = this.mFollowPadding;
            if (edgeInsets == null) {
                builder.padding(cameraState.getPadding());
            } else {
                builder.padding(edgeInsets);
            }
            ViewportPlugin.DefaultImpls.transitionTo$default(viewport, viewport.makeFollowPuckViewportState(builder.build()), null, null, 6, null);
        }
        MapboxMap mapboxMap = getMapboxMap();
        if (mapboxMap == null || (styleDeprecated = mapboxMap.getStyleDeprecated()) == null) {
            return;
        }
        updateLocationLayer(styleDeprecated);
    }

    private final void updatedFollowUserMode() {
        if (this.mFollowUserLocation) {
            setUserTrackingMode(UserTrackingMode.INSTANCE.fromString(this.mFollowUserMode));
        } else {
            setUserTrackingMode(0);
        }
    }

    public final MapboxMap getMapboxMap() {
        if (getMMapView() == null) {
            return null;
        }
        RNMBXMapView mMapView = getMMapView();
        Intrinsics.checkNotNull(mMapView);
        return mMapView.getMapboxMap();
    }

    private final WritableMap makeLocationChangePayload(Location location) {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        WritableNativeMap writableNativeMap2 = new WritableNativeMap();
        writableNativeMap2.putDouble(TSGeofence.FIELD_LONGITUDE, location.getLongitude());
        writableNativeMap2.putDouble(TSGeofence.FIELD_LATITUDE, location.getLatitude());
        writableNativeMap2.putDouble("altitude", location.getAltitude());
        writableNativeMap2.putDouble("accuracy", location.getAccuracy());
        writableNativeMap2.putDouble("heading", location.getBearing());
        writableNativeMap2.putDouble("course", location.getBearing());
        writableNativeMap2.putDouble("speed", location.getSpeed());
        writableNativeMap.putMap("coords", writableNativeMap2);
        writableNativeMap.putDouble("timestamp", location.getTime());
        return writableNativeMap;
    }
}
