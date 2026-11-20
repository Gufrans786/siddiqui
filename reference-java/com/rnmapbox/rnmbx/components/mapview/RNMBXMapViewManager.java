package com.rnmapbox.rnmbx.components.mapview;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import ch.qos.logback.core.CoreConstants;
import com.facebook.hermes.intl.Constants;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXMapViewManagerDelegate;
import com.facebook.react.viewmanagers.RNMBXMapViewManagerInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.extension.style.layers.properties.generated.ProjectionName;
import com.mapbox.maps.plugin.gestures.GesturesPlugin;
import com.mapbox.maps.plugin.gestures.GesturesUtils;
import com.mapbox.maps.plugin.gestures.generated.GesturesSettings;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventKeysKt;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import com.rnmapbox.rnmbx.utils.extensions.ReadableMapKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0004\b\u0016\u0018\u0000 n2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0002mnB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010H\u0014J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0002H\u0014J \u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000eH\u0016J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0002H\u0016J\u001a\u0010 \u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u000eH\u0016J\u0018\u0010\"\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u000eH\u0016J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0010\u0010'\u001a\u00020\u00022\u0006\u0010%\u001a\u00020&H\u0014J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010)\u001a\u0004\u0018\u00010\u00022\u0006\u0010*\u001a\u00020\u000eJ\u000e\u0010+\u001a\u00020\u00192\u0006\u0010*\u001a\u00020\u000eJ\u0018\u0010,\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010-\u001a\u00020.H\u0017J\u0018\u0010/\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u00100\u001a\u00020.H\u0017J\u0018\u00101\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u00102\u001a\u00020.H\u0017J\u0018\u00103\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u00104\u001a\u00020.H\u0017J\u0018\u00105\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u00106\u001a\u00020.H\u0017J\u0018\u00107\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u00108\u001a\u00020.H\u0017J\u0018\u00109\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u00022\u0006\u0010;\u001a\u00020.H\u0017J\u0018\u0010<\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u00022\u0006\u0010=\u001a\u00020.H\u0017J\u0018\u0010>\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u00022\u0006\u0010?\u001a\u00020.H\u0017J\u0018\u0010@\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u00022\u0006\u0010A\u001a\u00020.H\u0017J\u0018\u0010B\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u00022\u0006\u0010C\u001a\u00020.H\u0017J\u0018\u0010D\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010E\u001a\u00020.H\u0017J\u0018\u0010F\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010G\u001a\u00020.H\u0017J\u0018\u0010H\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010I\u001a\u00020.H\u0017J\u0018\u0010J\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010K\u001a\u00020.H\u0017J\u0018\u0010L\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010M\u001a\u00020.H\u0017J\u0018\u0010N\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010O\u001a\u00020.H\u0017J\u0018\u0010P\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020.H\u0017J\u0018\u0010R\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010I\u001a\u00020.H\u0017J\u0018\u0010S\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010T\u001a\u00020.H\u0017J\u0018\u0010U\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010V\u001a\u00020.H\u0017J\u0018\u0010W\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010X\u001a\u00020.H\u0017J\u0018\u0010Y\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010Z\u001a\u00020.H\u0017J\u0018\u0010[\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\\\u001a\u00020.H\u0017J\u0018\u0010]\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010^\u001a\u00020.H\u0017J\u0018\u0010_\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010`\u001a\u00020aH\u0007J\u0018\u0010b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010c\u001a\u00020\u000eH\u0007J\u0018\u0010d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010e\u001a\u00020.H\u0017J\u001a\u0010f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\b\u00102\u001a\u0004\u0018\u00010.H\u0017J\u001a\u0010g\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\b\u00102\u001a\u0004\u0018\u00010.H\u0017J\u001a\u0010h\u001a\u00020\u00192\u0006\u0010i\u001a\u00020\u00022\b\u00102\u001a\u0004\u0018\u00010.H\u0016J\u0016\u0010j\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0013\u0018\u00010kH\u0016J\u0016\u0010l\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000e\u0018\u00010kH\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006o"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "Lcom/facebook/react/viewmanagers/RNMBXMapViewManagerInterface;", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "mViews", "", "", "mDelegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getDelegate", "getName", "", "createShadowNodeInstance", "Lcom/facebook/react/uimanager/LayoutShadowNode;", "getShadowNodeClass", "Ljava/lang/Class;", "onAfterUpdateTransaction", "", "mapView", "addView", "childView", "Landroid/view/View;", "childPosition", "getChildCount", "getChildAt", FirebaseAnalytics.Param.INDEX, "removeViewAt", "getMapViewContext", "Landroid/content/Context;", "themedReactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "createViewInstance", "onDropViewInstance", "getByReactTag", "reactTag", "tagAssigned", "setProjection", "projection", "Lcom/facebook/react/bridge/Dynamic;", "setLocalizeLabels", "localeMap", "setSurfaceView", "value", "setGestureSettings", "settings", "setStyleURL", "styleURL", "setPreferredFramesPerSecond", "preferredFramesPerSecond", "setZoomEnabled", "map", "zoomEnabled", "setScrollEnabled", "scrollEnabled", "setPitchEnabled", "pitchEnabled", "setMaxPitch", "maxPitch", "setRotateEnabled", "rotateEnabled", "setAttributionEnabled", "attributionEnabled", "setAttributionPosition", "attributionPosition", "setAttributionViewMargins", "scaleBarMargins", "setAttributionViewPosition", "attributionViewPosition", "setLogoEnabled", "logoEnabled", "setLogoPosition", "logoPosition", "setScaleBarEnabled", "scaleBarEnabled", "setScaleBarViewMargins", "setScaleBarPosition", "scaleBarPosition", "setCompassEnabled", "compassEnabled", "setCompassFadeWhenNorth", "compassFadeWhenNorth", "setCompassViewMargins", "compassViewMargins", "setCompassViewPosition", "compassViewPosition", "setCompassPosition", "compassMargins", "setContentInset", "array", "Lcom/facebook/react/bridge/ReadableArray;", "setTintColor", "tintColor", "setRequestDisallowInterceptTouchEvent", "requestDisallowInterceptTouchEvent", "setDeselectAnnotationOnTap", "setMapViewImpl", "setCompassImage", "view", "customEvents", "", "getCommandsMap", "MapShadowNode", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class RNMBXMapViewManager extends AbstractEventEmitter<RNMBXMapView> implements RNMBXMapViewManagerInterface<RNMBXMapView> {
    public static final String LOG_TAG = "RNMBXMapViewManager";
    public static final String REACT_CLASS = "RNMBXMapView";
    private final ViewManagerDelegate<RNMBXMapView> mDelegate;
    private final Map<Integer, RNMBXMapView> mViews;
    private final ViewTagResolver viewTagResolver;

    @Override
    public void setCompassImage(RNMBXMapView view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @ReactProp(name = "contentInset")
    public final void setContentInset(RNMBXMapView mapView, ReadableArray array) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(array, "array");
    }

    @ReactProp(customType = "Color", name = "tintColor")
    public final void setTintColor(RNMBXMapView mapView, int tintColor) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    public RNMBXMapViewManager(ReactApplicationContext context, ViewTagResolver viewTagResolver) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.viewTagResolver = viewTagResolver;
        this.mDelegate = new RNMBXMapViewManagerDelegate(this);
        this.mViews = new HashMap();
    }

    @Override
    protected ViewManagerDelegate<RNMBXMapView> getDelegate() {
        return this.mDelegate;
    }

    @Override
    public String getName() {
        return "RNMBXMapView";
    }

    @Override
    public LayoutShadowNode createShadowNodeInstance() {
        return new MapShadowNode(this);
    }

    @Override
    public Class<? extends LayoutShadowNode> getShadowNodeClass() {
        return MapShadowNode.class;
    }

    @Override
    public void onAfterUpdateTransaction(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.onAfterUpdateTransaction(mapView);
        boolean zIsInitialized = mapView.isInitialized();
        mapView.applyAllChanges();
        if (zIsInitialized) {
            return;
        }
        this.mViews.put(Integer.valueOf(mapView.getId()), mapView);
        mapView.init();
    }

    @Override
    public void addView(RNMBXMapView mapView, View childView, int childPosition) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(childView, "childView");
        mapView.addFeature(childView, childPosition);
    }

    @Override
    public int getChildCount(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        return mapView.getFeatureCount();
    }

    @Override
    public View getChildAt(RNMBXMapView mapView, int index) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        return mapView.getFeatureAt(index);
    }

    @Override
    public void removeViewAt(RNMBXMapView mapView, int index) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        mapView.removeFeatureAt(index);
    }

    public final Context getMapViewContext(ThemedReactContext themedReactContext) {
        Intrinsics.checkNotNullParameter(themedReactContext, "themedReactContext");
        Activity activity = getActivity();
        return activity != null ? activity : themedReactContext;
    }

    @Override
    public RNMBXMapView createViewInstance(ThemedReactContext themedReactContext) {
        Intrinsics.checkNotNullParameter(themedReactContext, "themedReactContext");
        return new RNMBXMapView(getMapViewContext(themedReactContext), this, null);
    }

    @Override
    public void onDropViewInstance(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        int id = mapView.getId();
        this.viewTagResolver.viewRemoved(id);
        if (this.mViews.containsKey(Integer.valueOf(id))) {
            this.mViews.remove(Integer.valueOf(id));
        }
        mapView.onDropViewInstance();
        super.onDropViewInstance(mapView);
    }

    public final RNMBXMapView getByReactTag(int reactTag) {
        return this.mViews.get(Integer.valueOf(reactTag));
    }

    public final void tagAssigned(int reactTag) {
        this.viewTagResolver.tagAssigned(reactTag);
    }

    @Override
    @ReactProp(name = "projection")
    public void setProjection(RNMBXMapView mapView, Dynamic projection) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(projection, "projection");
        mapView.setReactProjection(Intrinsics.areEqual(projection.asString(), "globe") ? ProjectionName.GLOBE : ProjectionName.MERCATOR);
    }

    @Override
    @ReactProp(name = "localizeLabels")
    public void setLocalizeLabels(RNMBXMapView mapView, Dynamic localeMap) {
        ArrayList arrayList;
        ArrayList<Object> arrayList2;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(localeMap, "localeMap");
        ReadableMap readableMapAsMap = localeMap.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "localizeLabels map is null");
            return;
        }
        String string = readableMapAsMap.getString(Constants.LOCALE);
        ReadableArray array = readableMapAsMap.getArray("layerIds");
        if (array == null || (arrayList2 = array.toArrayList()) == null) {
            arrayList = null;
        } else {
            ArrayList arrayList3 = new ArrayList();
            Iterator<T> it = arrayList2.iterator();
            while (it.hasNext()) {
                String strValueOf = String.valueOf(it.next());
                if (strValueOf != null) {
                    arrayList3.add(strValueOf);
                }
            }
            arrayList = arrayList3;
        }
        mapView.setReactLocalizeLabels(string, arrayList);
    }

    @Override
    @ReactProp(name = "surfaceView")
    public void setSurfaceView(RNMBXMapView mapView, Dynamic value) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(value, "value");
        if (mapView.isInitialized()) {
            if (Intrinsics.areEqual(mapView.getSurfaceView(), Boolean.valueOf(value.asBoolean()))) {
                return;
            }
            Logger.INSTANCE.d(LOG_TAG, "surafaceView cannot be changed on existing map");
            return;
        }
        mapView.setSurfaceView(Boolean.valueOf(value.asBoolean()));
    }

    @Override
    @ReactProp(name = "gestureSettings")
    public void setGestureSettings(RNMBXMapView mapView, final Dynamic settings) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(settings, "settings");
        mapView.withMap(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapViewManager.setGestureSettings$lambda$16(settings, (MapboxMap) obj);
            }
        });
    }

    public static final Unit setGestureSettings$lambda$16(final Dynamic dynamic, MapboxMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.gesturesPlugin(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapViewManager.setGestureSettings$lambda$16$lambda$15(dynamic, (GesturesPlugin) obj);
            }
        });
        return Unit.INSTANCE;
    }

    public static final Unit setGestureSettings$lambda$16$lambda$15(Dynamic dynamic, GesturesPlugin gesturesPlugin) {
        Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
        final ReadableMap readableMapAsMap = dynamic.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "gestureSettings map is null");
            return Unit.INSTANCE;
        }
        gesturesPlugin.updateSettings(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapViewManager.setGestureSettings$lambda$16$lambda$15$lambda$14(readableMapAsMap, (GesturesSettings.Builder) obj);
            }
        });
        return Unit.INSTANCE;
    }

    public static final Unit setGestureSettings$lambda$16$lambda$15$lambda$14(ReadableMap readableMap, GesturesSettings.Builder updateSettings) {
        Intrinsics.checkNotNullParameter(updateSettings, "$this$updateSettings");
        Boolean andLogIfNotBoolean = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "doubleTapToZoomInEnabled", LOG_TAG);
        if (andLogIfNotBoolean != null) {
            updateSettings.m1079setDoubleTapToZoomInEnabled(andLogIfNotBoolean.booleanValue());
        }
        Boolean andLogIfNotBoolean2 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "doubleTouchToZoomOutEnabled", LOG_TAG);
        if (andLogIfNotBoolean2 != null) {
            updateSettings.m1080setDoubleTouchToZoomOutEnabled(andLogIfNotBoolean2.booleanValue());
        }
        Boolean andLogIfNotBoolean3 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "pinchPanEnabled", LOG_TAG);
        if (andLogIfNotBoolean3 != null) {
            updateSettings.m1084setPinchScrollEnabled(andLogIfNotBoolean3.booleanValue());
        }
        Boolean andLogIfNotBoolean4 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "pinchZoomEnabled", LOG_TAG);
        if (andLogIfNotBoolean4 != null) {
            updateSettings.m1086setPinchToZoomEnabled(andLogIfNotBoolean4.booleanValue());
        }
        Boolean andLogIfNotBoolean5 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "pinchZoomDecelerationEnabled", LOG_TAG);
        if (andLogIfNotBoolean5 != null) {
            updateSettings.m1085setPinchToZoomDecelerationEnabled(andLogIfNotBoolean5.booleanValue());
        }
        Boolean andLogIfNotBoolean6 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "pitchEnabled", LOG_TAG);
        if (andLogIfNotBoolean6 != null) {
            updateSettings.m1087setPitchEnabled(andLogIfNotBoolean6.booleanValue());
        }
        Boolean andLogIfNotBoolean7 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "quickZoomEnabled", LOG_TAG);
        if (andLogIfNotBoolean7 != null) {
            updateSettings.m1088setQuickZoomEnabled(andLogIfNotBoolean7.booleanValue());
        }
        Boolean andLogIfNotBoolean8 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "rotateEnabled", LOG_TAG);
        if (andLogIfNotBoolean8 != null) {
            updateSettings.m1090setRotateEnabled(andLogIfNotBoolean8.booleanValue());
        }
        Boolean andLogIfNotBoolean9 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "rotateDecelerationEnabled", LOG_TAG);
        if (andLogIfNotBoolean9 != null) {
            updateSettings.m1089setRotateDecelerationEnabled(andLogIfNotBoolean9.booleanValue());
        }
        Boolean andLogIfNotBoolean10 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "panEnabled", LOG_TAG);
        if (andLogIfNotBoolean10 != null) {
            updateSettings.m1092setScrollEnabled(andLogIfNotBoolean10.booleanValue());
        }
        Double andLogIfNotDouble = ReadableMapKt.getAndLogIfNotDouble(readableMap, "panDecelerationFactor", LOG_TAG);
        if (andLogIfNotDouble != null) {
            updateSettings.m1091setScrollDecelerationEnabled(andLogIfNotDouble.doubleValue() > 0.0d);
        }
        Boolean andLogIfNotBoolean11 = ReadableMapKt.getAndLogIfNotBoolean(readableMap, "simultaneousRotateAndPinchToZoomEnabled", LOG_TAG);
        if (andLogIfNotBoolean11 != null) {
            updateSettings.m1094setSimultaneousRotateAndPinchToZoomEnabled(andLogIfNotBoolean11.booleanValue());
        }
        Double andLogIfNotDouble2 = ReadableMapKt.getAndLogIfNotDouble(readableMap, "zoomAnimationAmount", LOG_TAG);
        if (andLogIfNotDouble2 != null) {
            updateSettings.m1095setZoomAnimationAmount((float) andLogIfNotDouble2.doubleValue());
        }
        return Unit.INSTANCE;
    }

    @Override
    @ReactProp(name = "styleURL")
    public void setStyleURL(RNMBXMapView mapView, Dynamic styleURL) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(styleURL, "styleURL");
        String strAsString = styleURL.asString();
        if (strAsString == null) {
            Logger.INSTANCE.e(LOG_TAG, "styleURL is null");
        } else {
            mapView.setReactStyleURL(strAsString);
        }
    }

    @Override
    @ReactProp(name = "preferredFramesPerSecond")
    public void setPreferredFramesPerSecond(RNMBXMapView mapView, Dynamic preferredFramesPerSecond) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(preferredFramesPerSecond, "preferredFramesPerSecond");
        mapView.setReactPreferredFramesPerSecond(preferredFramesPerSecond.asInt());
    }

    @Override
    @ReactProp(name = "zoomEnabled")
    public void setZoomEnabled(RNMBXMapView map, final Dynamic zoomEnabled) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(zoomEnabled, "zoomEnabled");
        map.withMapView(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapViewManager.setZoomEnabled$lambda$17(zoomEnabled, (MapView) obj);
            }
        });
    }

    public static final Unit setZoomEnabled$lambda$17(Dynamic dynamic, MapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MapView mapView = it;
        GesturesUtils.getGestures(mapView).setPinchToZoomEnabled(dynamic.asBoolean());
        GesturesUtils.getGestures(mapView).setDoubleTouchToZoomOutEnabled(dynamic.asBoolean());
        GesturesUtils.getGestures(mapView).setDoubleTapToZoomInEnabled(dynamic.asBoolean());
        return Unit.INSTANCE;
    }

    @Override
    @ReactProp(name = "scrollEnabled")
    public void setScrollEnabled(RNMBXMapView map, final Dynamic scrollEnabled) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(scrollEnabled, "scrollEnabled");
        map.withMapView(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapViewManager.setScrollEnabled$lambda$18(scrollEnabled, (MapView) obj);
            }
        });
    }

    public static final Unit setScrollEnabled$lambda$18(Dynamic dynamic, MapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        GesturesUtils.getGestures(it).setScrollEnabled(dynamic.asBoolean());
        return Unit.INSTANCE;
    }

    @Override
    @ReactProp(name = "pitchEnabled")
    public void setPitchEnabled(RNMBXMapView map, final Dynamic pitchEnabled) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(pitchEnabled, "pitchEnabled");
        map.withMapView(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapViewManager.setPitchEnabled$lambda$19(pitchEnabled, (MapView) obj);
            }
        });
    }

    public static final Unit setPitchEnabled$lambda$19(Dynamic dynamic, MapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        GesturesUtils.getGestures(it).setPitchEnabled(dynamic.asBoolean());
        return Unit.INSTANCE;
    }

    @Override
    @ReactProp(name = "maxPitch")
    public void setMaxPitch(RNMBXMapView map, Dynamic maxPitch) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(maxPitch, "maxPitch");
        map.setReactMaxPitch(maxPitch.getType() == ReadableType.Null ? null : Double.valueOf(maxPitch.asDouble()));
    }

    @Override
    @ReactProp(name = "rotateEnabled")
    public void setRotateEnabled(RNMBXMapView map, final Dynamic rotateEnabled) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(rotateEnabled, "rotateEnabled");
        map.withMapView(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapViewManager.setRotateEnabled$lambda$20(rotateEnabled, (MapView) obj);
            }
        });
    }

    public static final Unit setRotateEnabled$lambda$20(Dynamic dynamic, MapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        GesturesUtils.getGestures(it).setRotateEnabled(dynamic.asBoolean());
        return Unit.INSTANCE;
    }

    @Override
    @ReactProp(name = "attributionEnabled")
    public void setAttributionEnabled(RNMBXMapView mapView, Dynamic attributionEnabled) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(attributionEnabled, "attributionEnabled");
        mapView.setReactAttributionEnabled(Boolean.valueOf(attributionEnabled.asBoolean()));
    }

    @Override
    @ReactProp(name = "attributionPosition")
    public void setAttributionPosition(RNMBXMapView mapView, Dynamic attributionPosition) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(attributionPosition, "attributionPosition");
        ReadableMap readableMapAsMap = attributionPosition.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "attributionPosition map is null");
        } else {
            mapView.setReactAttributionPosition(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "attributionViewMargins")
    public void setAttributionViewMargins(RNMBXMapView mapView, Dynamic scaleBarMargins) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(scaleBarMargins, "scaleBarMargins");
        ReadableMap readableMapAsMap = scaleBarMargins.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "attributionViewMargins map is null");
        } else {
            mapView.setReactAttributionViewMargins(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "attributionViewPosition")
    public void setAttributionViewPosition(RNMBXMapView mapView, Dynamic attributionViewPosition) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(attributionViewPosition, "attributionViewPosition");
        mapView.setReactAttributionViewPosition(attributionViewPosition.asInt());
    }

    @Override
    @ReactProp(name = "logoEnabled")
    public void setLogoEnabled(RNMBXMapView mapView, Dynamic logoEnabled) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(logoEnabled, "logoEnabled");
        mapView.setReactLogoEnabled(Boolean.valueOf(logoEnabled.asBoolean()));
    }

    @Override
    @ReactProp(name = "logoPosition")
    public void setLogoPosition(RNMBXMapView mapView, Dynamic logoPosition) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(logoPosition, "logoPosition");
        ReadableMap readableMapAsMap = logoPosition.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "logoPosition map is null");
        } else {
            mapView.setReactLogoPosition(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "scaleBarEnabled")
    public void setScaleBarEnabled(RNMBXMapView mapView, Dynamic scaleBarEnabled) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(scaleBarEnabled, "scaleBarEnabled");
        mapView.setReactScaleBarEnabled(scaleBarEnabled.asBoolean());
    }

    @Override
    @ReactProp(name = "scaleBarViewMargins")
    public void setScaleBarViewMargins(RNMBXMapView mapView, Dynamic scaleBarMargins) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(scaleBarMargins, "scaleBarMargins");
        ReadableMap readableMapAsMap = scaleBarMargins.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "scaleBarViewMargins map is null");
        } else {
            mapView.setReactScaleBarViewMargins(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "scaleBarPosition")
    public void setScaleBarPosition(RNMBXMapView mapView, Dynamic scaleBarPosition) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(scaleBarPosition, "scaleBarPosition");
        ReadableMap readableMapAsMap = scaleBarPosition.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "scaleBarPosition map is null");
        } else {
            mapView.setReactScaleBarPosition(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "compassEnabled")
    public void setCompassEnabled(RNMBXMapView mapView, Dynamic compassEnabled) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(compassEnabled, "compassEnabled");
        mapView.setReactCompassEnabled(compassEnabled.asBoolean());
    }

    @Override
    @ReactProp(name = "compassFadeWhenNorth")
    public void setCompassFadeWhenNorth(RNMBXMapView mapView, Dynamic compassFadeWhenNorth) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(compassFadeWhenNorth, "compassFadeWhenNorth");
        mapView.setReactCompassFadeWhenNorth(compassFadeWhenNorth.asBoolean());
    }

    @Override
    @ReactProp(name = "compassViewMargins")
    public void setCompassViewMargins(RNMBXMapView mapView, Dynamic compassViewMargins) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(compassViewMargins, "compassViewMargins");
        ReadableMap readableMapAsMap = compassViewMargins.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "compassViewMargins map is null");
        } else {
            mapView.setReactCompassViewMargins(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "compassViewPosition")
    public void setCompassViewPosition(RNMBXMapView mapView, Dynamic compassViewPosition) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(compassViewPosition, "compassViewPosition");
        mapView.setReactCompassViewPosition(compassViewPosition.asInt());
    }

    @Override
    @ReactProp(name = "compassPosition")
    public void setCompassPosition(RNMBXMapView mapView, Dynamic compassMargins) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(compassMargins, "compassMargins");
        ReadableMap readableMapAsMap = compassMargins.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "compassPosition map is null");
        } else {
            mapView.setReactCompassPosition(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "requestDisallowInterceptTouchEvent")
    public void setRequestDisallowInterceptTouchEvent(RNMBXMapView mapView, Dynamic requestDisallowInterceptTouchEvent) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(requestDisallowInterceptTouchEvent, "requestDisallowInterceptTouchEvent");
        mapView.setRequestDisallowInterceptTouchEvent(requestDisallowInterceptTouchEvent.asBoolean());
    }

    @Override
    @ReactProp(name = "deselectAnnotationOnTap")
    public void setDeselectAnnotationOnTap(RNMBXMapView mapView, Dynamic value) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        if (value != null) {
            mapView.setDeselectAnnotationOnTap(value.asBoolean());
        }
    }

    @Override
    @ReactProp(name = "mapViewImpl")
    public void setMapViewImpl(RNMBXMapView mapView, Dynamic value) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        if (value != null) {
            mapView.setMapViewImpl(value.asString());
        }
    }

    @Override
    public Map<String, String> customEvents() {
        return EventKeysKt.eventMapOf(TuplesKt.to(EventKeys.MAP_CLICK, "onPress"), TuplesKt.to(EventKeys.MAP_LONG_CLICK, "onLongPress"), TuplesKt.to(EventKeys.MAP_ONCHANGE, "onMapChange"), TuplesKt.to(EventKeys.MAP_ON_LOCATION_CHANGE, "onLocationChange"), TuplesKt.to(EventKeys.MAP_USER_TRACKING_MODE_CHANGE, "onUserTrackingModeChange"), TuplesKt.to(EventKeys.MAP_ANDROID_CALLBACK, "onAndroidCallback"));
    }

    @Override
    public Map<String, Integer> getCommandsMap() {
        return MapsKt.mapOf(TuplesKt.to("_useCommandName", 1));
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager$MapShadowNode;", "Lcom/facebook/react/uimanager/LayoutShadowNode;", "mViewManager", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;", "<init>", "(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;)V", "dispose", "", "diposeNativeMapView", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    static final class MapShadowNode extends LayoutShadowNode {
        private final RNMBXMapViewManager mViewManager;

        public static final void diposeNativeMapView$lambda$0() {
        }

        public MapShadowNode(RNMBXMapViewManager mViewManager) {
            Intrinsics.checkNotNullParameter(mViewManager, "mViewManager");
            this.mViewManager = mViewManager;
        }

        @Override
        public void dispose() {
            super.dispose();
            diposeNativeMapView();
        }

        private final void diposeNativeMapView() {
            if (this.mViewManager.getByReactTag(getReactTag()) != null) {
                UiThreadUtil.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        RNMBXMapViewManager.MapShadowNode.diposeNativeMapView$lambda$0();
                    }
                });
            }
        }
    }
}
