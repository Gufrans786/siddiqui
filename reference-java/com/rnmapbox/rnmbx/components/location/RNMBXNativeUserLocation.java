package com.rnmapbox.rnmbx.components.location;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ColorPropConverter;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.android.core.permissions.PermissionsManager;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.plugin.LocationPuck2D;
import com.mapbox.maps.plugin.PuckBearing;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentPlugin;
import com.rnmapbox.rnmbx.R;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.images.ImageManager;
import com.rnmapbox.rnmbx.components.images.Resolver;
import com.rnmapbox.rnmbx.components.images.Subscription;
import com.rnmapbox.rnmbx.components.mapview.OnMapReadyCallback;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.extensions.ReadableMapKt;
import com.rnmapbox.rnmbx.v11compat.image.AppCompatResourcesV11;
import com.rnmapbox.rnmbx.v11compat.image.ImageKt;
import com.rnmapbox.rnmbx.v11compat.location.LocationKt;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 b2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002abB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020'2\b\u0010N\u001a\u0004\u0018\u00010(H\u0002J \u0010O\u001a\u00020L2\u0006\u0010M\u001a\u00020'2\u000e\u0010P\u001a\n\u0018\u00010,j\u0004\u0018\u0001`-H\u0002J\b\u0010Q\u001a\u00020LH\u0002J\u0010\u0010Q\u001a\u00020L2\u0006\u0010R\u001a\u00020SH\u0002J\u0010\u0010T\u001a\u00020L2\u0006\u0010R\u001a\u00020\rH\u0016J\u0018\u0010U\u001a\u00020\t2\u0006\u0010R\u001a\u00020\r2\u0006\u0010V\u001a\u00020WH\u0016J\u0010\u0010X\u001a\u00020L2\u0006\u0010Y\u001a\u00020\u000bH\u0017J\u0010\u0010Z\u001a\u00020L2\u0006\u0010[\u001a\u00020\\H\u0017J \u0010]\u001a\u00020L2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010M\u001a\u00020'2\u0006\u0010N\u001a\u00020(H\u0002J\b\u0010^\u001a\u00020LH\u0002J\u0010\u0010_\u001a\u00020L2\u0006\u0010`\u001a\u00020\rH\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010%\u001a\u0010\u0012\u0004\u0012\u00020'\u0012\u0006\u0012\u0004\u0018\u00010(0&X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020*0&X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010+\u001a\u0012\u0012\u0004\u0012\u00020'\u0012\b\u0012\u00060,j\u0002`-0&X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010/\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010(8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u00101\"\u0004\b2\u00103R(\u00104\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010(8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u00101\"\u0004\b6\u00103R(\u00107\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010(8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b8\u00101\"\u0004\b9\u00103R(\u0010;\u001a\u0004\u0018\u00010:2\b\u0010.\u001a\u0004\u0018\u00010:@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R$\u0010@\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR(\u0010F\u001a\u0004\u0018\u00010E2\b\u0010.\u001a\u0004\u0018\u00010E@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010H\"\u0004\bI\u0010J¨\u0006c"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/RNMBXNativeUserLocation;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "Lcom/rnmapbox/rnmbx/components/mapview/OnMapReadyCallback;", "Lcom/mapbox/maps/Style$OnStyleLoaded;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mEnabled", "", "mMap", "Lcom/mapbox/maps/MapboxMap;", "mMBXMapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "mRenderMode", "Lcom/rnmapbox/rnmbx/components/location/RenderMode;", "mContext", "imageManager", "Lcom/rnmapbox/rnmbx/components/images/ImageManager;", "androidRenderMode", "getAndroidRenderMode", "()Lcom/rnmapbox/rnmbx/components/location/RenderMode;", "setAndroidRenderMode", "(Lcom/rnmapbox/rnmbx/components/location/RenderMode;)V", "puckBearing", "Lcom/mapbox/maps/plugin/PuckBearing;", "Lcom/rnmapbox/rnmbx/v11compat/location/PuckBearing;", "getPuckBearing", "()Lcom/mapbox/maps/plugin/PuckBearing;", "setPuckBearing", "(Lcom/mapbox/maps/plugin/PuckBearing;)V", "puckBearingEnabled", "getPuckBearingEnabled", "()Ljava/lang/Boolean;", "setPuckBearingEnabled", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "imageNames", "", "Lcom/rnmapbox/rnmbx/components/location/RNMBXNativeUserLocation$PuckImagePart;", "", "subscriptions", "Lcom/rnmapbox/rnmbx/components/images/Subscription;", "images", "Lcom/mapbox/maps/ImageHolder;", "Lcom/rnmapbox/rnmbx/v11compat/image/ImageHolder;", "value", "topImage", "getTopImage", "()Ljava/lang/String;", "setTopImage", "(Ljava/lang/String;)V", "bearingImage", "getBearingImage", "setBearingImage", "shadowImage", "getShadowImage", "setShadowImage", "Lcom/mapbox/bindgen/Value;", "scale", "getScale", "()Lcom/mapbox/bindgen/Value;", "setScale", "(Lcom/mapbox/bindgen/Value;)V", ViewProps.VISIBLE, "getVisible", "()Z", "setVisible", "(Z)V", "Lcom/facebook/react/bridge/ReadableMap;", "pulsing", "getPulsing", "()Lcom/facebook/react/bridge/ReadableMap;", "setPulsing", "(Lcom/facebook/react/bridge/ReadableMap;)V", "imageNameUpdated", "", "image", "name", "imageUpdated", "imageHolder", "_apply", "mapView", "Lcom/mapbox/maps/MapView;", "addToMap", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "onMapReady", "mapboxMap", "onStyleLoaded", "style", "Lcom/mapbox/maps/Style;", "subscribe", "removeSubscriptions", "_fetchImages", "map", "PuckImagePart", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXNativeUserLocation extends AbstractMapFeature implements OnMapReadyCallback, Style.OnStyleLoaded {
    public static final String LOG_TAG = "RNMBXNativeUserLocation";
    private RenderMode androidRenderMode;
    private ImageManager imageManager;
    private Map<PuckImagePart, String> imageNames;
    private Map<PuckImagePart, ImageHolder> images;
    private Context mContext;
    private boolean mEnabled;
    private RNMBXMapView mMBXMapView;
    private MapboxMap mMap;
    private RenderMode mRenderMode;
    private PuckBearing puckBearing;
    private Boolean puckBearingEnabled;
    private ReadableMap pulsing;
    private Value scale;
    private Map<PuckImagePart, Subscription> subscriptions;
    private boolean visible;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/RNMBXNativeUserLocation$PuckImagePart;", "", "<init>", "(Ljava/lang/String;I)V", "TOP", "BEARING", "SHADOW", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum PuckImagePart {
        TOP,
        BEARING,
        SHADOW;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<PuckImagePart> getEntries() {
            return $ENTRIES;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.Map.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.Number.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReadableType.String.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RNMBXNativeUserLocation(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mEnabled = true;
        this.mRenderMode = RenderMode.NORMAL;
        this.mContext = context;
        this.imageNames = new LinkedHashMap();
        this.subscriptions = new LinkedHashMap();
        this.images = new LinkedHashMap();
        this.visible = true;
    }

    public final RenderMode getAndroidRenderMode() {
        return this.androidRenderMode;
    }

    public final void setAndroidRenderMode(RenderMode renderMode) {
        this.androidRenderMode = renderMode;
    }

    public final PuckBearing getPuckBearing() {
        return this.puckBearing;
    }

    public final void setPuckBearing(PuckBearing puckBearing) {
        this.puckBearing = puckBearing;
    }

    public final Boolean getPuckBearingEnabled() {
        return this.puckBearingEnabled;
    }

    public final void setPuckBearingEnabled(Boolean bool) {
        this.puckBearingEnabled = bool;
    }

    public final String getTopImage() {
        return this.imageNames.get(PuckImagePart.TOP);
    }

    public final void setTopImage(String str) {
        imageNameUpdated(PuckImagePart.TOP, str);
    }

    public final String getBearingImage() {
        return this.imageNames.get(PuckImagePart.BEARING);
    }

    public final void setBearingImage(String str) {
        imageNameUpdated(PuckImagePart.BEARING, str);
    }

    public final String getShadowImage() {
        return this.imageNames.get(PuckImagePart.SHADOW);
    }

    public final void setShadowImage(String str) {
        imageNameUpdated(PuckImagePart.SHADOW, str);
    }

    public final Value getScale() {
        return this.scale;
    }

    public final void setScale(Value value) {
        this.scale = value;
        _apply();
    }

    public final boolean getVisible() {
        return this.visible;
    }

    public final void setVisible(boolean z) {
        this.visible = z;
        _apply();
    }

    public final ReadableMap getPulsing() {
        return this.pulsing;
    }

    public final void setPulsing(ReadableMap readableMap) {
        this.pulsing = readableMap;
        _apply();
    }

    private final void imageNameUpdated(PuckImagePart image, String name) {
        this.imageNames.put(image, name);
        RNMBXMapView rNMBXMapView = this.mMBXMapView;
        if (rNMBXMapView != null) {
            _fetchImages(rNMBXMapView);
        }
    }

    private final void imageUpdated(PuckImagePart image, ImageHolder imageHolder) {
        if (imageHolder != null) {
            this.images.put(image, imageHolder);
        } else {
            this.images.remove(image);
        }
        _apply();
    }

    private final void _apply() {
        MapView mapView;
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null || (mapView = mMapView.getMapView()) == null) {
            return;
        }
        _apply(mapView);
    }

    private final void _apply(MapView mapView) {
        LocationComponentPlugin location2 = LocationKt.getLocation2(mapView);
        if (this.visible) {
            if (this.images.isEmpty()) {
                Context context = this.mContext;
                RenderMode renderMode = this.androidRenderMode;
                if (renderMode == null) {
                    renderMode = RenderMode.NORMAL;
                }
                location2.setLocationPuck(RNMBXNativeUserLocationKt.makeDefaultLocationPuck2D(context, renderMode));
            } else {
                ImageHolder imageHolder = this.images.get(PuckImagePart.TOP);
                ImageHolder imageHolder2 = this.images.get(PuckImagePart.BEARING);
                ImageHolder imageHolder3 = this.images.get(PuckImagePart.SHADOW);
                Value value = this.scale;
                location2.setLocationPuck(new LocationPuck2D(imageHolder, imageHolder2, imageHolder3, value != null ? value.toJson() : null, 0.0f, 16, null));
            }
        } else {
            ImageHolder drawableImageHolder = AppCompatResourcesV11.INSTANCE.getDrawableImageHolder(this.mContext, R.drawable.empty);
            location2.setLocationPuck(new LocationPuck2D(drawableImageHolder, drawableImageHolder, drawableImageHolder, null, 0.0f, 24, null));
        }
        PuckBearing puckBearing = this.puckBearing;
        if (puckBearing != null) {
            location2.setPuckBearing(puckBearing);
        }
        Boolean bool = this.puckBearingEnabled;
        if (bool != null) {
            location2.setPuckBearingEnabled(bool.booleanValue());
        }
        ReadableMap readableMap = this.pulsing;
        if (readableMap != null) {
            String andLogIfNotString$default = ReadableMapKt.getAndLogIfNotString$default(readableMap, "kind", null, 2, null);
            if (andLogIfNotString$default != null && Intrinsics.areEqual(andLogIfNotString$default, "default")) {
                location2.setPulsingEnabled(true);
            }
            if (readableMap.hasKey("color")) {
                int i = WhenMappings.$EnumSwitchMapping$0[readableMap.getType("color").ordinal()];
                if (i == 1) {
                    Integer color = ColorPropConverter.getColor(readableMap.getMap("color"), this.mContext);
                    location2.setPulsingColor(color != null ? color.intValue() : 0);
                } else if (i == 2) {
                    location2.setPulsingColor(readableMap.getInt("color"));
                } else {
                    Logger.INSTANCE.e("RNMBXNativeUserLocation", "pusling.color should be either a map or a number, but was " + readableMap.getDynamic("color"));
                }
            }
            Boolean andLogIfNotBoolean$default = ReadableMapKt.getAndLogIfNotBoolean$default(readableMap, "isEnabled", null, 2, null);
            if (andLogIfNotBoolean$default != null) {
                location2.setPulsingEnabled(andLogIfNotBoolean$default.booleanValue());
            }
            if (readableMap.hasKey(TSGeofence.FIELD_RADIUS)) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[readableMap.getType(TSGeofence.FIELD_RADIUS).ordinal()];
                if (i2 == 2) {
                    location2.setPulsingMaxRadius((float) readableMap.getDouble(TSGeofence.FIELD_RADIUS));
                    return;
                }
                if (i2 == 3) {
                    if (Intrinsics.areEqual(readableMap.getString(TSGeofence.FIELD_RADIUS), "accuracy")) {
                        location2.setPulsingMaxRadius(-1.0f);
                        return;
                    } else {
                        Logger.INSTANCE.e("RNMBXNativeUserLocation", "Expected pulsing/radius to be a number or accuracy but was " + readableMap.getString(TSGeofence.FIELD_RADIUS));
                        return;
                    }
                }
                Logger.INSTANCE.e("RNMBXNativeUserLocation", "Expected pulsing/radius to be a number or accuracy but was " + readableMap.getString(TSGeofence.FIELD_RADIUS));
            }
        }
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        LocationComponentManager locationComponentManager;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        this.mEnabled = true;
        mapView.getMapboxMap();
        mapView.getMapAsync(this);
        RNMBXMapView mMapView = getMMapView();
        if (mMapView != null && (locationComponentManager = mMapView.getLocationComponentManager()) != null) {
            locationComponentManager.showNativeUserLocation(true);
        }
        this.mMBXMapView = mapView;
        _fetchImages(mapView);
        _apply();
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        LocationComponentManager locationComponentManager;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.mEnabled = false;
        RNMBXMapView mMapView = getMMapView();
        if (mMapView != null && (locationComponentManager = mMapView.getLocationComponentManager()) != null) {
            locationComponentManager.showNativeUserLocation(false);
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap != null) {
            mapboxMap.getStyle(this);
        }
        this.mMBXMapView = null;
        return super.removeFromMap(mapView, reason);
    }

    @Override
    public void onMapReady(MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "mapboxMap");
        this.mMap = mapboxMap;
        mapboxMap.getStyle(this);
        _apply();
    }

    @Override
    public void onStyleLoaded(Style style) {
        LocationComponentManager locationComponentManager;
        LocationComponentManager locationComponentManager2;
        Intrinsics.checkNotNullParameter(style, "style");
        Context context = getContext();
        PermissionsManager.Companion companion = PermissionsManager.INSTANCE;
        Intrinsics.checkNotNull(context);
        if (companion.areLocationPermissionsGranted(context)) {
            RNMBXMapView mMapView = getMMapView();
            if (mMapView != null && (locationComponentManager2 = mMapView.getLocationComponentManager()) != null) {
                locationComponentManager2.update();
            }
            RNMBXMapView mMapView2 = getMMapView();
            if (mMapView2 == null || (locationComponentManager = mMapView2.getLocationComponentManager()) == null) {
                return;
            }
            locationComponentManager.showNativeUserLocation(this.mEnabled);
        }
    }

    private final void subscribe(ImageManager imageManager, final PuckImagePart image, String name) {
        Subscription subscription = this.subscriptions.get(image);
        if (subscription != null) {
            subscription.cancel();
            this.subscriptions.remove(image);
            Logger.INSTANCE.e("RNMBXNativeUserLocation", "subscribe: there is alread a subscription for image: " + image);
        }
        this.subscriptions.put(image, imageManager.subscribe(name, new Resolver() {
            @Override
            public final void resolved(String str, Image image2) {
                RNMBXNativeUserLocation.subscribe$lambda$9(this.f$0, image, str, image2);
            }
        }));
    }

    public static final void subscribe$lambda$9(RNMBXNativeUserLocation rNMBXNativeUserLocation, PuckImagePart puckImagePart, String str, Image imageData) {
        Intrinsics.checkNotNullParameter(str, "<unused var>");
        Intrinsics.checkNotNullParameter(imageData, "imageData");
        rNMBXNativeUserLocation.imageUpdated(puckImagePart, ImageKt.toImageHolder(imageData));
    }

    private final void removeSubscriptions() {
        Iterator<Map.Entry<PuckImagePart, Subscription>> it = this.subscriptions.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().cancel();
        }
        this.subscriptions.clear();
    }

    private final void _fetchImages(RNMBXMapView map) {
        MapboxMap mapboxMapDeprecated;
        Style styleDeprecated;
        MapView mapView = map.getMapView();
        if (mapView != null && (mapboxMapDeprecated = mapView.getMapboxMapDeprecated()) != null && (styleDeprecated = mapboxMapDeprecated.getStyleDeprecated()) != null) {
            for (Map.Entry<PuckImagePart, String> entry : this.imageNames.entrySet()) {
                PuckImagePart key = entry.getKey();
                String value = entry.getValue();
                if (value != null) {
                    if (styleDeprecated.hasStyleImage(value)) {
                        Image styleImage = styleDeprecated.getStyleImage(value);
                        if (styleImage != null) {
                            this.images.put(key, ImageKt.toImageHolder(styleImage));
                        }
                    } else {
                        this.images.remove(key);
                    }
                } else {
                    this.images.remove(key);
                }
            }
        }
        removeSubscriptions();
        ImageManager imageManager = map.getImageManager();
        this.imageManager = imageManager;
        _apply();
        for (Map.Entry<PuckImagePart, String> entry2 : this.imageNames.entrySet()) {
            PuckImagePart key2 = entry2.getKey();
            String value2 = entry2.getValue();
            if (value2 != null) {
                subscribe(imageManager, key2, value2);
            }
        }
    }
}
