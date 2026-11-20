package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.CircleElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.CirclePitchAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.CirclePitchScale;
import com.mapbox.maps.extension.style.layers.properties.generated.CircleTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.mapbox.maps.plugin.annotation.generated.CircleAnnotationOptions;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u0091\u00012\u00020\u00012\u00020\u0002:\u0002\u0091\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\fH\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0011\u0010\u000f\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u0010\u000f\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\fH\u0016J\u0012\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0013\u001a\u00020\u0017H\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004H\u0016J\u0011\u0010\u001c\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u0010\u001c\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\fH\u0017J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0004H\u0017J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\fH\u0017J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&H\u0017J\u0010\u0010-\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\fH\u0016J\u0010\u0010-\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\bH\u0016J\u0011\u00101\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u00101\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\fH\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\bH\u0016J\u0011\u00107\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u00107\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020\fH\u0016J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010?\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\fH\u0016J\u0010\u0010?\u001a\u00020\u00002\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010E\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\fH\u0016J\u0010\u0010E\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\bH\u0016J\u0011\u0010I\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u0010I\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\fH\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\bH\u0016J\u0010\u0010O\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\fH\u0016J\u0012\u0010O\u001a\u00020\u00002\b\b\u0001\u0010O\u001a\u00020\u0017H\u0016J\u0010\u0010O\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0004H\u0016J\u0011\u0010U\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u0010U\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020\fH\u0017J\u0010\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020\u0004H\u0017J\u0010\u0010]\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\fH\u0016J\u0010\u0010]\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\bH\u0016J\u0011\u0010a\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u0010a\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\fH\u0016J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\bH\u0016J\u0011\u0010g\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u0010g\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u0010i\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\fH\u0016J\u0016\u0010i\u001a\u00020\u00002\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\b0jH\u0016J\u0010\u0010m\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\fH\u0016J\u0010\u0010m\u001a\u00020\u00002\u0006\u0010m\u001a\u00020nH\u0016J\u0011\u0010u\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0010H\u0016J&\u0010u\u001a\u00020\u00002\u001c\u0010\u008a\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u008c\u0001\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001¢\u0006\u0003\b\u008e\u0001H\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\fH\u0016J\u000f\u0010\u008f\u0001\u001a\u00020\u0004H\u0010¢\u0006\u0003\b\u0090\u0001J\u0010\u0010z\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\bH\u0016J\u0010\u0010|\u001a\u00020\u00002\u0006\u0010|\u001a\u00020\bH\u0016J\u0010\u0010~\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u0004H\u0016J\u0012\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\fH\u0016J\u0013\u0010\u0083\u0001\u001a\u00020\u00002\b\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00178G¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000eR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0012R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\u0015R\u001c\u0010\"\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b#\u0010 \u001a\u0004\b$\u0010\u000eR\u001c\u0010%\u001a\u0004\u0018\u00010&8FX\u0087\u0004¢\u0006\f\u0012\u0004\b'\u0010 \u001a\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010 \u001a\u0004\b,\u0010\u000eR\u0013\u0010-\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b.\u0010\nR\u0013\u0010/\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b0\u0010\u000eR\u0013\u00101\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b2\u0010\u0012R\u0013\u00103\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b4\u0010\nR\u0013\u00105\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b6\u0010\u000eR\u0013\u00107\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b8\u0010\u0012R\u0013\u00109\u001a\u0004\u0018\u00010:8F¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0013\u0010=\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b>\u0010\u000eR\u0013\u0010?\u001a\u0004\u0018\u00010@8F¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0013\u0010C\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bD\u0010\u000eR\u0013\u0010E\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bF\u0010\nR\u0013\u0010G\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bH\u0010\u000eR\u0013\u0010I\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\bJ\u0010\u0012R\u0013\u0010K\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bL\u0010\nR\u0013\u0010M\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bN\u0010\u000eR\u0013\u0010O\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bP\u0010\u0015R\u0013\u0010Q\u001a\u0004\u0018\u00010\u00178G¢\u0006\u0006\u001a\u0004\bR\u0010\u0019R\u0013\u0010S\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bT\u0010\u000eR\u0013\u0010U\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\bV\u0010\u0012R\u001c\u0010W\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bX\u0010 \u001a\u0004\bY\u0010\u0015R\u001c\u0010Z\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b[\u0010 \u001a\u0004\b\\\u0010\u000eR\u0013\u0010]\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b^\u0010\nR\u0013\u0010_\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b`\u0010\u000eR\u0013\u0010a\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\bb\u0010\u0012R\u0013\u0010c\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bd\u0010\nR\u0013\u0010e\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bf\u0010\u000eR\u0013\u0010g\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\bh\u0010\u0012R\u0019\u0010i\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010j8F¢\u0006\u0006\u001a\u0004\bk\u0010lR\u0013\u0010m\u001a\u0004\u0018\u00010n8F¢\u0006\u0006\u001a\u0004\bo\u0010pR\u0013\u0010q\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\br\u0010\u000eR\u0013\u0010s\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bt\u0010\u000eR\u0013\u0010u\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\bv\u0010\u0012R\u0013\u0010w\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bx\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\by\u0010\u0015R\u0016\u0010z\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b{\u0010\nR\u0016\u0010|\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b}\u0010\nR\u0016\u0010~\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010\u0015R\u0012\u0010\u0005\u001a\u00020\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0080\u0001\u0010\u0015R\u0015\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\u0015R\u001a\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0087\u0001\u001a\u0004\u0018\u00010\f8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010\u000e¨\u0006\u0092\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/CircleLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", "circleBlur", "", "getCircleBlur", "()Ljava/lang/Double;", "circleBlurAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getCircleBlurAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "circleBlurTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getCircleBlurTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "circleColor", "getCircleColor", "()Ljava/lang/String;", "circleColorAsColorInt", "", "getCircleColorAsColorInt", "()Ljava/lang/Integer;", "circleColorAsExpression", "getCircleColorAsExpression", "circleColorTransition", "getCircleColorTransition", "circleColorUseTheme", "getCircleColorUseTheme$annotations", "()V", "getCircleColorUseTheme", "circleColorUseThemeAsExpression", "getCircleColorUseThemeAsExpression$annotations", "getCircleColorUseThemeAsExpression", "circleElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;", "getCircleElevationReference$annotations", "getCircleElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;", "circleElevationReferenceAsExpression", "getCircleElevationReferenceAsExpression$annotations", "getCircleElevationReferenceAsExpression", "circleEmissiveStrength", "getCircleEmissiveStrength", "circleEmissiveStrengthAsExpression", "getCircleEmissiveStrengthAsExpression", "circleEmissiveStrengthTransition", "getCircleEmissiveStrengthTransition", "circleOpacity", "getCircleOpacity", "circleOpacityAsExpression", "getCircleOpacityAsExpression", "circleOpacityTransition", "getCircleOpacityTransition", "circlePitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;", "getCirclePitchAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;", "circlePitchAlignmentAsExpression", "getCirclePitchAlignmentAsExpression", "circlePitchScale", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;", "getCirclePitchScale", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;", "circlePitchScaleAsExpression", "getCirclePitchScaleAsExpression", "circleRadius", "getCircleRadius", "circleRadiusAsExpression", "getCircleRadiusAsExpression", "circleRadiusTransition", "getCircleRadiusTransition", "circleSortKey", "getCircleSortKey", "circleSortKeyAsExpression", "getCircleSortKeyAsExpression", "circleStrokeColor", "getCircleStrokeColor", "circleStrokeColorAsColorInt", "getCircleStrokeColorAsColorInt", "circleStrokeColorAsExpression", "getCircleStrokeColorAsExpression", "circleStrokeColorTransition", "getCircleStrokeColorTransition", "circleStrokeColorUseTheme", "getCircleStrokeColorUseTheme$annotations", "getCircleStrokeColorUseTheme", "circleStrokeColorUseThemeAsExpression", "getCircleStrokeColorUseThemeAsExpression$annotations", "getCircleStrokeColorUseThemeAsExpression", "circleStrokeOpacity", "getCircleStrokeOpacity", "circleStrokeOpacityAsExpression", "getCircleStrokeOpacityAsExpression", "circleStrokeOpacityTransition", "getCircleStrokeOpacityTransition", "circleStrokeWidth", "getCircleStrokeWidth", "circleStrokeWidthAsExpression", "getCircleStrokeWidthAsExpression", "circleStrokeWidthTransition", "getCircleStrokeWidthTransition", "circleTranslate", "", "getCircleTranslate", "()Ljava/util/List;", "circleTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;", "getCircleTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;", "circleTranslateAnchorAsExpression", "getCircleTranslateAnchorAsExpression", "circleTranslateAsExpression", "getCircleTranslateAsExpression", "circleTranslateTransition", "getCircleTranslateTransition", ViewProps.FILTER, "getFilter", "getLayerId", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CircleLayer extends Layer implements CircleLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getCircleColorUseTheme$annotations() {
    }

    public static void getCircleColorUseThemeAsExpression$annotations() {
    }

    public static void getCircleElevationReference$annotations() {
    }

    public static void getCircleElevationReferenceAsExpression$annotations() {
    }

    public static void getCircleStrokeColorUseTheme$annotations() {
    }

    public static void getCircleStrokeColorUseThemeAsExpression$annotations() {
    }

    public CircleLayer(String layerId, String sourceId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        this.layerId = layerId;
        this.sourceId = sourceId;
        setInternalSourceId$extension_style_release(sourceId);
    }

    @Override
    public String getLayerId() {
        return this.layerId;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    @Override
    public CircleLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public CircleLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public CircleLayer filter(Expression filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        setProperty$extension_style_release(new PropertyValue<>(ViewProps.FILTER, filter));
        return this;
    }

    public final Expression getFilter() {
        return (Expression) getPropertyValueWithType(ViewProps.FILTER, Expression.class);
    }

    @Override
    public Visibility getVisibility() {
        String str = (String) getPropertyValueWithType("visibility", String.class);
        if (str == null) {
            return null;
        }
        Visibility.Companion companion = Visibility.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public Expression getVisibilityAsExpression() {
        return (Expression) getPropertyValueWithType("visibility", Expression.class);
    }

    @Override
    public CircleLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public CircleLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public CircleLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public CircleLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final CircleElevationReference getCircleElevationReference() {
        String str = (String) getPropertyValueWithType("circle-elevation-reference", String.class);
        if (str == null) {
            return null;
        }
        CircleElevationReference.Companion companion = CircleElevationReference.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public CircleLayer circleElevationReference(CircleElevationReference circleElevationReference) {
        Intrinsics.checkNotNullParameter(circleElevationReference, "circleElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("circle-elevation-reference", circleElevationReference));
        return this;
    }

    public final Expression getCircleElevationReferenceAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("circle-elevation-reference", Expression.class);
        if (expression != null) {
            return expression;
        }
        CircleElevationReference circleElevationReference = getCircleElevationReference();
        if (circleElevationReference != null) {
            return Expression.INSTANCE.literal(circleElevationReference.getValue());
        }
        return null;
    }

    @Override
    public CircleLayer circleElevationReference(Expression circleElevationReference) {
        Intrinsics.checkNotNullParameter(circleElevationReference, "circleElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("circle-elevation-reference", circleElevationReference));
        return this;
    }

    public final Double getCircleSortKey() {
        return (Double) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY, Double.class);
    }

    @Override
    public CircleLayer circleSortKey(double circleSortKey) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY, Double.valueOf(circleSortKey)));
        return this;
    }

    public final Expression getCircleSortKeyAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY);
    }

    @Override
    public CircleLayer circleSortKey(Expression circleSortKey) {
        Intrinsics.checkNotNullParameter(circleSortKey, "circleSortKey");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY, circleSortKey));
        return this;
    }

    public final Double getCircleBlur() {
        return (Double) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR, Double.class);
    }

    @Override
    public CircleLayer circleBlur(double circleBlur) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR, Double.valueOf(circleBlur)));
        return this;
    }

    public final Expression getCircleBlurAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR);
    }

    @Override
    public CircleLayer circleBlur(Expression circleBlur) {
        Intrinsics.checkNotNullParameter(circleBlur, "circleBlur");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR, circleBlur));
        return this;
    }

    public final StyleTransition getCircleBlurTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-blur-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleBlurTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-blur-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleBlurTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleBlurTransition(builder.build());
        return this;
    }

    public final String getCircleColor() {
        Expression circleColorAsExpression = getCircleColorAsExpression();
        if (circleColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(circleColorAsExpression);
        }
        return null;
    }

    @Override
    public CircleLayer circleColor(String circleColor) {
        Intrinsics.checkNotNullParameter(circleColor, "circleColor");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR, circleColor));
        return this;
    }

    public final Expression getCircleColorAsExpression() {
        return (Expression) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR, Expression.class);
    }

    @Override
    public CircleLayer circleColor(Expression circleColor) {
        Intrinsics.checkNotNullParameter(circleColor, "circleColor");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR, circleColor));
        return this;
    }

    public final Integer getCircleColorAsColorInt() {
        Expression circleColorAsExpression = getCircleColorAsExpression();
        if (circleColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(circleColorAsExpression);
        }
        return null;
    }

    @Override
    public CircleLayer circleColor(int circleColor) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(circleColor)));
        return this;
    }

    public final StyleTransition getCircleColorTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-color-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-color-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleColorTransition(builder.build());
        return this;
    }

    public final String getCircleColorUseTheme() {
        return (String) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME, String.class);
    }

    @Override
    public CircleLayer circleColorUseTheme(String circleColorUseTheme) {
        Intrinsics.checkNotNullParameter(circleColorUseTheme, "circleColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME, circleColorUseTheme));
        return this;
    }

    public final Expression getCircleColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME);
    }

    @Override
    public CircleLayer circleColorUseTheme(Expression circleColorUseTheme) {
        Intrinsics.checkNotNullParameter(circleColorUseTheme, "circleColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME, circleColorUseTheme));
        return this;
    }

    public final Double getCircleEmissiveStrength() {
        return (Double) getPropertyValueWithType("circle-emissive-strength", Double.class);
    }

    @Override
    public CircleLayer circleEmissiveStrength(double circleEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("circle-emissive-strength", Double.valueOf(circleEmissiveStrength)));
        return this;
    }

    public final Expression getCircleEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("circle-emissive-strength");
    }

    @Override
    public CircleLayer circleEmissiveStrength(Expression circleEmissiveStrength) {
        Intrinsics.checkNotNullParameter(circleEmissiveStrength, "circleEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("circle-emissive-strength", circleEmissiveStrength));
        return this;
    }

    public final StyleTransition getCircleEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-emissive-strength-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final Double getCircleOpacity() {
        return (Double) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY, Double.class);
    }

    @Override
    public CircleLayer circleOpacity(double circleOpacity) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY, Double.valueOf(circleOpacity)));
        return this;
    }

    public final Expression getCircleOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY);
    }

    @Override
    public CircleLayer circleOpacity(Expression circleOpacity) {
        Intrinsics.checkNotNullParameter(circleOpacity, "circleOpacity");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY, circleOpacity));
        return this;
    }

    public final StyleTransition getCircleOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-opacity-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-opacity-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleOpacityTransition(builder.build());
        return this;
    }

    public final CirclePitchAlignment getCirclePitchAlignment() {
        String str = (String) getPropertyValueWithType("circle-pitch-alignment", String.class);
        if (str == null) {
            return null;
        }
        CirclePitchAlignment.Companion companion = CirclePitchAlignment.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public CircleLayer circlePitchAlignment(CirclePitchAlignment circlePitchAlignment) {
        Intrinsics.checkNotNullParameter(circlePitchAlignment, "circlePitchAlignment");
        setProperty$extension_style_release(new PropertyValue<>("circle-pitch-alignment", circlePitchAlignment));
        return this;
    }

    public final Expression getCirclePitchAlignmentAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("circle-pitch-alignment", Expression.class);
        if (expression != null) {
            return expression;
        }
        CirclePitchAlignment circlePitchAlignment = getCirclePitchAlignment();
        if (circlePitchAlignment != null) {
            return Expression.INSTANCE.literal(circlePitchAlignment.getValue());
        }
        return null;
    }

    @Override
    public CircleLayer circlePitchAlignment(Expression circlePitchAlignment) {
        Intrinsics.checkNotNullParameter(circlePitchAlignment, "circlePitchAlignment");
        setProperty$extension_style_release(new PropertyValue<>("circle-pitch-alignment", circlePitchAlignment));
        return this;
    }

    public final CirclePitchScale getCirclePitchScale() {
        String str = (String) getPropertyValueWithType("circle-pitch-scale", String.class);
        if (str == null) {
            return null;
        }
        CirclePitchScale.Companion companion = CirclePitchScale.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public CircleLayer circlePitchScale(CirclePitchScale circlePitchScale) {
        Intrinsics.checkNotNullParameter(circlePitchScale, "circlePitchScale");
        setProperty$extension_style_release(new PropertyValue<>("circle-pitch-scale", circlePitchScale));
        return this;
    }

    public final Expression getCirclePitchScaleAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("circle-pitch-scale", Expression.class);
        if (expression != null) {
            return expression;
        }
        CirclePitchScale circlePitchScale = getCirclePitchScale();
        if (circlePitchScale != null) {
            return Expression.INSTANCE.literal(circlePitchScale.getValue());
        }
        return null;
    }

    @Override
    public CircleLayer circlePitchScale(Expression circlePitchScale) {
        Intrinsics.checkNotNullParameter(circlePitchScale, "circlePitchScale");
        setProperty$extension_style_release(new PropertyValue<>("circle-pitch-scale", circlePitchScale));
        return this;
    }

    public final Double getCircleRadius() {
        return (Double) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS, Double.class);
    }

    @Override
    public CircleLayer circleRadius(double circleRadius) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS, Double.valueOf(circleRadius)));
        return this;
    }

    public final Expression getCircleRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS);
    }

    @Override
    public CircleLayer circleRadius(Expression circleRadius) {
        Intrinsics.checkNotNullParameter(circleRadius, "circleRadius");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS, circleRadius));
        return this;
    }

    public final StyleTransition getCircleRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-radius-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-radius-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleRadiusTransition(builder.build());
        return this;
    }

    public final String getCircleStrokeColor() {
        Expression circleStrokeColorAsExpression = getCircleStrokeColorAsExpression();
        if (circleStrokeColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(circleStrokeColorAsExpression);
        }
        return null;
    }

    @Override
    public CircleLayer circleStrokeColor(String circleStrokeColor) {
        Intrinsics.checkNotNullParameter(circleStrokeColor, "circleStrokeColor");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR, circleStrokeColor));
        return this;
    }

    public final Expression getCircleStrokeColorAsExpression() {
        return (Expression) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR, Expression.class);
    }

    @Override
    public CircleLayer circleStrokeColor(Expression circleStrokeColor) {
        Intrinsics.checkNotNullParameter(circleStrokeColor, "circleStrokeColor");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR, circleStrokeColor));
        return this;
    }

    public final Integer getCircleStrokeColorAsColorInt() {
        Expression circleStrokeColorAsExpression = getCircleStrokeColorAsExpression();
        if (circleStrokeColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(circleStrokeColorAsExpression);
        }
        return null;
    }

    @Override
    public CircleLayer circleStrokeColor(int circleStrokeColor) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(circleStrokeColor)));
        return this;
    }

    public final StyleTransition getCircleStrokeColorTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-stroke-color-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleStrokeColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-stroke-color-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleStrokeColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleStrokeColorTransition(builder.build());
        return this;
    }

    public final String getCircleStrokeColorUseTheme() {
        return (String) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME, String.class);
    }

    @Override
    public CircleLayer circleStrokeColorUseTheme(String circleStrokeColorUseTheme) {
        Intrinsics.checkNotNullParameter(circleStrokeColorUseTheme, "circleStrokeColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME, circleStrokeColorUseTheme));
        return this;
    }

    public final Expression getCircleStrokeColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME);
    }

    @Override
    public CircleLayer circleStrokeColorUseTheme(Expression circleStrokeColorUseTheme) {
        Intrinsics.checkNotNullParameter(circleStrokeColorUseTheme, "circleStrokeColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME, circleStrokeColorUseTheme));
        return this;
    }

    public final Double getCircleStrokeOpacity() {
        return (Double) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY, Double.class);
    }

    @Override
    public CircleLayer circleStrokeOpacity(double circleStrokeOpacity) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY, Double.valueOf(circleStrokeOpacity)));
        return this;
    }

    public final Expression getCircleStrokeOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY);
    }

    @Override
    public CircleLayer circleStrokeOpacity(Expression circleStrokeOpacity) {
        Intrinsics.checkNotNullParameter(circleStrokeOpacity, "circleStrokeOpacity");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY, circleStrokeOpacity));
        return this;
    }

    public final StyleTransition getCircleStrokeOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-stroke-opacity-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleStrokeOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-stroke-opacity-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleStrokeOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleStrokeOpacityTransition(builder.build());
        return this;
    }

    public final Double getCircleStrokeWidth() {
        return (Double) getPropertyValueWithType(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH, Double.class);
    }

    @Override
    public CircleLayer circleStrokeWidth(double circleStrokeWidth) {
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH, Double.valueOf(circleStrokeWidth)));
        return this;
    }

    public final Expression getCircleStrokeWidthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH);
    }

    @Override
    public CircleLayer circleStrokeWidth(Expression circleStrokeWidth) {
        Intrinsics.checkNotNullParameter(circleStrokeWidth, "circleStrokeWidth");
        setProperty$extension_style_release(new PropertyValue<>(CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH, circleStrokeWidth));
        return this;
    }

    public final StyleTransition getCircleStrokeWidthTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-stroke-width-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleStrokeWidthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-stroke-width-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleStrokeWidthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleStrokeWidthTransition(builder.build());
        return this;
    }

    public final List<Double> getCircleTranslate() {
        return (List) getPropertyValueWithType("circle-translate", List.class);
    }

    @Override
    public CircleLayer circleTranslate(List<Double> circleTranslate) {
        Intrinsics.checkNotNullParameter(circleTranslate, "circleTranslate");
        setProperty$extension_style_release(new PropertyValue<>("circle-translate", circleTranslate));
        return this;
    }

    public final Expression getCircleTranslateAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("circle-translate");
    }

    @Override
    public CircleLayer circleTranslate(Expression circleTranslate) {
        Intrinsics.checkNotNullParameter(circleTranslate, "circleTranslate");
        setProperty$extension_style_release(new PropertyValue<>("circle-translate", circleTranslate));
        return this;
    }

    public final StyleTransition getCircleTranslateTransition() {
        return (StyleTransition) getPropertyValueWithType("circle-translate-transition", StyleTransition.class);
    }

    @Override
    public CircleLayer circleTranslateTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("circle-translate-transition", options));
        return this;
    }

    @Override
    public CircleLayer circleTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        circleTranslateTransition(builder.build());
        return this;
    }

    public final CircleTranslateAnchor getCircleTranslateAnchor() {
        String str = (String) getPropertyValueWithType("circle-translate-anchor", String.class);
        if (str == null) {
            return null;
        }
        CircleTranslateAnchor.Companion companion = CircleTranslateAnchor.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public CircleLayer circleTranslateAnchor(CircleTranslateAnchor circleTranslateAnchor) {
        Intrinsics.checkNotNullParameter(circleTranslateAnchor, "circleTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("circle-translate-anchor", circleTranslateAnchor));
        return this;
    }

    public final Expression getCircleTranslateAnchorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("circle-translate-anchor", Expression.class);
        if (expression != null) {
            return expression;
        }
        CircleTranslateAnchor circleTranslateAnchor = getCircleTranslateAnchor();
        if (circleTranslateAnchor != null) {
            return Expression.INSTANCE.literal(circleTranslateAnchor.getValue());
        }
        return null;
    }

    @Override
    public CircleLayer circleTranslateAnchor(Expression circleTranslateAnchor) {
        Intrinsics.checkNotNullParameter(circleTranslateAnchor, "circleTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("circle-translate-anchor", circleTranslateAnchor));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "circle";
    }

    @Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00148G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\nR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u000eR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00108FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u0012R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\nR\u001c\u0010!\u001a\u0004\u0018\u00010\"8FX\u0087\u0004¢\u0006\f\u0012\u0004\b#\u0010\u0002\u001a\u0004\b$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b'\u0010\u0002\u001a\u0004\b(\u0010\nR\u0013\u0010)\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b*\u0010\u0006R\u0013\u0010+\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b,\u0010\nR\u0013\u0010-\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b.\u0010\u000eR\u0013\u0010/\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b0\u0010\u0006R\u0013\u00101\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b2\u0010\nR\u0013\u00103\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b4\u0010\u000eR\u0013\u00105\u001a\u0004\u0018\u0001068F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0013\u00109\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b:\u0010\nR\u0013\u0010;\u001a\u0004\u0018\u00010<8F¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0013\u0010?\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b@\u0010\nR\u0013\u0010A\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bB\u0010\u0006R\u0013\u0010C\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bD\u0010\nR\u0013\u0010E\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bF\u0010\u000eR\u0013\u0010G\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bH\u0010\u0006R\u0013\u0010I\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bJ\u0010\nR\u0013\u0010K\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\bL\u0010\u0012R\u0013\u0010M\u001a\u0004\u0018\u00010\u00148G¢\u0006\u0006\u001a\u0004\bN\u0010\u0016R\u0013\u0010O\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bP\u0010\nR\u0013\u0010Q\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bR\u0010\u000eR\u001c\u0010S\u001a\u0004\u0018\u00010\u00108FX\u0087\u0004¢\u0006\f\u0012\u0004\bT\u0010\u0002\u001a\u0004\bU\u0010\u0012R\u001c\u0010V\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bW\u0010\u0002\u001a\u0004\bX\u0010\nR\u0013\u0010Y\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bZ\u0010\u0006R\u0013\u0010[\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\\\u0010\nR\u0013\u0010]\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b^\u0010\u000eR\u0013\u0010_\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b`\u0010\u0006R\u0013\u0010a\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bb\u0010\nR\u0013\u0010c\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bd\u0010\u000eR\u0019\u0010e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010f8F¢\u0006\u0006\u001a\u0004\bg\u0010hR\u0013\u0010i\u001a\u0004\u0018\u00010j8F¢\u0006\u0006\u001a\u0004\bk\u0010lR\u0013\u0010m\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bn\u0010\nR\u0013\u0010o\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bp\u0010\nR\u0013\u0010q\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\br\u0010\u000eR\u0013\u0010s\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bt\u0010\u0006R\u0013\u0010u\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bv\u0010\u0006R\u0013\u0010w\u001a\u0004\u0018\u00010x8F¢\u0006\u0006\u001a\u0004\by\u0010z¨\u0006{"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer$Companion;", "", "()V", "defaultCircleBlur", "", "getDefaultCircleBlur", "()Ljava/lang/Double;", "defaultCircleBlurAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultCircleBlurAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultCircleBlurTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultCircleBlurTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultCircleColor", "", "getDefaultCircleColor", "()Ljava/lang/String;", "defaultCircleColorAsColorInt", "", "getDefaultCircleColorAsColorInt", "()Ljava/lang/Integer;", "defaultCircleColorAsExpression", "getDefaultCircleColorAsExpression", "defaultCircleColorTransition", "getDefaultCircleColorTransition", "defaultCircleColorUseTheme", "getDefaultCircleColorUseTheme$annotations", "getDefaultCircleColorUseTheme", "defaultCircleColorUseThemeAsExpression", "getDefaultCircleColorUseThemeAsExpression$annotations", "getDefaultCircleColorUseThemeAsExpression", "defaultCircleElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;", "getDefaultCircleElevationReference$annotations", "getDefaultCircleElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;", "defaultCircleElevationReferenceAsExpression", "getDefaultCircleElevationReferenceAsExpression$annotations", "getDefaultCircleElevationReferenceAsExpression", "defaultCircleEmissiveStrength", "getDefaultCircleEmissiveStrength", "defaultCircleEmissiveStrengthAsExpression", "getDefaultCircleEmissiveStrengthAsExpression", "defaultCircleEmissiveStrengthTransition", "getDefaultCircleEmissiveStrengthTransition", "defaultCircleOpacity", "getDefaultCircleOpacity", "defaultCircleOpacityAsExpression", "getDefaultCircleOpacityAsExpression", "defaultCircleOpacityTransition", "getDefaultCircleOpacityTransition", "defaultCirclePitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;", "getDefaultCirclePitchAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;", "defaultCirclePitchAlignmentAsExpression", "getDefaultCirclePitchAlignmentAsExpression", "defaultCirclePitchScale", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;", "getDefaultCirclePitchScale", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;", "defaultCirclePitchScaleAsExpression", "getDefaultCirclePitchScaleAsExpression", "defaultCircleRadius", "getDefaultCircleRadius", "defaultCircleRadiusAsExpression", "getDefaultCircleRadiusAsExpression", "defaultCircleRadiusTransition", "getDefaultCircleRadiusTransition", "defaultCircleSortKey", "getDefaultCircleSortKey", "defaultCircleSortKeyAsExpression", "getDefaultCircleSortKeyAsExpression", "defaultCircleStrokeColor", "getDefaultCircleStrokeColor", "defaultCircleStrokeColorAsColorInt", "getDefaultCircleStrokeColorAsColorInt", "defaultCircleStrokeColorAsExpression", "getDefaultCircleStrokeColorAsExpression", "defaultCircleStrokeColorTransition", "getDefaultCircleStrokeColorTransition", "defaultCircleStrokeColorUseTheme", "getDefaultCircleStrokeColorUseTheme$annotations", "getDefaultCircleStrokeColorUseTheme", "defaultCircleStrokeColorUseThemeAsExpression", "getDefaultCircleStrokeColorUseThemeAsExpression$annotations", "getDefaultCircleStrokeColorUseThemeAsExpression", "defaultCircleStrokeOpacity", "getDefaultCircleStrokeOpacity", "defaultCircleStrokeOpacityAsExpression", "getDefaultCircleStrokeOpacityAsExpression", "defaultCircleStrokeOpacityTransition", "getDefaultCircleStrokeOpacityTransition", "defaultCircleStrokeWidth", "getDefaultCircleStrokeWidth", "defaultCircleStrokeWidthAsExpression", "getDefaultCircleStrokeWidthAsExpression", "defaultCircleStrokeWidthTransition", "getDefaultCircleStrokeWidthTransition", "defaultCircleTranslate", "", "getDefaultCircleTranslate", "()Ljava/util/List;", "defaultCircleTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;", "getDefaultCircleTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;", "defaultCircleTranslateAnchorAsExpression", "getDefaultCircleTranslateAnchorAsExpression", "defaultCircleTranslateAsExpression", "getDefaultCircleTranslateAsExpression", "defaultCircleTranslateTransition", "getDefaultCircleTranslateTransition", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultCircleColorUseTheme$annotations() {
        }

        public static void getDefaultCircleColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultCircleElevationReference$annotations() {
        }

        public static void getDefaultCircleElevationReferenceAsExpression$annotations() {
        }

        public static void getDefaultCircleStrokeColorUseTheme$annotations() {
        }

        public static void getDefaultCircleStrokeColorUseThemeAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"circle\", \"visibility\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            Visibility.Companion companion = Visibility.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Double getDefaultMinZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"circle\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"circle\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final CircleElevationReference getDefaultCircleElevationReference() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cle-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            CircleElevationReference.Companion companion = CircleElevationReference.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultCircleElevationReferenceAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cle-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            CircleElevationReference defaultCircleElevationReference = getDefaultCircleElevationReference();
            if (defaultCircleElevationReference != null) {
                return Expression.INSTANCE.literal(defaultCircleElevationReference.getValue());
            }
            return null;
        }

        public final Double getDefaultCircleSortKey() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rcle\", \"circle-sort-key\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultCircleSortKeyAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_SORT_KEY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rcle\", \"circle-sort-key\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultCircleSortKey = getDefaultCircleSortKey();
            if (defaultCircleSortKey == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultCircleSortKey.doubleValue());
        }

        public final Double getDefaultCircleBlur() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"circle\", \"circle-blur\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultCircleBlurAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_BLUR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"circle\", \"circle-blur\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultCircleBlur = getDefaultCircleBlur();
            if (defaultCircleBlur == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultCircleBlur.doubleValue());
        }

        public final StyleTransition getDefaultCircleBlurTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-blur-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"circle-blur-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultCircleColor() {
            Expression defaultCircleColorAsExpression = getDefaultCircleColorAsExpression();
            if (defaultCircleColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultCircleColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultCircleColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"circle\", \"circle-color\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            return null;
        }

        public final Integer getDefaultCircleColorAsColorInt() {
            Expression defaultCircleColorAsExpression = getDefaultCircleColorAsExpression();
            if (defaultCircleColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultCircleColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultCircleColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…circle-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultCircleColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"circle-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultCircleColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"circle-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultCircleColorUseTheme = getDefaultCircleColorUseTheme();
            if (defaultCircleColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultCircleColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultCircleEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ircle-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultCircleEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ircle-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultCircleEmissiveStrength = getDefaultCircleEmissiveStrength();
            if (defaultCircleEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultCircleEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultCircleEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultCircleOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ircle\", \"circle-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultCircleOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ircle\", \"circle-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultCircleOpacity = getDefaultCircleOpacity();
            if (defaultCircleOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultCircleOpacity.doubleValue());
        }

        public final StyleTransition getDefaultCircleOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rcle-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final CirclePitchAlignment getDefaultCirclePitchAlignment() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-pitch-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"circle-pitch-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            CirclePitchAlignment.Companion companion = CirclePitchAlignment.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultCirclePitchAlignmentAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-pitch-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"circle-pitch-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            CirclePitchAlignment defaultCirclePitchAlignment = getDefaultCirclePitchAlignment();
            if (defaultCirclePitchAlignment != null) {
                return Expression.INSTANCE.literal(defaultCirclePitchAlignment.getValue());
            }
            return null;
        }

        public final CirclePitchScale getDefaultCirclePitchScale() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-pitch-scale");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e\", \"circle-pitch-scale\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            CirclePitchScale.Companion companion = CirclePitchScale.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultCirclePitchScaleAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-pitch-scale");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e\", \"circle-pitch-scale\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            CirclePitchScale defaultCirclePitchScale = getDefaultCirclePitchScale();
            if (defaultCirclePitchScale != null) {
                return Expression.INSTANCE.literal(defaultCirclePitchScale.getValue());
            }
            return null;
        }

        public final Double getDefaultCircleRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…circle\", \"circle-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultCircleRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_RADIUS);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…circle\", \"circle-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultCircleRadius = getDefaultCircleRadius();
            if (defaultCircleRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultCircleRadius.doubleValue());
        }

        public final StyleTransition getDefaultCircleRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ircle-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultCircleStrokeColor() {
            Expression defaultCircleStrokeColorAsExpression = getDefaultCircleStrokeColorAsExpression();
            if (defaultCircleStrokeColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultCircleStrokeColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultCircleStrokeColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"circle-stroke-color\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            return null;
        }

        public final Integer getDefaultCircleStrokeColorAsColorInt() {
            Expression defaultCircleStrokeColorAsExpression = getDefaultCircleStrokeColorAsExpression();
            if (defaultCircleStrokeColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultCircleStrokeColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultCircleStrokeColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-stroke-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…stroke-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultCircleStrokeColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-stroke-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultCircleStrokeColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-stroke-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultCircleStrokeColorUseTheme = getDefaultCircleStrokeColorUseTheme();
            if (defaultCircleStrokeColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultCircleStrokeColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultCircleStrokeOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"circle-stroke-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultCircleStrokeOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"circle-stroke-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultCircleStrokeOpacity = getDefaultCircleStrokeOpacity();
            if (defaultCircleStrokeOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultCircleStrokeOpacity.doubleValue());
        }

        public final StyleTransition getDefaultCircleStrokeOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-stroke-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…roke-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultCircleStrokeWidth() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"circle-stroke-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultCircleStrokeWidthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", CircleAnnotationOptions.PROPERTY_CIRCLE_STROKE_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"circle-stroke-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultCircleStrokeWidth = getDefaultCircleStrokeWidth();
            if (defaultCircleStrokeWidth == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultCircleStrokeWidth.doubleValue());
        }

        public final StyleTransition getDefaultCircleStrokeWidthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-stroke-width-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…stroke-width-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final List<Double> getDefaultCircleTranslate() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cle\", \"circle-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultCircleTranslateAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cle\", \"circle-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultCircleTranslate = getDefaultCircleTranslate();
            if (defaultCircleTranslate != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultCircleTranslate);
            }
            return null;
        }

        public final StyleTransition getDefaultCircleTranslateTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-translate-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…le-translate-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final CircleTranslateAnchor getDefaultCircleTranslateAnchor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…circle-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            CircleTranslateAnchor.Companion companion = CircleTranslateAnchor.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultCircleTranslateAnchorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("circle", "circle-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…circle-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            CircleTranslateAnchor defaultCircleTranslateAnchor = getDefaultCircleTranslateAnchor();
            if (defaultCircleTranslateAnchor != null) {
                return Expression.INSTANCE.literal(defaultCircleTranslateAnchor.getValue());
            }
            return null;
        }
    }
}
