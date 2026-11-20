package com.mapbox.maps.extension.style.model;

import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0007\u001a\u0014\u0010\t\u001a\u00020\u0007*\u00020\n2\u0006\u0010\u0000\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {ModelSourceWrapper.TYPE, "Lcom/mapbox/maps/extension/style/model/ModelExtensionImpl;", "modelId", "", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/model/ModelExtensionImpl$Builder;", "", "Lkotlin/ExtensionFunctionType;", "addModel", "Lcom/mapbox/maps/MapboxStyleManager;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleModelExtension;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ModelUtils {
    public static final ModelExtensionImpl model(String modelId, Function1<? super ModelExtensionImpl.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        Intrinsics.checkNotNullParameter(block, "block");
        ModelExtensionImpl.Builder builder = new ModelExtensionImpl.Builder(modelId);
        block.invoke(builder);
        return builder.build();
    }

    public static final void addModel(MapboxStyleManager mapboxStyleManager, StyleContract.StyleModelExtension model) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(model, "model");
        model.bindTo(mapboxStyleManager);
    }
}
