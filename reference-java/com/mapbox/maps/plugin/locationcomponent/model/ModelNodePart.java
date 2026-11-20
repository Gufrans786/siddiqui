package com.mapbox.maps.plugin.locationcomponent.model;

import com.mapbox.bindgen.Value;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u001b\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0002\u0010\bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR8\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00078\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\n\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/model/ModelNodePart;", "Lcom/mapbox/maps/plugin/locationcomponent/model/ModelPart;", "nodeOverride", "", "(Ljava/lang/String;)V", "featureStateId", ModelSourceWrapper.NODE_OVERRIDES, "", "(Ljava/lang/String;Ljava/util/List;)V", "getNodeOverrides", "()Ljava/util/List;", "value", "", "rotation", "getRotation$annotations", "()V", "getRotation", "setRotation", "(Ljava/util/List;)V", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class ModelNodePart extends ModelPart {
    private final List<String> nodeOverrides;
    private List<Double> rotation;

    public static void getRotation$annotations() {
    }

    public final List<String> getNodeOverrides() {
        return this.nodeOverrides;
    }

    public ModelNodePart(String featureStateId, List<String> nodeOverrides) {
        super(featureStateId);
        Intrinsics.checkNotNullParameter(featureStateId, "featureStateId");
        Intrinsics.checkNotNullParameter(nodeOverrides, "nodeOverrides");
        this.nodeOverrides = nodeOverrides;
        this.rotation = AnimatableModel.INSTANCE.getDEFAULT_ROTATION$plugin_locationcomponent_release();
    }

    public ModelNodePart(String nodeOverride) {
        this(nodeOverride, CollectionsKt.listOf(nodeOverride));
        Intrinsics.checkNotNullParameter(nodeOverride, "nodeOverride");
    }

    public final List<Double> getRotation() {
        return this.rotation;
    }

    public final void setRotation(List<Double> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.rotation = value;
        Function1<Value, Boolean> updateFeatureState = getUpdateFeatureState();
        Pair[] pairArr = new Pair[1];
        String str = getFeatureStateId() + "-rotation";
        List<Double> list = value;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Value(((Number) it.next()).doubleValue()));
        }
        pairArr[0] = TuplesKt.to(str, new Value((List<Value>) arrayList));
        updateFeatureState.invoke(new Value((HashMap<String, Value>) MapsKt.hashMapOf(pairArr)));
    }
}
