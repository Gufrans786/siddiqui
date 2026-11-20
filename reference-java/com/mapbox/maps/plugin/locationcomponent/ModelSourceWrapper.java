package com.mapbox.maps.plugin.locationcomponent;

import android.util.Log;
import com.caverock.androidsvg.SVGParser;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.MapboxLocationComponentException;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\b\u0001\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\u0010\nJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012J\"\u0010\u0015\u001a\u00020\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\u0018\u001a\u00020\u000fJ\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u000fH\u0002J\u000e\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/ModelSourceWrapper;", "", "sourceId", "", ImagesContract.URL, "position", "", "", ModelSourceWrapper.MATERIAL_OVERRIDES, ModelSourceWrapper.NODE_OVERRIDES, "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getSourceId", "()Ljava/lang/String;", "sourceProperties", "Ljava/util/HashMap;", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "bindTo", "", "setPositionAndOrientation", "lngLat", ModelSourceWrapper.ORIENTATION, "toValue", "updateProperty", "propertyName", "value", "updateStyle", "Companion", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ModelSourceWrapper {
    public static final String DEFAULT_MODEL_NAME = "defaultModel";
    public static final String MATERIAL_OVERRIDES = "materialOverrides";
    public static final String MODELS = "models";
    public static final String NODE_OVERRIDES = "nodeOverrides";
    public static final String ORIENTATION = "orientation";
    public static final String POSITION = "position";
    private static final String TAG = "Mbgl-ModelSourceWrapper";
    public static final String TYPE = "model";
    public static final String URL = "uri";
    private final String sourceId;
    private HashMap<String, Value> sourceProperties;
    private MapboxStyleManager style;
    private String url;

    public ModelSourceWrapper(String sourceId, String url, List<Double> position, List<String> materialOverrides, List<String> nodeOverrides) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
        Intrinsics.checkNotNullParameter(nodeOverrides, "nodeOverrides");
        this.sourceId = sourceId;
        this.url = url;
        this.sourceProperties = new HashMap<>();
        HashMap map = new HashMap();
        HashMap map2 = map;
        map2.put(URL, new Value(this.url));
        List<Double> list = position;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        map2.put("position", new Value((List<Value>) arrayList));
        List listListOf = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d), Double.valueOf(0.0d)});
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it2 = listListOf.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new Value(((Number) it2.next()).doubleValue()));
        }
        map2.put(ORIENTATION, new Value((List<Value>) arrayList2));
        List<String> list2 = materialOverrides;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(new Value((String) it3.next()));
        }
        map2.put(MATERIAL_OVERRIDES, new Value((List<Value>) arrayList3));
        List<String> list3 = nodeOverrides;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        Iterator<T> it4 = list3.iterator();
        while (it4.hasNext()) {
            arrayList4.add(new Value((String) it4.next()));
        }
        map2.put(NODE_OVERRIDES, new Value((List<Value>) arrayList4));
        HashMap map3 = new HashMap();
        map3.put(DEFAULT_MODEL_NAME, new Value((HashMap<String, Value>) map));
        this.sourceProperties.put(SVGParser.XML_STYLESHEET_ATTR_TYPE, new Value(TYPE));
        this.sourceProperties.put(MODELS, new Value((HashMap<String, Value>) map3));
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final void updateStyle(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
    }

    public final void bindTo(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
        String error = style.addStyleSource(this.sourceId, toValue()).getError();
        if (error == null) {
            return;
        }
        Log.e(TAG, this.sourceProperties.toString());
        throw new MapboxLocationComponentException("Add source failed: " + error);
    }

    public final void setPositionAndOrientation(List<Double> lngLat, List<Double> orientation) {
        Intrinsics.checkNotNullParameter(lngLat, "lngLat");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Pair[] pairArr = new Pair[3];
        List<Double> list = lngLat;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        pairArr[0] = TuplesKt.to("position", new Value((List<Value>) arrayList));
        List<Double> list2 = orientation;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new Value(((Number) it2.next()).doubleValue()));
        }
        pairArr[1] = TuplesKt.to(ORIENTATION, new Value((List<Value>) arrayList2));
        pairArr[2] = TuplesKt.to(URL, new Value(this.url));
        updateProperty(MODELS, new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(DEFAULT_MODEL_NAME, new Value((HashMap<String, Value>) MapsKt.hashMapOf(pairArr))))));
    }

    public final Value toValue() {
        return new Value(this.sourceProperties);
    }

    private final void updateProperty(String propertyName, Value value) {
        String error;
        this.sourceProperties.put(propertyName, value);
        MapboxStyleManager mapboxStyleManager = this.style;
        if (mapboxStyleManager == null || (error = mapboxStyleManager.setStyleSourceProperty(this.sourceId, propertyName, value).getError()) == null) {
            return;
        }
        MapboxLogger.logE(TAG, "Set source property \"" + propertyName + "\" failed:\nError: " + error + "\nValue set: " + value);
    }
}
