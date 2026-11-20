package com.mapbox.maps.plugin.annotation.generated;

import com.google.gson.JsonElement;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Polygon;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.generated.FillLayer;
import com.mapbox.maps.extension.style.layers.properties.generated.FillElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.FillTranslateAnchor;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.plugin.annotation.AnnotationConfig;
import com.mapbox.maps.plugin.annotation.AnnotationManagerImpl;
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

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u001b\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u008d\u000122\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0001:\u0002\u008d\u0001B\u0019\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0017\u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030Z2\b\u0010\u0086\u0001\u001a\u00030\u0087\u0001J\u0016\u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030Z2\u0007\u0010\u0088\u0001\u001a\u00020\u001eJ\t\u0010\u0089\u0001\u001a\u00020\u001eH\u0016J\u0013\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u008c\u0001\u001a\u00020\u001eH\u0014R(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R0\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00168G@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR.\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b \u0010\u0019\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R.\u0010%\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b&\u0010\u0019\u001a\u0004\b'\u0010\"\"\u0004\b(\u0010$R*\u0010)\u001a\u0004\u0018\u00010\u00162\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00168G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010\u001b\"\u0004\b+\u0010\u001dR(\u0010,\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010\"\"\u0004\b.\u0010$R.\u0010/\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b0\u0010\u0019\u001a\u0004\b1\u0010\"\"\u0004\b2\u0010$R.\u00103\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u00108F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b4\u0010\u0019\u001a\u0004\b5\u0010\u0013\"\u0004\b6\u0010\u0015R.\u00108\u001a\u0004\u0018\u0001072\b\u0010\u000f\u001a\u0004\u0018\u0001078F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b9\u0010\u0019\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R(\u0010?\u001a\u0004\u0018\u00010>2\b\u0010\u000f\u001a\u0004\u0018\u00010>8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR(\u0010D\u001a\u0004\u0018\u00010>2\b\u0010\u000f\u001a\u0004\u0018\u00010>8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bE\u0010A\"\u0004\bF\u0010CR*\u0010G\u001a\u0004\u0018\u00010\u00162\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00168G@FX\u0086\u000e¢\u0006\f\u001a\u0004\bH\u0010\u001b\"\u0004\bI\u0010\u001dR(\u0010J\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bK\u0010\"\"\u0004\bL\u0010$R.\u0010M\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bN\u0010\u0019\u001a\u0004\bO\u0010\"\"\u0004\bP\u0010$R(\u0010Q\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bR\u0010\"\"\u0004\bS\u0010$R(\u0010T\u001a\u0004\u0018\u00010>2\b\u0010\u000f\u001a\u0004\u0018\u00010>8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bU\u0010A\"\u0004\bV\u0010CR(\u0010W\u001a\u0004\u0018\u00010>2\b\u0010\u000f\u001a\u0004\u0018\u00010>8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bX\u0010A\"\u0004\bY\u0010CR4\u0010[\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010Z2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010Z8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R(\u0010a\u001a\u0004\u0018\u00010`2\b\u0010\u000f\u001a\u0004\u0018\u00010`8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR0\u0010f\u001a\u0004\u0018\u00010\u00162\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00168G@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bg\u0010\u0019\u001a\u0004\bh\u0010\u001b\"\u0004\bi\u0010\u001dR.\u0010j\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bk\u0010\u0019\u001a\u0004\bl\u0010\"\"\u0004\bm\u0010$R.\u0010n\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bo\u0010\u0019\u001a\u0004\bp\u0010\"\"\u0004\bq\u0010$R.\u0010r\u001a\u0004\u0018\u00010>2\b\u0010\u000f\u001a\u0004\u0018\u00010>8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bs\u0010\u0019\u001a\u0004\bt\u0010A\"\u0004\bu\u0010CR(\u0010w\u001a\u0004\u0018\u00010v2\b\u0010\u000f\u001a\u0004\u0018\u00010v8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bx\u0010y\"\u0004\bz\u0010{R(\u0010|\u001a\u0004\u0018\u00010>2\b\u0010\u000f\u001a\u0004\u0018\u00010>8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b}\u0010A\"\u0004\b~\u0010CR*\u0010\u007f\u001a\u0004\u0018\u00010>2\b\u0010\u000f\u001a\u0004\u0018\u00010>8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0080\u0001\u0010A\"\u0005\b\u0081\u0001\u0010CR+\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0083\u0001\u0010\"\"\u0005\b\u0084\u0001\u0010$¨\u0006\u008e\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PolygonAnnotationManager;", "Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;", "Lcom/mapbox/geojson/Polygon;", "Lcom/mapbox/maps/plugin/annotation/generated/PolygonAnnotation;", "Lcom/mapbox/maps/plugin/annotation/generated/PolygonAnnotationOptions;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolygonAnnotationDragListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolygonAnnotationClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolygonAnnotationLongClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolygonAnnotationInteractionListener;", "Lcom/mapbox/maps/extension/style/layers/generated/FillLayer;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "annotationConfig", "Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;)V", "value", "", "fillAntialias", "getFillAntialias", "()Ljava/lang/Boolean;", "setFillAntialias", "(Ljava/lang/Boolean;)V", "", "fillBridgeGuardRailColorInt", "getFillBridgeGuardRailColorInt$annotations", "()V", "getFillBridgeGuardRailColorInt", "()Ljava/lang/Integer;", "setFillBridgeGuardRailColorInt", "(Ljava/lang/Integer;)V", "", "fillBridgeGuardRailColorString", "getFillBridgeGuardRailColorString$annotations", "getFillBridgeGuardRailColorString", "()Ljava/lang/String;", "setFillBridgeGuardRailColorString", "(Ljava/lang/String;)V", "fillBridgeGuardRailColorUseTheme", "getFillBridgeGuardRailColorUseTheme$annotations", "getFillBridgeGuardRailColorUseTheme", "setFillBridgeGuardRailColorUseTheme", "fillColorInt", "getFillColorInt", "setFillColorInt", "fillColorString", "getFillColorString", "setFillColorString", "fillColorUseTheme", "getFillColorUseTheme$annotations", "getFillColorUseTheme", "setFillColorUseTheme", "fillConstructBridgeGuardRail", "getFillConstructBridgeGuardRail$annotations", "getFillConstructBridgeGuardRail", "setFillConstructBridgeGuardRail", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;", "fillElevationReference", "getFillElevationReference$annotations", "getFillElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;", "setFillElevationReference", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;)V", "", "fillEmissiveStrength", "getFillEmissiveStrength", "()Ljava/lang/Double;", "setFillEmissiveStrength", "(Ljava/lang/Double;)V", "fillOpacity", "getFillOpacity", "setFillOpacity", "fillOutlineColorInt", "getFillOutlineColorInt", "setFillOutlineColorInt", "fillOutlineColorString", "getFillOutlineColorString", "setFillOutlineColorString", "fillOutlineColorUseTheme", "getFillOutlineColorUseTheme$annotations", "getFillOutlineColorUseTheme", "setFillOutlineColorUseTheme", "fillPattern", "getFillPattern", "setFillPattern", "fillPatternCrossFade", "getFillPatternCrossFade", "setFillPatternCrossFade", "fillSortKey", "getFillSortKey", "setFillSortKey", "", "fillTranslate", "getFillTranslate", "()Ljava/util/List;", "setFillTranslate", "(Ljava/util/List;)V", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;", "fillTranslateAnchor", "getFillTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;", "setFillTranslateAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;)V", "fillTunnelStructureColorInt", "getFillTunnelStructureColorInt$annotations", "getFillTunnelStructureColorInt", "setFillTunnelStructureColorInt", "fillTunnelStructureColorString", "getFillTunnelStructureColorString$annotations", "getFillTunnelStructureColorString", "setFillTunnelStructureColorString", "fillTunnelStructureColorUseTheme", "getFillTunnelStructureColorUseTheme$annotations", "getFillTunnelStructureColorUseTheme", "setFillTunnelStructureColorUseTheme", "fillZOffset", "getFillZOffset$annotations", "getFillZOffset", "setFillZOffset", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "layerFilter", "getLayerFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "setLayerFilter", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "maxZoom", "getMaxZoom", "setMaxZoom", "minZoom", "getMinZoom", "setMinZoom", "slot", "getSlot", "setSlot", "create", "featureCollection", "Lcom/mapbox/geojson/FeatureCollection;", "json", "getAnnotationIdKey", "setDataDrivenPropertyIsUsed", "", "property", "Companion", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PolygonAnnotationManager extends AnnotationManagerImpl<Polygon, PolygonAnnotation, PolygonAnnotationOptions, OnPolygonAnnotationDragListener, OnPolygonAnnotationClickListener, OnPolygonAnnotationLongClickListener, OnPolygonAnnotationInteractionListener, FillLayer> {

    public static final Companion INSTANCE = new Companion(null);
    private static AtomicLong ID_GENERATOR = new AtomicLong(0);

    public static void getFillBridgeGuardRailColorInt$annotations() {
    }

    public static void getFillBridgeGuardRailColorString$annotations() {
    }

    public static void getFillBridgeGuardRailColorUseTheme$annotations() {
    }

    public static void getFillColorUseTheme$annotations() {
    }

    public static void getFillConstructBridgeGuardRail$annotations() {
    }

    public static void getFillElevationReference$annotations() {
    }

    public static void getFillOutlineColorUseTheme$annotations() {
    }

    public static void getFillTunnelStructureColorInt$annotations() {
    }

    public static void getFillTunnelStructureColorString$annotations() {
    }

    public static void getFillTunnelStructureColorUseTheme$annotations() {
    }

    public static void getFillZOffset$annotations() {
    }

    public PolygonAnnotationManager(MapDelegateProvider mapDelegateProvider, AnnotationConfig annotationConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapDelegateProvider, (i & 2) != 0 ? null : annotationConfig);
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function2<String, String, FillLayer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2, FillLayer.class, "<init>", "<init>(Ljava/lang/String;Ljava/lang/String;)V", 0);
        }

        @Override
        public final FillLayer invoke(String p0, String p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return new FillLayer(p0, p1);
        }
    }

    public PolygonAnnotationManager(MapDelegateProvider delegateProvider, AnnotationConfig annotationConfig) {
        super(delegateProvider, annotationConfig, ID_GENERATOR.incrementAndGet(), "polygonAnnotation", AnonymousClass1.INSTANCE);
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME, false);
    }

    @Override
    protected void setDataDrivenPropertyIsUsed(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        switch (property.hashCode()) {
            case -2104747334:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY)) {
                    getLayer$plugin_annotation_release().fillSortKey(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY));
                    getDragLayer$plugin_annotation_release().fillSortKey(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY));
                    break;
                }
                break;
            case -1679439207:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_COLOR)) {
                    getLayer$plugin_annotation_release().fillColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR));
                    getDragLayer$plugin_annotation_release().fillColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR));
                    break;
                }
                break;
            case -1341964098:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL)) {
                    getLayer$plugin_annotation_release().fillConstructBridgeGuardRail(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL));
                    getDragLayer$plugin_annotation_release().fillConstructBridgeGuardRail(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL));
                    break;
                }
                break;
            case -1332788656:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET)) {
                    getLayer$plugin_annotation_release().fillZOffset(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET));
                    getDragLayer$plugin_annotation_release().fillZOffset(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET));
                    break;
                }
                break;
            case -1250124351:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY)) {
                    getLayer$plugin_annotation_release().fillOpacity(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY));
                    getDragLayer$plugin_annotation_release().fillOpacity(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY));
                    break;
                }
                break;
            case -1206458112:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().fillBridgeGuardRailColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().fillBridgeGuardRailColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME));
                    break;
                }
                break;
            case -1093239542:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR)) {
                    getLayer$plugin_annotation_release().fillBridgeGuardRailColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR));
                    getDragLayer$plugin_annotation_release().fillBridgeGuardRailColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR));
                    break;
                }
                break;
            case -1008087089:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().fillColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().fillColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME));
                    break;
                }
                break;
            case -774008506:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN)) {
                    getLayer$plugin_annotation_release().fillPattern(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN));
                    getDragLayer$plugin_annotation_release().fillPattern(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN));
                    break;
                }
                break;
            case 293483940:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().fillTunnelStructureColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().fillTunnelStructureColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME));
                    break;
                }
                break;
            case 805371460:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().fillOutlineColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().fillOutlineColorUseTheme(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME));
                    break;
                }
                break;
            case 1201248078:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR)) {
                    getLayer$plugin_annotation_release().fillOutlineColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR));
                    getDragLayer$plugin_annotation_release().fillOutlineColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR));
                    break;
                }
                break;
            case 2121434798:
                if (property.equals(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR)) {
                    getLayer$plugin_annotation_release().fillTunnelStructureColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR));
                    getDragLayer$plugin_annotation_release().fillTunnelStructureColor(Expression.INSTANCE.get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR));
                    break;
                }
                break;
        }
    }

    public final List<PolygonAnnotation> create(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(json);
        Intrinsics.checkNotNullExpressionValue(featureCollectionFromJson, "fromJson(json)");
        return create(featureCollectionFromJson);
    }

    public final List<PolygonAnnotation> create(FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        List<Feature> listFeatures = featureCollection.features();
        if (listFeatures == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Feature it : listFeatures) {
            PolygonAnnotationOptions.Companion companion = PolygonAnnotationOptions.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            PolygonAnnotationOptions polygonAnnotationOptionsFromFeature = companion.fromFeature(it);
            if (polygonAnnotationOptionsFromFeature != null) {
                arrayList.add(polygonAnnotationOptionsFromFeature);
            }
        }
        return create(arrayList);
    }

    @Override
    public String getAnnotationIdKey() {
        return PolygonAnnotation.ID_KEY;
    }

    public final Boolean getFillConstructBridgeGuardRail() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
        if (jsonElement != null) {
            return Boolean.valueOf(Boolean.parseBoolean(jsonElement.getAsString()));
        }
        return null;
    }

    public final void setFillConstructBridgeGuardRail(Boolean bool) {
        if (bool != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL, bool);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
        }
        update(getAnnotations());
    }

    public final FillElevationReference getFillElevationReference() {
        return getLayer$plugin_annotation_release().getFillElevationReference();
    }

    public final void setFillElevationReference(FillElevationReference fillElevationReference) {
        Value value;
        if (fillElevationReference == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-elevation-reference").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…reference\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(fillElevationReference);
        }
        setLayerProperty(value, "fill-elevation-reference");
    }

    public final Double getFillSortKey() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setFillSortKey(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY, d);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
        }
        update(getAnnotations());
    }

    public final Boolean getFillAntialias() {
        return getLayer$plugin_annotation_release().getFillAntialias();
    }

    public final void setFillAntialias(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-antialias").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…antialias\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "fill-antialias");
    }

    public final Integer getFillBridgeGuardRailColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
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

    public final void setFillBridgeGuardRailColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        }
        update(getAnnotations());
    }

    public final String getFillBridgeGuardRailColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillBridgeGuardRailColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        }
        update(getAnnotations());
    }

    public final Integer getFillColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
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

    public final void setFillColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        }
        update(getAnnotations());
    }

    public final String getFillColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getFillEmissiveStrength() {
        return getLayer$plugin_annotation_release().getFillEmissiveStrength();
    }

    public final void setFillEmissiveStrength(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-emissive-strength").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…-strength\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "fill-emissive-strength");
    }

    public final Double getFillOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setFillOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY, d);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
        }
        update(getAnnotations());
    }

    public final Integer getFillOutlineColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
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

    public final void setFillOutlineColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        }
        update(getAnnotations());
    }

    public final String getFillOutlineColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillOutlineColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        }
        update(getAnnotations());
    }

    public final String getFillPattern() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillPattern(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
        }
        update(getAnnotations());
    }

    public final Double getFillPatternCrossFade() {
        return getLayer$plugin_annotation_release().getFillPatternCrossFade();
    }

    public final void setFillPatternCrossFade(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-pattern-cross-fade").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ross-fade\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "fill-pattern-cross-fade");
    }

    public final List<Double> getFillTranslate() {
        return getLayer$plugin_annotation_release().getFillTranslate();
    }

    public final void setFillTranslate(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-translate").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…translate\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "fill-translate");
    }

    public final FillTranslateAnchor getFillTranslateAnchor() {
        return getLayer$plugin_annotation_release().getFillTranslateAnchor();
    }

    public final void setFillTranslateAnchor(FillTranslateAnchor fillTranslateAnchor) {
        Value value;
        if (fillTranslateAnchor == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-translate-anchor").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…te-anchor\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(fillTranslateAnchor);
        }
        setLayerProperty(value, "fill-translate-anchor");
    }

    public final Integer getFillTunnelStructureColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
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

    public final void setFillTunnelStructureColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        }
        update(getAnnotations());
    }

    public final String getFillTunnelStructureColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillTunnelStructureColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getFillZOffset() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setFillZOffset(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET, d);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
        }
        update(getAnnotations());
    }

    public final String getSlot() {
        return getLayer$plugin_annotation_release().getSlot();
    }

    public final void setSlot(String str) {
        Value value;
        if (str == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "slot").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…l\", \"slot\").value\n      }");
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
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "maxzoom").getValue();
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
            value = StyleManager.getStyleLayerPropertyDefaultValue("fill", "minzoom").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g… \"minzoom\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "minzoom");
    }

    public final String getFillBridgeGuardRailColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillBridgeGuardRailColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getFillColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getFillOutlineColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillOutlineColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getFillTunnelStructureColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillTunnelStructureColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PolygonAnnotationManager$Companion;", "", "()V", "ID_GENERATOR", "Ljava/util/concurrent/atomic/AtomicLong;", "getID_GENERATOR", "()Ljava/util/concurrent/atomic/AtomicLong;", "setID_GENERATOR", "(Ljava/util/concurrent/atomic/AtomicLong;)V", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AtomicLong getID_GENERATOR() {
            return PolygonAnnotationManager.ID_GENERATOR;
        }

        public final void setID_GENERATOR(AtomicLong atomicLong) {
            Intrinsics.checkNotNullParameter(atomicLong, "<set-?>");
            PolygonAnnotationManager.ID_GENERATOR = atomicLong;
        }
    }
}
