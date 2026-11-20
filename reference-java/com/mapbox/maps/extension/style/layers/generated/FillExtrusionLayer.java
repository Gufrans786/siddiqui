package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.FillExtrusionBaseAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.FillExtrusionHeightAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.FillExtrusionTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\bU\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 ü\u00012\u00020\u00012\u00020\u0002:\u0002ü\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u000eH\u0017J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0017J\u0011\u0010\u0012\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J&\u0010\u0012\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000eH\u0017J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\bH\u0017J\u0011\u0010\u001d\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J&\u0010\u001d\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000eH\u0016J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\bH\u0016J\u0011\u0010$\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J&\u0010$\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0010\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u000eH\u0016J\u0010\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\bH\u0016J\u0011\u0010*\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J&\u0010*\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0010\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u000eH\u0017J\u0010\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\bH\u0017J\u0011\u00102\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J&\u00102\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0010\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u000eH\u0016J\u0010\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\bH\u0016J\u0010\u00107\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u000eH\u0017J\u0010\u00107\u001a\u00020\u00002\u0006\u00107\u001a\u000208H\u0017J\u0011\u0010A\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J&\u0010A\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u000eH\u0016J\u0012\u0010C\u001a\u00020\u00002\b\b\u0001\u0010C\u001a\u00020GH\u0016J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0004H\u0016J\u0011\u0010L\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J&\u0010L\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0010\u0010N\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000eH\u0017J\u0010\u0010N\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0004H\u0017J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\u000eH\u0016J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\bH\u0016J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\u000eH\u0017J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\bH\u0017J\u0010\u0010^\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u000eH\u0016J\u0010\u0010^\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\bH\u0016J\u0011\u0010b\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J&\u0010b\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0010\u0010d\u001a\u00020\u00002\u0006\u0010d\u001a\u00020\u000eH\u0017J\u0012\u0010d\u001a\u00020\u00002\b\b\u0001\u0010d\u001a\u00020GH\u0017J\u0010\u0010d\u001a\u00020\u00002\u0006\u0010d\u001a\u00020\u0004H\u0017J\u0011\u0010m\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J&\u0010m\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0010\u0010p\u001a\u00020\u00002\u0006\u0010p\u001a\u00020\u000eH\u0017J\u0010\u0010p\u001a\u00020\u00002\u0006\u0010p\u001a\u00020\u0004H\u0017J\u0010\u0010v\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u000eH\u0017J\u0010\u0010v\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\bH\u0017J\u0011\u0010|\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J&\u0010|\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000eH\u0017J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\bH\u0017J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J'\u0010\u0085\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0012\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u000eH\u0017J\u0012\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\bH\u0017J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J'\u0010\u008e\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020\u000eH\u0017J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020\bH\u0017J\u0012\u0010\u0097\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J'\u0010\u0097\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0012\u0010\u009a\u0001\u001a\u00020\u00002\u0007\u0010\u009a\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u009a\u0001\u001a\u00020\u00002\u0007\u0010\u009a\u0001\u001a\u00020\bH\u0016J\u0012\u0010\u009c\u0001\u001a\u00020\u00002\u0007\u0010\u009c\u0001\u001a\u00020\u000eH\u0017J\u0013\u0010\u009c\u0001\u001a\u00020\u00002\b\u0010\u009c\u0001\u001a\u00030\u009d\u0001H\u0017J\u0012\u0010¦\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J'\u0010¦\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0012\u0010¨\u0001\u001a\u00020\u00002\u0007\u0010¨\u0001\u001a\u00020\u000eH\u0017J\u0012\u0010¨\u0001\u001a\u00020\u00002\u0007\u0010¨\u0001\u001a\u00020\bH\u0017J\u0012\u0010®\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J'\u0010®\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0012\u0010±\u0001\u001a\u00020\u00002\u0007\u0010±\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010±\u0001\u001a\u00020\u00002\u0007\u0010±\u0001\u001a\u00020\bH\u0016J\u0012\u0010µ\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J'\u0010µ\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0012\u0010·\u0001\u001a\u00020\u00002\u0007\u0010·\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010·\u0001\u001a\u00020\u00002\u0007\u0010·\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010»\u0001\u001a\u00020\u00002\u0007\u0010»\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010»\u0001\u001a\u00020\u00002\u0007\u0010»\u0001\u001a\u00020\bH\u0016J\u0012\u0010¿\u0001\u001a\u00020\u00002\u0007\u0010¿\u0001\u001a\u00020\u000eH\u0017J\u0013\u0010¿\u0001\u001a\u00020\u00002\b\u0010¿\u0001\u001a\u00030À\u0001H\u0017J\u0012\u0010Ç\u0001\u001a\u00020\u00002\u0007\u0010Ç\u0001\u001a\u00020\u000eH\u0016J\u0019\u0010Ç\u0001\u001a\u00020\u00002\u000e\u0010Ç\u0001\u001a\t\u0012\u0004\u0012\u00020\b0È\u0001H\u0016J\u0012\u0010Ë\u0001\u001a\u00020\u00002\u0007\u0010Ë\u0001\u001a\u00020\u000eH\u0016J\u0013\u0010Ë\u0001\u001a\u00020\u00002\b\u0010Ë\u0001\u001a\u00030Ì\u0001H\u0016J\u0012\u0010Ó\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0016J'\u0010Ó\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0016J\u0012\u0010Õ\u0001\u001a\u00020\u00002\u0007\u0010Õ\u0001\u001a\u00020\u000eH\u0016J\u0013\u0010Õ\u0001\u001a\u00020\u00002\b\u0010Õ\u0001\u001a\u00030À\u0001H\u0016J\u0012\u0010Ù\u0001\u001a\u00020\u00002\u0007\u0010Ù\u0001\u001a\u00020\u000eH\u0017J\u0012\u0010Ù\u0001\u001a\u00020\u00002\u0007\u0010Ù\u0001\u001a\u00020\bH\u0017J\u0012\u0010ß\u0001\u001a\u00020\u00002\u0007\u0010ô\u0001\u001a\u00020\u0013H\u0017J'\u0010ß\u0001\u001a\u00020\u00002\u001c\u0010õ\u0001\u001a\u0017\u0012\u0005\u0012\u00030÷\u0001\u0012\u0005\u0012\u00030ø\u00010ö\u0001¢\u0006\u0003\bù\u0001H\u0017J\u0012\u0010â\u0001\u001a\u00020\u00002\u0007\u0010â\u0001\u001a\u00020\u000eH\u0016J\u000f\u0010ú\u0001\u001a\u00020\u0004H\u0010¢\u0006\u0003\bû\u0001J\u0012\u0010å\u0001\u001a\u00020\u00002\u0007\u0010å\u0001\u001a\u00020\bH\u0016J\u0012\u0010ç\u0001\u001a\u00020\u00002\u0007\u0010ç\u0001\u001a\u00020\bH\u0016J\u0012\u0010é\u0001\u001a\u00020\u00002\u0007\u0010é\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010ì\u0001\u001a\u00020\u00002\u0007\u0010ì\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010î\u0001\u001a\u00020\u00002\u0007\u0010î\u0001\u001a\u00020\u000eH\u0016J\u0013\u0010î\u0001\u001a\u00020\u00002\b\u0010î\u0001\u001a\u00030ï\u0001H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\n\u001a\u0004\b\u0019\u0010\fR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\n\u001a\u0004\b\u001c\u0010\u0011R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\n\u001a\u0004\b\u001f\u0010\u0016R\u0013\u0010 \u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b!\u0010\fR\u0013\u0010\"\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b#\u0010\u0011R\u0013\u0010$\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b%\u0010\u0016R\u0013\u0010&\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b'\u0010\fR\u0013\u0010(\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b)\u0010\u0011R\u0013\u0010*\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b+\u0010\u0016R\u001c\u0010,\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b-\u0010\n\u001a\u0004\b.\u0010\fR\u001c\u0010/\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\n\u001a\u0004\b1\u0010\u0011R\u001c\u00102\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\n\u001a\u0004\b4\u0010\u0016R\u0013\u00105\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b6\u0010\fR\u001c\u00107\u001a\u0004\u0018\u0001088FX\u0087\u0004¢\u0006\f\u0012\u0004\b9\u0010\n\u001a\u0004\b:\u0010;R\u001c\u0010<\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b=\u0010\n\u001a\u0004\b>\u0010\u0011R\u0013\u0010?\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b@\u0010\u0011R\u0013\u0010A\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\bB\u0010\u0016R\u0013\u0010C\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0013\u0010F\u001a\u0004\u0018\u00010G8G¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0013\u0010J\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\bK\u0010\u0011R\u0013\u0010L\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\bM\u0010\u0016R\u001c\u0010N\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bO\u0010\n\u001a\u0004\bP\u0010ER\u001c\u0010Q\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bR\u0010\n\u001a\u0004\bS\u0010\u0011R\u0013\u0010T\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bU\u0010\fR\u0013\u0010V\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\bW\u0010\u0011R\u001c\u0010X\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bY\u0010\n\u001a\u0004\bZ\u0010\fR\u001c\u0010[\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\\\u0010\n\u001a\u0004\b]\u0010\u0011R\u0013\u0010^\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b_\u0010\fR\u0013\u0010`\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\ba\u0010\u0011R\u0013\u0010b\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\bc\u0010\u0016R\u001c\u0010d\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\be\u0010\n\u001a\u0004\bf\u0010ER\u001c\u0010g\u001a\u0004\u0018\u00010G8GX\u0087\u0004¢\u0006\f\u0012\u0004\bh\u0010\n\u001a\u0004\bi\u0010IR\u001c\u0010j\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bk\u0010\n\u001a\u0004\bl\u0010\u0011R\u001c\u0010m\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\f\u0012\u0004\bn\u0010\n\u001a\u0004\bo\u0010\u0016R\u001c\u0010p\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bq\u0010\n\u001a\u0004\br\u0010ER\u001c\u0010s\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bt\u0010\n\u001a\u0004\bu\u0010\u0011R\u001c\u0010v\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bw\u0010\n\u001a\u0004\bx\u0010\fR\u001c\u0010y\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bz\u0010\n\u001a\u0004\b{\u0010\u0011R\u001c\u0010|\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\f\u0012\u0004\b}\u0010\n\u001a\u0004\b~\u0010\u0016R\u001e\u0010\u007f\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0080\u0001\u0010\n\u001a\u0005\b\u0081\u0001\u0010\fR\u001f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0083\u0001\u0010\n\u001a\u0005\b\u0084\u0001\u0010\u0011R\u001f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0086\u0001\u0010\n\u001a\u0005\b\u0087\u0001\u0010\u0016R\u001f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0089\u0001\u0010\n\u001a\u0005\b\u008a\u0001\u0010\fR\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008c\u0001\u0010\n\u001a\u0005\b\u008d\u0001\u0010\u0011R\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008f\u0001\u0010\n\u001a\u0005\b\u0090\u0001\u0010\u0016R\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0092\u0001\u0010\n\u001a\u0005\b\u0093\u0001\u0010\fR\u001f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0095\u0001\u0010\n\u001a\u0005\b\u0096\u0001\u0010\u0011R\u001f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0098\u0001\u0010\n\u001a\u0005\b\u0099\u0001\u0010\u0016R\u0015\u0010\u009a\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u009b\u0001\u0010\fR!\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009d\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b\u009e\u0001\u0010\n\u001a\u0006\b\u009f\u0001\u0010 \u0001R\u001f\u0010¡\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¢\u0001\u0010\n\u001a\u0005\b£\u0001\u0010\u0011R\u0015\u0010¤\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b¥\u0001\u0010\u0011R\u0015\u0010¦\u0001\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0007\u001a\u0005\b§\u0001\u0010\u0016R\u001f\u0010¨\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b©\u0001\u0010\n\u001a\u0005\bª\u0001\u0010\fR\u001f\u0010«\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¬\u0001\u0010\n\u001a\u0005\b\u00ad\u0001\u0010\u0011R\u001f\u0010®\u0001\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¯\u0001\u0010\n\u001a\u0005\b°\u0001\u0010\u0016R\u0015\u0010±\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b²\u0001\u0010\fR\u0015\u0010³\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b´\u0001\u0010\u0011R\u0015\u0010µ\u0001\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010\u0016R\u0015\u0010·\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b¸\u0001\u0010ER\u0015\u0010¹\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\bº\u0001\u0010\u0011R\u0015\u0010»\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b¼\u0001\u0010\fR\u0015\u0010½\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b¾\u0001\u0010\u0011R!\u0010¿\u0001\u001a\u0005\u0018\u00010À\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\bÁ\u0001\u0010\n\u001a\u0006\bÂ\u0001\u0010Ã\u0001R\u001f\u0010Ä\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÅ\u0001\u0010\n\u001a\u0005\bÆ\u0001\u0010\u0011R\u001d\u0010Ç\u0001\u001a\u000b\u0012\u0004\u0012\u00020\b\u0018\u00010È\u00018F¢\u0006\b\u001a\u0006\bÉ\u0001\u0010Ê\u0001R\u0017\u0010Ë\u0001\u001a\u0005\u0018\u00010Ì\u00018F¢\u0006\b\u001a\u0006\bÍ\u0001\u0010Î\u0001R\u0015\u0010Ï\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\bÐ\u0001\u0010\u0011R\u0015\u0010Ñ\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\bÒ\u0001\u0010\u0011R\u0015\u0010Ó\u0001\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0007\u001a\u0005\bÔ\u0001\u0010\u0016R\u0017\u0010Õ\u0001\u001a\u0005\u0018\u00010À\u00018F¢\u0006\b\u001a\u0006\bÖ\u0001\u0010Ã\u0001R\u0015\u0010×\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\bØ\u0001\u0010\u0011R\u001f\u0010Ù\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÚ\u0001\u0010\n\u001a\u0005\bÛ\u0001\u0010\fR\u001f\u0010Ü\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÝ\u0001\u0010\n\u001a\u0005\bÞ\u0001\u0010\u0011R\u001f\u0010ß\u0001\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bà\u0001\u0010\n\u001a\u0005\bá\u0001\u0010\u0016R\u0015\u0010â\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\bã\u0001\u0010\u0011R\u0015\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\t\n\u0000\u001a\u0005\bä\u0001\u0010ER\u0018\u0010å\u0001\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bæ\u0001\u0010\fR\u0018\u0010ç\u0001\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bè\u0001\u0010\fR\u0018\u0010é\u0001\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bê\u0001\u0010ER\u0012\u0010\u0005\u001a\u00020\u0004¢\u0006\t\n\u0000\u001a\u0005\bë\u0001\u0010ER\u0015\u0010ì\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\bí\u0001\u0010ER\u001a\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\bð\u0001\u0010ñ\u0001R\u0018\u0010ò\u0001\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bó\u0001\u0010\u0011¨\u0006ý\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", "fillExtrusionAmbientOcclusionGroundAttenuation", "", "getFillExtrusionAmbientOcclusionGroundAttenuation$annotations", "()V", "getFillExtrusionAmbientOcclusionGroundAttenuation", "()Ljava/lang/Double;", "fillExtrusionAmbientOcclusionGroundAttenuationAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFillExtrusionAmbientOcclusionGroundAttenuationAsExpression$annotations", "getFillExtrusionAmbientOcclusionGroundAttenuationAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "fillExtrusionAmbientOcclusionGroundAttenuationTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getFillExtrusionAmbientOcclusionGroundAttenuationTransition$annotations", "getFillExtrusionAmbientOcclusionGroundAttenuationTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "fillExtrusionAmbientOcclusionGroundRadius", "getFillExtrusionAmbientOcclusionGroundRadius$annotations", "getFillExtrusionAmbientOcclusionGroundRadius", "fillExtrusionAmbientOcclusionGroundRadiusAsExpression", "getFillExtrusionAmbientOcclusionGroundRadiusAsExpression$annotations", "getFillExtrusionAmbientOcclusionGroundRadiusAsExpression", "fillExtrusionAmbientOcclusionGroundRadiusTransition", "getFillExtrusionAmbientOcclusionGroundRadiusTransition$annotations", "getFillExtrusionAmbientOcclusionGroundRadiusTransition", "fillExtrusionAmbientOcclusionIntensity", "getFillExtrusionAmbientOcclusionIntensity", "fillExtrusionAmbientOcclusionIntensityAsExpression", "getFillExtrusionAmbientOcclusionIntensityAsExpression", "fillExtrusionAmbientOcclusionIntensityTransition", "getFillExtrusionAmbientOcclusionIntensityTransition", "fillExtrusionAmbientOcclusionRadius", "getFillExtrusionAmbientOcclusionRadius", "fillExtrusionAmbientOcclusionRadiusAsExpression", "getFillExtrusionAmbientOcclusionRadiusAsExpression", "fillExtrusionAmbientOcclusionRadiusTransition", "getFillExtrusionAmbientOcclusionRadiusTransition", "fillExtrusionAmbientOcclusionWallRadius", "getFillExtrusionAmbientOcclusionWallRadius$annotations", "getFillExtrusionAmbientOcclusionWallRadius", "fillExtrusionAmbientOcclusionWallRadiusAsExpression", "getFillExtrusionAmbientOcclusionWallRadiusAsExpression$annotations", "getFillExtrusionAmbientOcclusionWallRadiusAsExpression", "fillExtrusionAmbientOcclusionWallRadiusTransition", "getFillExtrusionAmbientOcclusionWallRadiusTransition$annotations", "getFillExtrusionAmbientOcclusionWallRadiusTransition", "fillExtrusionBase", "getFillExtrusionBase", "fillExtrusionBaseAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionBaseAlignment;", "getFillExtrusionBaseAlignment$annotations", "getFillExtrusionBaseAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionBaseAlignment;", "fillExtrusionBaseAlignmentAsExpression", "getFillExtrusionBaseAlignmentAsExpression$annotations", "getFillExtrusionBaseAlignmentAsExpression", "fillExtrusionBaseAsExpression", "getFillExtrusionBaseAsExpression", "fillExtrusionBaseTransition", "getFillExtrusionBaseTransition", "fillExtrusionColor", "getFillExtrusionColor", "()Ljava/lang/String;", "fillExtrusionColorAsColorInt", "", "getFillExtrusionColorAsColorInt", "()Ljava/lang/Integer;", "fillExtrusionColorAsExpression", "getFillExtrusionColorAsExpression", "fillExtrusionColorTransition", "getFillExtrusionColorTransition", "fillExtrusionColorUseTheme", "getFillExtrusionColorUseTheme$annotations", "getFillExtrusionColorUseTheme", "fillExtrusionColorUseThemeAsExpression", "getFillExtrusionColorUseThemeAsExpression$annotations", "getFillExtrusionColorUseThemeAsExpression", "fillExtrusionCutoffFadeRange", "getFillExtrusionCutoffFadeRange", "fillExtrusionCutoffFadeRangeAsExpression", "getFillExtrusionCutoffFadeRangeAsExpression", "fillExtrusionEdgeRadius", "getFillExtrusionEdgeRadius$annotations", "getFillExtrusionEdgeRadius", "fillExtrusionEdgeRadiusAsExpression", "getFillExtrusionEdgeRadiusAsExpression$annotations", "getFillExtrusionEdgeRadiusAsExpression", "fillExtrusionEmissiveStrength", "getFillExtrusionEmissiveStrength", "fillExtrusionEmissiveStrengthAsExpression", "getFillExtrusionEmissiveStrengthAsExpression", "fillExtrusionEmissiveStrengthTransition", "getFillExtrusionEmissiveStrengthTransition", "fillExtrusionFloodLightColor", "getFillExtrusionFloodLightColor$annotations", "getFillExtrusionFloodLightColor", "fillExtrusionFloodLightColorAsColorInt", "getFillExtrusionFloodLightColorAsColorInt$annotations", "getFillExtrusionFloodLightColorAsColorInt", "fillExtrusionFloodLightColorAsExpression", "getFillExtrusionFloodLightColorAsExpression$annotations", "getFillExtrusionFloodLightColorAsExpression", "fillExtrusionFloodLightColorTransition", "getFillExtrusionFloodLightColorTransition$annotations", "getFillExtrusionFloodLightColorTransition", "fillExtrusionFloodLightColorUseTheme", "getFillExtrusionFloodLightColorUseTheme$annotations", "getFillExtrusionFloodLightColorUseTheme", "fillExtrusionFloodLightColorUseThemeAsExpression", "getFillExtrusionFloodLightColorUseThemeAsExpression$annotations", "getFillExtrusionFloodLightColorUseThemeAsExpression", "fillExtrusionFloodLightGroundAttenuation", "getFillExtrusionFloodLightGroundAttenuation$annotations", "getFillExtrusionFloodLightGroundAttenuation", "fillExtrusionFloodLightGroundAttenuationAsExpression", "getFillExtrusionFloodLightGroundAttenuationAsExpression$annotations", "getFillExtrusionFloodLightGroundAttenuationAsExpression", "fillExtrusionFloodLightGroundAttenuationTransition", "getFillExtrusionFloodLightGroundAttenuationTransition$annotations", "getFillExtrusionFloodLightGroundAttenuationTransition", "fillExtrusionFloodLightGroundRadius", "getFillExtrusionFloodLightGroundRadius$annotations", "getFillExtrusionFloodLightGroundRadius", "fillExtrusionFloodLightGroundRadiusAsExpression", "getFillExtrusionFloodLightGroundRadiusAsExpression$annotations", "getFillExtrusionFloodLightGroundRadiusAsExpression", "fillExtrusionFloodLightGroundRadiusTransition", "getFillExtrusionFloodLightGroundRadiusTransition$annotations", "getFillExtrusionFloodLightGroundRadiusTransition", "fillExtrusionFloodLightIntensity", "getFillExtrusionFloodLightIntensity$annotations", "getFillExtrusionFloodLightIntensity", "fillExtrusionFloodLightIntensityAsExpression", "getFillExtrusionFloodLightIntensityAsExpression$annotations", "getFillExtrusionFloodLightIntensityAsExpression", "fillExtrusionFloodLightIntensityTransition", "getFillExtrusionFloodLightIntensityTransition$annotations", "getFillExtrusionFloodLightIntensityTransition", "fillExtrusionFloodLightWallRadius", "getFillExtrusionFloodLightWallRadius$annotations", "getFillExtrusionFloodLightWallRadius", "fillExtrusionFloodLightWallRadiusAsExpression", "getFillExtrusionFloodLightWallRadiusAsExpression$annotations", "getFillExtrusionFloodLightWallRadiusAsExpression", "fillExtrusionFloodLightWallRadiusTransition", "getFillExtrusionFloodLightWallRadiusTransition$annotations", "getFillExtrusionFloodLightWallRadiusTransition", "fillExtrusionHeight", "getFillExtrusionHeight", "fillExtrusionHeightAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionHeightAlignment;", "getFillExtrusionHeightAlignment$annotations", "getFillExtrusionHeightAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionHeightAlignment;", "fillExtrusionHeightAlignmentAsExpression", "getFillExtrusionHeightAlignmentAsExpression$annotations", "getFillExtrusionHeightAlignmentAsExpression", "fillExtrusionHeightAsExpression", "getFillExtrusionHeightAsExpression", "fillExtrusionHeightTransition", "getFillExtrusionHeightTransition", "fillExtrusionLineWidth", "getFillExtrusionLineWidth$annotations", "getFillExtrusionLineWidth", "fillExtrusionLineWidthAsExpression", "getFillExtrusionLineWidthAsExpression$annotations", "getFillExtrusionLineWidthAsExpression", "fillExtrusionLineWidthTransition", "getFillExtrusionLineWidthTransition$annotations", "getFillExtrusionLineWidthTransition", "fillExtrusionOpacity", "getFillExtrusionOpacity", "fillExtrusionOpacityAsExpression", "getFillExtrusionOpacityAsExpression", "fillExtrusionOpacityTransition", "getFillExtrusionOpacityTransition", "fillExtrusionPattern", "getFillExtrusionPattern", "fillExtrusionPatternAsExpression", "getFillExtrusionPatternAsExpression", "fillExtrusionPatternCrossFade", "getFillExtrusionPatternCrossFade", "fillExtrusionPatternCrossFadeAsExpression", "getFillExtrusionPatternCrossFadeAsExpression", "fillExtrusionRoundedRoof", "", "getFillExtrusionRoundedRoof$annotations", "getFillExtrusionRoundedRoof", "()Ljava/lang/Boolean;", "fillExtrusionRoundedRoofAsExpression", "getFillExtrusionRoundedRoofAsExpression$annotations", "getFillExtrusionRoundedRoofAsExpression", "fillExtrusionTranslate", "", "getFillExtrusionTranslate", "()Ljava/util/List;", "fillExtrusionTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionTranslateAnchor;", "getFillExtrusionTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionTranslateAnchor;", "fillExtrusionTranslateAnchorAsExpression", "getFillExtrusionTranslateAnchorAsExpression", "fillExtrusionTranslateAsExpression", "getFillExtrusionTranslateAsExpression", "fillExtrusionTranslateTransition", "getFillExtrusionTranslateTransition", "fillExtrusionVerticalGradient", "getFillExtrusionVerticalGradient", "fillExtrusionVerticalGradientAsExpression", "getFillExtrusionVerticalGradientAsExpression", "fillExtrusionVerticalScale", "getFillExtrusionVerticalScale$annotations", "getFillExtrusionVerticalScale", "fillExtrusionVerticalScaleAsExpression", "getFillExtrusionVerticalScaleAsExpression$annotations", "getFillExtrusionVerticalScaleAsExpression", "fillExtrusionVerticalScaleTransition", "getFillExtrusionVerticalScaleTransition$annotations", "getFillExtrusionVerticalScaleTransition", ViewProps.FILTER, "getFilter", "getLayerId", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FillExtrusionLayer extends Layer implements FillExtrusionLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getFillExtrusionAmbientOcclusionGroundAttenuation$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionGroundAttenuationAsExpression$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionGroundAttenuationTransition$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionGroundRadius$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionGroundRadiusAsExpression$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionGroundRadiusTransition$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionWallRadius$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionWallRadiusAsExpression$annotations() {
    }

    public static void getFillExtrusionAmbientOcclusionWallRadiusTransition$annotations() {
    }

    public static void getFillExtrusionBaseAlignment$annotations() {
    }

    public static void getFillExtrusionBaseAlignmentAsExpression$annotations() {
    }

    public static void getFillExtrusionColorUseTheme$annotations() {
    }

    public static void getFillExtrusionColorUseThemeAsExpression$annotations() {
    }

    public static void getFillExtrusionEdgeRadius$annotations() {
    }

    public static void getFillExtrusionEdgeRadiusAsExpression$annotations() {
    }

    public static void getFillExtrusionFloodLightColor$annotations() {
    }

    public static void getFillExtrusionFloodLightColorAsColorInt$annotations() {
    }

    public static void getFillExtrusionFloodLightColorAsExpression$annotations() {
    }

    public static void getFillExtrusionFloodLightColorTransition$annotations() {
    }

    public static void getFillExtrusionFloodLightColorUseTheme$annotations() {
    }

    public static void getFillExtrusionFloodLightColorUseThemeAsExpression$annotations() {
    }

    public static void getFillExtrusionFloodLightGroundAttenuation$annotations() {
    }

    public static void getFillExtrusionFloodLightGroundAttenuationAsExpression$annotations() {
    }

    public static void getFillExtrusionFloodLightGroundAttenuationTransition$annotations() {
    }

    public static void getFillExtrusionFloodLightGroundRadius$annotations() {
    }

    public static void getFillExtrusionFloodLightGroundRadiusAsExpression$annotations() {
    }

    public static void getFillExtrusionFloodLightGroundRadiusTransition$annotations() {
    }

    public static void getFillExtrusionFloodLightIntensity$annotations() {
    }

    public static void getFillExtrusionFloodLightIntensityAsExpression$annotations() {
    }

    public static void getFillExtrusionFloodLightIntensityTransition$annotations() {
    }

    public static void getFillExtrusionFloodLightWallRadius$annotations() {
    }

    public static void getFillExtrusionFloodLightWallRadiusAsExpression$annotations() {
    }

    public static void getFillExtrusionFloodLightWallRadiusTransition$annotations() {
    }

    public static void getFillExtrusionHeightAlignment$annotations() {
    }

    public static void getFillExtrusionHeightAlignmentAsExpression$annotations() {
    }

    public static void getFillExtrusionLineWidth$annotations() {
    }

    public static void getFillExtrusionLineWidthAsExpression$annotations() {
    }

    public static void getFillExtrusionLineWidthTransition$annotations() {
    }

    public static void getFillExtrusionRoundedRoof$annotations() {
    }

    public static void getFillExtrusionRoundedRoofAsExpression$annotations() {
    }

    public static void getFillExtrusionVerticalScale$annotations() {
    }

    public static void getFillExtrusionVerticalScaleAsExpression$annotations() {
    }

    public static void getFillExtrusionVerticalScaleTransition$annotations() {
    }

    public FillExtrusionLayer(String layerId, String sourceId) {
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
    public FillExtrusionLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public FillExtrusionLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public FillExtrusionLayer filter(Expression filter) {
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
    public FillExtrusionLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public FillExtrusionLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public FillExtrusionLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public FillExtrusionLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final Double getFillExtrusionEdgeRadius() {
        return (Double) getPropertyValueWithType("fill-extrusion-edge-radius", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionEdgeRadius(double fillExtrusionEdgeRadius) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-edge-radius", Double.valueOf(fillExtrusionEdgeRadius)));
        return this;
    }

    public final Expression getFillExtrusionEdgeRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-edge-radius");
    }

    @Override
    public FillExtrusionLayer fillExtrusionEdgeRadius(Expression fillExtrusionEdgeRadius) {
        Intrinsics.checkNotNullParameter(fillExtrusionEdgeRadius, "fillExtrusionEdgeRadius");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-edge-radius", fillExtrusionEdgeRadius));
        return this;
    }

    public final Double getFillExtrusionAmbientOcclusionGroundAttenuation() {
        return (Double) getPropertyValueWithType("fill-extrusion-ambient-occlusion-ground-attenuation", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuation(double fillExtrusionAmbientOcclusionGroundAttenuation) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-ground-attenuation", Double.valueOf(fillExtrusionAmbientOcclusionGroundAttenuation)));
        return this;
    }

    public final Expression getFillExtrusionAmbientOcclusionGroundAttenuationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-ambient-occlusion-ground-attenuation");
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuation(Expression fillExtrusionAmbientOcclusionGroundAttenuation) {
        Intrinsics.checkNotNullParameter(fillExtrusionAmbientOcclusionGroundAttenuation, "fillExtrusionAmbientOcclusionGroundAttenuation");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-ground-attenuation", fillExtrusionAmbientOcclusionGroundAttenuation));
        return this;
    }

    public final StyleTransition getFillExtrusionAmbientOcclusionGroundAttenuationTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-ambient-occlusion-ground-attenuation-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-ground-attenuation-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionAmbientOcclusionGroundAttenuationTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionAmbientOcclusionGroundRadius() {
        return (Double) getPropertyValueWithType("fill-extrusion-ambient-occlusion-ground-radius", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadius(double fillExtrusionAmbientOcclusionGroundRadius) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-ground-radius", Double.valueOf(fillExtrusionAmbientOcclusionGroundRadius)));
        return this;
    }

    public final Expression getFillExtrusionAmbientOcclusionGroundRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-ambient-occlusion-ground-radius");
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadius(Expression fillExtrusionAmbientOcclusionGroundRadius) {
        Intrinsics.checkNotNullParameter(fillExtrusionAmbientOcclusionGroundRadius, "fillExtrusionAmbientOcclusionGroundRadius");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-ground-radius", fillExtrusionAmbientOcclusionGroundRadius));
        return this;
    }

    public final StyleTransition getFillExtrusionAmbientOcclusionGroundRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-ambient-occlusion-ground-radius-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-ground-radius-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionAmbientOcclusionGroundRadiusTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionAmbientOcclusionIntensity() {
        return (Double) getPropertyValueWithType("fill-extrusion-ambient-occlusion-intensity", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionIntensity(double fillExtrusionAmbientOcclusionIntensity) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-intensity", Double.valueOf(fillExtrusionAmbientOcclusionIntensity)));
        return this;
    }

    public final Expression getFillExtrusionAmbientOcclusionIntensityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-ambient-occlusion-intensity");
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionIntensity(Expression fillExtrusionAmbientOcclusionIntensity) {
        Intrinsics.checkNotNullParameter(fillExtrusionAmbientOcclusionIntensity, "fillExtrusionAmbientOcclusionIntensity");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-intensity", fillExtrusionAmbientOcclusionIntensity));
        return this;
    }

    public final StyleTransition getFillExtrusionAmbientOcclusionIntensityTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-ambient-occlusion-intensity-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionIntensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-intensity-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionAmbientOcclusionIntensityTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionAmbientOcclusionRadius() {
        return (Double) getPropertyValueWithType("fill-extrusion-ambient-occlusion-radius", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionRadius(double fillExtrusionAmbientOcclusionRadius) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-radius", Double.valueOf(fillExtrusionAmbientOcclusionRadius)));
        return this;
    }

    public final Expression getFillExtrusionAmbientOcclusionRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-ambient-occlusion-radius");
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionRadius(Expression fillExtrusionAmbientOcclusionRadius) {
        Intrinsics.checkNotNullParameter(fillExtrusionAmbientOcclusionRadius, "fillExtrusionAmbientOcclusionRadius");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-radius", fillExtrusionAmbientOcclusionRadius));
        return this;
    }

    public final StyleTransition getFillExtrusionAmbientOcclusionRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-ambient-occlusion-radius-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-radius-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionAmbientOcclusionRadiusTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionAmbientOcclusionWallRadius() {
        return (Double) getPropertyValueWithType("fill-extrusion-ambient-occlusion-wall-radius", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadius(double fillExtrusionAmbientOcclusionWallRadius) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-wall-radius", Double.valueOf(fillExtrusionAmbientOcclusionWallRadius)));
        return this;
    }

    public final Expression getFillExtrusionAmbientOcclusionWallRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-ambient-occlusion-wall-radius");
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadius(Expression fillExtrusionAmbientOcclusionWallRadius) {
        Intrinsics.checkNotNullParameter(fillExtrusionAmbientOcclusionWallRadius, "fillExtrusionAmbientOcclusionWallRadius");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-wall-radius", fillExtrusionAmbientOcclusionWallRadius));
        return this;
    }

    public final StyleTransition getFillExtrusionAmbientOcclusionWallRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-ambient-occlusion-wall-radius-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-ambient-occlusion-wall-radius-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionAmbientOcclusionWallRadiusTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionBase() {
        return (Double) getPropertyValueWithType("fill-extrusion-base", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionBase(double fillExtrusionBase) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-base", Double.valueOf(fillExtrusionBase)));
        return this;
    }

    public final Expression getFillExtrusionBaseAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-base");
    }

    @Override
    public FillExtrusionLayer fillExtrusionBase(Expression fillExtrusionBase) {
        Intrinsics.checkNotNullParameter(fillExtrusionBase, "fillExtrusionBase");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-base", fillExtrusionBase));
        return this;
    }

    public final StyleTransition getFillExtrusionBaseTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-base-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionBaseTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-base-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionBaseTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionBaseTransition(builder.build());
        return this;
    }

    public final FillExtrusionBaseAlignment getFillExtrusionBaseAlignment() {
        String str = (String) getPropertyValueWithType("fill-extrusion-base-alignment", String.class);
        if (str == null) {
            return null;
        }
        FillExtrusionBaseAlignment.Companion companion = FillExtrusionBaseAlignment.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public FillExtrusionLayer fillExtrusionBaseAlignment(FillExtrusionBaseAlignment fillExtrusionBaseAlignment) {
        Intrinsics.checkNotNullParameter(fillExtrusionBaseAlignment, "fillExtrusionBaseAlignment");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-base-alignment", fillExtrusionBaseAlignment));
        return this;
    }

    public final Expression getFillExtrusionBaseAlignmentAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("fill-extrusion-base-alignment", Expression.class);
        if (expression != null) {
            return expression;
        }
        FillExtrusionBaseAlignment fillExtrusionBaseAlignment = getFillExtrusionBaseAlignment();
        if (fillExtrusionBaseAlignment != null) {
            return Expression.INSTANCE.literal(fillExtrusionBaseAlignment.getValue());
        }
        return null;
    }

    @Override
    public FillExtrusionLayer fillExtrusionBaseAlignment(Expression fillExtrusionBaseAlignment) {
        Intrinsics.checkNotNullParameter(fillExtrusionBaseAlignment, "fillExtrusionBaseAlignment");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-base-alignment", fillExtrusionBaseAlignment));
        return this;
    }

    public final String getFillExtrusionColor() {
        Expression fillExtrusionColorAsExpression = getFillExtrusionColorAsExpression();
        if (fillExtrusionColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(fillExtrusionColorAsExpression);
        }
        return null;
    }

    @Override
    public FillExtrusionLayer fillExtrusionColor(String fillExtrusionColor) {
        Intrinsics.checkNotNullParameter(fillExtrusionColor, "fillExtrusionColor");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-color", fillExtrusionColor));
        return this;
    }

    public final Expression getFillExtrusionColorAsExpression() {
        return (Expression) getPropertyValueWithType("fill-extrusion-color", Expression.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionColor(Expression fillExtrusionColor) {
        Intrinsics.checkNotNullParameter(fillExtrusionColor, "fillExtrusionColor");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-color", fillExtrusionColor));
        return this;
    }

    public final Integer getFillExtrusionColorAsColorInt() {
        Expression fillExtrusionColorAsExpression = getFillExtrusionColorAsExpression();
        if (fillExtrusionColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(fillExtrusionColorAsExpression);
        }
        return null;
    }

    @Override
    public FillExtrusionLayer fillExtrusionColor(int fillExtrusionColor) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(fillExtrusionColor)));
        return this;
    }

    public final StyleTransition getFillExtrusionColorTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-color-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-color-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionColorTransition(builder.build());
        return this;
    }

    public final String getFillExtrusionColorUseTheme() {
        return (String) getPropertyValueWithType("fill-extrusion-color-use-theme", String.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionColorUseTheme(String fillExtrusionColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillExtrusionColorUseTheme, "fillExtrusionColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-color-use-theme", fillExtrusionColorUseTheme));
        return this;
    }

    public final Expression getFillExtrusionColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-color-use-theme");
    }

    @Override
    public FillExtrusionLayer fillExtrusionColorUseTheme(Expression fillExtrusionColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillExtrusionColorUseTheme, "fillExtrusionColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-color-use-theme", fillExtrusionColorUseTheme));
        return this;
    }

    public final Double getFillExtrusionCutoffFadeRange() {
        return (Double) getPropertyValueWithType("fill-extrusion-cutoff-fade-range", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionCutoffFadeRange(double fillExtrusionCutoffFadeRange) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-cutoff-fade-range", Double.valueOf(fillExtrusionCutoffFadeRange)));
        return this;
    }

    public final Expression getFillExtrusionCutoffFadeRangeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-cutoff-fade-range");
    }

    @Override
    public FillExtrusionLayer fillExtrusionCutoffFadeRange(Expression fillExtrusionCutoffFadeRange) {
        Intrinsics.checkNotNullParameter(fillExtrusionCutoffFadeRange, "fillExtrusionCutoffFadeRange");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-cutoff-fade-range", fillExtrusionCutoffFadeRange));
        return this;
    }

    public final Double getFillExtrusionEmissiveStrength() {
        return (Double) getPropertyValueWithType("fill-extrusion-emissive-strength", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionEmissiveStrength(double fillExtrusionEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-emissive-strength", Double.valueOf(fillExtrusionEmissiveStrength)));
        return this;
    }

    public final Expression getFillExtrusionEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-emissive-strength");
    }

    @Override
    public FillExtrusionLayer fillExtrusionEmissiveStrength(Expression fillExtrusionEmissiveStrength) {
        Intrinsics.checkNotNullParameter(fillExtrusionEmissiveStrength, "fillExtrusionEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-emissive-strength", fillExtrusionEmissiveStrength));
        return this;
    }

    public final StyleTransition getFillExtrusionEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-emissive-strength-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final String getFillExtrusionFloodLightColor() {
        Expression fillExtrusionFloodLightColorAsExpression = getFillExtrusionFloodLightColorAsExpression();
        if (fillExtrusionFloodLightColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(fillExtrusionFloodLightColorAsExpression);
        }
        return null;
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightColor(String fillExtrusionFloodLightColor) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightColor, "fillExtrusionFloodLightColor");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-color", fillExtrusionFloodLightColor));
        return this;
    }

    public final Expression getFillExtrusionFloodLightColorAsExpression() {
        return (Expression) getPropertyValueWithType("fill-extrusion-flood-light-color", Expression.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightColor(Expression fillExtrusionFloodLightColor) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightColor, "fillExtrusionFloodLightColor");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-color", fillExtrusionFloodLightColor));
        return this;
    }

    public final Integer getFillExtrusionFloodLightColorAsColorInt() {
        Expression fillExtrusionFloodLightColorAsExpression = getFillExtrusionFloodLightColorAsExpression();
        if (fillExtrusionFloodLightColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(fillExtrusionFloodLightColorAsExpression);
        }
        return null;
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightColor(int fillExtrusionFloodLightColor) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(fillExtrusionFloodLightColor)));
        return this;
    }

    public final StyleTransition getFillExtrusionFloodLightColorTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-flood-light-color-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-color-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionFloodLightColorTransition(builder.build());
        return this;
    }

    public final String getFillExtrusionFloodLightColorUseTheme() {
        return (String) getPropertyValueWithType("fill-extrusion-flood-light-color-use-theme", String.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightColorUseTheme(String fillExtrusionFloodLightColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightColorUseTheme, "fillExtrusionFloodLightColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-color-use-theme", fillExtrusionFloodLightColorUseTheme));
        return this;
    }

    public final Expression getFillExtrusionFloodLightColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-flood-light-color-use-theme");
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightColorUseTheme(Expression fillExtrusionFloodLightColorUseTheme) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightColorUseTheme, "fillExtrusionFloodLightColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-color-use-theme", fillExtrusionFloodLightColorUseTheme));
        return this;
    }

    public final Double getFillExtrusionFloodLightGroundAttenuation() {
        return (Double) getPropertyValueWithType("fill-extrusion-flood-light-ground-attenuation", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundAttenuation(double fillExtrusionFloodLightGroundAttenuation) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-ground-attenuation", Double.valueOf(fillExtrusionFloodLightGroundAttenuation)));
        return this;
    }

    public final Expression getFillExtrusionFloodLightGroundAttenuationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-flood-light-ground-attenuation");
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundAttenuation(Expression fillExtrusionFloodLightGroundAttenuation) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightGroundAttenuation, "fillExtrusionFloodLightGroundAttenuation");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-ground-attenuation", fillExtrusionFloodLightGroundAttenuation));
        return this;
    }

    public final StyleTransition getFillExtrusionFloodLightGroundAttenuationTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-flood-light-ground-attenuation-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundAttenuationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-ground-attenuation-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundAttenuationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionFloodLightGroundAttenuationTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionFloodLightGroundRadius() {
        return (Double) getPropertyValueWithType("fill-extrusion-flood-light-ground-radius", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundRadius(double fillExtrusionFloodLightGroundRadius) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-ground-radius", Double.valueOf(fillExtrusionFloodLightGroundRadius)));
        return this;
    }

    public final Expression getFillExtrusionFloodLightGroundRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-flood-light-ground-radius");
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundRadius(Expression fillExtrusionFloodLightGroundRadius) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightGroundRadius, "fillExtrusionFloodLightGroundRadius");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-ground-radius", fillExtrusionFloodLightGroundRadius));
        return this;
    }

    public final StyleTransition getFillExtrusionFloodLightGroundRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-flood-light-ground-radius-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-ground-radius-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightGroundRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionFloodLightGroundRadiusTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionFloodLightIntensity() {
        return (Double) getPropertyValueWithType("fill-extrusion-flood-light-intensity", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightIntensity(double fillExtrusionFloodLightIntensity) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-intensity", Double.valueOf(fillExtrusionFloodLightIntensity)));
        return this;
    }

    public final Expression getFillExtrusionFloodLightIntensityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-flood-light-intensity");
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightIntensity(Expression fillExtrusionFloodLightIntensity) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightIntensity, "fillExtrusionFloodLightIntensity");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-intensity", fillExtrusionFloodLightIntensity));
        return this;
    }

    public final StyleTransition getFillExtrusionFloodLightIntensityTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-flood-light-intensity-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightIntensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-intensity-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionFloodLightIntensityTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionFloodLightWallRadius() {
        return (Double) getPropertyValueWithType("fill-extrusion-flood-light-wall-radius", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightWallRadius(double fillExtrusionFloodLightWallRadius) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-wall-radius", Double.valueOf(fillExtrusionFloodLightWallRadius)));
        return this;
    }

    public final Expression getFillExtrusionFloodLightWallRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-flood-light-wall-radius");
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightWallRadius(Expression fillExtrusionFloodLightWallRadius) {
        Intrinsics.checkNotNullParameter(fillExtrusionFloodLightWallRadius, "fillExtrusionFloodLightWallRadius");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-wall-radius", fillExtrusionFloodLightWallRadius));
        return this;
    }

    public final StyleTransition getFillExtrusionFloodLightWallRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-flood-light-wall-radius-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightWallRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-flood-light-wall-radius-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionFloodLightWallRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionFloodLightWallRadiusTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionHeight() {
        return (Double) getPropertyValueWithType("fill-extrusion-height", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionHeight(double fillExtrusionHeight) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-height", Double.valueOf(fillExtrusionHeight)));
        return this;
    }

    public final Expression getFillExtrusionHeightAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-height");
    }

    @Override
    public FillExtrusionLayer fillExtrusionHeight(Expression fillExtrusionHeight) {
        Intrinsics.checkNotNullParameter(fillExtrusionHeight, "fillExtrusionHeight");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-height", fillExtrusionHeight));
        return this;
    }

    public final StyleTransition getFillExtrusionHeightTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-height-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionHeightTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-height-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionHeightTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionHeightTransition(builder.build());
        return this;
    }

    public final FillExtrusionHeightAlignment getFillExtrusionHeightAlignment() {
        String str = (String) getPropertyValueWithType("fill-extrusion-height-alignment", String.class);
        if (str == null) {
            return null;
        }
        FillExtrusionHeightAlignment.Companion companion = FillExtrusionHeightAlignment.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public FillExtrusionLayer fillExtrusionHeightAlignment(FillExtrusionHeightAlignment fillExtrusionHeightAlignment) {
        Intrinsics.checkNotNullParameter(fillExtrusionHeightAlignment, "fillExtrusionHeightAlignment");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-height-alignment", fillExtrusionHeightAlignment));
        return this;
    }

    public final Expression getFillExtrusionHeightAlignmentAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("fill-extrusion-height-alignment", Expression.class);
        if (expression != null) {
            return expression;
        }
        FillExtrusionHeightAlignment fillExtrusionHeightAlignment = getFillExtrusionHeightAlignment();
        if (fillExtrusionHeightAlignment != null) {
            return Expression.INSTANCE.literal(fillExtrusionHeightAlignment.getValue());
        }
        return null;
    }

    @Override
    public FillExtrusionLayer fillExtrusionHeightAlignment(Expression fillExtrusionHeightAlignment) {
        Intrinsics.checkNotNullParameter(fillExtrusionHeightAlignment, "fillExtrusionHeightAlignment");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-height-alignment", fillExtrusionHeightAlignment));
        return this;
    }

    public final Double getFillExtrusionLineWidth() {
        return (Double) getPropertyValueWithType("fill-extrusion-line-width", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionLineWidth(double fillExtrusionLineWidth) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-line-width", Double.valueOf(fillExtrusionLineWidth)));
        return this;
    }

    public final Expression getFillExtrusionLineWidthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-line-width");
    }

    @Override
    public FillExtrusionLayer fillExtrusionLineWidth(Expression fillExtrusionLineWidth) {
        Intrinsics.checkNotNullParameter(fillExtrusionLineWidth, "fillExtrusionLineWidth");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-line-width", fillExtrusionLineWidth));
        return this;
    }

    public final StyleTransition getFillExtrusionLineWidthTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-line-width-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionLineWidthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-line-width-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionLineWidthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionLineWidthTransition(builder.build());
        return this;
    }

    public final Double getFillExtrusionOpacity() {
        return (Double) getPropertyValueWithType("fill-extrusion-opacity", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionOpacity(double fillExtrusionOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-opacity", Double.valueOf(fillExtrusionOpacity)));
        return this;
    }

    public final Expression getFillExtrusionOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-opacity");
    }

    @Override
    public FillExtrusionLayer fillExtrusionOpacity(Expression fillExtrusionOpacity) {
        Intrinsics.checkNotNullParameter(fillExtrusionOpacity, "fillExtrusionOpacity");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-opacity", fillExtrusionOpacity));
        return this;
    }

    public final StyleTransition getFillExtrusionOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-opacity-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-opacity-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionOpacityTransition(builder.build());
        return this;
    }

    public final String getFillExtrusionPattern() {
        return (String) getPropertyValueWithType("fill-extrusion-pattern", String.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionPattern(String fillExtrusionPattern) {
        Intrinsics.checkNotNullParameter(fillExtrusionPattern, "fillExtrusionPattern");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-pattern", fillExtrusionPattern));
        return this;
    }

    public final Expression getFillExtrusionPatternAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-pattern");
    }

    @Override
    public FillExtrusionLayer fillExtrusionPattern(Expression fillExtrusionPattern) {
        Intrinsics.checkNotNullParameter(fillExtrusionPattern, "fillExtrusionPattern");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-pattern", fillExtrusionPattern));
        return this;
    }

    public final Double getFillExtrusionPatternCrossFade() {
        return (Double) getPropertyValueWithType("fill-extrusion-pattern-cross-fade", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionPatternCrossFade(double fillExtrusionPatternCrossFade) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-pattern-cross-fade", Double.valueOf(fillExtrusionPatternCrossFade)));
        return this;
    }

    public final Expression getFillExtrusionPatternCrossFadeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-pattern-cross-fade");
    }

    @Override
    public FillExtrusionLayer fillExtrusionPatternCrossFade(Expression fillExtrusionPatternCrossFade) {
        Intrinsics.checkNotNullParameter(fillExtrusionPatternCrossFade, "fillExtrusionPatternCrossFade");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-pattern-cross-fade", fillExtrusionPatternCrossFade));
        return this;
    }

    public final Boolean getFillExtrusionRoundedRoof() {
        return (Boolean) getPropertyValueWithType("fill-extrusion-rounded-roof", Boolean.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionRoundedRoof(boolean fillExtrusionRoundedRoof) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-rounded-roof", Boolean.valueOf(fillExtrusionRoundedRoof)));
        return this;
    }

    public final Expression getFillExtrusionRoundedRoofAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-rounded-roof");
    }

    @Override
    public FillExtrusionLayer fillExtrusionRoundedRoof(Expression fillExtrusionRoundedRoof) {
        Intrinsics.checkNotNullParameter(fillExtrusionRoundedRoof, "fillExtrusionRoundedRoof");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-rounded-roof", fillExtrusionRoundedRoof));
        return this;
    }

    public final List<Double> getFillExtrusionTranslate() {
        return (List) getPropertyValueWithType("fill-extrusion-translate", List.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionTranslate(List<Double> fillExtrusionTranslate) {
        Intrinsics.checkNotNullParameter(fillExtrusionTranslate, "fillExtrusionTranslate");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-translate", fillExtrusionTranslate));
        return this;
    }

    public final Expression getFillExtrusionTranslateAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-translate");
    }

    @Override
    public FillExtrusionLayer fillExtrusionTranslate(Expression fillExtrusionTranslate) {
        Intrinsics.checkNotNullParameter(fillExtrusionTranslate, "fillExtrusionTranslate");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-translate", fillExtrusionTranslate));
        return this;
    }

    public final StyleTransition getFillExtrusionTranslateTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-translate-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionTranslateTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-translate-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionTranslateTransition(builder.build());
        return this;
    }

    public final FillExtrusionTranslateAnchor getFillExtrusionTranslateAnchor() {
        String str = (String) getPropertyValueWithType("fill-extrusion-translate-anchor", String.class);
        if (str == null) {
            return null;
        }
        FillExtrusionTranslateAnchor.Companion companion = FillExtrusionTranslateAnchor.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public FillExtrusionLayer fillExtrusionTranslateAnchor(FillExtrusionTranslateAnchor fillExtrusionTranslateAnchor) {
        Intrinsics.checkNotNullParameter(fillExtrusionTranslateAnchor, "fillExtrusionTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-translate-anchor", fillExtrusionTranslateAnchor));
        return this;
    }

    public final Expression getFillExtrusionTranslateAnchorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("fill-extrusion-translate-anchor", Expression.class);
        if (expression != null) {
            return expression;
        }
        FillExtrusionTranslateAnchor fillExtrusionTranslateAnchor = getFillExtrusionTranslateAnchor();
        if (fillExtrusionTranslateAnchor != null) {
            return Expression.INSTANCE.literal(fillExtrusionTranslateAnchor.getValue());
        }
        return null;
    }

    @Override
    public FillExtrusionLayer fillExtrusionTranslateAnchor(Expression fillExtrusionTranslateAnchor) {
        Intrinsics.checkNotNullParameter(fillExtrusionTranslateAnchor, "fillExtrusionTranslateAnchor");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-translate-anchor", fillExtrusionTranslateAnchor));
        return this;
    }

    public final Boolean getFillExtrusionVerticalGradient() {
        return (Boolean) getPropertyValueWithType("fill-extrusion-vertical-gradient", Boolean.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionVerticalGradient(boolean fillExtrusionVerticalGradient) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-vertical-gradient", Boolean.valueOf(fillExtrusionVerticalGradient)));
        return this;
    }

    public final Expression getFillExtrusionVerticalGradientAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-vertical-gradient");
    }

    @Override
    public FillExtrusionLayer fillExtrusionVerticalGradient(Expression fillExtrusionVerticalGradient) {
        Intrinsics.checkNotNullParameter(fillExtrusionVerticalGradient, "fillExtrusionVerticalGradient");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-vertical-gradient", fillExtrusionVerticalGradient));
        return this;
    }

    public final Double getFillExtrusionVerticalScale() {
        return (Double) getPropertyValueWithType("fill-extrusion-vertical-scale", Double.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionVerticalScale(double fillExtrusionVerticalScale) {
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-vertical-scale", Double.valueOf(fillExtrusionVerticalScale)));
        return this;
    }

    public final Expression getFillExtrusionVerticalScaleAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("fill-extrusion-vertical-scale");
    }

    @Override
    public FillExtrusionLayer fillExtrusionVerticalScale(Expression fillExtrusionVerticalScale) {
        Intrinsics.checkNotNullParameter(fillExtrusionVerticalScale, "fillExtrusionVerticalScale");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-vertical-scale", fillExtrusionVerticalScale));
        return this;
    }

    public final StyleTransition getFillExtrusionVerticalScaleTransition() {
        return (StyleTransition) getPropertyValueWithType("fill-extrusion-vertical-scale-transition", StyleTransition.class);
    }

    @Override
    public FillExtrusionLayer fillExtrusionVerticalScaleTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("fill-extrusion-vertical-scale-transition", options));
        return this;
    }

    @Override
    public FillExtrusionLayer fillExtrusionVerticalScaleTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        fillExtrusionVerticalScaleTransition(builder.build());
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "fill-extrusion";
    }

    @Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\bU\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0007R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\fR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\u0011R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0007R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\fR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b \u0010\u0011R\u0013\u0010!\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0007R\u0013\u0010#\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b$\u0010\fR\u0013\u0010%\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b&\u0010\u0011R\u001c\u0010'\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0002\u001a\u0004\b)\u0010\u0007R\u001c\u0010*\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0002\u001a\u0004\b,\u0010\fR\u001c\u0010-\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u0002\u001a\u0004\b/\u0010\u0011R\u0013\u00100\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b1\u0010\u0007R\u001c\u00102\u001a\u0004\u0018\u0001038FX\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010\u0002\u001a\u0004\b5\u00106R\u001c\u00107\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010\u0002\u001a\u0004\b9\u0010\fR\u0013\u0010:\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b;\u0010\fR\u0013\u0010<\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b=\u0010\u0011R\u0013\u0010>\u001a\u0004\u0018\u00010?8F¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0013\u0010B\u001a\u0004\u0018\u00010C8G¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0013\u0010F\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\bG\u0010\fR\u0013\u0010H\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\bI\u0010\u0011R\u001c\u0010J\u001a\u0004\u0018\u00010?8FX\u0087\u0004¢\u0006\f\u0012\u0004\bK\u0010\u0002\u001a\u0004\bL\u0010AR\u001c\u0010M\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\bN\u0010\u0002\u001a\u0004\bO\u0010\fR\u0013\u0010P\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bQ\u0010\u0007R\u0013\u0010R\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\bS\u0010\fR\u001c\u0010T\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bU\u0010\u0002\u001a\u0004\bV\u0010\u0007R\u001c\u0010W\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\bX\u0010\u0002\u001a\u0004\bY\u0010\fR\u0013\u0010Z\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b[\u0010\u0007R\u0013\u0010\\\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b]\u0010\fR\u0013\u0010^\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b_\u0010\u0011R\u001c\u0010`\u001a\u0004\u0018\u00010?8FX\u0087\u0004¢\u0006\f\u0012\u0004\ba\u0010\u0002\u001a\u0004\bb\u0010AR\u001c\u0010c\u001a\u0004\u0018\u00010C8GX\u0087\u0004¢\u0006\f\u0012\u0004\bd\u0010\u0002\u001a\u0004\be\u0010ER\u001c\u0010f\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\bg\u0010\u0002\u001a\u0004\bh\u0010\fR\u001c\u0010i\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bj\u0010\u0002\u001a\u0004\bk\u0010\u0011R\u001c\u0010l\u001a\u0004\u0018\u00010?8FX\u0087\u0004¢\u0006\f\u0012\u0004\bm\u0010\u0002\u001a\u0004\bn\u0010AR\u001c\u0010o\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\bp\u0010\u0002\u001a\u0004\bq\u0010\fR\u001c\u0010r\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bs\u0010\u0002\u001a\u0004\bt\u0010\u0007R\u001c\u0010u\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\bv\u0010\u0002\u001a\u0004\bw\u0010\fR\u001c\u0010x\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\by\u0010\u0002\u001a\u0004\bz\u0010\u0011R\u001c\u0010{\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b|\u0010\u0002\u001a\u0004\b}\u0010\u0007R\u001d\u0010~\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\r\u0012\u0004\b\u007f\u0010\u0002\u001a\u0005\b\u0080\u0001\u0010\fR\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0082\u0001\u0010\u0002\u001a\u0005\b\u0083\u0001\u0010\u0011R\u001f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0085\u0001\u0010\u0002\u001a\u0005\b\u0086\u0001\u0010\u0007R\u001f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0088\u0001\u0010\u0002\u001a\u0005\b\u0089\u0001\u0010\fR\u001f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008b\u0001\u0010\u0002\u001a\u0005\b\u008c\u0001\u0010\u0011R\u001f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008e\u0001\u0010\u0002\u001a\u0005\b\u008f\u0001\u0010\u0007R\u001f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0091\u0001\u0010\u0002\u001a\u0005\b\u0092\u0001\u0010\fR\u001f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0094\u0001\u0010\u0002\u001a\u0005\b\u0095\u0001\u0010\u0011R\u0015\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u0097\u0001\u0010\u0007R!\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b\u009a\u0001\u0010\u0002\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009e\u0001\u0010\u0002\u001a\u0005\b\u009f\u0001\u0010\fR\u0015\u0010 \u0001\u001a\u0004\u0018\u00010\t8F¢\u0006\u0007\u001a\u0005\b¡\u0001\u0010\fR\u0015\u0010¢\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b£\u0001\u0010\u0011R\u001f\u0010¤\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¥\u0001\u0010\u0002\u001a\u0005\b¦\u0001\u0010\u0007R\u001f\u0010§\u0001\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¨\u0001\u0010\u0002\u001a\u0005\b©\u0001\u0010\fR\u001f\u0010ª\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b«\u0001\u0010\u0002\u001a\u0005\b¬\u0001\u0010\u0011R\u0015\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b®\u0001\u0010\u0007R\u0015\u0010¯\u0001\u001a\u0004\u0018\u00010\t8F¢\u0006\u0007\u001a\u0005\b°\u0001\u0010\fR\u0015\u0010±\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\b²\u0001\u0010\u0011R\u0015\u0010³\u0001\u001a\u0004\u0018\u00010?8F¢\u0006\u0007\u001a\u0005\b´\u0001\u0010AR\u0015\u0010µ\u0001\u001a\u0004\u0018\u00010\t8F¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010\fR\u0015\u0010·\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b¸\u0001\u0010\u0007R\u0015\u0010¹\u0001\u001a\u0004\u0018\u00010\t8F¢\u0006\u0007\u001a\u0005\bº\u0001\u0010\fR!\u0010»\u0001\u001a\u0005\u0018\u00010¼\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b½\u0001\u0010\u0002\u001a\u0006\b¾\u0001\u0010¿\u0001R\u001f\u0010À\u0001\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÁ\u0001\u0010\u0002\u001a\u0005\bÂ\u0001\u0010\fR\u001d\u0010Ã\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0004\u0018\u00010Ä\u00018F¢\u0006\b\u001a\u0006\bÅ\u0001\u0010Æ\u0001R\u0017\u0010Ç\u0001\u001a\u0005\u0018\u00010È\u00018F¢\u0006\b\u001a\u0006\bÉ\u0001\u0010Ê\u0001R\u0015\u0010Ë\u0001\u001a\u0004\u0018\u00010\t8F¢\u0006\u0007\u001a\u0005\bÌ\u0001\u0010\fR\u0015\u0010Í\u0001\u001a\u0004\u0018\u00010\t8F¢\u0006\u0007\u001a\u0005\bÎ\u0001\u0010\fR\u0015\u0010Ï\u0001\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0007\u001a\u0005\bÐ\u0001\u0010\u0011R\u0017\u0010Ñ\u0001\u001a\u0005\u0018\u00010¼\u00018F¢\u0006\b\u001a\u0006\bÒ\u0001\u0010¿\u0001R\u0015\u0010Ó\u0001\u001a\u0004\u0018\u00010\t8F¢\u0006\u0007\u001a\u0005\bÔ\u0001\u0010\fR\u001f\u0010Õ\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÖ\u0001\u0010\u0002\u001a\u0005\b×\u0001\u0010\u0007R\u001f\u0010Ø\u0001\u001a\u0004\u0018\u00010\t8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÙ\u0001\u0010\u0002\u001a\u0005\bÚ\u0001\u0010\fR\u001f\u0010Û\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\bÜ\u0001\u0010\u0002\u001a\u0005\bÝ\u0001\u0010\u0011R\u0015\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\bß\u0001\u0010\u0007R\u0015\u0010à\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\bá\u0001\u0010\u0007R\u0017\u0010â\u0001\u001a\u0005\u0018\u00010ã\u00018F¢\u0006\b\u001a\u0006\bä\u0001\u0010å\u0001¨\u0006æ\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer$Companion;", "", "()V", "defaultFillExtrusionAmbientOcclusionGroundAttenuation", "", "getDefaultFillExtrusionAmbientOcclusionGroundAttenuation$annotations", "getDefaultFillExtrusionAmbientOcclusionGroundAttenuation", "()Ljava/lang/Double;", "defaultFillExtrusionAmbientOcclusionGroundAttenuationAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultFillExtrusionAmbientOcclusionGroundAttenuationAsExpression$annotations", "getDefaultFillExtrusionAmbientOcclusionGroundAttenuationAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultFillExtrusionAmbientOcclusionGroundAttenuationTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultFillExtrusionAmbientOcclusionGroundAttenuationTransition$annotations", "getDefaultFillExtrusionAmbientOcclusionGroundAttenuationTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultFillExtrusionAmbientOcclusionGroundRadius", "getDefaultFillExtrusionAmbientOcclusionGroundRadius$annotations", "getDefaultFillExtrusionAmbientOcclusionGroundRadius", "defaultFillExtrusionAmbientOcclusionGroundRadiusAsExpression", "getDefaultFillExtrusionAmbientOcclusionGroundRadiusAsExpression$annotations", "getDefaultFillExtrusionAmbientOcclusionGroundRadiusAsExpression", "defaultFillExtrusionAmbientOcclusionGroundRadiusTransition", "getDefaultFillExtrusionAmbientOcclusionGroundRadiusTransition$annotations", "getDefaultFillExtrusionAmbientOcclusionGroundRadiusTransition", "defaultFillExtrusionAmbientOcclusionIntensity", "getDefaultFillExtrusionAmbientOcclusionIntensity", "defaultFillExtrusionAmbientOcclusionIntensityAsExpression", "getDefaultFillExtrusionAmbientOcclusionIntensityAsExpression", "defaultFillExtrusionAmbientOcclusionIntensityTransition", "getDefaultFillExtrusionAmbientOcclusionIntensityTransition", "defaultFillExtrusionAmbientOcclusionRadius", "getDefaultFillExtrusionAmbientOcclusionRadius", "defaultFillExtrusionAmbientOcclusionRadiusAsExpression", "getDefaultFillExtrusionAmbientOcclusionRadiusAsExpression", "defaultFillExtrusionAmbientOcclusionRadiusTransition", "getDefaultFillExtrusionAmbientOcclusionRadiusTransition", "defaultFillExtrusionAmbientOcclusionWallRadius", "getDefaultFillExtrusionAmbientOcclusionWallRadius$annotations", "getDefaultFillExtrusionAmbientOcclusionWallRadius", "defaultFillExtrusionAmbientOcclusionWallRadiusAsExpression", "getDefaultFillExtrusionAmbientOcclusionWallRadiusAsExpression$annotations", "getDefaultFillExtrusionAmbientOcclusionWallRadiusAsExpression", "defaultFillExtrusionAmbientOcclusionWallRadiusTransition", "getDefaultFillExtrusionAmbientOcclusionWallRadiusTransition$annotations", "getDefaultFillExtrusionAmbientOcclusionWallRadiusTransition", "defaultFillExtrusionBase", "getDefaultFillExtrusionBase", "defaultFillExtrusionBaseAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionBaseAlignment;", "getDefaultFillExtrusionBaseAlignment$annotations", "getDefaultFillExtrusionBaseAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionBaseAlignment;", "defaultFillExtrusionBaseAlignmentAsExpression", "getDefaultFillExtrusionBaseAlignmentAsExpression$annotations", "getDefaultFillExtrusionBaseAlignmentAsExpression", "defaultFillExtrusionBaseAsExpression", "getDefaultFillExtrusionBaseAsExpression", "defaultFillExtrusionBaseTransition", "getDefaultFillExtrusionBaseTransition", "defaultFillExtrusionColor", "", "getDefaultFillExtrusionColor", "()Ljava/lang/String;", "defaultFillExtrusionColorAsColorInt", "", "getDefaultFillExtrusionColorAsColorInt", "()Ljava/lang/Integer;", "defaultFillExtrusionColorAsExpression", "getDefaultFillExtrusionColorAsExpression", "defaultFillExtrusionColorTransition", "getDefaultFillExtrusionColorTransition", "defaultFillExtrusionColorUseTheme", "getDefaultFillExtrusionColorUseTheme$annotations", "getDefaultFillExtrusionColorUseTheme", "defaultFillExtrusionColorUseThemeAsExpression", "getDefaultFillExtrusionColorUseThemeAsExpression$annotations", "getDefaultFillExtrusionColorUseThemeAsExpression", "defaultFillExtrusionCutoffFadeRange", "getDefaultFillExtrusionCutoffFadeRange", "defaultFillExtrusionCutoffFadeRangeAsExpression", "getDefaultFillExtrusionCutoffFadeRangeAsExpression", "defaultFillExtrusionEdgeRadius", "getDefaultFillExtrusionEdgeRadius$annotations", "getDefaultFillExtrusionEdgeRadius", "defaultFillExtrusionEdgeRadiusAsExpression", "getDefaultFillExtrusionEdgeRadiusAsExpression$annotations", "getDefaultFillExtrusionEdgeRadiusAsExpression", "defaultFillExtrusionEmissiveStrength", "getDefaultFillExtrusionEmissiveStrength", "defaultFillExtrusionEmissiveStrengthAsExpression", "getDefaultFillExtrusionEmissiveStrengthAsExpression", "defaultFillExtrusionEmissiveStrengthTransition", "getDefaultFillExtrusionEmissiveStrengthTransition", "defaultFillExtrusionFloodLightColor", "getDefaultFillExtrusionFloodLightColor$annotations", "getDefaultFillExtrusionFloodLightColor", "defaultFillExtrusionFloodLightColorAsColorInt", "getDefaultFillExtrusionFloodLightColorAsColorInt$annotations", "getDefaultFillExtrusionFloodLightColorAsColorInt", "defaultFillExtrusionFloodLightColorAsExpression", "getDefaultFillExtrusionFloodLightColorAsExpression$annotations", "getDefaultFillExtrusionFloodLightColorAsExpression", "defaultFillExtrusionFloodLightColorTransition", "getDefaultFillExtrusionFloodLightColorTransition$annotations", "getDefaultFillExtrusionFloodLightColorTransition", "defaultFillExtrusionFloodLightColorUseTheme", "getDefaultFillExtrusionFloodLightColorUseTheme$annotations", "getDefaultFillExtrusionFloodLightColorUseTheme", "defaultFillExtrusionFloodLightColorUseThemeAsExpression", "getDefaultFillExtrusionFloodLightColorUseThemeAsExpression$annotations", "getDefaultFillExtrusionFloodLightColorUseThemeAsExpression", "defaultFillExtrusionFloodLightGroundAttenuation", "getDefaultFillExtrusionFloodLightGroundAttenuation$annotations", "getDefaultFillExtrusionFloodLightGroundAttenuation", "defaultFillExtrusionFloodLightGroundAttenuationAsExpression", "getDefaultFillExtrusionFloodLightGroundAttenuationAsExpression$annotations", "getDefaultFillExtrusionFloodLightGroundAttenuationAsExpression", "defaultFillExtrusionFloodLightGroundAttenuationTransition", "getDefaultFillExtrusionFloodLightGroundAttenuationTransition$annotations", "getDefaultFillExtrusionFloodLightGroundAttenuationTransition", "defaultFillExtrusionFloodLightGroundRadius", "getDefaultFillExtrusionFloodLightGroundRadius$annotations", "getDefaultFillExtrusionFloodLightGroundRadius", "defaultFillExtrusionFloodLightGroundRadiusAsExpression", "getDefaultFillExtrusionFloodLightGroundRadiusAsExpression$annotations", "getDefaultFillExtrusionFloodLightGroundRadiusAsExpression", "defaultFillExtrusionFloodLightGroundRadiusTransition", "getDefaultFillExtrusionFloodLightGroundRadiusTransition$annotations", "getDefaultFillExtrusionFloodLightGroundRadiusTransition", "defaultFillExtrusionFloodLightIntensity", "getDefaultFillExtrusionFloodLightIntensity$annotations", "getDefaultFillExtrusionFloodLightIntensity", "defaultFillExtrusionFloodLightIntensityAsExpression", "getDefaultFillExtrusionFloodLightIntensityAsExpression$annotations", "getDefaultFillExtrusionFloodLightIntensityAsExpression", "defaultFillExtrusionFloodLightIntensityTransition", "getDefaultFillExtrusionFloodLightIntensityTransition$annotations", "getDefaultFillExtrusionFloodLightIntensityTransition", "defaultFillExtrusionFloodLightWallRadius", "getDefaultFillExtrusionFloodLightWallRadius$annotations", "getDefaultFillExtrusionFloodLightWallRadius", "defaultFillExtrusionFloodLightWallRadiusAsExpression", "getDefaultFillExtrusionFloodLightWallRadiusAsExpression$annotations", "getDefaultFillExtrusionFloodLightWallRadiusAsExpression", "defaultFillExtrusionFloodLightWallRadiusTransition", "getDefaultFillExtrusionFloodLightWallRadiusTransition$annotations", "getDefaultFillExtrusionFloodLightWallRadiusTransition", "defaultFillExtrusionHeight", "getDefaultFillExtrusionHeight", "defaultFillExtrusionHeightAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionHeightAlignment;", "getDefaultFillExtrusionHeightAlignment$annotations", "getDefaultFillExtrusionHeightAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionHeightAlignment;", "defaultFillExtrusionHeightAlignmentAsExpression", "getDefaultFillExtrusionHeightAlignmentAsExpression$annotations", "getDefaultFillExtrusionHeightAlignmentAsExpression", "defaultFillExtrusionHeightAsExpression", "getDefaultFillExtrusionHeightAsExpression", "defaultFillExtrusionHeightTransition", "getDefaultFillExtrusionHeightTransition", "defaultFillExtrusionLineWidth", "getDefaultFillExtrusionLineWidth$annotations", "getDefaultFillExtrusionLineWidth", "defaultFillExtrusionLineWidthAsExpression", "getDefaultFillExtrusionLineWidthAsExpression$annotations", "getDefaultFillExtrusionLineWidthAsExpression", "defaultFillExtrusionLineWidthTransition", "getDefaultFillExtrusionLineWidthTransition$annotations", "getDefaultFillExtrusionLineWidthTransition", "defaultFillExtrusionOpacity", "getDefaultFillExtrusionOpacity", "defaultFillExtrusionOpacityAsExpression", "getDefaultFillExtrusionOpacityAsExpression", "defaultFillExtrusionOpacityTransition", "getDefaultFillExtrusionOpacityTransition", "defaultFillExtrusionPattern", "getDefaultFillExtrusionPattern", "defaultFillExtrusionPatternAsExpression", "getDefaultFillExtrusionPatternAsExpression", "defaultFillExtrusionPatternCrossFade", "getDefaultFillExtrusionPatternCrossFade", "defaultFillExtrusionPatternCrossFadeAsExpression", "getDefaultFillExtrusionPatternCrossFadeAsExpression", "defaultFillExtrusionRoundedRoof", "", "getDefaultFillExtrusionRoundedRoof$annotations", "getDefaultFillExtrusionRoundedRoof", "()Ljava/lang/Boolean;", "defaultFillExtrusionRoundedRoofAsExpression", "getDefaultFillExtrusionRoundedRoofAsExpression$annotations", "getDefaultFillExtrusionRoundedRoofAsExpression", "defaultFillExtrusionTranslate", "", "getDefaultFillExtrusionTranslate", "()Ljava/util/List;", "defaultFillExtrusionTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionTranslateAnchor;", "getDefaultFillExtrusionTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionTranslateAnchor;", "defaultFillExtrusionTranslateAnchorAsExpression", "getDefaultFillExtrusionTranslateAnchorAsExpression", "defaultFillExtrusionTranslateAsExpression", "getDefaultFillExtrusionTranslateAsExpression", "defaultFillExtrusionTranslateTransition", "getDefaultFillExtrusionTranslateTransition", "defaultFillExtrusionVerticalGradient", "getDefaultFillExtrusionVerticalGradient", "defaultFillExtrusionVerticalGradientAsExpression", "getDefaultFillExtrusionVerticalGradientAsExpression", "defaultFillExtrusionVerticalScale", "getDefaultFillExtrusionVerticalScale$annotations", "getDefaultFillExtrusionVerticalScale", "defaultFillExtrusionVerticalScaleAsExpression", "getDefaultFillExtrusionVerticalScaleAsExpression$annotations", "getDefaultFillExtrusionVerticalScaleAsExpression", "defaultFillExtrusionVerticalScaleTransition", "getDefaultFillExtrusionVerticalScaleTransition$annotations", "getDefaultFillExtrusionVerticalScaleTransition", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultFillExtrusionAmbientOcclusionGroundAttenuation$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionGroundAttenuationAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionGroundAttenuationTransition$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionGroundRadius$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionGroundRadiusAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionGroundRadiusTransition$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionWallRadius$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionWallRadiusAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionAmbientOcclusionWallRadiusTransition$annotations() {
        }

        public static void getDefaultFillExtrusionBaseAlignment$annotations() {
        }

        public static void getDefaultFillExtrusionBaseAlignmentAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionColorUseTheme$annotations() {
        }

        public static void getDefaultFillExtrusionColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionEdgeRadius$annotations() {
        }

        public static void getDefaultFillExtrusionEdgeRadiusAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightColor$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightColorAsColorInt$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightColorAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightColorTransition$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightColorUseTheme$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightGroundAttenuation$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightGroundAttenuationAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightGroundAttenuationTransition$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightGroundRadius$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightGroundRadiusAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightGroundRadiusTransition$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightIntensity$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightIntensityAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightIntensityTransition$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightWallRadius$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightWallRadiusAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionFloodLightWallRadiusTransition$annotations() {
        }

        public static void getDefaultFillExtrusionHeightAlignment$annotations() {
        }

        public static void getDefaultFillExtrusionHeightAlignmentAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionLineWidth$annotations() {
        }

        public static void getDefaultFillExtrusionLineWidthAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionLineWidthTransition$annotations() {
        }

        public static void getDefaultFillExtrusionRoundedRoof$annotations() {
        }

        public static void getDefaultFillExtrusionRoundedRoofAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionVerticalScale$annotations() {
        }

        public static void getDefaultFillExtrusionVerticalScaleAsExpression$annotations() {
        }

        public static void getDefaultFillExtrusionVerticalScaleTransition$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…extrusion\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ll-extrusion\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ll-extrusion\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultFillExtrusionEdgeRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-edge-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…l-extrusion-edge-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionEdgeRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-edge-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…l-extrusion-edge-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionEdgeRadius = getDefaultFillExtrusionEdgeRadius();
            if (defaultFillExtrusionEdgeRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionEdgeRadius.doubleValue());
        }

        public final Double getDefaultFillExtrusionAmbientOcclusionGroundAttenuation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-ground-attenuation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…sion-ground-attenuation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionAmbientOcclusionGroundAttenuationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-ground-attenuation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…sion-ground-attenuation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionAmbientOcclusionGroundAttenuation = getDefaultFillExtrusionAmbientOcclusionGroundAttenuation();
            if (defaultFillExtrusionAmbientOcclusionGroundAttenuation == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionAmbientOcclusionGroundAttenuation.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionAmbientOcclusionGroundAttenuationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-ground-attenuation-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-attenuation-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionAmbientOcclusionGroundRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-ground-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…occlusion-ground-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionAmbientOcclusionGroundRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-ground-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…occlusion-ground-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionAmbientOcclusionGroundRadius = getDefaultFillExtrusionAmbientOcclusionGroundRadius();
            if (defaultFillExtrusionAmbientOcclusionGroundRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionAmbientOcclusionGroundRadius.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionAmbientOcclusionGroundRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-ground-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…round-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionAmbientOcclusionIntensity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ent-occlusion-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionAmbientOcclusionIntensityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ent-occlusion-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionAmbientOcclusionIntensity = getDefaultFillExtrusionAmbientOcclusionIntensity();
            if (defaultFillExtrusionAmbientOcclusionIntensity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionAmbientOcclusionIntensity.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionAmbientOcclusionIntensityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-intensity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…on-intensity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionAmbientOcclusionRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…mbient-occlusion-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionAmbientOcclusionRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…mbient-occlusion-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionAmbientOcclusionRadius = getDefaultFillExtrusionAmbientOcclusionRadius();
            if (defaultFillExtrusionAmbientOcclusionRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionAmbientOcclusionRadius.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionAmbientOcclusionRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionAmbientOcclusionWallRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-wall-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…t-occlusion-wall-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionAmbientOcclusionWallRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-wall-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…t-occlusion-wall-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionAmbientOcclusionWallRadius = getDefaultFillExtrusionAmbientOcclusionWallRadius();
            if (defaultFillExtrusionAmbientOcclusionWallRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionAmbientOcclusionWallRadius.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionAmbientOcclusionWallRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-ambient-occlusion-wall-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-wall-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionBase() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-base");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"fill-extrusion-base\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionBaseAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-base");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"fill-extrusion-base\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionBase = getDefaultFillExtrusionBase();
            if (defaultFillExtrusionBase == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionBase.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionBaseTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-base-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…trusion-base-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final FillExtrusionBaseAlignment getDefaultFillExtrusionBaseAlignment() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-base-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…xtrusion-base-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            FillExtrusionBaseAlignment.Companion companion = FillExtrusionBaseAlignment.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultFillExtrusionBaseAlignmentAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-base-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…xtrusion-base-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            FillExtrusionBaseAlignment defaultFillExtrusionBaseAlignment = getDefaultFillExtrusionBaseAlignment();
            if (defaultFillExtrusionBaseAlignment != null) {
                return Expression.INSTANCE.literal(defaultFillExtrusionBaseAlignment.getValue());
            }
            return null;
        }

        public final String getDefaultFillExtrusionColor() {
            Expression defaultFillExtrusionColorAsExpression = getDefaultFillExtrusionColorAsExpression();
            if (defaultFillExtrusionColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultFillExtrusionColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultFillExtrusionColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"fill-extrusion-color\")");
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

        public final Integer getDefaultFillExtrusionColorAsColorInt() {
            Expression defaultFillExtrusionColorAsExpression = getDefaultFillExtrusionColorAsExpression();
            if (defaultFillExtrusionColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultFillExtrusionColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultFillExtrusionColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rusion-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillExtrusionColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…trusion-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…trusion-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillExtrusionColorUseTheme = getDefaultFillExtrusionColorUseTheme();
            if (defaultFillExtrusionColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultFillExtrusionColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultFillExtrusionCutoffFadeRange() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-cutoff-fade-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-cutoff-fade-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionCutoffFadeRangeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-cutoff-fade-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-cutoff-fade-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionCutoffFadeRange = getDefaultFillExtrusionCutoffFadeRange();
            if (defaultFillExtrusionCutoffFadeRange == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionCutoffFadeRange.doubleValue());
        }

        public final Double getDefaultFillExtrusionEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionEmissiveStrength = getDefaultFillExtrusionEmissiveStrength();
            if (defaultFillExtrusionEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillExtrusionFloodLightColor() {
            Expression defaultFillExtrusionFloodLightColorAsExpression = getDefaultFillExtrusionFloodLightColorAsExpression();
            if (defaultFillExtrusionFloodLightColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultFillExtrusionFloodLightColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultFillExtrusionFloodLightColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-flood-light-color\")");
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

        public final Integer getDefaultFillExtrusionFloodLightColorAsColorInt() {
            Expression defaultFillExtrusionFloodLightColorAsExpression = getDefaultFillExtrusionFloodLightColorAsExpression();
            if (defaultFillExtrusionFloodLightColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultFillExtrusionFloodLightColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultFillExtrusionFloodLightColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-light-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillExtrusionFloodLightColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…d-light-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionFloodLightColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…d-light-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillExtrusionFloodLightColorUseTheme = getDefaultFillExtrusionFloodLightColorUseTheme();
            if (defaultFillExtrusionFloodLightColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultFillExtrusionFloodLightColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultFillExtrusionFloodLightGroundAttenuation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-ground-attenuation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ight-ground-attenuation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionFloodLightGroundAttenuationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-ground-attenuation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ight-ground-attenuation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionFloodLightGroundAttenuation = getDefaultFillExtrusionFloodLightGroundAttenuation();
            if (defaultFillExtrusionFloodLightGroundAttenuation == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionFloodLightGroundAttenuation.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionFloodLightGroundAttenuationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-ground-attenuation-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-attenuation-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionFloodLightGroundRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-ground-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ood-light-ground-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionFloodLightGroundRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-ground-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ood-light-ground-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionFloodLightGroundRadius = getDefaultFillExtrusionFloodLightGroundRadius();
            if (defaultFillExtrusionFloodLightGroundRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionFloodLightGroundRadius.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionFloodLightGroundRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-ground-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…round-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionFloodLightIntensity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…n-flood-light-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionFloodLightIntensityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…n-flood-light-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionFloodLightIntensity = getDefaultFillExtrusionFloodLightIntensity();
            if (defaultFillExtrusionFloodLightIntensity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionFloodLightIntensity.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionFloodLightIntensityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-intensity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ht-intensity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionFloodLightWallRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-wall-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…flood-light-wall-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionFloodLightWallRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-wall-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…flood-light-wall-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionFloodLightWallRadius = getDefaultFillExtrusionFloodLightWallRadius();
            if (defaultFillExtrusionFloodLightWallRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionFloodLightWallRadius.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionFloodLightWallRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-flood-light-wall-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-wall-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionHeight() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-height");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"fill-extrusion-height\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionHeightAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-height");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"fill-extrusion-height\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionHeight = getDefaultFillExtrusionHeight();
            if (defaultFillExtrusionHeight == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionHeight.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionHeightTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-height-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-height-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final FillExtrusionHeightAlignment getDefaultFillExtrusionHeightAlignment() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-height-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rusion-height-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            FillExtrusionHeightAlignment.Companion companion = FillExtrusionHeightAlignment.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultFillExtrusionHeightAlignmentAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-height-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rusion-height-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            FillExtrusionHeightAlignment defaultFillExtrusionHeightAlignment = getDefaultFillExtrusionHeightAlignment();
            if (defaultFillExtrusionHeightAlignment != null) {
                return Expression.INSTANCE.literal(defaultFillExtrusionHeightAlignment.getValue());
            }
            return null;
        }

        public final Double getDefaultFillExtrusionLineWidth() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-line-width");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ll-extrusion-line-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionLineWidthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-line-width");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ll-extrusion-line-width\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionLineWidth = getDefaultFillExtrusionLineWidth();
            if (defaultFillExtrusionLineWidth == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionLineWidth.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionLineWidthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-line-width-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…n-line-width-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultFillExtrusionOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill-extrusion-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill-extrusion-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionOpacity = getDefaultFillExtrusionOpacity();
            if (defaultFillExtrusionOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionOpacity.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…sion-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultFillExtrusionPattern() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-pattern");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill-extrusion-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionPatternAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-pattern");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"fill-extrusion-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultFillExtrusionPattern = getDefaultFillExtrusionPattern();
            if (defaultFillExtrusionPattern != null) {
                return Expression.INSTANCE.literal(defaultFillExtrusionPattern);
            }
            return null;
        }

        public final Double getDefaultFillExtrusionPatternCrossFade() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-pattern-cross-fade");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…sion-pattern-cross-fade\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionPatternCrossFadeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-pattern-cross-fade");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…sion-pattern-cross-fade\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionPatternCrossFade = getDefaultFillExtrusionPatternCrossFade();
            if (defaultFillExtrusionPatternCrossFade == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionPatternCrossFade.doubleValue());
        }

        public final Boolean getDefaultFillExtrusionRoundedRoof() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-rounded-roof");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-extrusion-rounded-roof\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionRoundedRoofAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-rounded-roof");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-extrusion-rounded-roof\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Boolean defaultFillExtrusionRoundedRoof = getDefaultFillExtrusionRoundedRoof();
            if (defaultFillExtrusionRoundedRoof == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionRoundedRoof.booleanValue());
        }

        public final List<Double> getDefaultFillExtrusionTranslate() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ill-extrusion-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionTranslateAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-translate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ill-extrusion-translate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultFillExtrusionTranslate = getDefaultFillExtrusionTranslate();
            if (defaultFillExtrusionTranslate != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultFillExtrusionTranslate);
            }
            return null;
        }

        public final StyleTransition getDefaultFillExtrusionTranslateTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-translate-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…on-translate-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final FillExtrusionTranslateAnchor getDefaultFillExtrusionTranslateAnchor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rusion-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            FillExtrusionTranslateAnchor.Companion companion = FillExtrusionTranslateAnchor.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultFillExtrusionTranslateAnchorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-translate-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rusion-translate-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            FillExtrusionTranslateAnchor defaultFillExtrusionTranslateAnchor = getDefaultFillExtrusionTranslateAnchor();
            if (defaultFillExtrusionTranslateAnchor != null) {
                return Expression.INSTANCE.literal(defaultFillExtrusionTranslateAnchor.getValue());
            }
            return null;
        }

        public final Boolean getDefaultFillExtrusionVerticalGradient() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-vertical-gradient");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-vertical-gradient\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionVerticalGradientAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-vertical-gradient");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…usion-vertical-gradient\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Boolean defaultFillExtrusionVerticalGradient = getDefaultFillExtrusionVerticalGradient();
            if (defaultFillExtrusionVerticalGradient == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionVerticalGradient.booleanValue());
        }

        public final Double getDefaultFillExtrusionVerticalScale() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-vertical-scale");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…xtrusion-vertical-scale\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultFillExtrusionVerticalScaleAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-vertical-scale");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…xtrusion-vertical-scale\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultFillExtrusionVerticalScale = getDefaultFillExtrusionVerticalScale();
            if (defaultFillExtrusionVerticalScale == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultFillExtrusionVerticalScale.doubleValue());
        }

        public final StyleTransition getDefaultFillExtrusionVerticalScaleTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("fill-extrusion", "fill-extrusion-vertical-scale-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…rtical-scale-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }
    }
}
