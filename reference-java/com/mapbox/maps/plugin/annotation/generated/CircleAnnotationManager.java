package com.mapbox.maps.plugin.annotation.generated;

import com.google.gson.JsonElement;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Point;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.generated.CircleLayer;
import com.mapbox.maps.extension.style.layers.properties.generated.CircleElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.CirclePitchAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.CirclePitchScale;
import com.mapbox.maps.extension.style.layers.properties.generated.CircleTranslateAnchor;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.plugin.annotation.AnnotationConfig;
import com.mapbox.maps.plugin.annotation.AnnotationManagerImpl;
import com.mapbox.maps.plugin.annotation.ClusterAnnotationManager;
import com.mapbox.maps.plugin.annotation.OnClusterClickListener;
import com.mapbox.maps.plugin.annotation.OnClusterLongClickListener;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u0081\u000122\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00012\u00020\n:\u0002\u0081\u0001B\u0019\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\u0014\u0010y\u001a\b\u0012\u0004\u0012\u00020\u00030W2\u0006\u0010z\u001a\u00020{J\u0014\u0010y\u001a\b\u0012\u0004\u0012\u00020\u00030W2\u0006\u0010|\u001a\u00020\u001dJ\b\u0010}\u001a\u00020\u001dH\u0016J\u0011\u0010~\u001a\u00020\u007f2\u0007\u0010\u0080\u0001\u001a\u00020\u001dH\u0014R(\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R*\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u00178G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR(\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001d8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R.\u0010#\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001d8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b$\u0010%\u001a\u0004\b&\u0010 \"\u0004\b'\u0010\"R.\u0010)\u001a\u0004\u0018\u00010(2\b\u0010\u0010\u001a\u0004\u0018\u00010(8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b*\u0010%\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R(\u0010/\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u0010\u0014\"\u0004\b1\u0010\u0016R(\u00102\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b3\u0010\u0014\"\u0004\b4\u0010\u0016R(\u00106\u001a\u0004\u0018\u0001052\b\u0010\u0010\u001a\u0004\u0018\u0001058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R(\u0010<\u001a\u0004\u0018\u00010;2\b\u0010\u0010\u001a\u0004\u0018\u00010;8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R(\u0010A\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bB\u0010\u0014\"\u0004\bC\u0010\u0016R(\u0010D\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bE\u0010\u0014\"\u0004\bF\u0010\u0016R*\u0010G\u001a\u0004\u0018\u00010\u00172\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u00178G@FX\u0086\u000e¢\u0006\f\u001a\u0004\bH\u0010\u001a\"\u0004\bI\u0010\u001cR(\u0010J\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001d8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bK\u0010 \"\u0004\bL\u0010\"R.\u0010M\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001d8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bN\u0010%\u001a\u0004\bO\u0010 \"\u0004\bP\u0010\"R(\u0010Q\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bR\u0010\u0014\"\u0004\bS\u0010\u0016R(\u0010T\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bU\u0010\u0014\"\u0004\bV\u0010\u0016R4\u0010X\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010W2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010W8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R(\u0010^\u001a\u0004\u0018\u00010]2\b\u0010\u0010\u001a\u0004\u0018\u00010]8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u001a\u0010c\u001a\b\u0012\u0004\u0012\u00020e0dX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u0010ZR\u001a\u0010g\u001a\b\u0012\u0004\u0012\u00020h0dX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bi\u0010ZR(\u0010k\u001a\u0004\u0018\u00010j2\b\u0010\u0010\u001a\u0004\u0018\u00010j8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR(\u0010p\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bq\u0010\u0014\"\u0004\br\u0010\u0016R(\u0010s\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bt\u0010\u0014\"\u0004\bu\u0010\u0016R(\u0010v\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001d8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bw\u0010 \"\u0004\bx\u0010\"¨\u0006\u0082\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/CircleAnnotationManager;", "Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;", "Lcom/mapbox/geojson/Point;", "Lcom/mapbox/maps/plugin/annotation/generated/CircleAnnotation;", "Lcom/mapbox/maps/plugin/annotation/generated/CircleAnnotationOptions;", "Lcom/mapbox/maps/plugin/annotation/generated/OnCircleAnnotationDragListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnCircleAnnotationClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnCircleAnnotationLongClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnCircleAnnotationInteractionListener;", "Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;", "Lcom/mapbox/maps/plugin/annotation/ClusterAnnotationManager;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "annotationConfig", "Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;)V", "value", "", "circleBlur", "getCircleBlur", "()Ljava/lang/Double;", "setCircleBlur", "(Ljava/lang/Double;)V", "", "circleColorInt", "getCircleColorInt", "()Ljava/lang/Integer;", "setCircleColorInt", "(Ljava/lang/Integer;)V", "", "circleColorString", "getCircleColorString", "()Ljava/lang/String;", "setCircleColorString", "(Ljava/lang/String;)V", "circleColorUseTheme", "getCircleColorUseTheme$annotations", "()V", "getCircleColorUseTheme", "setCircleColorUseTheme", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;", "circleElevationReference", "getCircleElevationReference$annotations", "getCircleElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;", "setCircleElevationReference", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;)V", "circleEmissiveStrength", "getCircleEmissiveStrength", "setCircleEmissiveStrength", "circleOpacity", "getCircleOpacity", "setCircleOpacity", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;", "circlePitchAlignment", "getCirclePitchAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;", "setCirclePitchAlignment", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;)V", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;", "circlePitchScale", "getCirclePitchScale", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;", "setCirclePitchScale", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;)V", "circleRadius", "getCircleRadius", "setCircleRadius", "circleSortKey", "getCircleSortKey", "setCircleSortKey", "circleStrokeColorInt", "getCircleStrokeColorInt", "setCircleStrokeColorInt", "circleStrokeColorString", "getCircleStrokeColorString", "setCircleStrokeColorString", "circleStrokeColorUseTheme", "getCircleStrokeColorUseTheme$annotations", "getCircleStrokeColorUseTheme", "setCircleStrokeColorUseTheme", "circleStrokeOpacity", "getCircleStrokeOpacity", "setCircleStrokeOpacity", "circleStrokeWidth", "getCircleStrokeWidth", "setCircleStrokeWidth", "", "circleTranslate", "getCircleTranslate", "()Ljava/util/List;", "setCircleTranslate", "(Ljava/util/List;)V", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;", "circleTranslateAnchor", "getCircleTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;", "setCircleTranslateAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;)V", "clusterClickListeners", "", "Lcom/mapbox/maps/plugin/annotation/OnClusterClickListener;", "getClusterClickListeners", "clusterLongClickListeners", "Lcom/mapbox/maps/plugin/annotation/OnClusterLongClickListener;", "getClusterLongClickListeners", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "layerFilter", "getLayerFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "setLayerFilter", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "maxZoom", "getMaxZoom", "setMaxZoom", "minZoom", "getMinZoom", "setMinZoom", "slot", "getSlot", "setSlot", "create", "featureCollection", "Lcom/mapbox/geojson/FeatureCollection;", "json", "getAnnotationIdKey", "setDataDrivenPropertyIsUsed", "", "property", "Companion", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CircleAnnotationManager extends AnnotationManagerImpl<Point, CircleAnnotation, CircleAnnotationOptions, OnCircleAnnotationDragListener, OnCircleAnnotationClickListener, OnCircleAnnotationLongClickListener, OnCircleAnnotationInteractionListener, CircleLayer> implements ClusterAnnotationManager {

    public static final Companion INSTANCE = new Companion(null);
    private static AtomicLong ID_GENERATOR = new AtomicLong(0);
    private final List<OnClusterClickListener> clusterClickListeners;
    private final List<OnClusterLongClickListener> clusterLongClickListeners;

    public static void getCircleColorUseTheme$annotations() {
    }

    public static void getCircleElevationReference$annotations() {
    }

    public static void getCircleStrokeColorUseTheme$annotations() {
    }

    public CircleAnnotationManager(MapDelegateProvider mapDelegateProvider, AnnotationConfig annotationConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapDelegateProvider, (i & 2) != 0 ? null : annotationConfig);
    }

    @Override
    public boolean addClusterClickListener(OnClusterClickListener onClusterClickListener) {
        return ClusterAnnotationManager.DefaultImpls.addClusterClickListener(this, onClusterClickListener);
    }

    @Override
    public boolean addClusterLongClickListener(OnClusterLongClickListener onClusterLongClickListener) {
        return ClusterAnnotationManager.DefaultImpls.addClusterLongClickListener(this, onClusterLongClickListener);
    }

    @Override
    public boolean removeClusterClickListener(OnClusterClickListener onClusterClickListener) {
        return ClusterAnnotationManager.DefaultImpls.removeClusterClickListener(this, onClusterClickListener);
    }

    @Override
    public boolean removeClusterLongClickListener(OnClusterLongClickListener onClusterLongClickListener) {
        return ClusterAnnotationManager.DefaultImpls.removeClusterLongClickListener(this, onClusterLongClickListener);
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function2<String, String, CircleLayer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2, CircleLayer.class, "<init>", "<init>(Ljava/lang/String;Ljava/lang/String;)V", 0);
        }

        @Override
        public final CircleLayer invoke(String p0, String p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return new CircleLayer(p0, p1);
        }
    }

    public CircleAnnotationManager(MapDelegateProvider delegateProvider, AnnotationConfig annotationConfig) {
        super(delegateProvider, annotationConfig, ID_GENERATOR.incrementAndGet(), "circleAnnotation", AnonymousClass1.INSTANCE);
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.clusterClickListeners = new ArrayList();
        this.clusterLongClickListeners = new ArrayList();
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME, false);
    }

    @Override
    public List<OnClusterClickListener> getClusterClickListeners() {
        return this.clusterClickListeners;
    }

    @Override
    public List<OnClusterLongClickListener> getClusterLongClickListeners() {
        return this.clusterLongClickListeners;
    }

    @Override
    protected void setDataDrivenPropertyIsUsed(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        switch (property.hashCode()) {
            case -1290287090:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY)) {
                    getLayer$plugin_annotation_release().circleOpacity(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY));
                    getDragLayer$plugin_annotation_release().circleOpacity(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY));
                    break;
                }
                break;
            case -939323345:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS)) {
                    getLayer$plugin_annotation_release().circleRadius(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS));
                    getDragLayer$plugin_annotation_release().circleRadius(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS));
                    break;
                }
                break;
            case -917480164:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().circleColorUseTheme(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().circleColorUseTheme(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME));
                    break;
                }
                break;
            case -735768543:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().circleStrokeColorUseTheme(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().circleStrokeColorUseTheme(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME));
                    break;
                }
                break;
            case -585897621:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR)) {
                    getLayer$plugin_annotation_release().circleStrokeColor(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR));
                    getDragLayer$plugin_annotation_release().circleStrokeColor(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR));
                    break;
                }
                break;
            case -567613490:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH)) {
                    getLayer$plugin_annotation_release().circleStrokeWidth(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH));
                    getDragLayer$plugin_annotation_release().circleStrokeWidth(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH));
                    break;
                }
                break;
            case -113174716:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR)) {
                    getLayer$plugin_annotation_release().circleBlur(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR));
                    getDragLayer$plugin_annotation_release().circleBlur(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR));
                    break;
                }
                break;
            case 787555366:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR)) {
                    getLayer$plugin_annotation_release().circleColor(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR));
                    getDragLayer$plugin_annotation_release().circleColor(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR));
                    break;
                }
                break;
            case 945175053:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY)) {
                    getLayer$plugin_annotation_release().circleSortKey(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY));
                    getDragLayer$plugin_annotation_release().circleSortKey(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY));
                    break;
                }
                break;
            case 1671319571:
                if (property.equals(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY)) {
                    getLayer$plugin_annotation_release().circleStrokeOpacity(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY));
                    getDragLayer$plugin_annotation_release().circleStrokeOpacity(Expression.INSTANCE.get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY));
                    break;
                }
                break;
        }
    }

    public final List<CircleAnnotation> create(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(json);
        Intrinsics.checkNotNullExpressionValue(featureCollectionFromJson, "fromJson(json)");
        return create(featureCollectionFromJson);
    }

    public final List<CircleAnnotation> create(FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        List<Feature> listFeatures = featureCollection.features();
        if (listFeatures == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Feature it : listFeatures) {
            CircleAnnotationOptions.Companion companion = CircleAnnotationOptions.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            CircleAnnotationOptions circleAnnotationOptionsFromFeature = companion.fromFeature(it);
            if (circleAnnotationOptionsFromFeature != null) {
                arrayList.add(circleAnnotationOptionsFromFeature);
            }
        }
        return create(arrayList);
    }

    @Override
    public String getAnnotationIdKey() {
        return CircleAnnotation.ID_KEY;
    }

    public final CircleElevationReference getCircleElevationReference() {
        return getLayer$plugin_annotation_release().getCircleElevationReference();
    }

    public final void setCircleElevationReference(CircleElevationReference circleElevationReference) {
        Value value;
        if (circleElevationReference == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-elevation-reference").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…reference\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(circleElevationReference);
        }
        setLayerProperty(value, "circle-elevation-reference");
    }

    public final Double getCircleSortKey() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setCircleSortKey(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY, d);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY);
        }
        update(getAnnotations());
    }

    public final Double getCircleBlur() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setCircleBlur(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR, d);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR);
        }
        update(getAnnotations());
    }

    public final Integer getCircleColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setCircleColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR);
        }
        update(getAnnotations());
    }

    public final String getCircleColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setCircleColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR, str);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getCircleEmissiveStrength() {
        return getLayer$plugin_annotation_release().getCircleEmissiveStrength();
    }

    public final void setCircleEmissiveStrength(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-emissive-strength").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…-strength\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "circle-emissive-strength");
    }

    public final Double getCircleOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setCircleOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY, d);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY);
        }
        update(getAnnotations());
    }

    public final CirclePitchAlignment getCirclePitchAlignment() {
        return getLayer$plugin_annotation_release().getCirclePitchAlignment();
    }

    public final void setCirclePitchAlignment(CirclePitchAlignment circlePitchAlignment) {
        Value value;
        if (circlePitchAlignment == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-pitch-alignment").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…alignment\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(circlePitchAlignment);
        }
        setLayerProperty(value, "circle-pitch-alignment");
    }

    public final CirclePitchScale getCirclePitchScale() {
        return getLayer$plugin_annotation_release().getCirclePitchScale();
    }

    public final void setCirclePitchScale(CirclePitchScale circlePitchScale) {
        Value value;
        if (circlePitchScale == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-pitch-scale").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…tch-scale\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(circlePitchScale);
        }
        setLayerProperty(value, "circle-pitch-scale");
    }

    public final Double getCircleRadius() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setCircleRadius(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS, d);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS);
        }
        update(getAnnotations());
    }

    public final Integer getCircleStrokeColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setCircleStrokeColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR);
        }
        update(getAnnotations());
    }

    public final String getCircleStrokeColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setCircleStrokeColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR, str);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getCircleStrokeOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setCircleStrokeOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY, d);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY);
        }
        update(getAnnotations());
    }

    public final Double getCircleStrokeWidth() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setCircleStrokeWidth(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH, d);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH);
        }
        update(getAnnotations());
    }

    public final List<Double> getCircleTranslate() {
        return getLayer$plugin_annotation_release().getCircleTranslate();
    }

    public final void setCircleTranslate(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-translate").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…translate\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "circle-translate");
    }

    public final CircleTranslateAnchor getCircleTranslateAnchor() {
        return getLayer$plugin_annotation_release().getCircleTranslateAnchor();
    }

    public final void setCircleTranslateAnchor(CircleTranslateAnchor circleTranslateAnchor) {
        Value value;
        if (circleTranslateAnchor == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-translate-anchor").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…te-anchor\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(circleTranslateAnchor);
        }
        setLayerProperty(value, "circle-translate-anchor");
    }

    public final String getSlot() {
        return getLayer$plugin_annotation_release().getSlot();
    }

    public final void setSlot(String str) {
        Value value;
        if (str == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "slot").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…e\", \"slot\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(str);
        }
        setLayerProperty(value, "slot");
    }

    public final Double getMaxZoom() {
        return getLayer$plugin_annotation_release().getMaxZoom();
    }

    public final void setMaxZoom(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "maxzoom").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g… \"maxzoom\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "maxzoom");
    }

    public final Double getMinZoom() {
        return getLayer$plugin_annotation_release().getMinZoom();
    }

    public final void setMinZoom(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("circle", "minzoom").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g… \"minzoom\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "minzoom");
    }

    public final String getCircleColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setCircleColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME, str);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getCircleStrokeColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setCircleStrokeColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME, str);
            enableDataDrivenProperty(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    @Override
    public Expression getLayerFilter() {
        return getLayer$plugin_annotation_release().getFilter();
    }

    @Override
    public void setLayerFilter(Expression expression) {
        if (expression != null) {
            getLayer$plugin_annotation_release().filter(expression);
            getDragLayer$plugin_annotation_release().filter(expression);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/CircleAnnotationManager$Companion;", "", "()V", "ID_GENERATOR", "Ljava/util/concurrent/atomic/AtomicLong;", "getID_GENERATOR", "()Ljava/util/concurrent/atomic/AtomicLong;", "setID_GENERATOR", "(Ljava/util/concurrent/atomic/AtomicLong;)V", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AtomicLong getID_GENERATOR() {
            return CircleAnnotationManager.ID_GENERATOR;
        }

        public final void setID_GENERATOR(AtomicLong atomicLong) {
            Intrinsics.checkNotNullParameter(atomicLong, "<set-?>");
            CircleAnnotationManager.ID_GENERATOR = atomicLong;
        }
    }
}
