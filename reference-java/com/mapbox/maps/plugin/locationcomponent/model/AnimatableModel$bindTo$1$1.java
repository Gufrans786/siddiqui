package com.mapbox.maps.plugin.locationcomponent.model;

import com.mapbox.bindgen.Value;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
class AnimatableModel$bindTo$1$1 extends FunctionReferenceImpl implements Function1<Value, Boolean> {
    AnimatableModel$bindTo$1$1(Object obj) {
        super(1, obj, AnimatableModel.class, "updateFeatureState", "updateFeatureState(Lcom/mapbox/bindgen/Value;)Z", 0);
    }

    @Override
    public final Boolean invoke(Value p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return Boolean.valueOf(((AnimatableModel) this.receiver).updateFeatureState(p0));
    }
}
