package com.mapbox.maps.plugin.locationcomponent;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.plugin.ModelElevationReference;
import com.mapbox.maps.plugin.ModelScaleMode;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u0001B±\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0018\u001a\u00020\u0007\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u000e\u0010\u001a\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u000f\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020!2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0014\u0010\u0005\u001a\u00020!2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u000b\u001a\u00020!2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0010\u0010(\u001a\u00020!2\b\u0010(\u001a\u0004\u0018\u00010\u0003¨\u0006)"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/ModelLayerWrapper;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerWrapper;", "layerId", "", "sourceId", "modelScale", "", "", "modelRotation", "modelRotationExpression", "Lcom/mapbox/bindgen/Value;", "modelTranslation", "modelCastShadows", "", "modelReceiveShadows", "modelOpacity", "modelOpacityExpression", "modelScaleMode", "Lcom/mapbox/maps/plugin/ModelScaleMode;", "modelEmissiveStrength", "modelEmissiveStrengthExpression", "modelColor", "", "modelColorExpression", "modelColorMixIntensity", "modelColorMixIntensityExpression", "modelElevationReference", "Lcom/mapbox/maps/plugin/ModelElevationReference;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mapbox/bindgen/Value;Ljava/util/List;ZZDLcom/mapbox/bindgen/Value;Lcom/mapbox/maps/plugin/ModelScaleMode;DLcom/mapbox/bindgen/Value;ILcom/mapbox/bindgen/Value;DLcom/mapbox/bindgen/Value;Lcom/mapbox/maps/plugin/ModelElevationReference;)V", "buildTransition", BackgroundFetchConfig.FIELD_DELAY, "", TypedValues.TransitionType.S_DURATION, "", ViewProps.OPACITY, "rotation", "scale", "modelScaleExpression", "scaleExpression", "translation", "slot", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ModelLayerWrapper extends LocationLayerWrapper {
    public ModelLayerWrapper(String layerId, String sourceId, List<Double> modelScale, List<Double> modelRotation, Value value, List<Double> modelTranslation, boolean z, boolean z2, double d, Value value2, ModelScaleMode modelScaleMode, double d2, Value value3, int i, Value value4, double d3, Value value5, ModelElevationReference modelElevationReference) {
        Value value6;
        super(layerId);
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
        getLayerProperties().put("id", new Value(layerId));
        getLayerProperties().put(SVGParser.XML_STYLESHEET_ATTR_TYPE, new Value(ModelSourceWrapper.TYPE));
        getLayerProperties().put("source", new Value(sourceId));
        getLayerProperties().put("model-type", new Value("location-indicator"));
        HashMap<String, Value> layerProperties = getLayerProperties();
        List<Double> list = modelScale;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        layerProperties.put("model-scale", new Value((List<Value>) arrayList));
        HashMap<String, Value> layerProperties2 = getLayerProperties();
        if (value == null) {
            List<Double> list2 = modelRotation;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new Value(((Number) it2.next()).doubleValue()));
            }
            value6 = new Value((List<Value>) arrayList2);
        } else {
            value6 = value;
        }
        layerProperties2.put("model-rotation", value6);
        HashMap<String, Value> layerProperties3 = getLayerProperties();
        List<Double> list3 = modelTranslation;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        Iterator<T> it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList3.add(new Value(((Number) it3.next()).doubleValue()));
        }
        layerProperties3.put("model-translation", new Value((List<Value>) arrayList3));
        getLayerProperties().put("model-cast-shadows", new Value(z));
        getLayerProperties().put("model-receive-shadows", new Value(z2));
        getLayerProperties().put("model-opacity", value2 == null ? new Value(d) : value2);
        getLayerProperties().put("model-scale-mode", new Value(modelScaleMode.getValue()));
        getLayerProperties().put("model-scale-transition", buildTransition(0L, 0L));
        getLayerProperties().put("model-rotation-transition", buildTransition(0L, 0L));
        getLayerProperties().put("model-emissive-strength", value3 == null ? new Value(d2) : value3);
        getLayerProperties().put("model-color", value4 == null ? ColorUtils.INSTANCE.colorIntToRgbaExpression(i) : value4);
        getLayerProperties().put("model-color-mix-intensity", value5 == null ? new Value(d3) : value5);
        getLayerProperties().put("model-elevation-reference", new Value(modelElevationReference.getValue()));
    }

    private final Value buildTransition(long delay, long duration) {
        HashMap map = new HashMap();
        HashMap map2 = map;
        map2.put(BackgroundFetchConfig.FIELD_DELAY, new Value(delay));
        map2.put(TypedValues.TransitionType.S_DURATION, new Value(duration));
        return new Value((HashMap<String, Value>) map);
    }

    public final void modelScale(List<Double> scale) {
        Intrinsics.checkNotNullParameter(scale, "scale");
        List<Double> list = scale;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        updateProperty("model-scale", new Value((List<Value>) arrayList));
    }

    public final void modelScaleExpression(Value scaleExpression) {
        Intrinsics.checkNotNullParameter(scaleExpression, "scaleExpression");
        updateProperty("model-scale", scaleExpression);
    }

    public final void modelRotation(List<Double> rotation) {
        Intrinsics.checkNotNullParameter(rotation, "rotation");
        List<Double> list = rotation;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        updateProperty("model-rotation", new Value((List<Value>) arrayList));
    }

    public final void modelTranslation(List<Double> translation) {
        Intrinsics.checkNotNullParameter(translation, "translation");
        List<Double> list = translation;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        updateProperty("model-translation", new Value((List<Value>) arrayList));
    }

    public final void modelOpacity(double opacity) {
        updateProperty("model-opacity", new Value(opacity));
    }

    public final void modelScaleMode(ModelScaleMode modelScaleMode) {
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        updateProperty("model-scale-mode", new Value(modelScaleMode.getValue()));
    }

    public final void modelElevationReference(ModelElevationReference modelElevationReference) {
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
        updateProperty("model-elevation-reference", new Value(modelElevationReference.getValue()));
    }

    public final void slot(String slot) {
        if (slot == null) {
            slot = "";
        }
        updateProperty("slot", new Value(slot));
    }
}
