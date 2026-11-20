package com.mapbox.maps.plugin.annotation.generated;

import com.google.gson.JsonElement;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.generated.LineLayer;
import com.mapbox.maps.extension.style.layers.properties.generated.LineCap;
import com.mapbox.maps.extension.style.layers.properties.generated.LineElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.LineJoin;
import com.mapbox.maps.extension.style.layers.properties.generated.LineTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.LineWidthUnit;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.plugin.annotation.AnnotationConfig;
import com.mapbox.maps.plugin.annotation.AnnotationManagerImpl;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 Ç\u000122\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0001:\u0002Ç\u0001B\u0019\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0017\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030P2\b\u0010À\u0001\u001a\u00030Á\u0001J\u0016\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030P2\u0007\u0010Â\u0001\u001a\u00020\"J\t\u0010Ã\u0001\u001a\u00020\"H\u0016J\u0013\u0010Ä\u0001\u001a\u00030Å\u00012\u0007\u0010Æ\u0001\u001a\u00020\"H\u0014R(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u00108V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR*\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u001c8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R(\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R.\u0010(\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b)\u0010*\u001a\u0004\b+\u0010%\"\u0004\b,\u0010'R(\u0010-\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\u0019\"\u0004\b/\u0010\u001bR(\u00101\u001a\u0004\u0018\u0001002\b\u0010\u000f\u001a\u0004\u0018\u0001008F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R*\u00106\u001a\u0004\u0018\u00010\u001c2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u001c8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\u001f\"\u0004\b8\u0010!R(\u00109\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010%\"\u0004\b;\u0010'R.\u0010<\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b=\u0010*\u001a\u0004\b>\u0010%\"\u0004\b?\u0010'R.\u0010@\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bA\u0010*\u001a\u0004\bB\u0010\u0019\"\u0004\bC\u0010\u001bR.\u0010D\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bE\u0010*\u001a\u0004\bF\u0010\u0019\"\u0004\bG\u0010\u001bR.\u0010H\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bI\u0010*\u001a\u0004\bJ\u0010\u0019\"\u0004\bK\u0010\u001bR.\u0010L\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bM\u0010*\u001a\u0004\bN\u0010\u0019\"\u0004\bO\u0010\u001bR4\u0010Q\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR(\u0010V\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bW\u0010\u0019\"\u0004\bX\u0010\u001bR.\u0010Z\u001a\u0004\u0018\u00010Y2\b\u0010\u000f\u001a\u0004\u0018\u00010Y8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b[\u0010*\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R(\u0010`\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\ba\u0010\u0019\"\u0004\bb\u0010\u001bR(\u0010c\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bd\u0010\u0019\"\u0004\be\u0010\u001bR.\u0010f\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bg\u0010*\u001a\u0004\bh\u0010%\"\u0004\bi\u0010'R(\u0010k\u001a\u0004\u0018\u00010j2\b\u0010\u000f\u001a\u0004\u0018\u00010j8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR(\u0010p\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bq\u0010\u0019\"\u0004\br\u0010\u001bR(\u0010s\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bt\u0010\u0019\"\u0004\bu\u0010\u001bR(\u0010v\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bw\u0010\u0019\"\u0004\bx\u0010\u001bR(\u0010y\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bz\u0010\u0019\"\u0004\b{\u0010\u001bR(\u0010|\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b}\u0010%\"\u0004\b~\u0010'R*\u0010\u007f\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0080\u0001\u0010\u0019\"\u0005\b\u0081\u0001\u0010\u001bR+\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0083\u0001\u0010\u0019\"\u0005\b\u0084\u0001\u0010\u001bR+\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0086\u0001\u0010\u0019\"\u0005\b\u0087\u0001\u0010\u001bR7\u0010\u0088\u0001\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0089\u0001\u0010S\"\u0005\b\u008a\u0001\u0010UR/\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00012\t\u0010\u000f\u001a\u0005\u0018\u00010\u008b\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001R2\u0010\u0091\u0001\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\b\u0092\u0001\u0010*\u001a\u0005\b\u0093\u0001\u0010%\"\u0005\b\u0094\u0001\u0010'R4\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u001c2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u001c8G@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\b\u0096\u0001\u0010*\u001a\u0005\b\u0097\u0001\u0010\u001f\"\u0005\b\u0098\u0001\u0010!R2\u0010\u0099\u0001\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\b\u009a\u0001\u0010*\u001a\u0005\b\u009b\u0001\u0010%\"\u0005\b\u009c\u0001\u0010'R2\u0010\u009d\u0001\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\b\u009e\u0001\u0010*\u001a\u0005\b\u009f\u0001\u0010%\"\u0005\b \u0001\u0010'R>\u0010¡\u0001\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P8F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\b¢\u0001\u0010*\u001a\u0005\b£\u0001\u0010S\"\u0005\b¤\u0001\u0010UR7\u0010¥\u0001\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¦\u0001\u0010S\"\u0005\b§\u0001\u0010UR+\u0010¨\u0001\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b©\u0001\u0010\u0019\"\u0005\bª\u0001\u0010\u001bR6\u0010¬\u0001\u001a\u0005\u0018\u00010«\u00012\t\u0010\u000f\u001a\u0005\u0018\u00010«\u00018F@FX\u0087\u000e¢\u0006\u0017\u0012\u0005\b\u00ad\u0001\u0010*\u001a\u0006\b®\u0001\u0010¯\u0001\"\u0006\b°\u0001\u0010±\u0001R2\u0010²\u0001\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\b³\u0001\u0010*\u001a\u0005\b´\u0001\u0010\u0019\"\u0005\bµ\u0001\u0010\u001bR+\u0010¶\u0001\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b·\u0001\u0010\u0019\"\u0005\b¸\u0001\u0010\u001bR+\u0010¹\u0001\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00168F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bº\u0001\u0010\u0019\"\u0005\b»\u0001\u0010\u001bR+\u0010¼\u0001\u001a\u0004\u0018\u00010\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b½\u0001\u0010%\"\u0005\b¾\u0001\u0010'¨\u0006È\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PolylineAnnotationManager;", "Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;", "Lcom/mapbox/geojson/LineString;", "Lcom/mapbox/maps/plugin/annotation/generated/PolylineAnnotation;", "Lcom/mapbox/maps/plugin/annotation/generated/PolylineAnnotationOptions;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolylineAnnotationDragListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolylineAnnotationClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolylineAnnotationLongClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPolylineAnnotationInteractionListener;", "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "annotationConfig", "Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;)V", "value", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "layerFilter", "getLayerFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "setLayerFilter", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "", "lineBlur", "getLineBlur", "()Ljava/lang/Double;", "setLineBlur", "(Ljava/lang/Double;)V", "", "lineBorderColorInt", "getLineBorderColorInt", "()Ljava/lang/Integer;", "setLineBorderColorInt", "(Ljava/lang/Integer;)V", "", "lineBorderColorString", "getLineBorderColorString", "()Ljava/lang/String;", "setLineBorderColorString", "(Ljava/lang/String;)V", "lineBorderColorUseTheme", "getLineBorderColorUseTheme$annotations", "()V", "getLineBorderColorUseTheme", "setLineBorderColorUseTheme", "lineBorderWidth", "getLineBorderWidth", "setLineBorderWidth", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;", "lineCap", "getLineCap", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;", "setLineCap", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;)V", "lineColorInt", "getLineColorInt", "setLineColorInt", "lineColorString", "getLineColorString", "setLineColorString", "lineColorUseTheme", "getLineColorUseTheme$annotations", "getLineColorUseTheme", "setLineColorUseTheme", "lineCrossSlope", "getLineCrossSlope$annotations", "getLineCrossSlope", "setLineCrossSlope", "lineCutoutFadeWidth", "getLineCutoutFadeWidth$annotations", "getLineCutoutFadeWidth", "setLineCutoutFadeWidth", "lineCutoutOpacity", "getLineCutoutOpacity$annotations", "getLineCutoutOpacity", "setLineCutoutOpacity", "lineCutoutWidth", "getLineCutoutWidth$annotations", "getLineCutoutWidth", "setLineCutoutWidth", "", "lineDasharray", "getLineDasharray", "()Ljava/util/List;", "setLineDasharray", "(Ljava/util/List;)V", "lineDepthOcclusionFactor", "getLineDepthOcclusionFactor", "setLineDepthOcclusionFactor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;", "lineElevationReference", "getLineElevationReference$annotations", "getLineElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;", "setLineElevationReference", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;)V", "lineEmissiveStrength", "getLineEmissiveStrength", "setLineEmissiveStrength", "lineGapWidth", "getLineGapWidth", "setLineGapWidth", "lineGradientUseTheme", "getLineGradientUseTheme$annotations", "getLineGradientUseTheme", "setLineGradientUseTheme", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "lineJoin", "getLineJoin", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "setLineJoin", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;)V", "lineMiterLimit", "getLineMiterLimit", "setLineMiterLimit", "lineOcclusionOpacity", "getLineOcclusionOpacity", "setLineOcclusionOpacity", "lineOffset", "getLineOffset", "setLineOffset", "lineOpacity", "getLineOpacity", "setLineOpacity", "linePattern", "getLinePattern", "setLinePattern", "linePatternCrossFade", "getLinePatternCrossFade", "setLinePatternCrossFade", "lineRoundLimit", "getLineRoundLimit", "setLineRoundLimit", "lineSortKey", "getLineSortKey", "setLineSortKey", "lineTranslate", "getLineTranslate", "setLineTranslate", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;", "lineTranslateAnchor", "getLineTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;", "setLineTranslateAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;)V", "lineTrimColor", "getLineTrimColor$annotations", "getLineTrimColor", "setLineTrimColor", "lineTrimColorInt", "getLineTrimColorInt$annotations", "getLineTrimColorInt", "setLineTrimColorInt", "lineTrimColorString", "getLineTrimColorString$annotations", "getLineTrimColorString", "setLineTrimColorString", "lineTrimColorUseTheme", "getLineTrimColorUseTheme$annotations", "getLineTrimColorUseTheme", "setLineTrimColorUseTheme", "lineTrimFadeRange", "getLineTrimFadeRange$annotations", "getLineTrimFadeRange", "setLineTrimFadeRange", "lineTrimOffset", "getLineTrimOffset", "setLineTrimOffset", "lineWidth", "getLineWidth", "setLineWidth", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;", "lineWidthUnit", "getLineWidthUnit$annotations", "getLineWidthUnit", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;", "setLineWidthUnit", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;)V", "lineZOffset", "getLineZOffset$annotations", "getLineZOffset", "setLineZOffset", "maxZoom", "getMaxZoom", "setMaxZoom", "minZoom", "getMinZoom", "setMinZoom", "slot", "getSlot", "setSlot", "create", "featureCollection", "Lcom/mapbox/geojson/FeatureCollection;", "json", "getAnnotationIdKey", "setDataDrivenPropertyIsUsed", "", "property", "Companion", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PolylineAnnotationManager extends AnnotationManagerImpl<LineString, PolylineAnnotation, PolylineAnnotationOptions, OnPolylineAnnotationDragListener, OnPolylineAnnotationClickListener, OnPolylineAnnotationLongClickListener, OnPolylineAnnotationInteractionListener, LineLayer> {

    public static final Companion INSTANCE = new Companion(null);
    private static AtomicLong ID_GENERATOR = new AtomicLong(0);

    public static void getLineBorderColorUseTheme$annotations() {
    }

    public static void getLineColorUseTheme$annotations() {
    }

    public static void getLineCrossSlope$annotations() {
    }

    public static void getLineCutoutFadeWidth$annotations() {
    }

    public static void getLineCutoutOpacity$annotations() {
    }

    public static void getLineCutoutWidth$annotations() {
    }

    public static void getLineElevationReference$annotations() {
    }

    public static void getLineGradientUseTheme$annotations() {
    }

    @Deprecated(message = "This property is deprecated, and will be removed in next major release. Use [lineTrimColorString] property instead.", replaceWith = @ReplaceWith(expression = "lineTrimColorString", imports = {}))
    public static void getLineTrimColor$annotations() {
    }

    public static void getLineTrimColorInt$annotations() {
    }

    public static void getLineTrimColorString$annotations() {
    }

    public static void getLineTrimColorUseTheme$annotations() {
    }

    public static void getLineTrimFadeRange$annotations() {
    }

    public static void getLineWidthUnit$annotations() {
    }

    public static void getLineZOffset$annotations() {
    }

    public PolylineAnnotationManager(MapDelegateProvider mapDelegateProvider, AnnotationConfig annotationConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapDelegateProvider, (i & 2) != 0 ? null : annotationConfig);
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function2<String, String, LineLayer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2, LineLayer.class, "<init>", "<init>(Ljava/lang/String;Ljava/lang/String;)V", 0);
        }

        @Override
        public final LineLayer invoke(String p0, String p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return new LineLayer(p0, p1);
        }
    }

    public PolylineAnnotationManager(MapDelegateProvider delegateProvider, AnnotationConfig annotationConfig) {
        super(delegateProvider, annotationConfig, ID_GENERATOR.incrementAndGet(), "polylineAnnotation", AnonymousClass1.INSTANCE);
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_JOIN, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_BLUR, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME, false);
    }

    @Override
    protected void setDataDrivenPropertyIsUsed(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        switch (property.hashCode()) {
            case -2043443136:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().lineColorUseTheme(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().lineColorUseTheme(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME));
                    break;
                }
                break;
            case -1842775392:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_BLUR)) {
                    getLayer$plugin_annotation_release().lineBlur(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BLUR));
                    getDragLayer$plugin_annotation_release().lineBlur(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BLUR));
                    break;
                }
                break;
            case -1842534557:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_JOIN)) {
                    getLayer$plugin_annotation_release().lineJoin(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_JOIN));
                    getDragLayer$plugin_annotation_release().lineJoin(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_JOIN));
                    break;
                }
                break;
            case -1788506263:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY)) {
                    getLayer$plugin_annotation_release().lineSortKey(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY));
                    getDragLayer$plugin_annotation_release().lineSortKey(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY));
                    break;
                }
                break;
            case -1763440266:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH)) {
                    getLayer$plugin_annotation_release().lineGapWidth(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH));
                    getDragLayer$plugin_annotation_release().lineGapWidth(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH));
                    break;
                }
                break;
            case -1290458038:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_COLOR)) {
                    getLayer$plugin_annotation_release().lineColor(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_COLOR));
                    getDragLayer$plugin_annotation_release().lineColor(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_COLOR));
                    break;
                }
                break;
            case -1272173907:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH)) {
                    getLayer$plugin_annotation_release().lineWidth(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH));
                    getDragLayer$plugin_annotation_release().lineWidth(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH));
                    break;
                }
                break;
            case -1101375694:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY)) {
                    getLayer$plugin_annotation_release().lineOpacity(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY));
                    getDragLayer$plugin_annotation_release().lineOpacity(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY));
                    break;
                }
                break;
            case -1016547585:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET)) {
                    getLayer$plugin_annotation_release().lineZOffset(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET));
                    getDragLayer$plugin_annotation_release().lineZOffset(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET));
                    break;
                }
                break;
            case -1014430580:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET)) {
                    getLayer$plugin_annotation_release().lineOffset(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET));
                    getDragLayer$plugin_annotation_release().lineOffset(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET));
                    break;
                }
                break;
            case -625259849:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN)) {
                    getLayer$plugin_annotation_release().linePattern(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN));
                    getDragLayer$plugin_annotation_release().linePattern(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN));
                    break;
                }
                break;
            case 1136060347:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR)) {
                    getLayer$plugin_annotation_release().lineBorderColor(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR));
                    getDragLayer$plugin_annotation_release().lineBorderColor(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR));
                    break;
                }
                break;
            case 1154344478:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH)) {
                    getLayer$plugin_annotation_release().lineBorderWidth(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH));
                    getDragLayer$plugin_annotation_release().lineBorderWidth(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH));
                    break;
                }
                break;
            case 1226467953:
                if (property.equals(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().lineBorderColorUseTheme(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().lineBorderColorUseTheme(Expression.INSTANCE.get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME));
                    break;
                }
                break;
        }
    }

    public final List<PolylineAnnotation> create(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(json);
        Intrinsics.checkNotNullExpressionValue(featureCollectionFromJson, "fromJson(json)");
        return create(featureCollectionFromJson);
    }

    public final List<PolylineAnnotation> create(FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        List<Feature> listFeatures = featureCollection.features();
        if (listFeatures == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Feature it : listFeatures) {
            PolylineAnnotationOptions.Companion companion = PolylineAnnotationOptions.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            PolylineAnnotationOptions polylineAnnotationOptionsFromFeature = companion.fromFeature(it);
            if (polylineAnnotationOptionsFromFeature != null) {
                arrayList.add(polylineAnnotationOptionsFromFeature);
            }
        }
        return create(arrayList);
    }

    @Override
    public String getAnnotationIdKey() {
        return PolylineAnnotation.ID_KEY;
    }

    public final String getLineTrimColor() {
        return getLineTrimColorString();
    }

    public final void setLineTrimColor(String str) {
        setLineTrimColorString(str);
    }

    public final LineCap getLineCap() {
        return getLayer$plugin_annotation_release().getLineCap();
    }

    public final void setLineCap(LineCap lineCap) {
        Value value;
        if (lineCap == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cap").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…\"line-cap\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(lineCap);
        }
        setLayerProperty(value, "line-cap");
    }

    public final Double getLineCrossSlope() {
        return getLayer$plugin_annotation_release().getLineCrossSlope();
    }

    public final void setLineCrossSlope(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cross-slope").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…oss-slope\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-cross-slope");
    }

    public final Double getLineCutoutFadeWidth() {
        return getLayer$plugin_annotation_release().getLineCutoutFadeWidth();
    }

    public final void setLineCutoutFadeWidth(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-fade-width").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ade-width\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-cutout-fade-width");
    }

    public final Double getLineCutoutOpacity() {
        return getLayer$plugin_annotation_release().getLineCutoutOpacity();
    }

    public final void setLineCutoutOpacity(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-opacity").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…t-opacity\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-cutout-opacity");
    }

    public final Double getLineCutoutWidth() {
        return getLayer$plugin_annotation_release().getLineCutoutWidth();
    }

    public final void setLineCutoutWidth(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-width").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…out-width\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-cutout-width");
    }

    public final LineElevationReference getLineElevationReference() {
        return getLayer$plugin_annotation_release().getLineElevationReference();
    }

    public final void setLineElevationReference(LineElevationReference lineElevationReference) {
        Value value;
        if (lineElevationReference == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-elevation-reference").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…reference\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(lineElevationReference);
        }
        setLayerProperty(value, "line-elevation-reference");
    }

    public final LineJoin getLineJoin() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_JOIN);
        if (jsonElement == null) {
            return null;
        }
        LineJoin.Companion companion = LineJoin.INSTANCE;
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = asString.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(upperCase);
    }

    public final void setLineJoin(LineJoin lineJoin) {
        if (lineJoin != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_JOIN, lineJoin.getValue());
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_JOIN);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_JOIN);
        }
        update(getAnnotations());
    }

    public final Double getLineMiterLimit() {
        return getLayer$plugin_annotation_release().getLineMiterLimit();
    }

    public final void setLineMiterLimit(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-miter-limit").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ter-limit\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-miter-limit");
    }

    public final Double getLineRoundLimit() {
        return getLayer$plugin_annotation_release().getLineRoundLimit();
    }

    public final void setLineRoundLimit(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-round-limit").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…und-limit\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-round-limit");
    }

    public final Double getLineSortKey() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineSortKey(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY);
        }
        update(getAnnotations());
    }

    public final LineWidthUnit getLineWidthUnit() {
        return getLayer$plugin_annotation_release().getLineWidthUnit();
    }

    public final void setLineWidthUnit(LineWidthUnit lineWidthUnit) {
        Value value;
        if (lineWidthUnit == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-width-unit").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…idth-unit\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(lineWidthUnit);
        }
        setLayerProperty(value, "line-width-unit");
    }

    public final Double getLineZOffset() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineZOffset(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET);
        }
        update(getAnnotations());
    }

    public final Double getLineBlur() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_BLUR);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineBlur(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_BLUR, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_BLUR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_BLUR);
        }
        update(getAnnotations());
    }

    public final Integer getLineBorderColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR);
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

    public final void setLineBorderColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR);
        }
        update(getAnnotations());
    }

    public final String getLineBorderColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setLineBorderColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR, str);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getLineBorderWidth() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineBorderWidth(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH);
        }
        update(getAnnotations());
    }

    public final Integer getLineColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_COLOR);
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

    public final void setLineColorInt(Integer num) {
        if (num == null) {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_COLOR);
        }
        update(getAnnotations());
    }

    public final String getLineColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setLineColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_COLOR, str);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_COLOR);
        }
        update(getAnnotations());
    }

    public final List<Double> getLineDasharray() {
        return getLayer$plugin_annotation_release().getLineDasharray();
    }

    public final void setLineDasharray(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-dasharray").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…dasharray\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "line-dasharray");
    }

    public final Double getLineDepthOcclusionFactor() {
        return getLayer$plugin_annotation_release().getLineDepthOcclusionFactor();
    }

    public final void setLineDepthOcclusionFactor(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-depth-occlusion-factor").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…on-factor\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-depth-occlusion-factor");
    }

    public final Double getLineEmissiveStrength() {
        return getLayer$plugin_annotation_release().getLineEmissiveStrength();
    }

    public final void setLineEmissiveStrength(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-emissive-strength").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…-strength\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-emissive-strength");
    }

    public final Double getLineGapWidth() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineGapWidth(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH);
        }
        update(getAnnotations());
    }

    public final Double getLineOcclusionOpacity() {
        return getLayer$plugin_annotation_release().getLineOcclusionOpacity();
    }

    public final void setLineOcclusionOpacity(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-occlusion-opacity").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…n-opacity\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-occlusion-opacity");
    }

    public final Double getLineOffset() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineOffset(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET);
        }
        update(getAnnotations());
    }

    public final Double getLineOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY);
        }
        update(getAnnotations());
    }

    public final String getLinePattern() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setLinePattern(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN, str);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN);
        }
        update(getAnnotations());
    }

    public final Double getLinePatternCrossFade() {
        return getLayer$plugin_annotation_release().getLinePatternCrossFade();
    }

    public final void setLinePatternCrossFade(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-pattern-cross-fade").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ross-fade\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "line-pattern-cross-fade");
    }

    public final List<Double> getLineTranslate() {
        return getLayer$plugin_annotation_release().getLineTranslate();
    }

    public final void setLineTranslate(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-translate").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…translate\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "line-translate");
    }

    public final LineTranslateAnchor getLineTranslateAnchor() {
        return getLayer$plugin_annotation_release().getLineTranslateAnchor();
    }

    public final void setLineTranslateAnchor(LineTranslateAnchor lineTranslateAnchor) {
        Value value;
        if (lineTranslateAnchor == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-translate-anchor").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…te-anchor\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(lineTranslateAnchor);
        }
        setLayerProperty(value, "line-translate-anchor");
    }

    public final Integer getLineTrimColorInt() {
        String lineTrimColor = getLayer$plugin_annotation_release().getLineTrimColor();
        if (lineTrimColor != null) {
            Integer numRgbaToColor = ColorUtils.INSTANCE.rgbaToColor(lineTrimColor);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setLineTrimColorInt(Integer num) {
        Value value;
        if (num == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-color").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…rim-color\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
        setLayerProperty(value, "line-trim-color");
    }

    public final String getLineTrimColorString() {
        return getLayer$plugin_annotation_release().getLineTrimColor();
    }

    public final void setLineTrimColorString(String str) {
        Value value;
        if (str == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-color").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…rim-color\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(str);
        }
        setLayerProperty(value, "line-trim-color");
    }

    public final List<Double> getLineTrimFadeRange() {
        return getLayer$plugin_annotation_release().getLineTrimFadeRange();
    }

    public final void setLineTrimFadeRange(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-fade-range").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ade-range\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "line-trim-fade-range");
    }

    public final List<Double> getLineTrimOffset() {
        return getLayer$plugin_annotation_release().getLineTrimOffset();
    }

    public final void setLineTrimOffset(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-offset").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…im-offset\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "line-trim-offset");
    }

    public final Double getLineWidth() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setLineWidth(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH, d);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH);
        }
        update(getAnnotations());
    }

    public final String getSlot() {
        return getLayer$plugin_annotation_release().getSlot();
    }

    public final void setSlot(String str) {
        Value value;
        if (str == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "slot").getValue();
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
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "maxzoom").getValue();
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
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "minzoom").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g… \"minzoom\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "minzoom");
    }

    public final String getLineBorderColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setLineBorderColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getLineColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setLineColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getLineGradientUseTheme() {
        return getLayer$plugin_annotation_release().getLineGradientUseTheme();
    }

    public final void setLineGradientUseTheme(String str) {
        Value value;
        if (str == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-gradient-use-theme").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…use-theme\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(str);
        }
        setLayerProperty(value, "line-gradient-use-theme");
    }

    public final String getLineTrimColorUseTheme() {
        return getLayer$plugin_annotation_release().getLineTrimColorUseTheme();
    }

    public final void setLineTrimColorUseTheme(String str) {
        Value value;
        if (str == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-color-use-theme").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…use-theme\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(str);
        }
        setLayerProperty(value, "line-trim-color-use-theme");
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PolylineAnnotationManager$Companion;", "", "()V", "ID_GENERATOR", "Ljava/util/concurrent/atomic/AtomicLong;", "getID_GENERATOR", "()Ljava/util/concurrent/atomic/AtomicLong;", "setID_GENERATOR", "(Ljava/util/concurrent/atomic/AtomicLong;)V", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AtomicLong getID_GENERATOR() {
            return PolylineAnnotationManager.ID_GENERATOR;
        }

        public final void setID_GENERATOR(AtomicLong atomicLong) {
            Intrinsics.checkNotNullParameter(atomicLong, "<set-?>");
            PolylineAnnotationManager.ID_GENERATOR = atomicLong;
        }
    }
}
