package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.common.MapBuilder;
import com.mapbox.geojson.Feature;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.sources.Source;
import com.mapbox.maps.extension.style.sources.SourceUtils;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.utils.LatLng;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000 S*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0003:\u0002RSB\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010&\u001a\u00020\u0013H&J!\u0010/\u001a\u0004\u0018\u00018\u00002\u0006\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0002\u00103J\b\u00104\u001a\u00020\u0013H\u0016J\u000e\u00105\u001a\u0002062\u0006\u00104\u001a\u00020\u0013J\u000e\u00107\u001a\u0002062\u0006\u00108\u001a\u000209J\u001e\u0010<\u001a\u0002062\u0006\u0010=\u001a\u00020\u00132\u0006\u00100\u001a\u0002012\u0006\u0010>\u001a\u00020?J\u0010\u0010<\u001a\u0002062\u0006\u0010>\u001a\u00020?H\u0016J\u0018\u0010@\u001a\u00020\u00132\u0006\u0010>\u001a\u00020?2\u0006\u0010A\u001a\u00020BH\u0016J\u0018\u0010C\u001a\u0002062\b\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010F\u001a\u00020GJ\u000e\u0010H\u001a\u0002062\u0006\u0010F\u001a\u00020GJ\u0010\u0010K\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016J\b\u0010L\u001a\u00020GH\u0016J\r\u0010M\u001a\u00028\u0000H&¢\u0006\u0002\u0010NJ\u0012\u0010O\u001a\u0002062\b\u0010P\u001a\u0004\u0018\u00010QH&R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0085\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R(\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000b0#8F¢\u0006\u0006\u001a\u0004\b$\u0010%R\u001e\u0010'\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0011\u0010-\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b.\u0010\u0015R\u001f\u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b;\u0010\u001cR\u0017\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00030#8F¢\u0006\u0006\u001a\u0004\bJ\u0010%¨\u0006T"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/extension/style/sources/Source;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mMap", "Lcom/mapbox/maps/MapboxMap;", "iD", "", "getID", "()Ljava/lang/String;", "setID", "(Ljava/lang/String;)V", "mSource", "Lcom/mapbox/maps/extension/style/sources/Source;", "mHasPressListener", "", "getMHasPressListener", "()Z", "setMHasPressListener", "(Z)V", "mTouchHitbox", "", "", "getMTouchHitbox", "()Ljava/util/Map;", "setMTouchHitbox", "(Ljava/util/Map;)V", "mSubFeatures", "", "Lcom/rnmapbox/rnmbx/components/styles/sources/FeatureInfo;", "layerIDs", "", "getLayerIDs", "()Ljava/util/List;", "hasNoDataSoRefersToExisting", "mExisting", "getMExisting", "()Ljava/lang/Boolean;", "setMExisting", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "existing", "getExisting", "getSourceAs", "style", "Lcom/mapbox/maps/Style;", "id", "(Lcom/mapbox/maps/Style;Ljava/lang/String;)Lcom/mapbox/maps/extension/style/sources/Source;", "hasPressListener", "setHasPressListener", "", "setHitbox", "map", "Lcom/facebook/react/bridge/ReadableMap;", "touchHitbox", "getTouchHitbox", "addToMap", "existings", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "addLayer", "childView", "Landroid/view/View;", "childPosition", "", "removeLayer", "childViews", "getChildViews", "getChildAt", "getChildCount", "makeSource", "()Lcom/mapbox/maps/extension/style/sources/Source;", "onPress", NotificationCompat.CATEGORY_EVENT, "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$OnPressEvent;", "OnPressEvent", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RNMBXSource<T extends Source> extends AbstractMapFeature {

    public static final Companion INSTANCE = new Companion(null);
    public static final double DEFAULT_HITBOX_HEIGHT = 44.0d;
    public static final double DEFAULT_HITBOX_WIDTH = 44.0d;
    public static final String DEFAULT_ID = "composite";
    public static final String LOG_TAG = "RNMBXSource";
    private String iD;
    private Boolean mExisting;
    private boolean mHasPressListener;
    public MapboxMap mMap;
    protected T mSource;
    private List<FeatureInfo> mSubFeatures;
    private Map<String, Double> mTouchHitbox;

    @JvmStatic
    public static final boolean isDefaultSource(String str) {
        return INSTANCE.isDefaultSource(str);
    }

    public abstract boolean hasNoDataSoRefersToExisting();

    public abstract T makeSource();

    public abstract void onPress(OnPressEvent event);

    public RNMBXSource(Context context) {
        super(context);
        this.mSubFeatures = new ArrayList();
    }

    public final String getID() {
        return this.iD;
    }

    public final void setID(String str) {
        this.iD = str;
    }

    protected final boolean getMHasPressListener() {
        return this.mHasPressListener;
    }

    protected final void setMHasPressListener(boolean z) {
        this.mHasPressListener = z;
    }

    protected final Map<String, Double> getMTouchHitbox() {
        return this.mTouchHitbox;
    }

    protected final void setMTouchHitbox(Map<String, Double> map) {
        this.mTouchHitbox = map;
    }

    public final List<String> getLayerIDs() {
        List<FeatureInfo> list = this.mSubFeatures;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            FeatureInfo featureInfo = (FeatureInfo) obj;
            arrayList.add((featureInfo.getAdded() && (featureInfo.getFeature() instanceof AbstractSourceConsumer)) ? ((AbstractSourceConsumer) featureInfo.getFeature()).getID() : null);
            i = i2;
        }
        return CollectionsKt.filterNotNull(arrayList);
    }

    public final Boolean getMExisting() {
        return this.mExisting;
    }

    public final void setMExisting(Boolean bool) {
        this.mExisting = bool;
    }

    public final boolean getExisting() {
        Boolean bool = this.mExisting;
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            bool.booleanValue();
            return zBooleanValue;
        }
        if (!hasNoDataSoRefersToExisting()) {
            return false;
        }
        Logger.INSTANCE.w(LOG_TAG, "RNMBXSource: source with id: " + getId() + " seems to refer to existing value but existing flag is not set. This is deprecated.");
        return true;
    }

    private final T getSourceAs(Style style, String id) {
        String str = this.iD;
        if (str != null) {
            return (T) SourceUtils.getSource(style, str);
        }
        return null;
    }

    public boolean hasPressListener() {
        return this.mHasPressListener;
    }

    public final void setHasPressListener(boolean hasPressListener) {
        this.mHasPressListener = hasPressListener;
    }

    public final void setHitbox(ReadableMap map) {
        Intrinsics.checkNotNullParameter(map, "map");
        HashMap map2 = new HashMap();
        map2.put("width", Double.valueOf(map.getDouble("width")));
        map2.put("height", Double.valueOf(map.getDouble("height")));
        this.mTouchHitbox = map2;
    }

    public final Map<String, Double> getTouchHitbox() {
        if (!hasPressListener()) {
            return null;
        }
        Map<String, Double> map = this.mTouchHitbox;
        return map == null ? MapBuilder.builder().put("width", Double.valueOf(44.0d)).put("height", Double.valueOf(44.0d)).build() : map;
    }

    public final void addToMap(boolean existings, Style style, RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        this.mSource = null;
        T t = (T) getSourceAs(style, this.iD);
        if (t != null) {
            this.mSource = t;
            if (!existings) {
                Logger.INSTANCE.w(LOG_TAG, "Source " + this.iD + " was not marked as existing but found in style, it's deprecated: https://github.com/rnmapbox/maps/wiki/Deprecated-ExistingSourceLayer");
            }
        } else if (existings) {
            Logger.INSTANCE.w(LOG_TAG, "Source " + this.iD + " was marked as existing but was not found in style, it's deprecated: https://github.com/rnmapbox/maps/wiki/Deprecated-ExistingSourceLayer");
        }
        if (this.mSource == null) {
            T t2 = (T) makeSource();
            this.mSource = t2;
            Intrinsics.checkNotNull(t2, "null cannot be cast to non-null type com.mapbox.maps.extension.style.StyleContract.StyleSourceExtension");
            SourceUtils.addSource(style, t2);
        }
        List<FeatureInfo> list = this.mSubFeatures;
        if (list != null) {
            for (FeatureInfo featureInfo : list) {
                AbstractMapFeature feature = featureInfo.getFeature();
                if (feature != null) {
                    feature.addToMap(mapView);
                }
                featureInfo.setAdded(true);
            }
        }
    }

    @Override
    public void addToMap(final RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        MapboxMap mapboxMap = mapView.getMapboxMap();
        this.mMap = mapboxMap;
        if (mapboxMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "map is exepted to be valid but was null, " + this.iD);
        } else {
            Style styleDeprecated = mapboxMap.getStyleDeprecated();
            if (getExisting() || styleDeprecated == null) {
                mapboxMap.getStyle(new Style.OnStyleLoaded(this) {
                    final RNMBXSource<T> this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override
                    public void onStyleLoaded(Style style) {
                        Intrinsics.checkNotNullParameter(style, "style");
                        RNMBXSource<T> rNMBXSource = this.this$0;
                        rNMBXSource.addToMap(rNMBXSource.getExisting(), style, mapView);
                    }
                });
            } else {
                addToMap(getExisting(), styleDeprecated, mapView);
            }
        }
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        MapboxMap mapboxMap;
        Style styleDeprecated;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        for (FeatureInfo featureInfo : this.mSubFeatures) {
            AbstractMapFeature feature = featureInfo.getFeature();
            if (feature != null && feature.removeFromMap(mapView, reason)) {
                featureInfo.setAdded(false);
            }
        }
        MapboxMap mapboxMap2 = this.mMap;
        if (mapboxMap2 != null && this.mSource != null) {
            Intrinsics.checkNotNull(mapboxMap2);
            if (mapboxMap2.getStyleDeprecated() != null) {
                try {
                    String str = this.iD;
                    if (str != null && (mapboxMap = this.mMap) != null && (styleDeprecated = mapboxMap.getStyleDeprecated()) != null) {
                        styleDeprecated.removeStyleSource(str);
                    }
                } catch (Throwable th) {
                    Logger logger = Logger.INSTANCE;
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String str2 = String.format("RNMBXSource.removeFromMap: %s - %s", Arrays.copyOf(new Object[]{this.mSource, th.getMessage()}, 2));
                    Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                    logger.w(LOG_TAG, str2, th);
                }
            }
        }
        return super.removeFromMap(mapView, reason);
    }

    public final void addLayer(View childView, int childPosition) {
        AbstractMapFeature abstractMapFeature;
        boolean z;
        if (!(childView instanceof AbstractMapFeature)) {
            Logger.INSTANCE.w(LOG_TAG, "Attempted to insert view: " + childView + " to shape source: " + this.iD + ", since it's not a MapFeature it will not be added");
            abstractMapFeature = null;
        } else {
            abstractMapFeature = (AbstractMapFeature) childView;
        }
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null || abstractMapFeature == null) {
            z = false;
        } else {
            abstractMapFeature.addToMap(mMapView);
            z = true;
        }
        this.mSubFeatures.add(childPosition, new FeatureInfo(abstractMapFeature, z));
    }

    public final void removeLayer(int childPosition) {
        AbstractMapFeature feature;
        FeatureInfo featureInfo = this.mSubFeatures.get(childPosition);
        if (featureInfo.getAdded()) {
            RNMBXMapView mMapView = getMMapView();
            if (mMapView != null && (feature = featureInfo.getFeature()) != null) {
                feature.removeFromMap(mMapView, RemovalReason.VIEW_REMOVAL);
            }
            featureInfo.setAdded(false);
        }
        this.mSubFeatures.remove(childPosition);
    }

    public final List<AbstractMapFeature> getChildViews() {
        List<FeatureInfo> list = this.mSubFeatures;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((FeatureInfo) it.next()).getFeature());
        }
        return CollectionsKt.filterNotNull(arrayList);
    }

    @Override
    public View getChildAt(int childPosition) {
        return getChildViews().get(childPosition);
    }

    @Override
    public int getChildCount() {
        return getChildViews().size();
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$OnPressEvent;", "", "features", "", "Lcom/mapbox/geojson/Feature;", "latLng", "Lcom/rnmapbox/rnmbx/utils/LatLng;", "screenPoint", "Landroid/graphics/PointF;", "<init>", "(Ljava/util/List;Lcom/rnmapbox/rnmbx/utils/LatLng;Landroid/graphics/PointF;)V", "getFeatures", "()Ljava/util/List;", "setFeatures", "(Ljava/util/List;)V", "getLatLng", "()Lcom/rnmapbox/rnmbx/utils/LatLng;", "setLatLng", "(Lcom/rnmapbox/rnmbx/utils/LatLng;)V", "getScreenPoint", "()Landroid/graphics/PointF;", "setScreenPoint", "(Landroid/graphics/PointF;)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class OnPressEvent {
        private List<Feature> features;
        private LatLng latLng;
        private PointF screenPoint;

        public OnPressEvent(List<Feature> features, LatLng latLng, PointF screenPoint) {
            Intrinsics.checkNotNullParameter(features, "features");
            Intrinsics.checkNotNullParameter(latLng, "latLng");
            Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
            this.features = features;
            this.latLng = latLng;
            this.screenPoint = screenPoint;
        }

        public final List<Feature> getFeatures() {
            return this.features;
        }

        public final LatLng getLatLng() {
            return this.latLng;
        }

        public final PointF getScreenPoint() {
            return this.screenPoint;
        }

        public final void setFeatures(List<Feature> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.features = list;
        }

        public final void setLatLng(LatLng latLng) {
            Intrinsics.checkNotNullParameter(latLng, "<set-?>");
            this.latLng = latLng;
        }

        public final void setScreenPoint(PointF pointF) {
            Intrinsics.checkNotNullParameter(pointF, "<set-?>");
            this.screenPoint = pointF;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$Companion;", "", "<init>", "()V", "DEFAULT_ID", "", "LOG_TAG", "DEFAULT_HITBOX_WIDTH", "", "DEFAULT_HITBOX_HEIGHT", "isDefaultSource", "", "sourceID", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final boolean isDefaultSource(String sourceID) {
            Intrinsics.checkNotNullParameter(sourceID, "sourceID");
            return Intrinsics.areEqual(RNMBXSource.DEFAULT_ID, sourceID);
        }
    }
}
