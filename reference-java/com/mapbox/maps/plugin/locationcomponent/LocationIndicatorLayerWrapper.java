package com.mapbox.maps.plugin.locationcomponent;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.bindgen.Value;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000f\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u0014\u0010\f\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000bJ\u001c\u0010\u0011\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0002J\u0014\u0010\u0015\u001a\u00020\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u001a\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0007J\u0014\u0010\u0019\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\nJ\u000e\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0003J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u000bJ\u0010\u0010\u001e\u001a\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0003J\u000e\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u000b¨\u0006\""}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationIndicatorLayerWrapper;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerWrapper;", "layerId", "", "(Ljava/lang/String;)V", "accuracyRadius", "", "", "accuracyRadiusBorderColor", "expression", "", "Lcom/mapbox/bindgen/Value;", "accuracyRadiusColor", "bearing", "bearingImage", "bearingImageSize", "bearingImageSizeExpression", "buildTransition", BackgroundFetchConfig.FIELD_DELAY, "", TypedValues.TransitionType.S_DURATION, "emphasisCircleColor", "emphasisCircleColorExpression", "emphasisCircleColorTransition", "emphasisCircleRadius", "location", ViewProps.OPACITY, "shadowImage", "shadowImageSize", "shadowImageSizeExpression", "slot", "topImage", "topImageSize", "topImageSizeExpression", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationIndicatorLayerWrapper extends LocationLayerWrapper {
    public LocationIndicatorLayerWrapper(String layerId) {
        super(layerId);
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        getLayerProperties().put("id", new Value(layerId));
        getLayerProperties().put(SVGParser.XML_STYLESHEET_ATTR_TYPE, new Value("location-indicator"));
        getLayerProperties().put("location-transition", buildTransition(0L, 0L));
        getLayerProperties().put("bearing-transition", buildTransition(0L, 0L));
        getLayerProperties().put("perspective-compensation", new Value(0.9d));
        getLayerProperties().put("image-pitch-displacement", new Value(4.0d));
    }

    static Value buildTransition$default(LocationIndicatorLayerWrapper locationIndicatorLayerWrapper, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        if ((i & 2) != 0) {
            j2 = 0;
        }
        return locationIndicatorLayerWrapper.buildTransition(j, j2);
    }

    private final Value buildTransition(long delay, long duration) {
        HashMap map = new HashMap();
        HashMap map2 = map;
        map2.put(BackgroundFetchConfig.FIELD_DELAY, new Value(delay));
        map2.put(TypedValues.TransitionType.S_DURATION, new Value(duration));
        return new Value((HashMap<String, Value>) map);
    }

    public final void bearing(double bearing) {
        updateProperty("bearing", new Value(bearing));
    }

    public final void slot(String slot) {
        if (slot == null) {
            slot = "";
        }
        updateProperty("slot", new Value(slot));
    }

    public final void location(List<Double> location) {
        Intrinsics.checkNotNullParameter(location, "location");
        List<Double> list = location;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        updateProperty("location", new Value((List<Value>) arrayList));
    }

    public final void accuracyRadiusColor(List<? extends Value> expression) {
        Intrinsics.checkNotNullParameter(expression, "expression");
        updateProperty("accuracy-radius-color", new Value((List<Value>) expression));
    }

    public final void accuracyRadiusBorderColor(List<? extends Value> expression) {
        Intrinsics.checkNotNullParameter(expression, "expression");
        updateProperty("accuracy-radius-border-color", new Value((List<Value>) expression));
    }

    public final void shadowImageSize(Value shadowImageSizeExpression) {
        Intrinsics.checkNotNullParameter(shadowImageSizeExpression, "shadowImageSizeExpression");
        updateProperty("shadow-image-size", shadowImageSizeExpression);
    }

    public final void bearingImageSize(Value bearingImageSizeExpression) {
        Intrinsics.checkNotNullParameter(bearingImageSizeExpression, "bearingImageSizeExpression");
        updateProperty("bearing-image-size", bearingImageSizeExpression);
    }

    public final void topImageSize(Value topImageSizeExpression) {
        Intrinsics.checkNotNullParameter(topImageSizeExpression, "topImageSizeExpression");
        updateProperty("top-image-size", topImageSizeExpression);
    }

    public final void accuracyRadius(double accuracyRadius) {
        updateProperty("accuracy-radius", new Value(accuracyRadius));
    }

    public final void emphasisCircleRadius(double emphasisCircleRadius) {
        updateProperty("emphasis-circle-radius", new Value(emphasisCircleRadius));
    }

    public static void emphasisCircleColorTransition$default(LocationIndicatorLayerWrapper locationIndicatorLayerWrapper, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        if ((i & 2) != 0) {
            j2 = 0;
        }
        locationIndicatorLayerWrapper.emphasisCircleColorTransition(j, j2);
    }

    public final void emphasisCircleColorTransition(long delay, long duration) {
        updateProperty("emphasis-circle-color-transition", buildTransition(delay, duration));
    }

    public final void emphasisCircleColor(List<? extends Value> emphasisCircleColorExpression) {
        Intrinsics.checkNotNullParameter(emphasisCircleColorExpression, "emphasisCircleColorExpression");
        updateProperty("emphasis-circle-color", new Value((List<Value>) emphasisCircleColorExpression));
    }

    public final void topImage(String topImage) {
        Intrinsics.checkNotNullParameter(topImage, "topImage");
        updateProperty("top-image", new Value(topImage));
    }

    public final void bearingImage(String bearingImage) {
        Intrinsics.checkNotNullParameter(bearingImage, "bearingImage");
        updateProperty("bearing-image", new Value(bearingImage));
    }

    public final void shadowImage(String shadowImage) {
        Intrinsics.checkNotNullParameter(shadowImage, "shadowImage");
        updateProperty("shadow-image", new Value(shadowImage));
    }

    public final void opacity(double opacity) {
        updateProperty("location-indicator-opacity", new Value(opacity));
    }
}
