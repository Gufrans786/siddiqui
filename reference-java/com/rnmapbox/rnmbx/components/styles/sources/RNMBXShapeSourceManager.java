package com.rnmapbox.rnmbx.components.styles.sources;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXShapeSourceManagerInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventKeysKt;
import com.rnmapbox.rnmbx.shapeAnimators.ShapeAnimatorManager;
import com.rnmapbox.rnmbx.utils.ExpressionParser;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010$\n\u0002\b\u0002\u0018\u0000 A2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001AB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0002H\u0016J \u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0002H\u0016J\u000e\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u0019J\u0018\u0010#\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010$\u001a\u00020%H\u0017J\u0018\u0010&\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010'\u001a\u00020%H\u0017J\u0018\u0010(\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010)\u001a\u00020%H\u0017J\u0018\u0010*\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010+\u001a\u00020%H\u0017J\u0018\u0010,\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010-\u001a\u00020%H\u0017J\u0018\u0010.\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010/\u001a\u00020%H\u0017J\u0018\u00100\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u00101\u001a\u00020%H\u0017J\u0018\u00102\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u00103\u001a\u00020%H\u0017J\u0018\u00104\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u00105\u001a\u00020%H\u0017J\u0018\u00106\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u00107\u001a\u00020%H\u0017J\u0018\u00108\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u00109\u001a\u00020%H\u0017J\u0018\u0010:\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010;\u001a\u00020%H\u0017J\u0018\u0010<\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010=\u001a\u00020%H\u0017J\u0018\u0010>\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u00103\u001a\u00020%H\u0017J\u0016\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0018\u00010@H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006B"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXShapeSourceManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXShapeSource;", "Lcom/facebook/react/viewmanagers/RNMBXShapeSourceManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "shapeAnimatorManager", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "getShapeAnimatorManager", "()Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "getChildAt", "Landroid/view/View;", "source", "childPosition", "", "getChildCount", "addView", "", "childView", "removeViewAt", "onDropViewInstance", "view", "tagAssigned", "reactTag", "setId", "id", "Lcom/facebook/react/bridge/Dynamic;", "setExisting", "existing", "setUrl", "urlStr", "setShape", "geoJSONStr", "setCluster", "cluster", "setClusterRadius", TSGeofence.FIELD_RADIUS, "setClusterMaxZoomLevel", "clusterMaxZoom", "setClusterProperties", "map", "setMaxZoomLevel", "maxZoom", "setBuffer", "buffer", "setTolerance", "tolerance", "setLineMetrics", "lineMetrics", "setHasPressListener", "hasPressListener", "setHitbox", "customEvents", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXShapeSourceManager extends AbstractEventEmitter<RNMBXShapeSource> implements RNMBXShapeSourceManagerInterface<RNMBXShapeSource> {
    public static final String LOG_TAG = "RNMBXShapeSourceMgr";
    public static final String REACT_CLASS = "RNMBXShapeSource";
    private final ReactApplicationContext mContext;
    private final ShapeAnimatorManager shapeAnimatorManager;
    private final ViewTagResolver viewTagResolver;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.Array.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.Map.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReadableType.Boolean.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReadableType.Number.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReadableType.String.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final ShapeAnimatorManager getShapeAnimatorManager() {
        return this.shapeAnimatorManager;
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    public RNMBXShapeSourceManager(ReactApplicationContext mContext, ViewTagResolver viewTagResolver, ShapeAnimatorManager shapeAnimatorManager) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        Intrinsics.checkNotNullParameter(shapeAnimatorManager, "shapeAnimatorManager");
        this.mContext = mContext;
        this.viewTagResolver = viewTagResolver;
        this.shapeAnimatorManager = shapeAnimatorManager;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXShapeSource createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXShapeSource(reactContext, this);
    }

    @Override
    public View getChildAt(RNMBXShapeSource source, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source.getChildAt(childPosition);
    }

    @Override
    public int getChildCount(RNMBXShapeSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source.getChildCount();
    }

    @Override
    public void addView(RNMBXShapeSource source, View childView, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(childView, "childView");
        source.addLayer(childView, getChildCount(source));
    }

    @Override
    public void removeViewAt(RNMBXShapeSource source, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        source.removeLayer(childPosition);
    }

    @Override
    public void onDropViewInstance(RNMBXShapeSource view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewTagResolver.viewRemoved(view.getId());
        super.onDropViewInstance(view);
    }

    public final void tagAssigned(int reactTag) {
        this.viewTagResolver.tagAssigned(reactTag);
    }

    @Override
    @ReactProp(name = "id")
    public void setId(RNMBXShapeSource source, Dynamic id) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(id, "id");
        source.setID(id.asString());
    }

    @Override
    @ReactProp(name = "existing")
    public void setExisting(RNMBXShapeSource source, Dynamic existing) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(existing, "existing");
        source.setMExisting(Boolean.valueOf(existing.asBoolean()));
    }

    @Override
    @ReactProp(name = ImagesContract.URL)
    public void setUrl(RNMBXShapeSource source, Dynamic urlStr) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(urlStr, "urlStr");
        try {
            source.setURL(new URL(urlStr.asString()));
        } catch (MalformedURLException e) {
            Logger logger = Logger.INSTANCE;
            String localizedMessage = e.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "Unknown URL error";
            }
            logger.w(LOG_TAG, localizedMessage);
        }
    }

    @Override
    @ReactProp(name = "shape")
    public void setShape(RNMBXShapeSource source, Dynamic geoJSONStr) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(geoJSONStr, "geoJSONStr");
        String strAsString = geoJSONStr.asString();
        if (strAsString == null) {
            Logger.INSTANCE.e(LOG_TAG, "shape string is null");
        } else {
            source.setShape(strAsString);
        }
    }

    @Override
    @ReactProp(name = "cluster")
    public void setCluster(RNMBXShapeSource source, Dynamic cluster) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(cluster, "cluster");
        source.setCluster(cluster.asInt() == 1);
    }

    @Override
    @ReactProp(name = "clusterRadius")
    public void setClusterRadius(RNMBXShapeSource source, Dynamic radius) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(radius, "radius");
        source.setClusterRadius(radius.asInt());
    }

    @Override
    @ReactProp(name = "clusterMaxZoomLevel")
    public void setClusterMaxZoomLevel(RNMBXShapeSource source, Dynamic clusterMaxZoom) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(clusterMaxZoom, "clusterMaxZoom");
        source.setClusterMaxZoom(clusterMaxZoom.asInt());
    }

    @Override
    @ReactProp(name = "clusterProperties")
    public void setClusterProperties(RNMBXShapeSource source, Dynamic map) {
        Expression expressionFrom;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(map, "map");
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "clusterProperties map is null");
            return;
        }
        HashMap<String, Object> map2 = new HashMap<>();
        ReadableMapKeySetIterator readableMapKeySetIteratorKeySetIterator = readableMapAsMap.keySetIterator();
        while (readableMapKeySetIteratorKeySetIterator.hasNextKey()) {
            String strNextKey = readableMapKeySetIteratorKeySetIterator.nextKey();
            ReadableArray array = readableMapAsMap.getArray(strNextKey);
            ArrayList arrayList = new ArrayList();
            Intrinsics.checkNotNull(array);
            int size = array.size();
            for (int i = 0; i < size; i++) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[array.getType(i).ordinal()];
                if (i2 == 1) {
                    expressionFrom = ExpressionParser.from(array.getArray(i));
                    Intrinsics.checkNotNull(expressionFrom);
                } else if (i2 == 2) {
                    expressionFrom = ExpressionParser.from(array.getMap(i));
                    Intrinsics.checkNotNullExpressionValue(expressionFrom, "from(...)");
                } else if (i2 == 3) {
                    expressionFrom = Expression.INSTANCE.literal(array.getBoolean(i));
                } else if (i2 == 4) {
                    expressionFrom = Expression.INSTANCE.literal(array.getDouble(i));
                } else if (i2 == 5) {
                    String string = array.getString(i);
                    if (string != null) {
                        expressionFrom = Expression.INSTANCE.literal(string);
                    } else {
                        Logger.INSTANCE.e("setClusterProperties", "String is null for " + i);
                        return;
                    }
                } else {
                    Logger.INSTANCE.e("setClusterProperties", "Unknown type for " + i);
                    return;
                }
                arrayList.add(expressionFrom);
            }
            map2.put(strNextKey, new Value((List<Value>) arrayList));
        }
        source.setClusterProperties(map2);
    }

    @Override
    @ReactProp(name = "maxZoomLevel")
    public void setMaxZoomLevel(RNMBXShapeSource source, Dynamic maxZoom) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(maxZoom, "maxZoom");
        source.setMaxZoom(maxZoom.asInt());
    }

    @Override
    @ReactProp(name = "buffer")
    public void setBuffer(RNMBXShapeSource source, Dynamic buffer) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        source.setBuffer(buffer.asInt());
    }

    @Override
    @ReactProp(name = "tolerance")
    public void setTolerance(RNMBXShapeSource source, Dynamic tolerance) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(tolerance, "tolerance");
        source.setTolerance(tolerance.asDouble());
    }

    @Override
    @ReactProp(name = "lineMetrics")
    public void setLineMetrics(RNMBXShapeSource source, Dynamic lineMetrics) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(lineMetrics, "lineMetrics");
        source.setLineMetrics(lineMetrics.asBoolean());
    }

    @Override
    @ReactProp(name = "hasPressListener")
    public void setHasPressListener(RNMBXShapeSource source, Dynamic hasPressListener) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(hasPressListener, "hasPressListener");
        source.setHasPressListener(hasPressListener.asBoolean());
    }

    @Override
    @ReactProp(name = "hitbox")
    public void setHitbox(RNMBXShapeSource source, Dynamic map) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(map, "map");
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e(LOG_TAG, "hitbox map is null");
        } else {
            source.setHitbox(readableMapAsMap);
        }
    }

    @Override
    public Map<String, String> customEvents() {
        return EventKeysKt.eventMapOf(TuplesKt.to(EventKeys.SHAPE_SOURCE_LAYER_CLICK, "onMapboxShapeSourcePress"), TuplesKt.to(EventKeys.MAP_ANDROID_CALLBACK, "onAndroidCallback"));
    }
}
