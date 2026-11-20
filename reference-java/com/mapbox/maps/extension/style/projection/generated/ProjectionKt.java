package com.mapbox.maps.extension.style.projection.generated;

import com.mapbox.maps.extension.style.layers.properties.generated.ProjectionName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"projection", "Lcom/mapbox/maps/extension/style/projection/generated/Projection;", "name", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ProjectionKt {
    public static final Projection projection(ProjectionName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Projection(name);
    }
}
