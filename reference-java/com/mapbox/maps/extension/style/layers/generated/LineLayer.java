package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.LineCap;
import com.mapbox.maps.extension.style.layers.properties.generated.LineElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.LineJoin;
import com.mapbox.maps.extension.style.layers.properties.generated.LineTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.LineWidthUnit;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.mapbox.maps.plugin.annotation.generated.PolylineAnnotationOptions;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b4\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u008a\u00022\u00020\u00012\u00020\u0002:\u0002\u008a\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u000f\u0010\u0082\u0002\u001a\u00020\u0004H\u0010¢\u0006\u0003\b\u0083\u0002J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0011\u0010\u0013\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010\u0013\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\bH\u0016J\u0012\u0010\u0017\u001a\u00020\u00002\b\b\u0001\u0010\u0017\u001a\u00020\u001aH\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J\u0011\u0010\u001f\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010\u001f\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\bH\u0017J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0004H\u0017J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\bH\u0016J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u000eH\u0016J\u0011\u0010,\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010,\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\bH\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u00020\bH\u0016J\u0012\u00104\u001a\u00020\u00002\b\b\u0001\u00104\u001a\u00020\u001aH\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0004H\u0016J\u0011\u0010:\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010:\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\bH\u0017J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0004H\u0017J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\bH\u0017J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u000eH\u0017J\u0010\u0010H\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\bH\u0017J\u0010\u0010H\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u000eH\u0017J\u0011\u0010N\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J&\u0010N\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0017J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\bH\u0017J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u000eH\u0017J\u0011\u0010W\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J&\u0010W\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0017J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010Z\u001a\u00020\bH\u0017J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010Z\u001a\u00020\u000eH\u0017J\u0011\u0010`\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J&\u0010`\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0017J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\bH\u0016J\u0016\u0010c\u001a\u00020\u00002\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u000e0dH\u0016J\u0010\u0010i\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\bH\u0016J\u0010\u0010i\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u000eH\u0016J\u0011\u0010m\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010m\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0010\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\bH\u0017J\u0010\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020pH\u0017J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\bH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u000eH\u0016J\u0011\u0010{\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010{\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010}\u001a\u00020\bH\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010}\u001a\u00020\u000eH\u0016J\u0012\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J'\u0010\u0081\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\bH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0017J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\u0004H\u0017J\u0012\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020\bH\u0016J\u0013\u0010\u008b\u0001\u001a\u00020\u00002\b\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020\bH\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\bH\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u0099\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J'\u0010\u0099\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0012\u0010\u009b\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020\bH\u0016J\u0012\u0010\u009b\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u009f\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J'\u0010\u009f\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0012\u0010¡\u0001\u001a\u00020\u00002\u0007\u0010¡\u0001\u001a\u00020\bH\u0016J\u0012\u0010¡\u0001\u001a\u00020\u00002\u0007\u0010¡\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010¥\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J'\u0010¥\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0012\u0010§\u0001\u001a\u00020\u00002\u0007\u0010§\u0001\u001a\u00020\bH\u0016J\u0012\u0010§\u0001\u001a\u00020\u00002\u0007\u0010§\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010«\u0001\u001a\u00020\u00002\u0007\u0010«\u0001\u001a\u00020\bH\u0016J\u0012\u0010«\u0001\u001a\u00020\u00002\u0007\u0010«\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010¯\u0001\u001a\u00020\u00002\u0007\u0010¯\u0001\u001a\u00020\bH\u0016J\u0012\u0010¯\u0001\u001a\u00020\u00002\u0007\u0010¯\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010³\u0001\u001a\u00020\u00002\u0007\u0010³\u0001\u001a\u00020\bH\u0016J\u0012\u0010³\u0001\u001a\u00020\u00002\u0007\u0010³\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010·\u0001\u001a\u00020\u00002\u0007\u0010·\u0001\u001a\u00020\bH\u0016J\u0018\u0010·\u0001\u001a\u00020\u00002\r\u0010·\u0001\u001a\b\u0012\u0004\u0012\u00020\u000e0dH\u0016J\u0012\u0010¹\u0001\u001a\u00020\u00002\u0007\u0010¹\u0001\u001a\u00020\bH\u0016J\u0013\u0010¹\u0001\u001a\u00020\u00002\b\u0010¹\u0001\u001a\u00030º\u0001H\u0016J\u0012\u0010Á\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J'\u0010Á\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0012\u0010Ã\u0001\u001a\u00020\u00002\u0007\u0010Ã\u0001\u001a\u00020\bH\u0017J\u0014\u0010Ã\u0001\u001a\u00020\u00002\t\b\u0001\u0010Ã\u0001\u001a\u00020\u001aH\u0017J\u0012\u0010Ã\u0001\u001a\u00020\u00002\u0007\u0010Ã\u0001\u001a\u00020\u0004H\u0017J\u0012\u0010Ì\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J'\u0010Ì\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0017J\u0012\u0010Ï\u0001\u001a\u00020\u00002\u0007\u0010Ï\u0001\u001a\u00020\bH\u0017J\u0012\u0010Ï\u0001\u001a\u00020\u00002\u0007\u0010Ï\u0001\u001a\u00020\u0004H\u0017J\u0012\u0010Õ\u0001\u001a\u00020\u00002\u0007\u0010Õ\u0001\u001a\u00020\bH\u0017J\u0018\u0010Õ\u0001\u001a\u00020\u00002\r\u0010Õ\u0001\u001a\b\u0012\u0004\u0012\u00020\u000e0dH\u0017J\u0012\u0010Û\u0001\u001a\u00020\u00002\u0007\u0010Û\u0001\u001a\u00020\bH\u0016J\u0018\u0010Û\u0001\u001a\u00020\u00002\r\u0010Û\u0001\u001a\b\u0012\u0004\u0012\u00020\u000e0dH\u0016J\u0012\u0010ß\u0001\u001a\u00020\u00002\u0007\u0010ß\u0001\u001a\u00020\bH\u0016J\u0012\u0010ß\u0001\u001a\u00020\u00002\u0007\u0010ß\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010ã\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J'\u0010ã\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002¢\u0006\u0003\b\u0089\u0002H\u0016J\u0012\u0010å\u0001\u001a\u00020\u00002\u0007\u0010å\u0001\u001a\u00020\bH\u0017J\u0013\u0010å\u0001\u001a\u00020\u00002\b\u0010å\u0001\u001a\u00030æ\u0001H\u0017J\u0012\u0010í\u0001\u001a\u00020\u00002\u0007\u0010í\u0001\u001a\u00020\bH\u0017J\u0012\u0010í\u0001\u001a\u00020\u00002\u0007\u0010í\u0001\u001a\u00020\u000eH\u0017J\u0012\u0010ó\u0001\u001a\u00020\u00002\u0007\u0010ó\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010õ\u0001\u001a\u00020\u00002\u0007\u0010õ\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010÷\u0001\u001a\u00020\u00002\u0007\u0010÷\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010ú\u0001\u001a\u00020\u00002\u0007\u0010ú\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010ü\u0001\u001a\u00020\u00002\u0007\u0010ü\u0001\u001a\u00020\bH\u0016J\u0013\u0010ü\u0001\u001a\u00020\u00002\b\u0010ü\u0001\u001a\u00030ý\u0001H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\nR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\fR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8G¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\nR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b \u0010\u0016R\u001c\u0010!\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010#\u001a\u0004\b$\u0010\fR\u001c\u0010%\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b&\u0010#\u001a\u0004\b'\u0010\nR\u0013\u0010(\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b)\u0010\u0010R\u0013\u0010*\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b+\u0010\nR\u0013\u0010,\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b-\u0010\u0016R\u0013\u0010.\u001a\u0004\u0018\u00010/8F¢\u0006\u0006\u001a\u0004\b0\u00101R\u0013\u00102\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b3\u0010\nR\u0013\u00104\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b5\u0010\fR\u0013\u00106\u001a\u0004\u0018\u00010\u001a8G¢\u0006\u0006\u001a\u0004\b7\u0010\u001cR\u0013\u00108\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b9\u0010\nR\u0013\u0010:\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b;\u0010\u0016R\u001c\u0010<\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b=\u0010#\u001a\u0004\b>\u0010\fR\u001c\u0010?\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b@\u0010#\u001a\u0004\bA\u0010\nR\u001c\u0010B\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bC\u0010#\u001a\u0004\bD\u0010\u0010R\u001c\u0010E\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bF\u0010#\u001a\u0004\bG\u0010\nR\u001c\u0010H\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bI\u0010#\u001a\u0004\bJ\u0010\u0010R\u001c\u0010K\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bL\u0010#\u001a\u0004\bM\u0010\nR\u001c\u0010N\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\bO\u0010#\u001a\u0004\bP\u0010\u0016R\u001c\u0010Q\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bR\u0010#\u001a\u0004\bS\u0010\u0010R\u001c\u0010T\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bU\u0010#\u001a\u0004\bV\u0010\nR\u001c\u0010W\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\bX\u0010#\u001a\u0004\bY\u0010\u0016R\u001c\u0010Z\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b[\u0010#\u001a\u0004\b\\\u0010\u0010R\u001c\u0010]\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b^\u0010#\u001a\u0004\b_\u0010\nR\u001c\u0010`\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\ba\u0010#\u001a\u0004\bb\u0010\u0016R\u0019\u0010c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8F¢\u0006\u0006\u001a\u0004\be\u0010fR\u0013\u0010g\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bh\u0010\nR\u0013\u0010i\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\bj\u0010\u0010R\u0013\u0010k\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bl\u0010\nR\u0013\u0010m\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\bn\u0010\u0016R\u001c\u0010o\u001a\u0004\u0018\u00010p8FX\u0087\u0004¢\u0006\f\u0012\u0004\bq\u0010#\u001a\u0004\br\u0010sR\u001c\u0010t\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bu\u0010#\u001a\u0004\bv\u0010\nR\u0013\u0010w\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\bx\u0010\u0010R\u0013\u0010y\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bz\u0010\nR\u0013\u0010{\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b|\u0010\u0016R\u0013\u0010}\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b~\u0010\u0010R\u0014\u0010\u007f\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010\nR\u0015\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\u0016R\u0015\u0010\u0083\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010\nR\u001f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0086\u0001\u0010#\u001a\u0005\b\u0087\u0001\u0010\fR\u001f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0089\u0001\u0010#\u001a\u0005\b\u008a\u0001\u0010\nR\u0017\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u00018F¢\u0006\b\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R\u0015\u0010\u008f\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0090\u0001\u0010\nR\u0015\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b\u0092\u0001\u0010\u0010R\u0015\u0010\u0093\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0094\u0001\u0010\nR\u0015\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b\u0096\u0001\u0010\u0010R\u0015\u0010\u0097\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0098\u0001\u0010\nR\u0015\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010\u0016R\u0015\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010\u0010R\u0015\u0010\u009d\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u009e\u0001\u0010\nR\u0015\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0007\u001a\u0005\b \u0001\u0010\u0016R\u0015\u0010¡\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b¢\u0001\u0010\u0010R\u0015\u0010£\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b¤\u0001\u0010\nR\u0015\u0010¥\u0001\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0007\u001a\u0005\b¦\u0001\u0010\u0016R\u0015\u0010§\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b¨\u0001\u0010\fR\u0015\u0010©\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\bª\u0001\u0010\nR\u0015\u0010«\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b¬\u0001\u0010\u0010R\u0015\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b®\u0001\u0010\nR\u0015\u0010¯\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b°\u0001\u0010\u0010R\u0015\u0010±\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b²\u0001\u0010\nR\u0015\u0010³\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b´\u0001\u0010\u0010R\u0015\u0010µ\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010\nR\u001b\u0010·\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8F¢\u0006\u0007\u001a\u0005\b¸\u0001\u0010fR\u0017\u0010¹\u0001\u001a\u0005\u0018\u00010º\u00018F¢\u0006\b\u001a\u0006\b»\u0001\u0010¼\u0001R\u0015\u0010½\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b¾\u0001\u0010\nR\u0015\u0010¿\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\bÀ\u0001\u0010\nR\u0015\u0010Á\u0001\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0007\u001a\u0005\bÂ\u0001\u0010\u0016R\u001f\u0010Ã\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÄ\u0001\u0010#\u001a\u0005\bÅ\u0001\u0010\fR\u001f\u0010Æ\u0001\u001a\u0004\u0018\u00010\u001a8GX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÇ\u0001\u0010#\u001a\u0005\bÈ\u0001\u0010\u001cR\u001f\u0010É\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÊ\u0001\u0010#\u001a\u0005\bË\u0001\u0010\nR\u001f\u0010Ì\u0001\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÍ\u0001\u0010#\u001a\u0005\bÎ\u0001\u0010\u0016R\u001f\u0010Ï\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÐ\u0001\u0010#\u001a\u0005\bÑ\u0001\u0010\fR\u001f\u0010Ò\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÓ\u0001\u0010#\u001a\u0005\bÔ\u0001\u0010\nR%\u0010Õ\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÖ\u0001\u0010#\u001a\u0005\b×\u0001\u0010fR\u001f\u0010Ø\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÙ\u0001\u0010#\u001a\u0005\bÚ\u0001\u0010\nR\u001b\u0010Û\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8F¢\u0006\u0007\u001a\u0005\bÜ\u0001\u0010fR\u0015\u0010Ý\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\bÞ\u0001\u0010\nR\u0015\u0010ß\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\bà\u0001\u0010\u0010R\u0015\u0010á\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\bâ\u0001\u0010\nR\u0015\u0010ã\u0001\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0007\u001a\u0005\bä\u0001\u0010\u0016R!\u0010å\u0001\u001a\u0005\u0018\u00010æ\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\bç\u0001\u0010#\u001a\u0006\bè\u0001\u0010é\u0001R\u001f\u0010ê\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bë\u0001\u0010#\u001a\u0005\bì\u0001\u0010\nR\u001f\u0010í\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bî\u0001\u0010#\u001a\u0005\bï\u0001\u0010\u0010R\u001f\u0010ð\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bñ\u0001\u0010#\u001a\u0005\bò\u0001\u0010\nR\u0018\u0010ó\u0001\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bô\u0001\u0010\u0010R\u0018\u0010õ\u0001\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bö\u0001\u0010\u0010R\u0018\u0010÷\u0001\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bø\u0001\u0010\fR\u0012\u0010\u0005\u001a\u00020\u0004¢\u0006\t\n\u0000\u001a\u0005\bù\u0001\u0010\fR\u0015\u0010ú\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\bû\u0001\u0010\fR\u001a\u0010ü\u0001\u001a\u0005\u0018\u00010ý\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\bþ\u0001\u0010ÿ\u0001R\u0018\u0010\u0080\u0002\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0081\u0002\u0010\n¨\u0006\u008b\u0002"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/LineLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getLayerId", "()Ljava/lang/String;", "lineBlur", "", "getLineBlur", "()Ljava/lang/Double;", "lineBlurAsExpression", "getLineBlurAsExpression", "lineBlurTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getLineBlurTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "lineBorderColor", "getLineBorderColor", "lineBorderColorAsColorInt", "", "getLineBorderColorAsColorInt", "()Ljava/lang/Integer;", "lineBorderColorAsExpression", "getLineBorderColorAsExpression", "lineBorderColorTransition", "getLineBorderColorTransition", "lineBorderColorUseTheme", "getLineBorderColorUseTheme$annotations", "()V", "getLineBorderColorUseTheme", "lineBorderColorUseThemeAsExpression", "getLineBorderColorUseThemeAsExpression$annotations", "getLineBorderColorUseThemeAsExpression", "lineBorderWidth", "getLineBorderWidth", "lineBorderWidthAsExpression", "getLineBorderWidthAsExpression", "lineBorderWidthTransition", "getLineBorderWidthTransition", "lineCap", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;", "getLineCap", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;", "lineCapAsExpression", "getLineCapAsExpression", "lineColor", "getLineColor", "lineColorAsColorInt", "getLineColorAsColorInt", "lineColorAsExpression", "getLineColorAsExpression", "lineColorTransition", "getLineColorTransition", "lineColorUseTheme", "getLineColorUseTheme$annotations", "getLineColorUseTheme", "lineColorUseThemeAsExpression", "getLineColorUseThemeAsExpression$annotations", "getLineColorUseThemeAsExpression", "lineCrossSlope", "getLineCrossSlope$annotations", "getLineCrossSlope", "lineCrossSlopeAsExpression", "getLineCrossSlopeAsExpression$annotations", "getLineCrossSlopeAsExpression", "lineCutoutFadeWidth", "getLineCutoutFadeWidth$annotations", "getLineCutoutFadeWidth", "lineCutoutFadeWidthAsExpression", "getLineCutoutFadeWidthAsExpression$annotations", "getLineCutoutFadeWidthAsExpression", "lineCutoutFadeWidthTransition", "getLineCutoutFadeWidthTransition$annotations", "getLineCutoutFadeWidthTransition", "lineCutoutOpacity", "getLineCutoutOpacity$annotations", "getLineCutoutOpacity", "lineCutoutOpacityAsExpression", "getLineCutoutOpacityAsExpression$annotations", "getLineCutoutOpacityAsExpression", "lineCutoutOpacityTransition", "getLineCutoutOpacityTransition$annotations", "getLineCutoutOpacityTransition", "lineCutoutWidth", "getLineCutoutWidth$annotations", "getLineCutoutWidth", "lineCutoutWidthAsExpression", "getLineCutoutWidthAsExpression$annotations", "getLineCutoutWidthAsExpression", "lineCutoutWidthTransition", "getLineCutoutWidthTransition$annotations", "getLineCutoutWidthTransition", "lineDasharray", "", "getLineDasharray", "()Ljava/util/List;", "lineDasharrayAsExpression", "getLineDasharrayAsExpression", "lineDepthOcclusionFactor", "getLineDepthOcclusionFactor", "lineDepthOcclusionFactorAsExpression", "getLineDepthOcclusionFactorAsExpression", "lineDepthOcclusionFactorTransition", "getLineDepthOcclusionFactorTransition", "lineElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;", "getLineElevationReference$annotations", "getLineElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;", "lineElevationReferenceAsExpression", "getLineElevationReferenceAsExpression$annotations", "getLineElevationReferenceAsExpression", "lineEmissiveStrength", "getLineEmissiveStrength", "lineEmissiveStrengthAsExpression", "getLineEmissiveStrengthAsExpression", "lineEmissiveStrengthTransition", "getLineEmissiveStrengthTransition", "lineGapWidth", "getLineGapWidth", "lineGapWidthAsExpression", "getLineGapWidthAsExpression", "lineGapWidthTransition", "getLineGapWidthTransition", "lineGradient", "getLineGradient", "lineGradientUseTheme", "getLineGradientUseTheme$annotations", "getLineGradientUseTheme", "lineGradientUseThemeAsExpression", "getLineGradientUseThemeAsExpression$annotations", "getLineGradientUseThemeAsExpression", "lineJoin", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "getLineJoin", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "lineJoinAsExpression", "getLineJoinAsExpression", "lineMiterLimit", "getLineMiterLimit", "lineMiterLimitAsExpression", "getLineMiterLimitAsExpression", "lineOcclusionOpacity", "getLineOcclusionOpacity", "lineOcclusionOpacityAsExpression", "getLineOcclusionOpacityAsExpression", "lineOcclusionOpacityTransition", "getLineOcclusionOpacityTransition", "lineOffset", "getLineOffset", "lineOffsetAsExpression", "getLineOffsetAsExpression", "lineOffsetTransition", "getLineOffsetTransition", "lineOpacity", "getLineOpacity", "lineOpacityAsExpression", "getLineOpacityAsExpression", "lineOpacityTransition", "getLineOpacityTransition", "linePattern", "getLinePattern", "linePatternAsExpression", "getLinePatternAsExpression", "linePatternCrossFade", "getLinePatternCrossFade", "linePatternCrossFadeAsExpression", "getLinePatternCrossFadeAsExpression", "lineRoundLimit", "getLineRoundLimit", "lineRoundLimitAsExpression", "getLineRoundLimitAsExpression", "lineSortKey", "getLineSortKey", "lineSortKeyAsExpression", "getLineSortKeyAsExpression", "lineTranslate", "getLineTranslate", "lineTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;", "getLineTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;", "lineTranslateAnchorAsExpression", "getLineTranslateAnchorAsExpression", "lineTranslateAsExpression", "getLineTranslateAsExpression", "lineTranslateTransition", "getLineTranslateTransition", "lineTrimColor", "getLineTrimColor$annotations", "getLineTrimColor", "lineTrimColorAsColorInt", "getLineTrimColorAsColorInt$annotations", "getLineTrimColorAsColorInt", "lineTrimColorAsExpression", "getLineTrimColorAsExpression$annotations", "getLineTrimColorAsExpression", "lineTrimColorTransition", "getLineTrimColorTransition$annotations", "getLineTrimColorTransition", "lineTrimColorUseTheme", "getLineTrimColorUseTheme$annotations", "getLineTrimColorUseTheme", "lineTrimColorUseThemeAsExpression", "getLineTrimColorUseThemeAsExpression$annotations", "getLineTrimColorUseThemeAsExpression", "lineTrimFadeRange", "getLineTrimFadeRange$annotations", "getLineTrimFadeRange", "lineTrimFadeRangeAsExpression", "getLineTrimFadeRangeAsExpression$annotations", "getLineTrimFadeRangeAsExpression", "lineTrimOffset", "getLineTrimOffset", "lineTrimOffsetAsExpression", "getLineTrimOffsetAsExpression", "lineWidth", "getLineWidth", "lineWidthAsExpression", "getLineWidthAsExpression", "lineWidthTransition", "getLineWidthTransition", "lineWidthUnit", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;", "getLineWidthUnit$annotations", "getLineWidthUnit", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;", "lineWidthUnitAsExpression", "getLineWidthUnitAsExpression$annotations", "getLineWidthUnitAsExpression", "lineZOffset", "getLineZOffset$annotations", "getLineZOffset", "lineZOffsetAsExpression", "getLineZOffsetAsExpression$annotations", "getLineZOffsetAsExpression", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "getType", "getType$extension_style_release", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LineLayer extends Layer implements LineLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getLineBorderColorUseTheme$annotations() {
    }

    public static void getLineBorderColorUseThemeAsExpression$annotations() {
    }

    public static void getLineColorUseTheme$annotations() {
    }

    public static void getLineColorUseThemeAsExpression$annotations() {
    }

    public static void getLineCrossSlope$annotations() {
    }

    public static void getLineCrossSlopeAsExpression$annotations() {
    }

    public static void getLineCutoutFadeWidth$annotations() {
    }

    public static void getLineCutoutFadeWidthAsExpression$annotations() {
    }

    public static void getLineCutoutFadeWidthTransition$annotations() {
    }

    public static void getLineCutoutOpacity$annotations() {
    }

    public static void getLineCutoutOpacityAsExpression$annotations() {
    }

    public static void getLineCutoutOpacityTransition$annotations() {
    }

    public static void getLineCutoutWidth$annotations() {
    }

    public static void getLineCutoutWidthAsExpression$annotations() {
    }

    public static void getLineCutoutWidthTransition$annotations() {
    }

    public static void getLineElevationReference$annotations() {
    }

    public static void getLineElevationReferenceAsExpression$annotations() {
    }

    public static void getLineGradientUseTheme$annotations() {
    }

    public static void getLineGradientUseThemeAsExpression$annotations() {
    }

    public static void getLineTrimColor$annotations() {
    }

    public static void getLineTrimColorAsColorInt$annotations() {
    }

    public static void getLineTrimColorAsExpression$annotations() {
    }

    public static void getLineTrimColorTransition$annotations() {
    }

    public static void getLineTrimColorUseTheme$annotations() {
    }

    public static void getLineTrimColorUseThemeAsExpression$annotations() {
    }

    public static void getLineTrimFadeRange$annotations() {
    }

    public static void getLineTrimFadeRangeAsExpression$annotations() {
    }

    public static void getLineWidthUnit$annotations() {
    }

    public static void getLineWidthUnitAsExpression$annotations() {
    }

    public static void getLineZOffset$annotations() {
    }

    public static void getLineZOffsetAsExpression$annotations() {
    }

    public LineLayer(String layerId, String sourceId) {
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
    public LineLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public LineLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public LineLayer filter(Expression filter) {
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
    public LineLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public LineLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public LineLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public LineLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final LineCap getLineCap() {
        String str = (String) getPropertyValueWithType("line-cap", String.class);
        if (str == null) {
            return null;
        }
        LineCap.Companion companion = LineCap.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public LineLayer lineCap(LineCap lineCap) {
        Intrinsics.checkNotNullParameter(lineCap, "lineCap");
        setProperty$extension_style_release(new PropertyValue<>("line-cap", lineCap));
        return this;
    }

    public final Expression getLineCapAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("line-cap", Expression.class);
        if (expression != null) {
            return expression;
        }
        LineCap lineCap = getLineCap();
        if (lineCap != null) {
            return Expression.INSTANCE.literal(lineCap.getValue());
        }
        return null;
    }

    @Override
    public LineLayer lineCap(Expression lineCap) {
        Intrinsics.checkNotNullParameter(lineCap, "lineCap");
        setProperty$extension_style_release(new PropertyValue<>("line-cap", lineCap));
        return this;
    }

    public final Double getLineCrossSlope() {
        return (Double) getPropertyValueWithType("line-cross-slope", Double.class);
    }

    @Override
    public LineLayer lineCrossSlope(double lineCrossSlope) {
        setProperty$extension_style_release(new PropertyValue<>("line-cross-slope", Double.valueOf(lineCrossSlope)));
        return this;
    }

    public final Expression getLineCrossSlopeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-cross-slope");
    }

    @Override
    public LineLayer lineCrossSlope(Expression lineCrossSlope) {
        Intrinsics.checkNotNullParameter(lineCrossSlope, "lineCrossSlope");
        setProperty$extension_style_release(new PropertyValue<>("line-cross-slope", lineCrossSlope));
        return this;
    }

    public final Double getLineCutoutFadeWidth() {
        return (Double) getPropertyValueWithType("line-cutout-fade-width", Double.class);
    }

    @Override
    public LineLayer lineCutoutFadeWidth(double lineCutoutFadeWidth) {
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-fade-width", Double.valueOf(lineCutoutFadeWidth)));
        return this;
    }

    public final Expression getLineCutoutFadeWidthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-cutout-fade-width");
    }

    @Override
    public LineLayer lineCutoutFadeWidth(Expression lineCutoutFadeWidth) {
        Intrinsics.checkNotNullParameter(lineCutoutFadeWidth, "lineCutoutFadeWidth");
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-fade-width", lineCutoutFadeWidth));
        return this;
    }

    public final StyleTransition getLineCutoutFadeWidthTransition() {
        return (StyleTransition) getPropertyValueWithType("line-cutout-fade-width-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineCutoutFadeWidthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-fade-width-transition", options));
        return this;
    }

    @Override
    public LineLayer lineCutoutFadeWidthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineCutoutFadeWidthTransition(builder.build());
        return this;
    }

    public final Double getLineCutoutOpacity() {
        return (Double) getPropertyValueWithType("line-cutout-opacity", Double.class);
    }

    @Override
    public LineLayer lineCutoutOpacity(double lineCutoutOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-opacity", Double.valueOf(lineCutoutOpacity)));
        return this;
    }

    public final Expression getLineCutoutOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-cutout-opacity");
    }

    @Override
    public LineLayer lineCutoutOpacity(Expression lineCutoutOpacity) {
        Intrinsics.checkNotNullParameter(lineCutoutOpacity, "lineCutoutOpacity");
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-opacity", lineCutoutOpacity));
        return this;
    }

    public final StyleTransition getLineCutoutOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("line-cutout-opacity-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineCutoutOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-opacity-transition", options));
        return this;
    }

    @Override
    public LineLayer lineCutoutOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineCutoutOpacityTransition(builder.build());
        return this;
    }

    public final Double getLineCutoutWidth() {
        return (Double) getPropertyValueWithType("line-cutout-width", Double.class);
    }

    @Override
    public LineLayer lineCutoutWidth(double lineCutoutWidth) {
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-width", Double.valueOf(lineCutoutWidth)));
        return this;
    }

    public final Expression getLineCutoutWidthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-cutout-width");
    }

    @Override
    public LineLayer lineCutoutWidth(Expression lineCutoutWidth) {
        Intrinsics.checkNotNullParameter(lineCutoutWidth, "lineCutoutWidth");
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-width", lineCutoutWidth));
        return this;
    }

    public final StyleTransition getLineCutoutWidthTransition() {
        return (StyleTransition) getPropertyValueWithType("line-cutout-width-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineCutoutWidthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-cutout-width-transition", options));
        return this;
    }

    @Override
    public LineLayer lineCutoutWidthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineCutoutWidthTransition(builder.build());
        return this;
    }

    public final LineElevationReference getLineElevationReference() {
        String str = (String) getPropertyValueWithType("line-elevation-reference", String.class);
        if (str == null) {
            return null;
        }
        LineElevationReference.Companion companion = LineElevationReference.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public LineLayer lineElevationReference(LineElevationReference lineElevationReference) {
        Intrinsics.checkNotNullParameter(lineElevationReference, "lineElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("line-elevation-reference", lineElevationReference));
        return this;
    }

    public final Expression getLineElevationReferenceAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("line-elevation-reference", Expression.class);
        if (expression != null) {
            return expression;
        }
        LineElevationReference lineElevationReference = getLineElevationReference();
        if (lineElevationReference != null) {
            return Expression.INSTANCE.literal(lineElevationReference.getValue());
        }
        return null;
    }

    @Override
    public LineLayer lineElevationReference(Expression lineElevationReference) {
        Intrinsics.checkNotNullParameter(lineElevationReference, "lineElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("line-elevation-reference", lineElevationReference));
        return this;
    }

    public final LineJoin getLineJoin() {
        String str = (String) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_JOIN, String.class);
        if (str == null) {
            return null;
        }
        LineJoin.Companion companion = LineJoin.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public LineLayer lineJoin(LineJoin lineJoin) {
        Intrinsics.checkNotNullParameter(lineJoin, "lineJoin");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_JOIN, lineJoin));
        return this;
    }

    public final Expression getLineJoinAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_JOIN, Expression.class);
        if (expression != null) {
            return expression;
        }
        LineJoin lineJoin = getLineJoin();
        if (lineJoin != null) {
            return Expression.INSTANCE.literal(lineJoin.getValue());
        }
        return null;
    }

    @Override
    public LineLayer lineJoin(Expression lineJoin) {
        Intrinsics.checkNotNullParameter(lineJoin, "lineJoin");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_JOIN, lineJoin));
        return this;
    }

    public final Double getLineMiterLimit() {
        return (Double) getPropertyValueWithType("line-miter-limit", Double.class);
    }

    @Override
    public LineLayer lineMiterLimit(double lineMiterLimit) {
        setProperty$extension_style_release(new PropertyValue<>("line-miter-limit", Double.valueOf(lineMiterLimit)));
        return this;
    }

    public final Expression getLineMiterLimitAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-miter-limit");
    }

    @Override
    public LineLayer lineMiterLimit(Expression lineMiterLimit) {
        Intrinsics.checkNotNullParameter(lineMiterLimit, "lineMiterLimit");
        setProperty$extension_style_release(new PropertyValue<>("line-miter-limit", lineMiterLimit));
        return this;
    }

    public final Double getLineRoundLimit() {
        return (Double) getPropertyValueWithType("line-round-limit", Double.class);
    }

    @Override
    public LineLayer lineRoundLimit(double lineRoundLimit) {
        setProperty$extension_style_release(new PropertyValue<>("line-round-limit", Double.valueOf(lineRoundLimit)));
        return this;
    }

    public final Expression getLineRoundLimitAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-round-limit");
    }

    @Override
    public LineLayer lineRoundLimit(Expression lineRoundLimit) {
        Intrinsics.checkNotNullParameter(lineRoundLimit, "lineRoundLimit");
        setProperty$extension_style_release(new PropertyValue<>("line-round-limit", lineRoundLimit));
        return this;
    }

    public final Double getLineSortKey() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY, Double.class);
    }

    @Override
    public LineLayer lineSortKey(double lineSortKey) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY, Double.valueOf(lineSortKey)));
        return this;
    }

    public final Expression getLineSortKeyAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY);
    }

    @Override
    public LineLayer lineSortKey(Expression lineSortKey) {
        Intrinsics.checkNotNullParameter(lineSortKey, "lineSortKey");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY, lineSortKey));
        return this;
    }

    public final LineWidthUnit getLineWidthUnit() {
        String str = (String) getPropertyValueWithType("line-width-unit", String.class);
        if (str == null) {
            return null;
        }
        LineWidthUnit.Companion companion = LineWidthUnit.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public LineLayer lineWidthUnit(LineWidthUnit lineWidthUnit) {
        Intrinsics.checkNotNullParameter(lineWidthUnit, "lineWidthUnit");
        setProperty$extension_style_release(new PropertyValue<>("line-width-unit", lineWidthUnit));
        return this;
    }

    public final Expression getLineWidthUnitAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("line-width-unit", Expression.class);
        if (expression != null) {
            return expression;
        }
        LineWidthUnit lineWidthUnit = getLineWidthUnit();
        if (lineWidthUnit != null) {
            return Expression.INSTANCE.literal(lineWidthUnit.getValue());
        }
        return null;
    }

    @Override
    public LineLayer lineWidthUnit(Expression lineWidthUnit) {
        Intrinsics.checkNotNullParameter(lineWidthUnit, "lineWidthUnit");
        setProperty$extension_style_release(new PropertyValue<>("line-width-unit", lineWidthUnit));
        return this;
    }

    public final Double getLineZOffset() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET, Double.class);
    }

    @Override
    public LineLayer lineZOffset(double lineZOffset) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET, Double.valueOf(lineZOffset)));
        return this;
    }

    public final Expression getLineZOffsetAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET);
    }

    @Override
    public LineLayer lineZOffset(Expression lineZOffset) {
        Intrinsics.checkNotNullParameter(lineZOffset, "lineZOffset");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET, lineZOffset));
        return this;
    }

    public final Double getLineBlur() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_BLUR, Double.class);
    }

    @Override
    public LineLayer lineBlur(double lineBlur) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BLUR, Double.valueOf(lineBlur)));
        return this;
    }

    public final Expression getLineBlurAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_BLUR);
    }

    @Override
    public LineLayer lineBlur(Expression lineBlur) {
        Intrinsics.checkNotNullParameter(lineBlur, "lineBlur");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BLUR, lineBlur));
        return this;
    }

    public final StyleTransition getLineBlurTransition() {
        return (StyleTransition) getPropertyValueWithType("line-blur-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineBlurTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-blur-transition", options));
        return this;
    }

    @Override
    public LineLayer lineBlurTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineBlurTransition(builder.build());
        return this;
    }

    public final String getLineBorderColor() {
        Expression lineBorderColorAsExpression = getLineBorderColorAsExpression();
        if (lineBorderColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(lineBorderColorAsExpression);
        }
        return null;
    }

    @Override
    public LineLayer lineBorderColor(String lineBorderColor) {
        Intrinsics.checkNotNullParameter(lineBorderColor, "lineBorderColor");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR, lineBorderColor));
        return this;
    }

    public final Expression getLineBorderColorAsExpression() {
        return (Expression) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR, Expression.class);
    }

    @Override
    public LineLayer lineBorderColor(Expression lineBorderColor) {
        Intrinsics.checkNotNullParameter(lineBorderColor, "lineBorderColor");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR, lineBorderColor));
        return this;
    }

    public final Integer getLineBorderColorAsColorInt() {
        Expression lineBorderColorAsExpression = getLineBorderColorAsExpression();
        if (lineBorderColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(lineBorderColorAsExpression);
        }
        return null;
    }

    @Override
    public LineLayer lineBorderColor(int lineBorderColor) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(lineBorderColor)));
        return this;
    }

    public final StyleTransition getLineBorderColorTransition() {
        return (StyleTransition) getPropertyValueWithType("line-border-color-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineBorderColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-border-color-transition", options));
        return this;
    }

    @Override
    public LineLayer lineBorderColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineBorderColorTransition(builder.build());
        return this;
    }

    public final String getLineBorderColorUseTheme() {
        return (String) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME, String.class);
    }

    @Override
    public LineLayer lineBorderColorUseTheme(String lineBorderColorUseTheme) {
        Intrinsics.checkNotNullParameter(lineBorderColorUseTheme, "lineBorderColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME, lineBorderColorUseTheme));
        return this;
    }

    public final Expression getLineBorderColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME);
    }

    @Override
    public LineLayer lineBorderColorUseTheme(Expression lineBorderColorUseTheme) {
        Intrinsics.checkNotNullParameter(lineBorderColorUseTheme, "lineBorderColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME, lineBorderColorUseTheme));
        return this;
    }

    public final Double getLineBorderWidth() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH, Double.class);
    }

    @Override
    public LineLayer lineBorderWidth(double lineBorderWidth) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH, Double.valueOf(lineBorderWidth)));
        return this;
    }

    public final Expression getLineBorderWidthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH);
    }

    @Override
    public LineLayer lineBorderWidth(Expression lineBorderWidth) {
        Intrinsics.checkNotNullParameter(lineBorderWidth, "lineBorderWidth");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH, lineBorderWidth));
        return this;
    }

    public final StyleTransition getLineBorderWidthTransition() {
        return (StyleTransition) getPropertyValueWithType("line-border-width-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineBorderWidthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-border-width-transition", options));
        return this;
    }

    @Override
    public LineLayer lineBorderWidthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineBorderWidthTransition(builder.build());
        return this;
    }

    public final String getLineColor() {
        Expression lineColorAsExpression = getLineColorAsExpression();
        if (lineColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(lineColorAsExpression);
        }
        return null;
    }

    @Override
    public LineLayer lineColor(String lineColor) {
        Intrinsics.checkNotNullParameter(lineColor, "lineColor");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_COLOR, lineColor));
        return this;
    }

    public final Expression getLineColorAsExpression() {
        return (Expression) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_COLOR, Expression.class);
    }

    @Override
    public LineLayer lineColor(Expression lineColor) {
        Intrinsics.checkNotNullParameter(lineColor, "lineColor");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_COLOR, lineColor));
        return this;
    }

    public final Integer getLineColorAsColorInt() {
        Expression lineColorAsExpression = getLineColorAsExpression();
        if (lineColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(lineColorAsExpression);
        }
        return null;
    }

    @Override
    public LineLayer lineColor(int lineColor) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(lineColor)));
        return this;
    }

    public final StyleTransition getLineColorTransition() {
        return (StyleTransition) getPropertyValueWithType("line-color-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-color-transition", options));
        return this;
    }

    @Override
    public LineLayer lineColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineColorTransition(builder.build());
        return this;
    }

    public final String getLineColorUseTheme() {
        return (String) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME, String.class);
    }

    @Override
    public LineLayer lineColorUseTheme(String lineColorUseTheme) {
        Intrinsics.checkNotNullParameter(lineColorUseTheme, "lineColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME, lineColorUseTheme));
        return this;
    }

    public final Expression getLineColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME);
    }

    @Override
    public LineLayer lineColorUseTheme(Expression lineColorUseTheme) {
        Intrinsics.checkNotNullParameter(lineColorUseTheme, "lineColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME, lineColorUseTheme));
        return this;
    }

    public final List<Double> getLineDasharray() {
        return (List) getPropertyValueWithType("line-dasharray", List.class);
    }

    @Override
    public LineLayer lineDasharray(List<Double> lineDasharray) {
        Intrinsics.checkNotNullParameter(lineDasharray, "lineDasharray");
        setProperty$extension_style_release(new PropertyValue<>("line-dasharray", lineDasharray));
        return this;
    }

    public final Expression getLineDasharrayAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-dasharray");
    }

    @Override
    public LineLayer lineDasharray(Expression lineDasharray) {
        Intrinsics.checkNotNullParameter(lineDasharray, "lineDasharray");
        setProperty$extension_style_release(new PropertyValue<>("line-dasharray", lineDasharray));
        return this;
    }

    public final Double getLineDepthOcclusionFactor() {
        return (Double) getPropertyValueWithType("line-depth-occlusion-factor", Double.class);
    }

    @Override
    public LineLayer lineDepthOcclusionFactor(double lineDepthOcclusionFactor) {
        setProperty$extension_style_release(new PropertyValue<>("line-depth-occlusion-factor", Double.valueOf(lineDepthOcclusionFactor)));
        return this;
    }

    public final Expression getLineDepthOcclusionFactorAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-depth-occlusion-factor");
    }

    @Override
    public LineLayer lineDepthOcclusionFactor(Expression lineDepthOcclusionFactor) {
        Intrinsics.checkNotNullParameter(lineDepthOcclusionFactor, "lineDepthOcclusionFactor");
        setProperty$extension_style_release(new PropertyValue<>("line-depth-occlusion-factor", lineDepthOcclusionFactor));
        return this;
    }

    public final StyleTransition getLineDepthOcclusionFactorTransition() {
        return (StyleTransition) getPropertyValueWithType("line-depth-occlusion-factor-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineDepthOcclusionFactorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-depth-occlusion-factor-transition", options));
        return this;
    }

    @Override
    public LineLayer lineDepthOcclusionFactorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineDepthOcclusionFactorTransition(builder.build());
        return this;
    }

    public final Double getLineEmissiveStrength() {
        return (Double) getPropertyValueWithType("line-emissive-strength", Double.class);
    }

    @Override
    public LineLayer lineEmissiveStrength(double lineEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("line-emissive-strength", Double.valueOf(lineEmissiveStrength)));
        return this;
    }

    public final Expression getLineEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-emissive-strength");
    }

    @Override
    public LineLayer lineEmissiveStrength(Expression lineEmissiveStrength) {
        Intrinsics.checkNotNullParameter(lineEmissiveStrength, "lineEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("line-emissive-strength", lineEmissiveStrength));
        return this;
    }

    public final StyleTransition getLineEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("line-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-emissive-strength-transition", options));
        return this;
    }

    @Override
    public LineLayer lineEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final Double getLineGapWidth() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH, Double.class);
    }

    @Override
    public LineLayer lineGapWidth(double lineGapWidth) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH, Double.valueOf(lineGapWidth)));
        return this;
    }

    public final Expression getLineGapWidthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH);
    }

    @Override
    public LineLayer lineGapWidth(Expression lineGapWidth) {
        Intrinsics.checkNotNullParameter(lineGapWidth, "lineGapWidth");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH, lineGapWidth));
        return this;
    }

    public final StyleTransition getLineGapWidthTransition() {
        return (StyleTransition) getPropertyValueWithType("line-gap-width-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineGapWidthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-gap-width-transition", options));
        return this;
    }

    @Override
    public LineLayer lineGapWidthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineGapWidthTransition(builder.build());
        return this;
    }

    public final Expression getLineGradient() {
        return (Expression) getPropertyValueWithType("line-gradient", Expression.class);
    }

    @Override
    public LineLayer lineGradient(Expression lineGradient) {
        Intrinsics.checkNotNullParameter(lineGradient, "lineGradient");
        setProperty$extension_style_release(new PropertyValue<>("line-gradient", lineGradient));
        return this;
    }

    public final String getLineGradientUseTheme() {
        return (String) getPropertyValueWithType("line-gradient-use-theme", String.class);
    }

    @Override
    public LineLayer lineGradientUseTheme(String lineGradientUseTheme) {
        Intrinsics.checkNotNullParameter(lineGradientUseTheme, "lineGradientUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("line-gradient-use-theme", lineGradientUseTheme));
        return this;
    }

    public final Expression getLineGradientUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-gradient-use-theme");
    }

    @Override
    public LineLayer lineGradientUseTheme(Expression lineGradientUseTheme) {
        Intrinsics.checkNotNullParameter(lineGradientUseTheme, "lineGradientUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("line-gradient-use-theme", lineGradientUseTheme));
        return this;
    }

    public final Double getLineOcclusionOpacity() {
        return (Double) getPropertyValueWithType("line-occlusion-opacity", Double.class);
    }

    @Override
    public LineLayer lineOcclusionOpacity(double lineOcclusionOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("line-occlusion-opacity", Double.valueOf(lineOcclusionOpacity)));
        return this;
    }

    public final Expression getLineOcclusionOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-occlusion-opacity");
    }

    @Override
    public LineLayer lineOcclusionOpacity(Expression lineOcclusionOpacity) {
        Intrinsics.checkNotNullParameter(lineOcclusionOpacity, "lineOcclusionOpacity");
        setProperty$extension_style_release(new PropertyValue<>("line-occlusion-opacity", lineOcclusionOpacity));
        return this;
    }

    public final StyleTransition getLineOcclusionOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("line-occlusion-opacity-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineOcclusionOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-occlusion-opacity-transition", options));
        return this;
    }

    @Override
    public LineLayer lineOcclusionOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineOcclusionOpacityTransition(builder.build());
        return this;
    }

    public final Double getLineOffset() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET, Double.class);
    }

    @Override
    public LineLayer lineOffset(double lineOffset) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET, Double.valueOf(lineOffset)));
        return this;
    }

    public final Expression getLineOffsetAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET);
    }

    @Override
    public LineLayer lineOffset(Expression lineOffset) {
        Intrinsics.checkNotNullParameter(lineOffset, "lineOffset");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_OFFSET, lineOffset));
        return this;
    }

    public final StyleTransition getLineOffsetTransition() {
        return (StyleTransition) getPropertyValueWithType("line-offset-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineOffsetTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-offset-transition", options));
        return this;
    }

    @Override
    public LineLayer lineOffsetTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineOffsetTransition(builder.build());
        return this;
    }

    public final Double getLineOpacity() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY, Double.class);
    }

    @Override
    public LineLayer lineOpacity(double lineOpacity) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY, Double.valueOf(lineOpacity)));
        return this;
    }

    public final Expression getLineOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY);
    }

    @Override
    public LineLayer lineOpacity(Expression lineOpacity) {
        Intrinsics.checkNotNullParameter(lineOpacity, "lineOpacity");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_OPACITY, lineOpacity));
        return this;
    }

    public final StyleTransition getLineOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("line-opacity-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-opacity-transition", options));
        return this;
    }

    @Override
    public LineLayer lineOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineOpacityTransition(builder.build());
        return this;
    }

    public final String getLinePattern() {
        return (String) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN, String.class);
    }

    @Override
    public LineLayer linePattern(String linePattern) {
        Intrinsics.checkNotNullParameter(linePattern, "linePattern");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN, linePattern));
        return this;
    }

    public final Expression getLinePatternAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN);
    }

    @Override
    public LineLayer linePattern(Expression linePattern) {
        Intrinsics.checkNotNullParameter(linePattern, "linePattern");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_PATTERN, linePattern));
        return this;
    }

    public final Double getLinePatternCrossFade() {
        return (Double) getPropertyValueWithType("line-pattern-cross-fade", Double.class);
    }

    @Override
    public LineLayer linePatternCrossFade(double linePatternCrossFade) {
        setProperty$extension_style_release(new PropertyValue<>("line-pattern-cross-fade", Double.valueOf(linePatternCrossFade)));
        return this;
    }

    public final Expression getLinePatternCrossFadeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-pattern-cross-fade");
    }

    @Override
    public LineLayer linePatternCrossFade(Expression linePatternCrossFade) {
        Intrinsics.checkNotNullParameter(linePatternCrossFade, "linePatternCrossFade");
        setProperty$extension_style_release(new PropertyValue<>("line-pattern-cross-fade", linePatternCrossFade));
        return this;
    }

    public final List<Double> getLineTranslate() {
        return (List) getPropertyValueWithType("line-translate", List.class);
    }

    @Override
    public LineLayer lineTranslate(List<Double> lineTranslate) {
        Intrinsics.checkNotNullParameter(lineTranslate, "lineTranslate");
        setProperty$extension_style_release(new PropertyValue<>("line-translate", lineTranslate));
        return this;
    }

    public final Expression getLineTranslateAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-translate");
    }

    @Override
    public LineLayer lineTranslate(Expression lineTranslate) {
        Intrinsics.checkNotNullParameter(lineTranslate, "lineTranslate");
        setProperty$extension_style_release(new PropertyValue<>("line-translate", lineTranslate));
        return this;
    }

    public final StyleTransition getLineTranslateTransition() {
        return (StyleTransition) getPropertyValueWithType("line-translate-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineTranslateTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-translate-transition", options));
        return this;
    }

    @Override
    public LineLayer lineTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineTranslateTransition(builder.build());
        return this;
    }

    public final LineTranslateAnchor getLineTranslateAnchor() {
        String str = (String) getPropertyValueWithType("line-translate-anchor", String.class);
        if (str == null) {
            return null;
        }
        LineTranslateAnchor.Companion companion = LineTranslateAnchor.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public LineLayer lineTranslateAnchor(LineTranslateAnchor lineTranslateAnchor) {
        Intrinsics.checkNotNullParameter(lineTranslateAnchor, "lineTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("line-translate-anchor", lineTranslateAnchor));
        return this;
    }

    public final Expression getLineTranslateAnchorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("line-translate-anchor", Expression.class);
        if (expression != null) {
            return expression;
        }
        LineTranslateAnchor lineTranslateAnchor = getLineTranslateAnchor();
        if (lineTranslateAnchor != null) {
            return Expression.INSTANCE.literal(lineTranslateAnchor.getValue());
        }
        return null;
    }

    @Override
    public LineLayer lineTranslateAnchor(Expression lineTranslateAnchor) {
        Intrinsics.checkNotNullParameter(lineTranslateAnchor, "lineTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("line-translate-anchor", lineTranslateAnchor));
        return this;
    }

    public final String getLineTrimColor() {
        Expression lineTrimColorAsExpression = getLineTrimColorAsExpression();
        if (lineTrimColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(lineTrimColorAsExpression);
        }
        return null;
    }

    @Override
    public LineLayer lineTrimColor(String lineTrimColor) {
        Intrinsics.checkNotNullParameter(lineTrimColor, "lineTrimColor");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-color", lineTrimColor));
        return this;
    }

    public final Expression getLineTrimColorAsExpression() {
        return (Expression) getPropertyValueWithType("line-trim-color", Expression.class);
    }

    @Override
    public LineLayer lineTrimColor(Expression lineTrimColor) {
        Intrinsics.checkNotNullParameter(lineTrimColor, "lineTrimColor");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-color", lineTrimColor));
        return this;
    }

    public final Integer getLineTrimColorAsColorInt() {
        Expression lineTrimColorAsExpression = getLineTrimColorAsExpression();
        if (lineTrimColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(lineTrimColorAsExpression);
        }
        return null;
    }

    @Override
    public LineLayer lineTrimColor(int lineTrimColor) {
        setProperty$extension_style_release(new PropertyValue<>("line-trim-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(lineTrimColor)));
        return this;
    }

    public final StyleTransition getLineTrimColorTransition() {
        return (StyleTransition) getPropertyValueWithType("line-trim-color-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineTrimColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-color-transition", options));
        return this;
    }

    @Override
    public LineLayer lineTrimColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineTrimColorTransition(builder.build());
        return this;
    }

    public final String getLineTrimColorUseTheme() {
        return (String) getPropertyValueWithType("line-trim-color-use-theme", String.class);
    }

    @Override
    public LineLayer lineTrimColorUseTheme(String lineTrimColorUseTheme) {
        Intrinsics.checkNotNullParameter(lineTrimColorUseTheme, "lineTrimColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-color-use-theme", lineTrimColorUseTheme));
        return this;
    }

    public final Expression getLineTrimColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-trim-color-use-theme");
    }

    @Override
    public LineLayer lineTrimColorUseTheme(Expression lineTrimColorUseTheme) {
        Intrinsics.checkNotNullParameter(lineTrimColorUseTheme, "lineTrimColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-color-use-theme", lineTrimColorUseTheme));
        return this;
    }

    public final List<Double> getLineTrimFadeRange() {
        return (List) getPropertyValueWithType("line-trim-fade-range", List.class);
    }

    @Override
    public LineLayer lineTrimFadeRange(List<Double> lineTrimFadeRange) {
        Intrinsics.checkNotNullParameter(lineTrimFadeRange, "lineTrimFadeRange");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-fade-range", lineTrimFadeRange));
        return this;
    }

    public final Expression getLineTrimFadeRangeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-trim-fade-range");
    }

    @Override
    public LineLayer lineTrimFadeRange(Expression lineTrimFadeRange) {
        Intrinsics.checkNotNullParameter(lineTrimFadeRange, "lineTrimFadeRange");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-fade-range", lineTrimFadeRange));
        return this;
    }

    public final List<Double> getLineTrimOffset() {
        return (List) getPropertyValueWithType("line-trim-offset", List.class);
    }

    @Override
    public LineLayer lineTrimOffset(List<Double> lineTrimOffset) {
        Intrinsics.checkNotNullParameter(lineTrimOffset, "lineTrimOffset");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-offset", lineTrimOffset));
        return this;
    }

    public final Expression getLineTrimOffsetAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("line-trim-offset");
    }

    @Override
    public LineLayer lineTrimOffset(Expression lineTrimOffset) {
        Intrinsics.checkNotNullParameter(lineTrimOffset, "lineTrimOffset");
        setProperty$extension_style_release(new PropertyValue<>("line-trim-offset", lineTrimOffset));
        return this;
    }

    public final Double getLineWidth() {
        return (Double) getPropertyValueWithType(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH, Double.class);
    }

    @Override
    public LineLayer lineWidth(double lineWidth) {
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH, Double.valueOf(lineWidth)));
        return this;
    }

    public final Expression getLineWidthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH);
    }

    @Override
    public LineLayer lineWidth(Expression lineWidth) {
        Intrinsics.checkNotNullParameter(lineWidth, "lineWidth");
        setProperty$extension_style_release(new PropertyValue<>(PolylineAnnotationOptions.PROPERTY_LINE_WIDTH, lineWidth));
        return this;
    }

    public final StyleTransition getLineWidthTransition() {
        return (StyleTransition) getPropertyValueWithType("line-width-transition", StyleTransition.class);
    }

    @Override
    public LineLayer lineWidthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("line-width-transition", options));
        return this;
    }

    @Override
    public LineLayer lineWidthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        lineWidthTransition(builder.build());
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "line";
    }

    @Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b4\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00148G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\nR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u000eR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00108FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u0012R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\nR\u0013\u0010!\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0006R\u0013\u0010#\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b$\u0010\nR\u0013\u0010%\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b&\u0010\u000eR\u0013\u0010'\u001a\u0004\u0018\u00010(8F¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0013\u0010+\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b,\u0010\nR\u0013\u0010-\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b.\u0010\u0012R\u0013\u0010/\u001a\u0004\u0018\u00010\u00148G¢\u0006\u0006\u001a\u0004\b0\u0010\u0016R\u0013\u00101\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b2\u0010\nR\u0013\u00103\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b4\u0010\u000eR\u001c\u00105\u001a\u0004\u0018\u00010\u00108FX\u0087\u0004¢\u0006\f\u0012\u0004\b6\u0010\u0002\u001a\u0004\b7\u0010\u0012R\u001c\u00108\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b9\u0010\u0002\u001a\u0004\b:\u0010\nR\u001c\u0010;\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b<\u0010\u0002\u001a\u0004\b=\u0010\u0006R\u001c\u0010>\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b?\u0010\u0002\u001a\u0004\b@\u0010\nR\u001c\u0010A\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bB\u0010\u0002\u001a\u0004\bC\u0010\u0006R\u001c\u0010D\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bE\u0010\u0002\u001a\u0004\bF\u0010\nR\u001c\u0010G\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bH\u0010\u0002\u001a\u0004\bI\u0010\u000eR\u001c\u0010J\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bK\u0010\u0002\u001a\u0004\bL\u0010\u0006R\u001c\u0010M\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bN\u0010\u0002\u001a\u0004\bO\u0010\nR\u001c\u0010P\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bQ\u0010\u0002\u001a\u0004\bR\u0010\u000eR\u001c\u0010S\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bT\u0010\u0002\u001a\u0004\bU\u0010\u0006R\u001c\u0010V\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bW\u0010\u0002\u001a\u0004\bX\u0010\nR\u001c\u0010Y\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bZ\u0010\u0002\u001a\u0004\b[\u0010\u000eR\u0019\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010]8F¢\u0006\u0006\u001a\u0004\b^\u0010_R\u0013\u0010`\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\ba\u0010\nR\u0013\u0010b\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bc\u0010\u0006R\u0013\u0010d\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\be\u0010\nR\u0013\u0010f\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bg\u0010\u000eR\u001c\u0010h\u001a\u0004\u0018\u00010i8FX\u0087\u0004¢\u0006\f\u0012\u0004\bj\u0010\u0002\u001a\u0004\bk\u0010lR\u001c\u0010m\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bn\u0010\u0002\u001a\u0004\bo\u0010\nR\u0013\u0010p\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bq\u0010\u0006R\u0013\u0010r\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bs\u0010\nR\u0013\u0010t\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bu\u0010\u000eR\u0013\u0010v\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bw\u0010\u0006R\u0013\u0010x\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\by\u0010\nR\u0013\u0010z\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b{\u0010\u000eR\u001c\u0010|\u001a\u0004\u0018\u00010\u00108FX\u0087\u0004¢\u0006\f\u0012\u0004\b}\u0010\u0002\u001a\u0004\b~\u0010\u0012R\u001e\u0010\u007f\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0080\u0001\u0010\u0002\u001a\u0005\b\u0081\u0001\u0010\nR\u0017\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0083\u00018F¢\u0006\b\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0015\u0010\u0086\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0087\u0001\u0010\nR\u0015\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010\u0006R\u0015\u0010\u008a\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u008b\u0001\u0010\nR\u0015\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u008d\u0001\u0010\u0006R\u0015\u0010\u008e\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u008f\u0001\u0010\nR\u0015\u0010\u0090\u0001\u001a\u0004\u0018\u00010\f8F¢\u0006\u0007\u001a\u0005\b\u0091\u0001\u0010\u000eR\u0015\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u0093\u0001\u0010\u0006R\u0015\u0010\u0094\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010\nR\u0015\u0010\u0096\u0001\u001a\u0004\u0018\u00010\f8F¢\u0006\u0007\u001a\u0005\b\u0097\u0001\u0010\u000eR\u0015\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u0099\u0001\u0010\u0006R\u0015\u0010\u009a\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u009b\u0001\u0010\nR\u0015\u0010\u009c\u0001\u001a\u0004\u0018\u00010\f8F¢\u0006\u0007\u001a\u0005\b\u009d\u0001\u0010\u000eR\u0015\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0007\u001a\u0005\b\u009f\u0001\u0010\u0012R\u0015\u0010 \u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b¡\u0001\u0010\nR\u0015\u0010¢\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b£\u0001\u0010\u0006R\u0015\u0010¤\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b¥\u0001\u0010\nR\u0015\u0010¦\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b§\u0001\u0010\u0006R\u0015\u0010¨\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b©\u0001\u0010\nR\u0015\u0010ª\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b«\u0001\u0010\u0006R\u0015\u0010¬\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u00ad\u0001\u0010\nR\u001b\u0010®\u0001\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010]8F¢\u0006\u0007\u001a\u0005\b¯\u0001\u0010_R\u0017\u0010°\u0001\u001a\u0005\u0018\u00010±\u00018F¢\u0006\b\u001a\u0006\b²\u0001\u0010³\u0001R\u0015\u0010´\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\bµ\u0001\u0010\nR\u0015\u0010¶\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b·\u0001\u0010\nR\u0015\u0010¸\u0001\u001a\u0004\u0018\u00010\f8F¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010\u000eR\u001f\u0010º\u0001\u001a\u0004\u0018\u00010\u00108FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b»\u0001\u0010\u0002\u001a\u0005\b¼\u0001\u0010\u0012R\u001f\u0010½\u0001\u001a\u0004\u0018\u00010\u00148GX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¾\u0001\u0010\u0002\u001a\u0005\b¿\u0001\u0010\u0016R\u001f\u0010À\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÁ\u0001\u0010\u0002\u001a\u0005\bÂ\u0001\u0010\nR\u001f\u0010Ã\u0001\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÄ\u0001\u0010\u0002\u001a\u0005\bÅ\u0001\u0010\u000eR\u001f\u0010Æ\u0001\u001a\u0004\u0018\u00010\u00108FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÇ\u0001\u0010\u0002\u001a\u0005\bÈ\u0001\u0010\u0012R\u001f\u0010É\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÊ\u0001\u0010\u0002\u001a\u0005\bË\u0001\u0010\nR%\u0010Ì\u0001\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010]8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÍ\u0001\u0010\u0002\u001a\u0005\bÎ\u0001\u0010_R\u001f\u0010Ï\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÐ\u0001\u0010\u0002\u001a\u0005\bÑ\u0001\u0010\nR\u001b\u0010Ò\u0001\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010]8F¢\u0006\u0007\u001a\u0005\bÓ\u0001\u0010_R\u0015\u0010Ô\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\bÕ\u0001\u0010\nR\u0015\u0010Ö\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b×\u0001\u0010\u0006R\u0015\u0010Ø\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\bÙ\u0001\u0010\nR\u0015\u0010Ú\u0001\u001a\u0004\u0018\u00010\f8F¢\u0006\u0007\u001a\u0005\bÛ\u0001\u0010\u000eR!\u0010Ü\u0001\u001a\u0005\u0018\u00010Ý\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\bÞ\u0001\u0010\u0002\u001a\u0006\bß\u0001\u0010à\u0001R\u001f\u0010á\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bâ\u0001\u0010\u0002\u001a\u0005\bã\u0001\u0010\nR\u001f\u0010ä\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bå\u0001\u0010\u0002\u001a\u0005\bæ\u0001\u0010\u0006R\u001f\u0010ç\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bè\u0001\u0010\u0002\u001a\u0005\bé\u0001\u0010\nR\u0015\u0010ê\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\bë\u0001\u0010\u0006R\u0015\u0010ì\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\bí\u0001\u0010\u0006R\u0017\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00018F¢\u0006\b\u001a\u0006\bð\u0001\u0010ñ\u0001¨\u0006ò\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/LineLayer$Companion;", "", "()V", "defaultLineBlur", "", "getDefaultLineBlur", "()Ljava/lang/Double;", "defaultLineBlurAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultLineBlurAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultLineBlurTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultLineBlurTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultLineBorderColor", "", "getDefaultLineBorderColor", "()Ljava/lang/String;", "defaultLineBorderColorAsColorInt", "", "getDefaultLineBorderColorAsColorInt", "()Ljava/lang/Integer;", "defaultLineBorderColorAsExpression", "getDefaultLineBorderColorAsExpression", "defaultLineBorderColorTransition", "getDefaultLineBorderColorTransition", "defaultLineBorderColorUseTheme", "getDefaultLineBorderColorUseTheme$annotations", "getDefaultLineBorderColorUseTheme", "defaultLineBorderColorUseThemeAsExpression", "getDefaultLineBorderColorUseThemeAsExpression$annotations", "getDefaultLineBorderColorUseThemeAsExpression", "defaultLineBorderWidth", "getDefaultLineBorderWidth", "defaultLineBorderWidthAsExpression", "getDefaultLineBorderWidthAsExpression", "defaultLineBorderWidthTransition", "getDefaultLineBorderWidthTransition", "defaultLineCap", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;", "getDefaultLineCap", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;", "defaultLineCapAsExpression", "getDefaultLineCapAsExpression", "defaultLineColor", "getDefaultLineColor", "defaultLineColorAsColorInt", "getDefaultLineColorAsColorInt", "defaultLineColorAsExpression", "getDefaultLineColorAsExpression", "defaultLineColorTransition", "getDefaultLineColorTransition", "defaultLineColorUseTheme", "getDefaultLineColorUseTheme$annotations", "getDefaultLineColorUseTheme", "defaultLineColorUseThemeAsExpression", "getDefaultLineColorUseThemeAsExpression$annotations", "getDefaultLineColorUseThemeAsExpression", "defaultLineCrossSlope", "getDefaultLineCrossSlope$annotations", "getDefaultLineCrossSlope", "defaultLineCrossSlopeAsExpression", "getDefaultLineCrossSlopeAsExpression$annotations", "getDefaultLineCrossSlopeAsExpression", "defaultLineCutoutFadeWidth", "getDefaultLineCutoutFadeWidth$annotations", "getDefaultLineCutoutFadeWidth", "defaultLineCutoutFadeWidthAsExpression", "getDefaultLineCutoutFadeWidthAsExpression$annotations", "getDefaultLineCutoutFadeWidthAsExpression", "defaultLineCutoutFadeWidthTransition", "getDefaultLineCutoutFadeWidthTransition$annotations", "getDefaultLineCutoutFadeWidthTransition", "defaultLineCutoutOpacity", "getDefaultLineCutoutOpacity$annotations", "getDefaultLineCutoutOpacity", "defaultLineCutoutOpacityAsExpression", "getDefaultLineCutoutOpacityAsExpression$annotations", "getDefaultLineCutoutOpacityAsExpression", "defaultLineCutoutOpacityTransition", "getDefaultLineCutoutOpacityTransition$annotations", "getDefaultLineCutoutOpacityTransition", "defaultLineCutoutWidth", "getDefaultLineCutoutWidth$annotations", "getDefaultLineCutoutWidth", "defaultLineCutoutWidthAsExpression", "getDefaultLineCutoutWidthAsExpression$annotations", "getDefaultLineCutoutWidthAsExpression", "defaultLineCutoutWidthTransition", "getDefaultLineCutoutWidthTransition$annotations", "getDefaultLineCutoutWidthTransition", "defaultLineDasharray", "", "getDefaultLineDasharray", "()Ljava/util/List;", "defaultLineDasharrayAsExpression", "getDefaultLineDasharrayAsExpression", "defaultLineDepthOcclusionFactor", "getDefaultLineDepthOcclusionFactor", "defaultLineDepthOcclusionFactorAsExpression", "getDefaultLineDepthOcclusionFactorAsExpression", "defaultLineDepthOcclusionFactorTransition", "getDefaultLineDepthOcclusionFactorTransition", "defaultLineElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;", "getDefaultLineElevationReference$annotations", "getDefaultLineElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;", "defaultLineElevationReferenceAsExpression", "getDefaultLineElevationReferenceAsExpression$annotations", "getDefaultLineElevationReferenceAsExpression", "defaultLineEmissiveStrength", "getDefaultLineEmissiveStrength", "defaultLineEmissiveStrengthAsExpression", "getDefaultLineEmissiveStrengthAsExpression", "defaultLineEmissiveStrengthTransition", "getDefaultLineEmissiveStrengthTransition", "defaultLineGapWidth", "getDefaultLineGapWidth", "defaultLineGapWidthAsExpression", "getDefaultLineGapWidthAsExpression", "defaultLineGapWidthTransition", "getDefaultLineGapWidthTransition", "defaultLineGradientUseTheme", "getDefaultLineGradientUseTheme$annotations", "getDefaultLineGradientUseTheme", "defaultLineGradientUseThemeAsExpression", "getDefaultLineGradientUseThemeAsExpression$annotations", "getDefaultLineGradientUseThemeAsExpression", "defaultLineJoin", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "getDefaultLineJoin", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "defaultLineJoinAsExpression", "getDefaultLineJoinAsExpression", "defaultLineMiterLimit", "getDefaultLineMiterLimit", "defaultLineMiterLimitAsExpression", "getDefaultLineMiterLimitAsExpression", "defaultLineOcclusionOpacity", "getDefaultLineOcclusionOpacity", "defaultLineOcclusionOpacityAsExpression", "getDefaultLineOcclusionOpacityAsExpression", "defaultLineOcclusionOpacityTransition", "getDefaultLineOcclusionOpacityTransition", "defaultLineOffset", "getDefaultLineOffset", "defaultLineOffsetAsExpression", "getDefaultLineOffsetAsExpression", "defaultLineOffsetTransition", "getDefaultLineOffsetTransition", "defaultLineOpacity", "getDefaultLineOpacity", "defaultLineOpacityAsExpression", "getDefaultLineOpacityAsExpression", "defaultLineOpacityTransition", "getDefaultLineOpacityTransition", "defaultLinePattern", "getDefaultLinePattern", "defaultLinePatternAsExpression", "getDefaultLinePatternAsExpression", "defaultLinePatternCrossFade", "getDefaultLinePatternCrossFade", "defaultLinePatternCrossFadeAsExpression", "getDefaultLinePatternCrossFadeAsExpression", "defaultLineRoundLimit", "getDefaultLineRoundLimit", "defaultLineRoundLimitAsExpression", "getDefaultLineRoundLimitAsExpression", "defaultLineSortKey", "getDefaultLineSortKey", "defaultLineSortKeyAsExpression", "getDefaultLineSortKeyAsExpression", "defaultLineTranslate", "getDefaultLineTranslate", "defaultLineTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;", "getDefaultLineTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;", "defaultLineTranslateAnchorAsExpression", "getDefaultLineTranslateAnchorAsExpression", "defaultLineTranslateAsExpression", "getDefaultLineTranslateAsExpression", "defaultLineTranslateTransition", "getDefaultLineTranslateTransition", "defaultLineTrimColor", "getDefaultLineTrimColor$annotations", "getDefaultLineTrimColor", "defaultLineTrimColorAsColorInt", "getDefaultLineTrimColorAsColorInt$annotations", "getDefaultLineTrimColorAsColorInt", "defaultLineTrimColorAsExpression", "getDefaultLineTrimColorAsExpression$annotations", "getDefaultLineTrimColorAsExpression", "defaultLineTrimColorTransition", "getDefaultLineTrimColorTransition$annotations", "getDefaultLineTrimColorTransition", "defaultLineTrimColorUseTheme", "getDefaultLineTrimColorUseTheme$annotations", "getDefaultLineTrimColorUseTheme", "defaultLineTrimColorUseThemeAsExpression", "getDefaultLineTrimColorUseThemeAsExpression$annotations", "getDefaultLineTrimColorUseThemeAsExpression", "defaultLineTrimFadeRange", "getDefaultLineTrimFadeRange$annotations", "getDefaultLineTrimFadeRange", "defaultLineTrimFadeRangeAsExpression", "getDefaultLineTrimFadeRangeAsExpression$annotations", "getDefaultLineTrimFadeRangeAsExpression", "defaultLineTrimOffset", "getDefaultLineTrimOffset", "defaultLineTrimOffsetAsExpression", "getDefaultLineTrimOffsetAsExpression", "defaultLineWidth", "getDefaultLineWidth", "defaultLineWidthAsExpression", "getDefaultLineWidthAsExpression", "defaultLineWidthTransition", "getDefaultLineWidthTransition", "defaultLineWidthUnit", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;", "getDefaultLineWidthUnit$annotations", "getDefaultLineWidthUnit", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;", "defaultLineWidthUnitAsExpression", "getDefaultLineWidthUnitAsExpression$annotations", "getDefaultLineWidthUnitAsExpression", "defaultLineZOffset", "getDefaultLineZOffset$annotations", "getDefaultLineZOffset", "defaultLineZOffsetAsExpression", "getDefaultLineZOffsetAsExpression$annotations", "getDefaultLineZOffsetAsExpression", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultLineBorderColorUseTheme$annotations() {
        }

        public static void getDefaultLineBorderColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultLineColorUseTheme$annotations() {
        }

        public static void getDefaultLineColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultLineCrossSlope$annotations() {
        }

        public static void getDefaultLineCrossSlopeAsExpression$annotations() {
        }

        public static void getDefaultLineCutoutFadeWidth$annotations() {
        }

        public static void getDefaultLineCutoutFadeWidthAsExpression$annotations() {
        }

        public static void getDefaultLineCutoutFadeWidthTransition$annotations() {
        }

        public static void getDefaultLineCutoutOpacity$annotations() {
        }

        public static void getDefaultLineCutoutOpacityAsExpression$annotations() {
        }

        public static void getDefaultLineCutoutOpacityTransition$annotations() {
        }

        public static void getDefaultLineCutoutWidth$annotations() {
        }

        public static void getDefaultLineCutoutWidthAsExpression$annotations() {
        }

        public static void getDefaultLineCutoutWidthTransition$annotations() {
        }

        public static void getDefaultLineElevationReference$annotations() {
        }

        public static void getDefaultLineElevationReferenceAsExpression$annotations() {
        }

        public static void getDefaultLineGradientUseTheme$annotations() {
        }

        public static void getDefaultLineGradientUseThemeAsExpression$annotations() {
        }

        public static void getDefaultLineTrimColor$annotations() {
        }

        public static void getDefaultLineTrimColorAsColorInt$annotations() {
        }

        public static void getDefaultLineTrimColorAsExpression$annotations() {
        }

        public static void getDefaultLineTrimColorTransition$annotations() {
        }

        public static void getDefaultLineTrimColorUseTheme$annotations() {
        }

        public static void getDefaultLineTrimColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultLineTrimFadeRange$annotations() {
        }

        public static void getDefaultLineTrimFadeRangeAsExpression$annotations() {
        }

        public static void getDefaultLineWidthUnit$annotations() {
        }

        public static void getDefaultLineWidthUnitAsExpression$annotations() {
        }

        public static void getDefaultLineZOffset$annotations() {
        }

        public static void getDefaultLineZOffsetAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"line\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tValue(\"line\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tValue(\"line\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final LineCap getDefaultLineCap() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cap");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…Value(\"line\", \"line-cap\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            LineCap.Companion companion = LineCap.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultLineCapAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cap");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…Value(\"line\", \"line-cap\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            LineCap defaultLineCap = getDefaultLineCap();
            if (defaultLineCap != null) {
                return Expression.INSTANCE.literal(defaultLineCap.getValue());
            }
            return null;
        }

        public final Double getDefaultLineCrossSlope() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cross-slope");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-cross-slope\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineCrossSlopeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cross-slope");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-cross-slope\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineCrossSlope = getDefaultLineCrossSlope();
            if (defaultLineCrossSlope == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineCrossSlope.doubleValue());
        }

        public final Double getDefaultLineCutoutFadeWidth() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-fade-width");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line-cutout-fade-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineCutoutFadeWidthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-fade-width");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line-cutout-fade-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineCutoutFadeWidth = getDefaultLineCutoutFadeWidth();
            if (defaultLineCutoutFadeWidth == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineCutoutFadeWidth.doubleValue());
        }

        public final StyleTransition getDefaultLineCutoutFadeWidthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-fade-width-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…t-fade-width-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultLineCutoutOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"line-cutout-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineCutoutOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"line-cutout-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineCutoutOpacity = getDefaultLineCutoutOpacity();
            if (defaultLineCutoutOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineCutoutOpacity.doubleValue());
        }

        public final StyleTransition getDefaultLineCutoutOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tout-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultLineCutoutWidth() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-width");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne\", \"line-cutout-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineCutoutWidthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-width");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne\", \"line-cutout-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineCutoutWidth = getDefaultLineCutoutWidth();
            if (defaultLineCutoutWidth == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineCutoutWidth.doubleValue());
        }

        public final StyleTransition getDefaultLineCutoutWidthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-cutout-width-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cutout-width-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final LineElevationReference getDefaultLineElevationReference() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            LineElevationReference.Companion companion = LineElevationReference.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultLineElevationReferenceAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            LineElevationReference defaultLineElevationReference = getDefaultLineElevationReference();
            if (defaultLineElevationReference != null) {
                return Expression.INSTANCE.literal(defaultLineElevationReference.getValue());
            }
            return null;
        }

        public final LineJoin getDefaultLineJoin() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_JOIN);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"line\", \"line-join\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            LineJoin.Companion companion = LineJoin.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultLineJoinAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_JOIN);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"line\", \"line-join\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            LineJoin defaultLineJoin = getDefaultLineJoin();
            if (defaultLineJoin != null) {
                return Expression.INSTANCE.literal(defaultLineJoin.getValue());
            }
            return null;
        }

        public final Double getDefaultLineMiterLimit() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-miter-limit");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-miter-limit\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineMiterLimitAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-miter-limit");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-miter-limit\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineMiterLimit = getDefaultLineMiterLimit();
            if (defaultLineMiterLimit == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineMiterLimit.doubleValue());
        }

        public final Double getDefaultLineRoundLimit() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-round-limit");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-round-limit\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineRoundLimitAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-round-limit");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-round-limit\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineRoundLimit = getDefaultLineRoundLimit();
            if (defaultLineRoundLimit == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineRoundLimit.doubleValue());
        }

        public final Double getDefaultLineSortKey() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"line\", \"line-sort-key\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineSortKeyAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_SORT_KEY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"line\", \"line-sort-key\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineSortKey = getDefaultLineSortKey();
            if (defaultLineSortKey == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineSortKey.doubleValue());
        }

        public final LineWidthUnit getDefaultLineWidthUnit() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-width-unit");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line\", \"line-width-unit\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            LineWidthUnit.Companion companion = LineWidthUnit.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultLineWidthUnitAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-width-unit");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line\", \"line-width-unit\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            LineWidthUnit defaultLineWidthUnit = getDefaultLineWidthUnit();
            if (defaultLineWidthUnit != null) {
                return Expression.INSTANCE.literal(defaultLineWidthUnit.getValue());
            }
            return null;
        }

        public final Double getDefaultLineZOffset() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"line\", \"line-z-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineZOffsetAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_Z_OFFSET);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"line\", \"line-z-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineZOffset = getDefaultLineZOffset();
            if (defaultLineZOffset == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineZOffset.doubleValue());
        }

        public final Double getDefaultLineBlur() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_BLUR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"line\", \"line-blur\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineBlurAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_BLUR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"line\", \"line-blur\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineBlur = getDefaultLineBlur();
            if (defaultLineBlur == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineBlur.doubleValue());
        }

        public final StyleTransition getDefaultLineBlurTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-blur-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"line-blur-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultLineBorderColor() {
            Expression defaultLineBorderColorAsExpression = getDefaultLineBorderColorAsExpression();
            if (defaultLineBorderColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultLineBorderColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultLineBorderColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne\", \"line-border-color\")");
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

        public final Integer getDefaultLineBorderColorAsColorInt() {
            Expression defaultLineBorderColorAsExpression = getDefaultLineBorderColorAsExpression();
            if (defaultLineBorderColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultLineBorderColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultLineBorderColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-border-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…border-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultLineBorderColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-border-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultLineBorderColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_BORDER_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-border-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultLineBorderColorUseTheme = getDefaultLineBorderColorUseTheme();
            if (defaultLineBorderColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultLineBorderColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultLineBorderWidth() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne\", \"line-border-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineBorderWidthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_BORDER_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne\", \"line-border-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineBorderWidth = getDefaultLineBorderWidth();
            if (defaultLineBorderWidth == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineBorderWidth.doubleValue());
        }

        public final StyleTransition getDefaultLineBorderWidthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-border-width-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…border-width-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultLineColor() {
            Expression defaultLineColorAsExpression = getDefaultLineColorAsExpression();
            if (defaultLineColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultLineColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultLineColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"line\", \"line-color\")");
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

        public final Integer getDefaultLineColorAsColorInt() {
            Expression defaultLineColorAsExpression = getDefaultLineColorAsExpression();
            if (defaultLineColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultLineColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultLineColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"line-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultLineColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"line-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultLineColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"line-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultLineColorUseTheme = getDefaultLineColorUseTheme();
            if (defaultLineColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultLineColorUseTheme);
            }
            return null;
        }

        public final List<Double> getDefaultLineDasharray() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-dasharray");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line\", \"line-dasharray\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultLineDasharrayAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-dasharray");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line\", \"line-dasharray\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultLineDasharray = getDefaultLineDasharray();
            if (defaultLineDasharray != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultLineDasharray);
            }
            return null;
        }

        public final Double getDefaultLineDepthOcclusionFactor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-depth-occlusion-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-depth-occlusion-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineDepthOcclusionFactorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-depth-occlusion-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-depth-occlusion-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineDepthOcclusionFactor = getDefaultLineDepthOcclusionFactor();
            if (defaultLineDepthOcclusionFactor == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineDepthOcclusionFactor.doubleValue());
        }

        public final StyleTransition getDefaultLineDepthOcclusionFactorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-depth-occlusion-factor-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-factor-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultLineEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineEmissiveStrength = getDefaultLineEmissiveStrength();
            if (defaultLineEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultLineEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultLineGapWidth() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line\", \"line-gap-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineGapWidthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_GAP_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line\", \"line-gap-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineGapWidth = getDefaultLineGapWidth();
            if (defaultLineGapWidth == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineGapWidth.doubleValue());
        }

        public final StyleTransition getDefaultLineGapWidthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-gap-width-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne-gap-width-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultLineGradientUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-gradient-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line-gradient-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultLineGradientUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-gradient-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line-gradient-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultLineGradientUseTheme = getDefaultLineGradientUseTheme();
            if (defaultLineGradientUseTheme != null) {
                return Expression.INSTANCE.literal(defaultLineGradientUseTheme);
            }
            return null;
        }

        public final Double getDefaultLineOcclusionOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-occlusion-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line-occlusion-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineOcclusionOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-occlusion-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line-occlusion-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineOcclusionOpacity = getDefaultLineOcclusionOpacity();
            if (defaultLineOcclusionOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineOcclusionOpacity.doubleValue());
        }

        public final StyleTransition getDefaultLineOcclusionOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-occlusion-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…sion-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultLineOffset() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_OFFSET);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ue(\"line\", \"line-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineOffsetAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_OFFSET);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ue(\"line\", \"line-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineOffset = getDefaultLineOffset();
            if (defaultLineOffset == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineOffset.doubleValue());
        }

        public final StyleTransition getDefaultLineOffsetTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-offset-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line-offset-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultLineOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"line\", \"line-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"line\", \"line-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineOpacity = getDefaultLineOpacity();
            if (defaultLineOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineOpacity.doubleValue());
        }

        public final StyleTransition getDefaultLineOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultLinePattern() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_PATTERN);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"line\", \"line-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultLinePatternAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_PATTERN);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"line\", \"line-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultLinePattern = getDefaultLinePattern();
            if (defaultLinePattern != null) {
                return Expression.INSTANCE.literal(defaultLinePattern);
            }
            return null;
        }

        public final Double getDefaultLinePatternCrossFade() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-pattern-cross-fade");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line-pattern-cross-fade\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLinePatternCrossFadeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-pattern-cross-fade");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line-pattern-cross-fade\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLinePatternCrossFade = getDefaultLinePatternCrossFade();
            if (defaultLinePatternCrossFade == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLinePatternCrossFade.doubleValue());
        }

        public final List<Double> getDefaultLineTranslate() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line\", \"line-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultLineTranslateAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"line\", \"line-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultLineTranslate = getDefaultLineTranslate();
            if (defaultLineTranslate != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultLineTranslate);
            }
            return null;
        }

        public final StyleTransition getDefaultLineTranslateTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-translate-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne-translate-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final LineTranslateAnchor getDefaultLineTranslateAnchor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"line-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            LineTranslateAnchor.Companion companion = LineTranslateAnchor.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultLineTranslateAnchorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"line-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            LineTranslateAnchor defaultLineTranslateAnchor = getDefaultLineTranslateAnchor();
            if (defaultLineTranslateAnchor != null) {
                return Expression.INSTANCE.literal(defaultLineTranslateAnchor.getValue());
            }
            return null;
        }

        public final String getDefaultLineTrimColor() {
            Expression defaultLineTrimColorAsExpression = getDefaultLineTrimColorAsExpression();
            if (defaultLineTrimColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultLineTrimColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultLineTrimColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…line\", \"line-trim-color\")");
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

        public final Integer getDefaultLineTrimColorAsColorInt() {
            Expression defaultLineTrimColorAsExpression = getDefaultLineTrimColorAsExpression();
            if (defaultLineTrimColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultLineTrimColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultLineTrimColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e-trim-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultLineTrimColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne-trim-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultLineTrimColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ne-trim-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultLineTrimColorUseTheme = getDefaultLineTrimColorUseTheme();
            if (defaultLineTrimColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultLineTrimColorUseTheme);
            }
            return null;
        }

        public final List<Double> getDefaultLineTrimFadeRange() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-fade-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"line-trim-fade-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultLineTrimFadeRangeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-fade-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"line-trim-fade-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultLineTrimFadeRange = getDefaultLineTrimFadeRange();
            if (defaultLineTrimFadeRange != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultLineTrimFadeRange);
            }
            return null;
        }

        public final List<Double> getDefaultLineTrimOffset() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-offset");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-trim-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultLineTrimOffsetAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-trim-offset");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ine\", \"line-trim-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultLineTrimOffset = getDefaultLineTrimOffset();
            if (defaultLineTrimOffset != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultLineTrimOffset);
            }
            return null;
        }

        public final Double getDefaultLineWidth() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"line\", \"line-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLineWidthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", PolylineAnnotationOptions.PROPERTY_LINE_WIDTH);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"line\", \"line-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLineWidth = getDefaultLineWidth();
            if (defaultLineWidth == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLineWidth.doubleValue());
        }

        public final StyleTransition getDefaultLineWidthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("line", "line-width-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"line-width-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }
    }
}
