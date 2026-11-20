package com.mapbox.maps.plugin.annotation.generated;

import com.mapbox.maps.plugin.annotation.AnnotationConfig;
import com.mapbox.maps.plugin.annotation.AnnotationManager;
import com.mapbox.maps.plugin.annotation.AnnotationPlugin;
import com.mapbox.maps.plugin.annotation.AnnotationType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¨\u0006\u0005"}, d2 = {"createCircleAnnotationManager", "Lcom/mapbox/maps/plugin/annotation/generated/CircleAnnotationManager;", "Lcom/mapbox/maps/plugin/annotation/AnnotationPlugin;", "annotationConfig", "Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;", "plugin-annotation_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class CircleAnnotationManagerKt {
    public static CircleAnnotationManager createCircleAnnotationManager$default(AnnotationPlugin annotationPlugin, AnnotationConfig annotationConfig, int i, Object obj) {
        if ((i & 1) != 0) {
            annotationConfig = null;
        }
        return createCircleAnnotationManager(annotationPlugin, annotationConfig);
    }

    public static final CircleAnnotationManager createCircleAnnotationManager(AnnotationPlugin annotationPlugin, AnnotationConfig annotationConfig) {
        Intrinsics.checkNotNullParameter(annotationPlugin, "<this>");
        AnnotationManager<?, ?, ?, ?, ?, ?, ?> annotationManagerCreateAnnotationManager = annotationPlugin.createAnnotationManager(AnnotationType.CircleAnnotation, annotationConfig);
        Intrinsics.checkNotNull(annotationManagerCreateAnnotationManager, "null cannot be cast to non-null type com.mapbox.maps.plugin.annotation.generated.CircleAnnotationManager");
        return (CircleAnnotationManager) annotationManagerCreateAnnotationManager;
    }
}
