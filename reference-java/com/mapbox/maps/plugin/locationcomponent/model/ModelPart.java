package com.mapbox.maps.plugin.locationcomponent.model;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Value;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J0\u0010\u0012\u001a\u00020\u00132!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\bH\u0000¢\u0006\u0002\b\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R5\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\bX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/model/ModelPart;", "", "featureStateId", "", "(Ljava/lang/String;)V", "getFeatureStateId", "()Ljava/lang/String;", "updateFeatureState", "Lkotlin/Function1;", "Lcom/mapbox/bindgen/Value;", "Lkotlin/ParameterName;", "name", RemoteConfigConstants.ResponseFieldKey.STATE, "", "getUpdateFeatureState", "()Lkotlin/jvm/functions/Function1;", "setUpdateFeatureState", "(Lkotlin/jvm/functions/Function1;)V", "bindTo", "", "mapFeatureStateDelegate", "bindTo$plugin_locationcomponent_release", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class ModelPart {
    private final String featureStateId;
    private Function1<? super Value, Boolean> updateFeatureState;

    public ModelPart(String featureStateId) {
        Intrinsics.checkNotNullParameter(featureStateId, "featureStateId");
        this.featureStateId = featureStateId;
        this.updateFeatureState = new Function1<Value, Boolean>() {
            @Override
            public final Boolean invoke(Value it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return false;
            }
        };
    }

    public final String getFeatureStateId() {
        return this.featureStateId;
    }

    protected final Function1<Value, Boolean> getUpdateFeatureState() {
        return this.updateFeatureState;
    }

    protected final void setUpdateFeatureState(Function1<? super Value, Boolean> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.updateFeatureState = function1;
    }

    public final void bindTo$plugin_locationcomponent_release(Function1<? super Value, Boolean> mapFeatureStateDelegate) {
        Intrinsics.checkNotNullParameter(mapFeatureStateDelegate, "mapFeatureStateDelegate");
        this.updateFeatureState = mapFeatureStateDelegate;
    }
}
