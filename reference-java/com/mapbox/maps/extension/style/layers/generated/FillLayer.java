package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.FillElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.FillTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.mapbox.maps.plugin.annotation.generated.PolygonAnnotationOptions;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b'\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 ®\u00012\u00020\u00012\u00020\u0002:\u0002®\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\fH\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\fH\u0017J\u0012\u0010\u000f\u001a\u00020\u00002\b\b\u0001\u0010\u000f\u001a\u00020\u0015H\u0017J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0004H\u0017J\u0011\u0010\u001c\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0017J&\u0010\u001c\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0017J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\fH\u0017J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0004H\u0017J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\fH\u0016J\u0012\u0010'\u001a\u00020\u00002\b\b\u0001\u0010'\u001a\u00020\u0015H\u0016J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0004H\u0016J\u0011\u0010-\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0016J&\u0010-\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0016J\u0010\u0010/\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\fH\u0017J\u0010\u0010/\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0004H\u0017J\u0010\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\fH\u0017J\u0010\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\bH\u0017J\u0010\u0010;\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\fH\u0017J\u0010\u0010;\u001a\u00020\u00002\u0006\u0010;\u001a\u00020<H\u0017J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\fH\u0016J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020DH\u0016J\u0011\u0010I\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0016J&\u0010I\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\fH\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020DH\u0016J\u0011\u0010O\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0016J&\u0010O\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0016J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\fH\u0016J\u0012\u0010Q\u001a\u00020\u00002\b\b\u0001\u0010Q\u001a\u00020\u0015H\u0016J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0004H\u0016J\u0011\u0010W\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0016J&\u0010W\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0016J\u0010\u0010Y\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\fH\u0017J\u0010\u0010Y\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0004H\u0017J\u0010\u0010_\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\fH\u0016J\u0010\u0010_\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u0004H\u0016J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\fH\u0016J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020DH\u0016J\u0010\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\fH\u0016J\u0010\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020DH\u0016J\u0010\u0010k\u001a\u00020\u00002\u0006\u0010k\u001a\u00020\fH\u0016J\u0016\u0010k\u001a\u00020\u00002\f\u0010k\u001a\b\u0012\u0004\u0012\u00020D0lH\u0016J\u0010\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\fH\u0016J\u0010\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020pH\u0016J\u0011\u0010w\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0016J&\u0010w\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0016J\u0010\u0010y\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\fH\u0017J\u0012\u0010y\u001a\u00020\u00002\b\b\u0001\u0010y\u001a\u00020\u0015H\u0017J\u0010\u0010y\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u0004H\u0017J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0017J'\u0010\u0082\u0001\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0017J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\fH\u0017J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\u0004H\u0017J\u0012\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020\fH\u0017J\u0012\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020DH\u0017J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020\u001dH\u0017J'\u0010\u0091\u0001\u001a\u00020\u00002\u001c\u0010§\u0001\u001a\u0017\u0012\u0005\u0012\u00030©\u0001\u0012\u0005\u0012\u00030ª\u00010¨\u0001¢\u0006\u0003\b«\u0001H\u0017J\u0012\u0010\u0094\u0001\u001a\u00020\u00002\u0007\u0010\u0094\u0001\u001a\u00020\fH\u0016J\u000f\u0010¬\u0001\u001a\u00020\u0004H\u0010¢\u0006\u0003\b\u00ad\u0001J\u0012\u0010\u0097\u0001\u001a\u00020\u00002\u0007\u0010\u0097\u0001\u001a\u00020DH\u0016J\u0012\u0010\u0099\u0001\u001a\u00020\u00002\u0007\u0010\u0099\u0001\u001a\u00020DH\u0016J\u0012\u0010\u009b\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010\u009e\u0001\u001a\u00020\u00002\u0007\u0010\u009e\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010 \u0001\u001a\u00020\u00002\u0007\u0010 \u0001\u001a\u00020\fH\u0016J\u0013\u0010 \u0001\u001a\u00020\u00002\b\u0010 \u0001\u001a\u00030¡\u0001H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00158GX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0011\u001a\u0004\b\u001b\u0010\u000eR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001d8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0011\u001a\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0011\u001a\u0004\b#\u0010\u0013R\u001c\u0010$\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0011\u001a\u0004\b&\u0010\u000eR\u0013\u0010'\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b(\u0010\u0013R\u0013\u0010)\u001a\u0004\u0018\u00010\u00158G¢\u0006\u0006\u001a\u0004\b*\u0010\u0018R\u0013\u0010+\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b,\u0010\u000eR\u0013\u0010-\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b.\u0010 R\u001c\u0010/\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\u0011\u001a\u0004\b1\u0010\u0013R\u001c\u00102\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0011\u001a\u0004\b4\u0010\u000eR\u001c\u00105\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b6\u0010\u0011\u001a\u0004\b7\u0010\nR\u001c\u00108\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b9\u0010\u0011\u001a\u0004\b:\u0010\u000eR\u001c\u0010;\u001a\u0004\u0018\u00010<8FX\u0087\u0004¢\u0006\f\u0012\u0004\b=\u0010\u0011\u001a\u0004\b>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bA\u0010\u0011\u001a\u0004\bB\u0010\u000eR\u0013\u0010C\u001a\u0004\u0018\u00010D8F¢\u0006\u0006\u001a\u0004\bE\u0010FR\u0013\u0010G\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bH\u0010\u000eR\u0013\u0010I\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bJ\u0010 R\u0013\u0010K\u001a\u0004\u0018\u00010D8F¢\u0006\u0006\u001a\u0004\bL\u0010FR\u0013\u0010M\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bN\u0010\u000eR\u0013\u0010O\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bP\u0010 R\u0013\u0010Q\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bR\u0010\u0013R\u0013\u0010S\u001a\u0004\u0018\u00010\u00158G¢\u0006\u0006\u001a\u0004\bT\u0010\u0018R\u0013\u0010U\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bV\u0010\u000eR\u0013\u0010W\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bX\u0010 R\u001c\u0010Y\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bZ\u0010\u0011\u001a\u0004\b[\u0010\u0013R\u001c\u0010\\\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b]\u0010\u0011\u001a\u0004\b^\u0010\u000eR\u0013\u0010_\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b`\u0010\u0013R\u0013\u0010a\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bb\u0010\u000eR\u0013\u0010c\u001a\u0004\u0018\u00010D8F¢\u0006\u0006\u001a\u0004\bd\u0010FR\u0013\u0010e\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bf\u0010\u000eR\u0013\u0010g\u001a\u0004\u0018\u00010D8F¢\u0006\u0006\u001a\u0004\bh\u0010FR\u0013\u0010i\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bj\u0010\u000eR\u0019\u0010k\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010l8F¢\u0006\u0006\u001a\u0004\bm\u0010nR\u0013\u0010o\u001a\u0004\u0018\u00010p8F¢\u0006\u0006\u001a\u0004\bq\u0010rR\u0013\u0010s\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bt\u0010\u000eR\u0013\u0010u\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bv\u0010\u000eR\u0013\u0010w\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bx\u0010 R\u001c\u0010y\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bz\u0010\u0011\u001a\u0004\b{\u0010\u0013R\u001c\u0010|\u001a\u0004\u0018\u00010\u00158GX\u0087\u0004¢\u0006\f\u0012\u0004\b}\u0010\u0011\u001a\u0004\b~\u0010\u0018R\u001e\u0010\u007f\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0080\u0001\u0010\u0011\u001a\u0005\b\u0081\u0001\u0010\u000eR\u001f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u001d8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0083\u0001\u0010\u0011\u001a\u0005\b\u0084\u0001\u0010 R\u001f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0086\u0001\u0010\u0011\u001a\u0005\b\u0087\u0001\u0010\u0013R\u001f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0089\u0001\u0010\u0011\u001a\u0005\b\u008a\u0001\u0010\u000eR\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010D8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008c\u0001\u0010\u0011\u001a\u0005\b\u008d\u0001\u0010FR\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008f\u0001\u0010\u0011\u001a\u0005\b\u0090\u0001\u0010\u000eR\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u001d8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0092\u0001\u0010\u0011\u001a\u0005\b\u0093\u0001\u0010 R\u0015\u0010\u0094\u0001\u001a\u0004\u0018\u00010\f8F¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010\u000eR\u0015\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0096\u0001\u0010\u0013R\u0018\u0010\u0097\u0001\u001a\u0004\u0018\u00010D8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0098\u0001\u0010FR\u0018\u0010\u0099\u0001\u001a\u0004\u0018\u00010D8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010FR\u0018\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010\u0013R\u0012\u0010\u0005\u001a\u00020\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u009d\u0001\u0010\u0013R\u0015\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u009f\u0001\u0010\u0013R\u001a\u0010 \u0001\u001a\u0005\u0018\u00010¡\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b¢\u0001\u0010£\u0001R\u0018\u0010¤\u0001\u001a\u0004\u0018\u00010\f8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b¥\u0001\u0010\u000e¨\u0006¯\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/FillLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/FillLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", "fillAntialias", "", "getFillAntialias", "()Ljava/lang/Boolean;", "fillAntialiasAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFillAntialiasAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "fillBridgeGuardRailColor", "getFillBridgeGuardRailColor$annotations", "()V", "getFillBridgeGuardRailColor", "()Ljava/lang/String;", "fillBridgeGuardRailColorAsColorInt", "", "getFillBridgeGuardRailColorAsColorInt$annotations", "getFillBridgeGuardRailColorAsColorInt", "()Ljava/lang/Integer;", "fillBridgeGuardRailColorAsExpression", "getFillBridgeGuardRailColorAsExpression$annotations", "getFillBridgeGuardRailColorAsExpression", "fillBridgeGuardRailColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getFillBridgeGuardRailColorTransition$annotations", "getFillBridgeGuardRailColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "fillBridgeGuardRailColorUseTheme", "getFillBridgeGuardRailColorUseTheme$annotations", "getFillBridgeGuardRailColorUseTheme", "fillBridgeGuardRailColorUseThemeAsExpression", "getFillBridgeGuardRailColorUseThemeAsExpression$annotations", "getFillBridgeGuardRailColorUseThemeAsExpression", "fillColor", "getFillColor", "fillColorAsColorInt", "getFillColorAsColorInt", "fillColorAsExpression", "getFillColorAsExpression", "fillColorTransition", "getFillColorTransition", "fillColorUseTheme", "getFillColorUseTheme$annotations", "getFillColorUseTheme", "fillColorUseThemeAsExpression", "getFillColorUseThemeAsExpression$annotations", "getFillColorUseThemeAsExpression", "fillConstructBridgeGuardRail", "getFillConstructBridgeGuardRail$annotations", "getFillConstructBridgeGuardRail", "fillConstructBridgeGuardRailAsExpression", "getFillConstructBridgeGuardRailAsExpression$annotations", "getFillConstructBridgeGuardRailAsExpression", "fillElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;", "getFillElevationReference$annotations", "getFillElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;", "fillElevationReferenceAsExpression", "getFillElevationReferenceAsExpression$annotations", "getFillElevationReferenceAsExpression", "fillEmissiveStrength", "", "getFillEmissiveStrength", "()Ljava/lang/Double;", "fillEmissiveStrengthAsExpression", "getFillEmissiveStrengthAsExpression", "fillEmissiveStrengthTransition", "getFillEmissiveStrengthTransition", "fillOpacity", "getFillOpacity", "fillOpacityAsExpression", "getFillOpacityAsExpression", "fillOpacityTransition", "getFillOpacityTransition", "fillOutlineColor", "getFillOutlineColor", "fillOutlineColorAsColorInt", "getFillOutlineColorAsColorInt", "fillOutlineColorAsExpression", "getFillOutlineColorAsExpression", "fillOutlineColorTransition", "getFillOutlineColorTransition", "fillOutlineColorUseTheme", "getFillOutlineColorUseTheme$annotations", "getFillOutlineColorUseTheme", "fillOutlineColorUseThemeAsExpression", "getFillOutlineColorUseThemeAsExpression$annotations", "getFillOutlineColorUseThemeAsExpression", "fillPattern", "getFillPattern", "fillPatternAsExpression", "getFillPatternAsExpression", "fillPatternCrossFade", "getFillPatternCrossFade", "fillPatternCrossFadeAsExpression", "getFillPatternCrossFadeAsExpression", "fillSortKey", "getFillSortKey", "fillSortKeyAsExpression", "getFillSortKeyAsExpression", "fillTranslate", "", "getFillTranslate", "()Ljava/util/List;", "fillTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;", "getFillTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;", "fillTranslateAnchorAsExpression", "getFillTranslateAnchorAsExpression", "fillTranslateAsExpression", "getFillTranslateAsExpression", "fillTranslateTransition", "getFillTranslateTransition", "fillTunnelStructureColor", "getFillTunnelStructureColor$annotations", "getFillTunnelStructureColor", "fillTunnelStructureColorAsColorInt", "getFillTunnelStructureColorAsColorInt$annotations", "getFillTunnelStructureColorAsColorInt", "fillTunnelStructureColorAsExpression", "getFillTunnelStructureColorAsExpression$annotations", "getFillTunnelStructureColorAsExpression", "fillTunnelStructureColorTransition", "getFillTunnelStructureColorTransition$annotations", "getFillTunnelStructureColorTransition", "fillTunnelStructureColorUseTheme", "getFillTunnelStructureColorUseTheme$annotations", "getFillTunnelStructureColorUseTheme", "fillTunnelStructureColorUseThemeAsExpression", "getFillTunnelStructureColorUseThemeAsExpression$annotations", "getFillTunnelStructureColorUseThemeAsExpression", "fillZOffset", "getFillZOffset$annotations", "getFillZOffset", "fillZOffsetAsExpression", "getFillZOffsetAsExpression$annotations", "getFillZOffsetAsExpression", "fillZOffsetTransition", "getFillZOffsetTransition$annotations", "getFillZOffsetTransition", ViewProps.FILTER, "getFilter", "getLayerId", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FillLayer extends Layer implements FillLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getFillBridgeGuardRailColor$annotations() {
    }

    public static void getFillBridgeGuardRailColorAsColorInt$annotations() {
    }

    public static void getFillBridgeGuardRailColorAsExpression$annotations() {
    }

    public static void getFillBridgeGuardRailColorTransition$annotations() {
    }

    public static void getFillBridgeGuardRailColorUseTheme$annotations() {
    }

    public static void getFillBridgeGuardRailColorUseThemeAsExpression$annotations() {
    }

    public static void getFillColorUseTheme$annotations() {
    }

    public static void getFillColorUseThemeAsExpression$annotations() {
    }

    public static void getFillConstructBridgeGuardRail$annotations() {
    }

    public static void getFillConstructBridgeGuardRailAsExpression$annotations() {
    }

    public static void getFillElevationReference$annotations() {
    }

    public static void getFillElevationReferenceAsExpression$annotations() {
    }

    public static void getFillOutlineColorUseTheme$annotations() {
    }

    public static void getFillOutlineColorUseThemeAsExpression$annotations() {
    }

    public static void getFillTunnelStructureColor$annotations() {
    }

    public static void getFillTunnelStructureColorAsColorInt$annotations() {
    }

    public static void getFillTunnelStructureColorAsExpression$annotations() {
    }

    public static void getFillTunnelStructureColorTransition$annotations() {
    }

    public static void getFillTunnelStructureColorUseTheme$annotations() {
    }

    public static void getFillTunnelStructureColorUseThemeAsExpression$annotations() {
    }

    public static void getFillZOffset$annotations() {
    }

    public static void getFillZOffsetAsExpression$annotations() {
    }

    public static void getFillZOffsetTransition$annotations() {
    }

    public FillLayer(String layerId, String sourceId) {
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
    public FillLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public FillLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public FillLayer filter(Expression filter) {
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
    public FillLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public FillLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public FillLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public FillLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final Boolean getFillConstructBridgeGuardRail() {
        return (Boolean) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL, Boolean.class);
    }

    @Override
    public FillLayer fillConstructBridgeGuardRail(boolean fillConstructBridgeGuardRail) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL, Boolean.valueOf(fillConstructBridgeGuardRail)));
        return this;
    }

    public final Expression getFillConstructBridgeGuardRailAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
    }

    @Override
    public FillLayer fillConstructBridgeGuardRail(Expression fillConstructBridgeGuardRail) {
        Intrinsics.checkNotNullParameter(fillConstructBridgeGuardRail, "fillConstructBridgeGuardRail");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL, fillConstructBridgeGuardRail));
        return this;
    }

    public final FillElevationReference getFillElevationReference() {
        String str = (String) getPropertyValueWithType("fill-elevation-reference", String.class);
        if (str == null) {
            return null;
        }
        FillElevationReference.Companion companion = FillElevationReference.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public FillLayer fillElevationReference(FillElevationReference fillElevationReference) {
        Intrinsics.checkNotNullParameter(fillElevationReference, "fillElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("fill-elevation-reference", fillElevationReference));
        return this;
    }

    public final Expression getFillElevationReferenceAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("fill-elevation-reference", Expression.class);
        if (expression != null) {
            return expression;
        }
        FillElevationReference fillElevationReference = getFillElevationReference();
        if (fillElevationReference != null) {
            return Expression.INSTANCE.literal(fillElevationReference.getValue());
        }
        return null;
    }

    @Override
    public FillLayer fillElevationReference(Expression fillElevationReference) {
        Intrinsics.checkNotNullParameter(fillElevationReference, "fillElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("fill-elevation-reference", fillElevationReference));
        return this;
    }

    public final Double getFillSortKey() {
        return (Double) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY, Double.class);
    }

    @Override
    public FillLayer fillSortKey(double fillSortKey) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY, Double.valueOf(fillSortKey)));
        return this;
    }

    public final Expression getFillSortKeyAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
    }

    @Override
    public FillLayer fillSortKey(Expression fillSortKey) {
        Intrinsics.checkNotNullParameter(fillSortKey, "fillSortKey");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY, fillSortKey));
        return this;
    }

    public final Boolean getFillAntialias() {
        return (Boolean) getPropertyValueWithType("fill-antialias", Boolean.class);
    }

    @Override
    public FillLayer fillAntialias(boolean fillAntialias) {
        setProperty$extension_style_release(new PropertyValue<>("fill-antialias", Boolean.valueOf(fillAntialias)));
        return this;
    }

    public final Expression getFillAntialiasAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-antialias");
    }

    @Override
    public FillLayer fillAntialias(Expression fillAntialias) {
        Intrinsics.checkNotNullParameter(fillAntialias, "fillAntialias");
        setProperty$extension_style_release(new PropertyValue<>("fill-antialias", fillAntialias));
        return this;
    }

    public final String getFillBridgeGuardRailColor() {
        Expression fillBridgeGuardRailColorAsExpression = getFillBridgeGuardRailColorAsExpression();
        if (fillBridgeGuardRailColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(fillBridgeGuardRailColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillBridgeGuardRailColor(String fillBridgeGuardRailColor) {
        Intrinsics.checkNotNullParameter(fillBridgeGuardRailColor, "fillBridgeGuardRailColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, fillBridgeGuardRailColor));
        return this;
    }

    public final Expression getFillBridgeGuardRailColorAsExpression() {
        return (Expression) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, Expression.class);
    }

    @Override
    public FillLayer fillBridgeGuardRailColor(Expression fillBridgeGuardRailColor) {
        Intrinsics.checkNotNullParameter(fillBridgeGuardRailColor, "fillBridgeGuardRailColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, fillBridgeGuardRailColor));
        return this;
    }

    public final Integer getFillBridgeGuardRailColorAsColorInt() {
        Expression fillBridgeGuardRailColorAsExpression = getFillBridgeGuardRailColorAsExpression();
        if (fillBridgeGuardRailColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(fillBridgeGuardRailColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillBridgeGuardRailColor(int fillBridgeGuardRailColor) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(fillBridgeGuardRailColor)));
        return this;
    }

    public final StyleTransition getFillBridgeGuardRailColorTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-bridge-guard-rail-color-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillBridgeGuardRailColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-bridge-guard-rail-color-transition", options));
        return this;
    }

    @Override
    public FillLayer fillBridgeGuardRailColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillBridgeGuardRailColorTransition(builder.build());
        return this;
    }

    public final String getFillBridgeGuardRailColorUseTheme() {
        return (String) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME, String.class);
    }

    @Override
    public FillLayer fillBridgeGuardRailColorUseTheme(String fillBridgeGuardRailColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillBridgeGuardRailColorUseTheme, "fillBridgeGuardRailColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME, fillBridgeGuardRailColorUseTheme));
        return this;
    }

    public final Expression getFillBridgeGuardRailColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
    }

    @Override
    public FillLayer fillBridgeGuardRailColorUseTheme(Expression fillBridgeGuardRailColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillBridgeGuardRailColorUseTheme, "fillBridgeGuardRailColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME, fillBridgeGuardRailColorUseTheme));
        return this;
    }

    public final String getFillColor() {
        Expression fillColorAsExpression = getFillColorAsExpression();
        if (fillColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(fillColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillColor(String fillColor) {
        Intrinsics.checkNotNullParameter(fillColor, "fillColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, fillColor));
        return this;
    }

    public final Expression getFillColorAsExpression() {
        return (Expression) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, Expression.class);
    }

    @Override
    public FillLayer fillColor(Expression fillColor) {
        Intrinsics.checkNotNullParameter(fillColor, "fillColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, fillColor));
        return this;
    }

    public final Integer getFillColorAsColorInt() {
        Expression fillColorAsExpression = getFillColorAsExpression();
        if (fillColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(fillColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillColor(int fillColor) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(fillColor)));
        return this;
    }

    public final StyleTransition getFillColorTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-color-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-color-transition", options));
        return this;
    }

    @Override
    public FillLayer fillColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillColorTransition(builder.build());
        return this;
    }

    public final String getFillColorUseTheme() {
        return (String) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME, String.class);
    }

    @Override
    public FillLayer fillColorUseTheme(String fillColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillColorUseTheme, "fillColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME, fillColorUseTheme));
        return this;
    }

    public final Expression getFillColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
    }

    @Override
    public FillLayer fillColorUseTheme(Expression fillColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillColorUseTheme, "fillColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME, fillColorUseTheme));
        return this;
    }

    public final Double getFillEmissiveStrength() {
        return (Double) getPropertyValueWithType("fill-emissive-strength", Double.class);
    }

    @Override
    public FillLayer fillEmissiveStrength(double fillEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("fill-emissive-strength", Double.valueOf(fillEmissiveStrength)));
        return this;
    }

    public final Expression getFillEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-emissive-strength");
    }

    @Override
    public FillLayer fillEmissiveStrength(Expression fillEmissiveStrength) {
        Intrinsics.checkNotNullParameter(fillEmissiveStrength, "fillEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("fill-emissive-strength", fillEmissiveStrength));
        return this;
    }

    public final StyleTransition getFillEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-emissive-strength-transition", options));
        return this;
    }

    @Override
    public FillLayer fillEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final Double getFillOpacity() {
        return (Double) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY, Double.class);
    }

    @Override
    public FillLayer fillOpacity(double fillOpacity) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY, Double.valueOf(fillOpacity)));
        return this;
    }

    public final Expression getFillOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
    }

    @Override
    public FillLayer fillOpacity(Expression fillOpacity) {
        Intrinsics.checkNotNullParameter(fillOpacity, "fillOpacity");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY, fillOpacity));
        return this;
    }

    public final StyleTransition getFillOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-opacity-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-opacity-transition", options));
        return this;
    }

    @Override
    public FillLayer fillOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillOpacityTransition(builder.build());
        return this;
    }

    public final String getFillOutlineColor() {
        Expression fillOutlineColorAsExpression = getFillOutlineColorAsExpression();
        if (fillOutlineColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(fillOutlineColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillOutlineColor(String fillOutlineColor) {
        Intrinsics.checkNotNullParameter(fillOutlineColor, "fillOutlineColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, fillOutlineColor));
        return this;
    }

    public final Expression getFillOutlineColorAsExpression() {
        return (Expression) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, Expression.class);
    }

    @Override
    public FillLayer fillOutlineColor(Expression fillOutlineColor) {
        Intrinsics.checkNotNullParameter(fillOutlineColor, "fillOutlineColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, fillOutlineColor));
        return this;
    }

    public final Integer getFillOutlineColorAsColorInt() {
        Expression fillOutlineColorAsExpression = getFillOutlineColorAsExpression();
        if (fillOutlineColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(fillOutlineColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillOutlineColor(int fillOutlineColor) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(fillOutlineColor)));
        return this;
    }

    public final StyleTransition getFillOutlineColorTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-outline-color-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillOutlineColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-outline-color-transition", options));
        return this;
    }

    @Override
    public FillLayer fillOutlineColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillOutlineColorTransition(builder.build());
        return this;
    }

    public final String getFillOutlineColorUseTheme() {
        return (String) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME, String.class);
    }

    @Override
    public FillLayer fillOutlineColorUseTheme(String fillOutlineColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillOutlineColorUseTheme, "fillOutlineColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME, fillOutlineColorUseTheme));
        return this;
    }

    public final Expression getFillOutlineColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
    }

    @Override
    public FillLayer fillOutlineColorUseTheme(Expression fillOutlineColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillOutlineColorUseTheme, "fillOutlineColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME, fillOutlineColorUseTheme));
        return this;
    }

    public final String getFillPattern() {
        return (String) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN, String.class);
    }

    @Override
    public FillLayer fillPattern(String fillPattern) {
        Intrinsics.checkNotNullParameter(fillPattern, "fillPattern");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN, fillPattern));
        return this;
    }

    public final Expression getFillPatternAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
    }

    @Override
    public FillLayer fillPattern(Expression fillPattern) {
        Intrinsics.checkNotNullParameter(fillPattern, "fillPattern");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN, fillPattern));
        return this;
    }

    public final Double getFillPatternCrossFade() {
        return (Double) getPropertyValueWithType("fill-pattern-cross-fade", Double.class);
    }

    @Override
    public FillLayer fillPatternCrossFade(double fillPatternCrossFade) {
        setProperty$extension_style_release(new PropertyValue<>("fill-pattern-cross-fade", Double.valueOf(fillPatternCrossFade)));
        return this;
    }

    public final Expression getFillPatternCrossFadeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-pattern-cross-fade");
    }

    @Override
    public FillLayer fillPatternCrossFade(Expression fillPatternCrossFade) {
        Intrinsics.checkNotNullParameter(fillPatternCrossFade, "fillPatternCrossFade");
        setProperty$extension_style_release(new PropertyValue<>("fill-pattern-cross-fade", fillPatternCrossFade));
        return this;
    }

    public final List<Double> getFillTranslate() {
        return (List) getPropertyValueWithType("fill-translate", List.class);
    }

    @Override
    public FillLayer fillTranslate(List<Double> fillTranslate) {
        Intrinsics.checkNotNullParameter(fillTranslate, "fillTranslate");
        setProperty$extension_style_release(new PropertyValue<>("fill-translate", fillTranslate));
        return this;
    }

    public final Expression getFillTranslateAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-translate");
    }

    @Override
    public FillLayer fillTranslate(Expression fillTranslate) {
        Intrinsics.checkNotNullParameter(fillTranslate, "fillTranslate");
        setProperty$extension_style_release(new PropertyValue<>("fill-translate", fillTranslate));
        return this;
    }

    public final StyleTransition getFillTranslateTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-translate-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillTranslateTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-translate-transition", options));
        return this;
    }

    @Override
    public FillLayer fillTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillTranslateTransition(builder.build());
        return this;
    }

    public final FillTranslateAnchor getFillTranslateAnchor() {
        String str = (String) getPropertyValueWithType("fill-translate-anchor", String.class);
        if (str == null) {
            return null;
        }
        FillTranslateAnchor.Companion companion = FillTranslateAnchor.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public FillLayer fillTranslateAnchor(FillTranslateAnchor fillTranslateAnchor) {
        Intrinsics.checkNotNullParameter(fillTranslateAnchor, "fillTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("fill-translate-anchor", fillTranslateAnchor));
        return this;
    }

    public final Expression getFillTranslateAnchorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("fill-translate-anchor", Expression.class);
        if (expression != null) {
            return expression;
        }
        FillTranslateAnchor fillTranslateAnchor = getFillTranslateAnchor();
        if (fillTranslateAnchor != null) {
            return Expression.INSTANCE.literal(fillTranslateAnchor.getValue());
        }
        return null;
    }

    @Override
    public FillLayer fillTranslateAnchor(Expression fillTranslateAnchor) {
        Intrinsics.checkNotNullParameter(fillTranslateAnchor, "fillTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("fill-translate-anchor", fillTranslateAnchor));
        return this;
    }

    public final String getFillTunnelStructureColor() {
        Expression fillTunnelStructureColorAsExpression = getFillTunnelStructureColorAsExpression();
        if (fillTunnelStructureColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(fillTunnelStructureColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillTunnelStructureColor(String fillTunnelStructureColor) {
        Intrinsics.checkNotNullParameter(fillTunnelStructureColor, "fillTunnelStructureColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, fillTunnelStructureColor));
        return this;
    }

    public final Expression getFillTunnelStructureColorAsExpression() {
        return (Expression) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, Expression.class);
    }

    @Override
    public FillLayer fillTunnelStructureColor(Expression fillTunnelStructureColor) {
        Intrinsics.checkNotNullParameter(fillTunnelStructureColor, "fillTunnelStructureColor");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, fillTunnelStructureColor));
        return this;
    }

    public final Integer getFillTunnelStructureColorAsColorInt() {
        Expression fillTunnelStructureColorAsExpression = getFillTunnelStructureColorAsExpression();
        if (fillTunnelStructureColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(fillTunnelStructureColorAsExpression);
        }
        return null;
    }

    @Override
    public FillLayer fillTunnelStructureColor(int fillTunnelStructureColor) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, ColorUtils.INSTANCE.colorIntToRgbaExpression(fillTunnelStructureColor)));
        return this;
    }

    public final StyleTransition getFillTunnelStructureColorTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-tunnel-structure-color-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillTunnelStructureColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-tunnel-structure-color-transition", options));
        return this;
    }

    @Override
    public FillLayer fillTunnelStructureColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillTunnelStructureColorTransition(builder.build());
        return this;
    }

    public final String getFillTunnelStructureColorUseTheme() {
        return (String) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME, String.class);
    }

    @Override
    public FillLayer fillTunnelStructureColorUseTheme(String fillTunnelStructureColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillTunnelStructureColorUseTheme, "fillTunnelStructureColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME, fillTunnelStructureColorUseTheme));
        return this;
    }

    public final Expression getFillTunnelStructureColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
    }

    @Override
    public FillLayer fillTunnelStructureColorUseTheme(Expression fillTunnelStructureColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillTunnelStructureColorUseTheme, "fillTunnelStructureColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME, fillTunnelStructureColorUseTheme));
        return this;
    }

    public final Double getFillZOffset() {
        return (Double) getPropertyValueWithType(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET, Double.class);
    }

    @Override
    public FillLayer fillZOffset(double fillZOffset) {
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET, Double.valueOf(fillZOffset)));
        return this;
    }

    public final Expression getFillZOffsetAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
    }

    @Override
    public FillLayer fillZOffset(Expression fillZOffset) {
        Intrinsics.checkNotNullParameter(fillZOffset, "fillZOffset");
        setProperty$extension_style_release(new PropertyValue<>(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET, fillZOffset));
        return this;
    }

    public final StyleTransition getFillZOffsetTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-z-offset-transition", StyleTransition.class);
    }

    @Override
    public FillLayer fillZOffsetTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-z-offset-transition", options));
        return this;
    }

    @Override
    public FillLayer fillZOffsetTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillZOffsetTransition(builder.build());
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "fill";
    }

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b'\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00118GX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0002\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\nR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00198FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0002\u001a\u0004\b\u001f\u0010\u000fR\u001c\u0010 \u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0002\u001a\u0004\b\"\u0010\nR\u0013\u0010#\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b$\u0010\u000fR\u0013\u0010%\u001a\u0004\u0018\u00010\u00118G¢\u0006\u0006\u001a\u0004\b&\u0010\u0014R\u0013\u0010'\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b(\u0010\nR\u0013\u0010)\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b*\u0010\u001cR\u001c\u0010+\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010\u0002\u001a\u0004\b-\u0010\u000fR\u001c\u0010.\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010\u0002\u001a\u0004\b0\u0010\nR\u001c\u00101\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b2\u0010\u0002\u001a\u0004\b3\u0010\u0006R\u001c\u00104\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b5\u0010\u0002\u001a\u0004\b6\u0010\nR\u001c\u00107\u001a\u0004\u0018\u0001088FX\u0087\u0004¢\u0006\f\u0012\u0004\b9\u0010\u0002\u001a\u0004\b:\u0010;R\u001c\u0010<\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b=\u0010\u0002\u001a\u0004\b>\u0010\nR\u0013\u0010?\u001a\u0004\u0018\u00010@8F¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0013\u0010C\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bD\u0010\nR\u0013\u0010E\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\bF\u0010\u001cR\u0013\u0010G\u001a\u0004\u0018\u00010@8F¢\u0006\u0006\u001a\u0004\bH\u0010BR\u0013\u0010I\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bJ\u0010\nR\u0013\u0010K\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\bL\u0010\u001cR\u0013\u0010M\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bN\u0010\u000fR\u0013\u0010O\u001a\u0004\u0018\u00010\u00118G¢\u0006\u0006\u001a\u0004\bP\u0010\u0014R\u0013\u0010Q\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bR\u0010\nR\u0013\u0010S\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\bT\u0010\u001cR\u001c\u0010U\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bV\u0010\u0002\u001a\u0004\bW\u0010\u000fR\u001c\u0010X\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bY\u0010\u0002\u001a\u0004\bZ\u0010\nR\u0013\u0010[\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\\\u0010\u000fR\u0013\u0010]\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b^\u0010\nR\u0013\u0010_\u001a\u0004\u0018\u00010@8F¢\u0006\u0006\u001a\u0004\b`\u0010BR\u0013\u0010a\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bb\u0010\nR\u0013\u0010c\u001a\u0004\u0018\u00010@8F¢\u0006\u0006\u001a\u0004\bd\u0010BR\u0013\u0010e\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bf\u0010\nR\u0019\u0010g\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010h8F¢\u0006\u0006\u001a\u0004\bi\u0010jR\u0013\u0010k\u001a\u0004\u0018\u00010l8F¢\u0006\u0006\u001a\u0004\bm\u0010nR\u0013\u0010o\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bp\u0010\nR\u0013\u0010q\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\br\u0010\nR\u0013\u0010s\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\bt\u0010\u001cR\u001c\u0010u\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bv\u0010\u0002\u001a\u0004\bw\u0010\u000fR\u001c\u0010x\u001a\u0004\u0018\u00010\u00118GX\u0087\u0004¢\u0006\f\u0012\u0004\by\u0010\u0002\u001a\u0004\bz\u0010\u0014R\u001c\u0010{\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b|\u0010\u0002\u001a\u0004\b}\u0010\nR\u001d\u0010~\u001a\u0004\u0018\u00010\u00198FX\u0087\u0004¢\u0006\r\u0012\u0004\b\u007f\u0010\u0002\u001a\u0005\b\u0080\u0001\u0010\u001cR\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0082\u0001\u0010\u0002\u001a\u0005\b\u0083\u0001\u0010\u000fR\u001f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0085\u0001\u0010\u0002\u001a\u0005\b\u0086\u0001\u0010\nR\u001f\u0010\u0087\u0001\u001a\u0004\u0018\u00010@8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0088\u0001\u0010\u0002\u001a\u0005\b\u0089\u0001\u0010BR\u001f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008b\u0001\u0010\u0002\u001a\u0005\b\u008c\u0001\u0010\nR\u001f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00198FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008e\u0001\u0010\u0002\u001a\u0005\b\u008f\u0001\u0010\u001cR\u0015\u0010\u0090\u0001\u001a\u0004\u0018\u00010@8F¢\u0006\u0007\u001a\u0005\b\u0091\u0001\u0010BR\u0015\u0010\u0092\u0001\u001a\u0004\u0018\u00010@8F¢\u0006\u0007\u001a\u0005\b\u0093\u0001\u0010BR\u0017\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00018F¢\u0006\b\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001¨\u0006\u0098\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/FillLayer$Companion;", "", "()V", "defaultFillAntialias", "", "getDefaultFillAntialias", "()Ljava/lang/Boolean;", "defaultFillAntialiasAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultFillAntialiasAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultFillBridgeGuardRailColor", "", "getDefaultFillBridgeGuardRailColor$annotations", "getDefaultFillBridgeGuardRailColor", "()Ljava/lang/String;", "defaultFillBridgeGuardRailColorAsColorInt", "", "getDefaultFillBridgeGuardRailColorAsColorInt$annotations", "getDefaultFillBridgeGuardRailColorAsColorInt", "()Ljava/lang/Integer;", "defaultFillBridgeGuardRailColorAsExpression", "getDefaultFillBridgeGuardRailColorAsExpression$annotations", "getDefaultFillBridgeGuardRailColorAsExpression", "defaultFillBridgeGuardRailColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultFillBridgeGuardRailColorTransition$annotations", "getDefaultFillBridgeGuardRailColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultFillBridgeGuardRailColorUseTheme", "getDefaultFillBridgeGuardRailColorUseTheme$annotations", "getDefaultFillBridgeGuardRailColorUseTheme", "defaultFillBridgeGuardRailColorUseThemeAsExpression", "getDefaultFillBridgeGuardRailColorUseThemeAsExpression$annotations", "getDefaultFillBridgeGuardRailColorUseThemeAsExpression", "defaultFillColor", "getDefaultFillColor", "defaultFillColorAsColorInt", "getDefaultFillColorAsColorInt", "defaultFillColorAsExpression", "getDefaultFillColorAsExpression", "defaultFillColorTransition", "getDefaultFillColorTransition", "defaultFillColorUseTheme", "getDefaultFillColorUseTheme$annotations", "getDefaultFillColorUseTheme", "defaultFillColorUseThemeAsExpression", "getDefaultFillColorUseThemeAsExpression$annotations", "getDefaultFillColorUseThemeAsExpression", "defaultFillConstructBridgeGuardRail", "getDefaultFillConstructBridgeGuardRail$annotations", "getDefaultFillConstructBridgeGuardRail", "defaultFillConstructBridgeGuardRailAsExpression", "getDefaultFillConstructBridgeGuardRailAsExpression$annotations", "getDefaultFillConstructBridgeGuardRailAsExpression", "defaultFillElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;", "getDefaultFillElevationReference$annotations", "getDefaultFillElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;", "defaultFillElevationReferenceAsExpression", "getDefaultFillElevationReferenceAsExpression$annotations", "getDefaultFillElevationReferenceAsExpression", "defaultFillEmissiveStrength", "", "getDefaultFillEmissiveStrength", "()Ljava/lang/Double;", "defaultFillEmissiveStrengthAsExpression", "getDefaultFillEmissiveStrengthAsExpression", "defaultFillEmissiveStrengthTransition", "getDefaultFillEmissiveStrengthTransition", "defaultFillOpacity", "getDefaultFillOpacity", "defaultFillOpacityAsExpression", "getDefaultFillOpacityAsExpression", "defaultFillOpacityTransition", "getDefaultFillOpacityTransition", "defaultFillOutlineColor", "getDefaultFillOutlineColor", "defaultFillOutlineColorAsColorInt", "getDefaultFillOutlineColorAsColorInt", "defaultFillOutlineColorAsExpression", "getDefaultFillOutlineColorAsExpression", "defaultFillOutlineColorTransition", "getDefaultFillOutlineColorTransition", "defaultFillOutlineColorUseTheme", "getDefaultFillOutlineColorUseTheme$annotations", "getDefaultFillOutlineColorUseTheme", "defaultFillOutlineColorUseThemeAsExpression", "getDefaultFillOutlineColorUseThemeAsExpression$annotations", "getDefaultFillOutlineColorUseThemeAsExpression", "defaultFillPattern", "getDefaultFillPattern", "defaultFillPatternAsExpression", "getDefaultFillPatternAsExpression", "defaultFillPatternCrossFade", "getDefaultFillPatternCrossFade", "defaultFillPatternCrossFadeAsExpression", "getDefaultFillPatternCrossFadeAsExpression", "defaultFillSortKey", "getDefaultFillSortKey", "defaultFillSortKeyAsExpression", "getDefaultFillSortKeyAsExpression", "defaultFillTranslate", "", "getDefaultFillTranslate", "()Ljava/util/List;", "defaultFillTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;", "getDefaultFillTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;", "defaultFillTranslateAnchorAsExpression", "getDefaultFillTranslateAnchorAsExpression", "defaultFillTranslateAsExpression", "getDefaultFillTranslateAsExpression", "defaultFillTranslateTransition", "getDefaultFillTranslateTransition", "defaultFillTunnelStructureColor", "getDefaultFillTunnelStructureColor$annotations", "getDefaultFillTunnelStructureColor", "defaultFillTunnelStructureColorAsColorInt", "getDefaultFillTunnelStructureColorAsColorInt$annotations", "getDefaultFillTunnelStructureColorAsColorInt", "defaultFillTunnelStructureColorAsExpression", "getDefaultFillTunnelStructureColorAsExpression$annotations", "getDefaultFillTunnelStructureColorAsExpression", "defaultFillTunnelStructureColorTransition", "getDefaultFillTunnelStructureColorTransition$annotations", "getDefaultFillTunnelStructureColorTransition", "defaultFillTunnelStructureColorUseTheme", "getDefaultFillTunnelStructureColorUseTheme$annotations", "getDefaultFillTunnelStructureColorUseTheme", "defaultFillTunnelStructureColorUseThemeAsExpression", "getDefaultFillTunnelStructureColorUseThemeAsExpression$annotations", "getDefaultFillTunnelStructureColorUseThemeAsExpression", "defaultFillZOffset", "getDefaultFillZOffset$annotations", "getDefaultFillZOffset", "defaultFillZOffsetAsExpression", "getDefaultFillZOffsetAsExpression$annotations", "getDefaultFillZOffsetAsExpression", "defaultFillZOffsetTransition", "getDefaultFillZOffsetTransition$annotations", "getDefaultFillZOffsetTransition", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultFillBridgeGuardRailColor$annotations() {
        }

        public static void getDefaultFillBridgeGuardRailColorAsColorInt$annotations() {
        }

        public static void getDefaultFillBridgeGuardRailColorAsExpression$annotations() {
        }

        public static void getDefaultFillBridgeGuardRailColorTransition$annotations() {
        }

        public static void getDefaultFillBridgeGuardRailColorUseTheme$annotations() {
        }

        public static void getDefaultFillBridgeGuardRailColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultFillColorUseTheme$annotations() {
        }

        public static void getDefaultFillColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultFillConstructBridgeGuardRail$annotations() {
        }

        public static void getDefaultFillConstructBridgeGuardRailAsExpression$annotations() {
        }

        public static void getDefaultFillElevationReference$annotations() {
        }

        public static void getDefaultFillElevationReferenceAsExpression$annotations() {
        }

        public static void getDefaultFillOutlineColorUseTheme$annotations() {
        }

        public static void getDefaultFillOutlineColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultFillTunnelStructureColor$annotations() {
        }

        public static void getDefaultFillTunnelStructureColorAsColorInt$annotations() {
        }

        public static void getDefaultFillTunnelStructureColorAsExpression$annotations() {
        }

        public static void getDefaultFillTunnelStructureColorTransition$annotations() {
        }

        public static void getDefaultFillTunnelStructureColorUseTheme$annotations() {
        }

        public static void getDefaultFillTunnelStructureColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultFillZOffset$annotations() {
        }

        public static void getDefaultFillZOffsetAsExpression$annotations() {
        }

        public static void getDefaultFillZOffsetTransition$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"fill\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tValue(\"fill\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tValue(\"fill\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Boolean getDefaultFillConstructBridgeGuardRail() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…truct-bridge-guard-rail\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Expression getDefaultFillConstructBridgeGuardRailAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…truct-bridge-guard-rail\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Boolean defaultFillConstructBridgeGuardRail = getDefaultFillConstructBridgeGuardRail();
            if (defaultFillConstructBridgeGuardRail == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillConstructBridgeGuardRail.booleanValue());
        }

        public final FillElevationReference getDefaultFillElevationReference() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ill-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            FillElevationReference.Companion companion = FillElevationReference.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultFillElevationReferenceAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ill-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            FillElevationReference defaultFillElevationReference = getDefaultFillElevationReference();
            if (defaultFillElevationReference != null) {
                return Expression.INSTANCE.literal(defaultFillElevationReference.getValue());
            }
            return null;
        }

        public final Double getDefaultFillSortKey() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"fill\", \"fill-sort-key\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillSortKeyAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"fill\", \"fill-sort-key\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillSortKey = getDefaultFillSortKey();
            if (defaultFillSortKey == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillSortKey.doubleValue());
        }

        public final Boolean getDefaultFillAntialias() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-antialias");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill\", \"fill-antialias\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Expression getDefaultFillAntialiasAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-antialias");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill\", \"fill-antialias\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Boolean defaultFillAntialias = getDefaultFillAntialias();
            if (defaultFillAntialias == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillAntialias.booleanValue());
        }

        public final String getDefaultFillBridgeGuardRailColor() {
            Expression defaultFillBridgeGuardRailColorAsExpression = getDefaultFillBridgeGuardRailColorAsExpression();
            if (defaultFillBridgeGuardRailColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultFillBridgeGuardRailColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultFillBridgeGuardRailColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…bridge-guard-rail-color\")");
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

        public final Integer getDefaultFillBridgeGuardRailColorAsColorInt() {
            Expression defaultFillBridgeGuardRailColorAsExpression = getDefaultFillBridgeGuardRailColorAsExpression();
            if (defaultFillBridgeGuardRailColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultFillBridgeGuardRailColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultFillBridgeGuardRailColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-bridge-guard-rail-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…d-rail-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillBridgeGuardRailColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rd-rail-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillBridgeGuardRailColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rd-rail-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillBridgeGuardRailColorUseTheme = getDefaultFillBridgeGuardRailColorUseTheme();
            if (defaultFillBridgeGuardRailColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultFillBridgeGuardRailColorUseTheme);
            }
            return null;
        }

        public final String getDefaultFillColor() {
            Expression defaultFillColorAsExpression = getDefaultFillColorAsExpression();
            if (defaultFillColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultFillColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultFillColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"fill\", \"fill-color\")");
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

        public final Integer getDefaultFillColorAsColorInt() {
            Expression defaultFillColorAsExpression = getDefaultFillColorAsExpression();
            if (defaultFillColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultFillColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultFillColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"fill-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"fill-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"fill-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillColorUseTheme = getDefaultFillColorUseTheme();
            if (defaultFillColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultFillColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultFillEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillEmissiveStrength = getDefaultFillEmissiveStrength();
            if (defaultFillEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultFillEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"fill\", \"fill-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"fill\", \"fill-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillOpacity = getDefaultFillOpacity();
            if (defaultFillOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillOpacity.doubleValue());
        }

        public final StyleTransition getDefaultFillOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…fill-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillOutlineColor() {
            Expression defaultFillOutlineColorAsExpression = getDefaultFillOutlineColorAsExpression();
            if (defaultFillOutlineColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultFillOutlineColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultFillOutlineColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…l\", \"fill-outline-color\")");
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

        public final Integer getDefaultFillOutlineColorAsColorInt() {
            Expression defaultFillOutlineColorAsExpression = getDefaultFillOutlineColorAsExpression();
            if (defaultFillOutlineColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultFillOutlineColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultFillOutlineColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-outline-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…utline-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillOutlineColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…outline-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillOutlineColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…outline-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillOutlineColorUseTheme = getDefaultFillOutlineColorUseTheme();
            if (defaultFillOutlineColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultFillOutlineColorUseTheme);
            }
            return null;
        }

        public final String getDefaultFillPattern() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"fill\", \"fill-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillPatternAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"fill\", \"fill-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillPattern = getDefaultFillPattern();
            if (defaultFillPattern != null) {
                return Expression.INSTANCE.literal(defaultFillPattern);
            }
            return null;
        }

        public final Double getDefaultFillPatternCrossFade() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-pattern-cross-fade");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…fill-pattern-cross-fade\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillPatternCrossFadeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-pattern-cross-fade");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…fill-pattern-cross-fade\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillPatternCrossFade = getDefaultFillPatternCrossFade();
            if (defaultFillPatternCrossFade == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillPatternCrossFade.doubleValue());
        }

        public final List<Double> getDefaultFillTranslate() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill\", \"fill-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultFillTranslateAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill\", \"fill-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultFillTranslate = getDefaultFillTranslate();
            if (defaultFillTranslate != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultFillTranslate);
            }
            return null;
        }

        public final StyleTransition getDefaultFillTranslateTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-translate-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ll-translate-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final FillTranslateAnchor getDefaultFillTranslateAnchor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"fill-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            FillTranslateAnchor.Companion companion = FillTranslateAnchor.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultFillTranslateAnchorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"fill-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            FillTranslateAnchor defaultFillTranslateAnchor = getDefaultFillTranslateAnchor();
            if (defaultFillTranslateAnchor != null) {
                return Expression.INSTANCE.literal(defaultFillTranslateAnchor.getValue());
            }
            return null;
        }

        public final String getDefaultFillTunnelStructureColor() {
            Expression defaultFillTunnelStructureColorAsExpression = getDefaultFillTunnelStructureColorAsExpression();
            if (defaultFillTunnelStructureColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultFillTunnelStructureColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultFillTunnelStructureColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-tunnel-structure-color\")");
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

        public final Integer getDefaultFillTunnelStructureColorAsColorInt() {
            Expression defaultFillTunnelStructureColorAsExpression = getDefaultFillTunnelStructureColorAsExpression();
            if (defaultFillTunnelStructureColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultFillTunnelStructureColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultFillTunnelStructureColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-tunnel-structure-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ucture-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillTunnelStructureColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ructure-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillTunnelStructureColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ructure-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillTunnelStructureColorUseTheme = getDefaultFillTunnelStructureColorUseTheme();
            if (defaultFillTunnelStructureColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultFillTunnelStructureColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultFillZOffset() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"fill\", \"fill-z-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillZOffsetAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"fill\", \"fill-z-offset\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillZOffset = getDefaultFillZOffset();
            if (defaultFillZOffset == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillZOffset.doubleValue());
        }

        public final StyleTransition getDefaultFillZOffsetTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill", "fill-z-offset-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ill-z-offset-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }
    }
}
