package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
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

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b8\n\u0002\u0010 \n\u0002\b<\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u009b\u00012\u00020\u00012\u00020\u0002:\u0002\u009b\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u000bH\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\u00002\b\b\u0001\u0010\u000e\u001a\u00020\u0012H\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0011\u0010\u0017\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010\u0017\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000bH\u0017J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0004H\u0017J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000bH\u0016J\u0012\u0010\"\u001a\u00020\u00002\b\b\u0001\u0010\"\u001a\u00020\u0012H\u0016J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0004H\u0016J\u0011\u0010(\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010(\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0010\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u000bH\u0017J\u0010\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0004H\u0017J\u0011\u00100\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u00100\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0010\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u000bH\u0016J\u0010\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0007H\u0016J\u0010\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u000bH\u0016J\u0010\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0004H\u0016J\u0010\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u000bH\u0016J\u0010\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0007H\u0016J\u0011\u0010>\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010>\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0011\u0010@\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010@\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u000bH\u0016J\u0012\u0010B\u001a\u00020\u00002\b\b\u0001\u0010B\u001a\u00020\u0012H\u0016J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0004H\u0016J\u0011\u0010H\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010H\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u000bH\u0017J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0004H\u0017J\u0010\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\u000bH\u0016J\u0016\u0010P\u001a\u00020\u00002\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00070QH\u0016J\u0011\u0010V\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010V\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\u000bH\u0016J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\u0007H\u0016J\u0011\u0010\\\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010\\\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u000f\u0010\u0099\u0001\u001a\u00020\u0004H\u0010¢\u0006\u0003\b\u009a\u0001J\u0010\u0010^\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u000bH\u0016J\u0010\u0010^\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0007H\u0016J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u000bH\u0016J\u0016\u0010c\u001a\u00020\u00002\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00070QH\u0016J\u0010\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\u000bH\u0016J\u0010\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\u0007H\u0016J\u0011\u0010k\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010k\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0011\u0010m\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010m\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0010\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u0007H\u0016J\u0010\u0010q\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0007H\u0016J\u0010\u0010s\u001a\u00020\u00002\u0006\u0010s\u001a\u00020\u000bH\u0016J\u0010\u0010s\u001a\u00020\u00002\u0006\u0010s\u001a\u00020\u0007H\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u000bH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u0004H\u0016J\u0010\u0010{\u001a\u00020\u00002\u0006\u0010{\u001a\u00020\u000bH\u0016J\u0010\u0010{\u001a\u00020\u00002\u0006\u0010{\u001a\u00020\u0007H\u0016J\u0011\u0010\u007f\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J&\u0010\u007f\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0012\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\u000bH\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0087\u0001\u001a\u00020\u000bH\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0087\u0001\u001a\u00020\u0007H\u0016J\u0012\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u0018H\u0016J'\u0010\u008b\u0001\u001a\u00020\u00002\u001c\u0010\u0094\u0001\u001a\u0017\u0012\u0005\u0012\u00030\u0096\u0001\u0012\u0005\u0012\u00030\u0097\u00010\u0095\u0001¢\u0006\u0003\b\u0098\u0001H\u0016J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u008d\u0001\u001a\u00020\u000bH\u0016J\u0013\u0010\u008d\u0001\u001a\u00020\u00002\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128G¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\rR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u0010R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u001d\u001a\u0004\b!\u0010\rR\u0013\u0010\"\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b#\u0010\u0010R\u0013\u0010$\u001a\u0004\u0018\u00010\u00128G¢\u0006\u0006\u001a\u0004\b%\u0010\u0014R\u0013\u0010&\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b'\u0010\rR\u0013\u0010(\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b)\u0010\u001aR\u001c\u0010*\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001d\u001a\u0004\b,\u0010\u0010R\u001c\u0010-\u001a\u0004\u0018\u00010\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u001d\u001a\u0004\b/\u0010\rR\u0013\u00100\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b1\u0010\u001aR\u0013\u00102\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b3\u0010\tR\u0013\u00104\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b5\u0010\rR\u0013\u00106\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b7\u0010\u0010R\u0013\u00108\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b9\u0010\rR\u0013\u0010:\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b;\u0010\tR\u0013\u0010<\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b=\u0010\rR\u0013\u0010>\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b?\u0010\u001aR\u0013\u0010@\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bA\u0010\u001aR\u0013\u0010B\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bC\u0010\u0010R\u0013\u0010D\u001a\u0004\u0018\u00010\u00128G¢\u0006\u0006\u001a\u0004\bE\u0010\u0014R\u0013\u0010F\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\bG\u0010\rR\u0013\u0010H\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bI\u0010\u001aR\u001c\u0010J\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bK\u0010\u001d\u001a\u0004\bL\u0010\u0010R\u001c\u0010M\u001a\u0004\u0018\u00010\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bN\u0010\u001d\u001a\u0004\bO\u0010\rR\u0019\u0010P\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010Q8F¢\u0006\u0006\u001a\u0004\bR\u0010SR\u0013\u0010T\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\bU\u0010\rR\u0013\u0010V\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bW\u0010\u001aR\u0013\u0010X\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\bY\u0010\tR\u0013\u0010Z\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b[\u0010\rR\u0013\u0010\\\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b]\u0010\u001aR\u0013\u0010^\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b_\u0010\tR\u0013\u0010`\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\ba\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bb\u0010\u0010R\u0019\u0010c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010Q8F¢\u0006\u0006\u001a\u0004\bd\u0010SR\u0013\u0010e\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\bf\u0010\rR\u0013\u0010g\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\bh\u0010\tR\u0013\u0010i\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\bj\u0010\rR\u0013\u0010k\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bl\u0010\u001aR\u0013\u0010m\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bn\u0010\u001aR\u0016\u0010o\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bp\u0010\tR\u0016\u0010q\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\br\u0010\tR\u0013\u0010s\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\bt\u0010\tR\u0013\u0010u\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\bv\u0010\rR\u0013\u0010w\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bx\u0010\u0010R\u0013\u0010y\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\bz\u0010\rR\u0013\u0010{\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b|\u0010\tR\u0013\u0010}\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b~\u0010\rR\u0014\u0010\u007f\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010\u001aR\u0018\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\u0010R\u0015\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010\u0010R\u0015\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0007\u001a\u0005\b\u0086\u0001\u0010\rR\u0015\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010\tR\u0015\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0007\u001a\u0005\b\u008a\u0001\u0010\rR\u0015\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0007\u001a\u0005\b\u008c\u0001\u0010\u001aR\u001a\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0018\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0092\u0001\u0010\r¨\u0006\u009c\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "(Ljava/lang/String;)V", "accuracyRadius", "", "getAccuracyRadius", "()Ljava/lang/Double;", "accuracyRadiusAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getAccuracyRadiusAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "accuracyRadiusBorderColor", "getAccuracyRadiusBorderColor", "()Ljava/lang/String;", "accuracyRadiusBorderColorAsColorInt", "", "getAccuracyRadiusBorderColorAsColorInt", "()Ljava/lang/Integer;", "accuracyRadiusBorderColorAsExpression", "getAccuracyRadiusBorderColorAsExpression", "accuracyRadiusBorderColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getAccuracyRadiusBorderColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "accuracyRadiusBorderColorUseTheme", "getAccuracyRadiusBorderColorUseTheme$annotations", "()V", "getAccuracyRadiusBorderColorUseTheme", "accuracyRadiusBorderColorUseThemeAsExpression", "getAccuracyRadiusBorderColorUseThemeAsExpression$annotations", "getAccuracyRadiusBorderColorUseThemeAsExpression", "accuracyRadiusColor", "getAccuracyRadiusColor", "accuracyRadiusColorAsColorInt", "getAccuracyRadiusColorAsColorInt", "accuracyRadiusColorAsExpression", "getAccuracyRadiusColorAsExpression", "accuracyRadiusColorTransition", "getAccuracyRadiusColorTransition", "accuracyRadiusColorUseTheme", "getAccuracyRadiusColorUseTheme$annotations", "getAccuracyRadiusColorUseTheme", "accuracyRadiusColorUseThemeAsExpression", "getAccuracyRadiusColorUseThemeAsExpression$annotations", "getAccuracyRadiusColorUseThemeAsExpression", "accuracyRadiusTransition", "getAccuracyRadiusTransition", "bearing", "getBearing", "bearingAsExpression", "getBearingAsExpression", "bearingImage", "getBearingImage", "bearingImageAsExpression", "getBearingImageAsExpression", "bearingImageSize", "getBearingImageSize", "bearingImageSizeAsExpression", "getBearingImageSizeAsExpression", "bearingImageSizeTransition", "getBearingImageSizeTransition", "bearingTransition", "getBearingTransition", "emphasisCircleColor", "getEmphasisCircleColor", "emphasisCircleColorAsColorInt", "getEmphasisCircleColorAsColorInt", "emphasisCircleColorAsExpression", "getEmphasisCircleColorAsExpression", "emphasisCircleColorTransition", "getEmphasisCircleColorTransition", "emphasisCircleColorUseTheme", "getEmphasisCircleColorUseTheme$annotations", "getEmphasisCircleColorUseTheme", "emphasisCircleColorUseThemeAsExpression", "getEmphasisCircleColorUseThemeAsExpression$annotations", "getEmphasisCircleColorUseThemeAsExpression", "emphasisCircleGlowRange", "", "getEmphasisCircleGlowRange", "()Ljava/util/List;", "emphasisCircleGlowRangeAsExpression", "getEmphasisCircleGlowRangeAsExpression", "emphasisCircleGlowRangeTransition", "getEmphasisCircleGlowRangeTransition", "emphasisCircleRadius", "getEmphasisCircleRadius", "emphasisCircleRadiusAsExpression", "getEmphasisCircleRadiusAsExpression", "emphasisCircleRadiusTransition", "getEmphasisCircleRadiusTransition", "imagePitchDisplacement", "getImagePitchDisplacement", "imagePitchDisplacementAsExpression", "getImagePitchDisplacementAsExpression", "getLayerId", "location", "getLocation", "locationAsExpression", "getLocationAsExpression", "locationIndicatorOpacity", "getLocationIndicatorOpacity", "locationIndicatorOpacityAsExpression", "getLocationIndicatorOpacityAsExpression", "locationIndicatorOpacityTransition", "getLocationIndicatorOpacityTransition", "locationTransition", "getLocationTransition", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "perspectiveCompensation", "getPerspectiveCompensation", "perspectiveCompensationAsExpression", "getPerspectiveCompensationAsExpression", "shadowImage", "getShadowImage", "shadowImageAsExpression", "getShadowImageAsExpression", "shadowImageSize", "getShadowImageSize", "shadowImageSizeAsExpression", "getShadowImageSizeAsExpression", "shadowImageSizeTransition", "getShadowImageSizeTransition", "slot", "getSlot", "topImage", "getTopImage", "topImageAsExpression", "getTopImageAsExpression", "topImageSize", "getTopImageSize", "topImageSizeAsExpression", "getTopImageSizeAsExpression", "topImageSizeTransition", "getTopImageSizeTransition", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationIndicatorLayer extends Layer implements LocationIndicatorLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;

    public static void getAccuracyRadiusBorderColorUseTheme$annotations() {
    }

    public static void getAccuracyRadiusBorderColorUseThemeAsExpression$annotations() {
    }

    public static void getAccuracyRadiusColorUseTheme$annotations() {
    }

    public static void getAccuracyRadiusColorUseThemeAsExpression$annotations() {
    }

    public static void getEmphasisCircleColorUseTheme$annotations() {
    }

    public static void getEmphasisCircleColorUseThemeAsExpression$annotations() {
    }

    public LocationIndicatorLayer(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        this.layerId = layerId;
    }

    @Override
    public String getLayerId() {
        return this.layerId;
    }

    @Override
    public LocationIndicatorLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
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
    public LocationIndicatorLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public LocationIndicatorLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public LocationIndicatorLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public LocationIndicatorLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final Double getAccuracyRadius() {
        return (Double) getPropertyValueWithType("accuracy-radius", Double.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadius(double accuracyRadius) {
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius", Double.valueOf(accuracyRadius)));
        return this;
    }

    public final Expression getAccuracyRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("accuracy-radius");
    }

    @Override
    public LocationIndicatorLayer accuracyRadius(Expression accuracyRadius) {
        Intrinsics.checkNotNullParameter(accuracyRadius, "accuracyRadius");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius", accuracyRadius));
        return this;
    }

    public final StyleTransition getAccuracyRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("accuracy-radius-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        accuracyRadiusTransition(builder.build());
        return this;
    }

    public final String getAccuracyRadiusBorderColor() {
        Expression accuracyRadiusBorderColorAsExpression = getAccuracyRadiusBorderColorAsExpression();
        if (accuracyRadiusBorderColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(accuracyRadiusBorderColorAsExpression);
        }
        return null;
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusBorderColor(String accuracyRadiusBorderColor) {
        Intrinsics.checkNotNullParameter(accuracyRadiusBorderColor, "accuracyRadiusBorderColor");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-border-color", accuracyRadiusBorderColor));
        return this;
    }

    public final Expression getAccuracyRadiusBorderColorAsExpression() {
        return (Expression) getPropertyValueWithType("accuracy-radius-border-color", Expression.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusBorderColor(Expression accuracyRadiusBorderColor) {
        Intrinsics.checkNotNullParameter(accuracyRadiusBorderColor, "accuracyRadiusBorderColor");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-border-color", accuracyRadiusBorderColor));
        return this;
    }

    public final Integer getAccuracyRadiusBorderColorAsColorInt() {
        Expression accuracyRadiusBorderColorAsExpression = getAccuracyRadiusBorderColorAsExpression();
        if (accuracyRadiusBorderColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(accuracyRadiusBorderColorAsExpression);
        }
        return null;
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusBorderColor(int accuracyRadiusBorderColor) {
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-border-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(accuracyRadiusBorderColor)));
        return this;
    }

    public final StyleTransition getAccuracyRadiusBorderColorTransition() {
        return (StyleTransition) getPropertyValueWithType("accuracy-radius-border-color-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusBorderColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-border-color-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusBorderColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        accuracyRadiusBorderColorTransition(builder.build());
        return this;
    }

    public final String getAccuracyRadiusBorderColorUseTheme() {
        return (String) getPropertyValueWithType("accuracy-radius-border-color-use-theme", String.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusBorderColorUseTheme(String accuracyRadiusBorderColorUseTheme) {
        Intrinsics.checkNotNullParameter(accuracyRadiusBorderColorUseTheme, "accuracyRadiusBorderColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-border-color-use-theme", accuracyRadiusBorderColorUseTheme));
        return this;
    }

    public final Expression getAccuracyRadiusBorderColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("accuracy-radius-border-color-use-theme");
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusBorderColorUseTheme(Expression accuracyRadiusBorderColorUseTheme) {
        Intrinsics.checkNotNullParameter(accuracyRadiusBorderColorUseTheme, "accuracyRadiusBorderColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-border-color-use-theme", accuracyRadiusBorderColorUseTheme));
        return this;
    }

    public final String getAccuracyRadiusColor() {
        Expression accuracyRadiusColorAsExpression = getAccuracyRadiusColorAsExpression();
        if (accuracyRadiusColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(accuracyRadiusColorAsExpression);
        }
        return null;
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusColor(String accuracyRadiusColor) {
        Intrinsics.checkNotNullParameter(accuracyRadiusColor, "accuracyRadiusColor");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-color", accuracyRadiusColor));
        return this;
    }

    public final Expression getAccuracyRadiusColorAsExpression() {
        return (Expression) getPropertyValueWithType("accuracy-radius-color", Expression.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusColor(Expression accuracyRadiusColor) {
        Intrinsics.checkNotNullParameter(accuracyRadiusColor, "accuracyRadiusColor");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-color", accuracyRadiusColor));
        return this;
    }

    public final Integer getAccuracyRadiusColorAsColorInt() {
        Expression accuracyRadiusColorAsExpression = getAccuracyRadiusColorAsExpression();
        if (accuracyRadiusColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(accuracyRadiusColorAsExpression);
        }
        return null;
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusColor(int accuracyRadiusColor) {
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(accuracyRadiusColor)));
        return this;
    }

    public final StyleTransition getAccuracyRadiusColorTransition() {
        return (StyleTransition) getPropertyValueWithType("accuracy-radius-color-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-color-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        accuracyRadiusColorTransition(builder.build());
        return this;
    }

    public final String getAccuracyRadiusColorUseTheme() {
        return (String) getPropertyValueWithType("accuracy-radius-color-use-theme", String.class);
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusColorUseTheme(String accuracyRadiusColorUseTheme) {
        Intrinsics.checkNotNullParameter(accuracyRadiusColorUseTheme, "accuracyRadiusColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-color-use-theme", accuracyRadiusColorUseTheme));
        return this;
    }

    public final Expression getAccuracyRadiusColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("accuracy-radius-color-use-theme");
    }

    @Override
    public LocationIndicatorLayer accuracyRadiusColorUseTheme(Expression accuracyRadiusColorUseTheme) {
        Intrinsics.checkNotNullParameter(accuracyRadiusColorUseTheme, "accuracyRadiusColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("accuracy-radius-color-use-theme", accuracyRadiusColorUseTheme));
        return this;
    }

    public final Double getBearing() {
        return (Double) getPropertyValueWithType("bearing", Double.class);
    }

    @Override
    public LocationIndicatorLayer bearing(double bearing) {
        setProperty$extension_style_release(new PropertyValue<>("bearing", Double.valueOf(bearing)));
        return this;
    }

    public final Expression getBearingAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("bearing");
    }

    @Override
    public LocationIndicatorLayer bearing(Expression bearing) {
        Intrinsics.checkNotNullParameter(bearing, "bearing");
        setProperty$extension_style_release(new PropertyValue<>("bearing", bearing));
        return this;
    }

    public final StyleTransition getBearingTransition() {
        return (StyleTransition) getPropertyValueWithType("bearing-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer bearingTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("bearing-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer bearingTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        bearingTransition(builder.build());
        return this;
    }

    public final String getBearingImage() {
        return (String) getPropertyValueWithType("bearing-image", String.class);
    }

    @Override
    public LocationIndicatorLayer bearingImage(String bearingImage) {
        Intrinsics.checkNotNullParameter(bearingImage, "bearingImage");
        setProperty$extension_style_release(new PropertyValue<>("bearing-image", bearingImage));
        return this;
    }

    public final Expression getBearingImageAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("bearing-image");
    }

    @Override
    public LocationIndicatorLayer bearingImage(Expression bearingImage) {
        Intrinsics.checkNotNullParameter(bearingImage, "bearingImage");
        setProperty$extension_style_release(new PropertyValue<>("bearing-image", bearingImage));
        return this;
    }

    public final Double getBearingImageSize() {
        return (Double) getPropertyValueWithType("bearing-image-size", Double.class);
    }

    @Override
    public LocationIndicatorLayer bearingImageSize(double bearingImageSize) {
        setProperty$extension_style_release(new PropertyValue<>("bearing-image-size", Double.valueOf(bearingImageSize)));
        return this;
    }

    public final Expression getBearingImageSizeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("bearing-image-size");
    }

    @Override
    public LocationIndicatorLayer bearingImageSize(Expression bearingImageSize) {
        Intrinsics.checkNotNullParameter(bearingImageSize, "bearingImageSize");
        setProperty$extension_style_release(new PropertyValue<>("bearing-image-size", bearingImageSize));
        return this;
    }

    public final StyleTransition getBearingImageSizeTransition() {
        return (StyleTransition) getPropertyValueWithType("bearing-image-size-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer bearingImageSizeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("bearing-image-size-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer bearingImageSizeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        bearingImageSizeTransition(builder.build());
        return this;
    }

    public final String getEmphasisCircleColor() {
        Expression emphasisCircleColorAsExpression = getEmphasisCircleColorAsExpression();
        if (emphasisCircleColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(emphasisCircleColorAsExpression);
        }
        return null;
    }

    @Override
    public LocationIndicatorLayer emphasisCircleColor(String emphasisCircleColor) {
        Intrinsics.checkNotNullParameter(emphasisCircleColor, "emphasisCircleColor");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-color", emphasisCircleColor));
        return this;
    }

    public final Expression getEmphasisCircleColorAsExpression() {
        return (Expression) getPropertyValueWithType("emphasis-circle-color", Expression.class);
    }

    @Override
    public LocationIndicatorLayer emphasisCircleColor(Expression emphasisCircleColor) {
        Intrinsics.checkNotNullParameter(emphasisCircleColor, "emphasisCircleColor");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-color", emphasisCircleColor));
        return this;
    }

    public final Integer getEmphasisCircleColorAsColorInt() {
        Expression emphasisCircleColorAsExpression = getEmphasisCircleColorAsExpression();
        if (emphasisCircleColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(emphasisCircleColorAsExpression);
        }
        return null;
    }

    @Override
    public LocationIndicatorLayer emphasisCircleColor(int emphasisCircleColor) {
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(emphasisCircleColor)));
        return this;
    }

    public final StyleTransition getEmphasisCircleColorTransition() {
        return (StyleTransition) getPropertyValueWithType("emphasis-circle-color-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer emphasisCircleColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-color-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer emphasisCircleColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        emphasisCircleColorTransition(builder.build());
        return this;
    }

    public final String getEmphasisCircleColorUseTheme() {
        return (String) getPropertyValueWithType("emphasis-circle-color-use-theme", String.class);
    }

    @Override
    public LocationIndicatorLayer emphasisCircleColorUseTheme(String emphasisCircleColorUseTheme) {
        Intrinsics.checkNotNullParameter(emphasisCircleColorUseTheme, "emphasisCircleColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-color-use-theme", emphasisCircleColorUseTheme));
        return this;
    }

    public final Expression getEmphasisCircleColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("emphasis-circle-color-use-theme");
    }

    @Override
    public LocationIndicatorLayer emphasisCircleColorUseTheme(Expression emphasisCircleColorUseTheme) {
        Intrinsics.checkNotNullParameter(emphasisCircleColorUseTheme, "emphasisCircleColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-color-use-theme", emphasisCircleColorUseTheme));
        return this;
    }

    public final List<Double> getEmphasisCircleGlowRange() {
        return (List) getPropertyValueWithType("emphasis-circle-glow-range", List.class);
    }

    @Override
    public LocationIndicatorLayer emphasisCircleGlowRange(List<Double> emphasisCircleGlowRange) {
        Intrinsics.checkNotNullParameter(emphasisCircleGlowRange, "emphasisCircleGlowRange");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-glow-range", emphasisCircleGlowRange));
        return this;
    }

    public final Expression getEmphasisCircleGlowRangeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("emphasis-circle-glow-range");
    }

    @Override
    public LocationIndicatorLayer emphasisCircleGlowRange(Expression emphasisCircleGlowRange) {
        Intrinsics.checkNotNullParameter(emphasisCircleGlowRange, "emphasisCircleGlowRange");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-glow-range", emphasisCircleGlowRange));
        return this;
    }

    public final StyleTransition getEmphasisCircleGlowRangeTransition() {
        return (StyleTransition) getPropertyValueWithType("emphasis-circle-glow-range-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer emphasisCircleGlowRangeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-glow-range-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer emphasisCircleGlowRangeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        emphasisCircleGlowRangeTransition(builder.build());
        return this;
    }

    public final Double getEmphasisCircleRadius() {
        return (Double) getPropertyValueWithType("emphasis-circle-radius", Double.class);
    }

    @Override
    public LocationIndicatorLayer emphasisCircleRadius(double emphasisCircleRadius) {
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-radius", Double.valueOf(emphasisCircleRadius)));
        return this;
    }

    public final Expression getEmphasisCircleRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("emphasis-circle-radius");
    }

    @Override
    public LocationIndicatorLayer emphasisCircleRadius(Expression emphasisCircleRadius) {
        Intrinsics.checkNotNullParameter(emphasisCircleRadius, "emphasisCircleRadius");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-radius", emphasisCircleRadius));
        return this;
    }

    public final StyleTransition getEmphasisCircleRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("emphasis-circle-radius-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer emphasisCircleRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("emphasis-circle-radius-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer emphasisCircleRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        emphasisCircleRadiusTransition(builder.build());
        return this;
    }

    public final Double getImagePitchDisplacement() {
        return (Double) getPropertyValueWithType("image-pitch-displacement", Double.class);
    }

    @Override
    public LocationIndicatorLayer imagePitchDisplacement(double imagePitchDisplacement) {
        setProperty$extension_style_release(new PropertyValue<>("image-pitch-displacement", Double.valueOf(imagePitchDisplacement)));
        return this;
    }

    public final Expression getImagePitchDisplacementAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("image-pitch-displacement");
    }

    @Override
    public LocationIndicatorLayer imagePitchDisplacement(Expression imagePitchDisplacement) {
        Intrinsics.checkNotNullParameter(imagePitchDisplacement, "imagePitchDisplacement");
        setProperty$extension_style_release(new PropertyValue<>("image-pitch-displacement", imagePitchDisplacement));
        return this;
    }

    public final List<Double> getLocation() {
        return (List) getPropertyValueWithType("location", List.class);
    }

    @Override
    public LocationIndicatorLayer location(List<Double> location) {
        Intrinsics.checkNotNullParameter(location, "location");
        setProperty$extension_style_release(new PropertyValue<>("location", location));
        return this;
    }

    public final Expression getLocationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("location");
    }

    @Override
    public LocationIndicatorLayer location(Expression location) {
        Intrinsics.checkNotNullParameter(location, "location");
        setProperty$extension_style_release(new PropertyValue<>("location", location));
        return this;
    }

    public final StyleTransition getLocationTransition() {
        return (StyleTransition) getPropertyValueWithType("location-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer locationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("location-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer locationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        locationTransition(builder.build());
        return this;
    }

    public final Double getLocationIndicatorOpacity() {
        return (Double) getPropertyValueWithType("location-indicator-opacity", Double.class);
    }

    @Override
    public LocationIndicatorLayer locationIndicatorOpacity(double locationIndicatorOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("location-indicator-opacity", Double.valueOf(locationIndicatorOpacity)));
        return this;
    }

    public final Expression getLocationIndicatorOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("location-indicator-opacity");
    }

    @Override
    public LocationIndicatorLayer locationIndicatorOpacity(Expression locationIndicatorOpacity) {
        Intrinsics.checkNotNullParameter(locationIndicatorOpacity, "locationIndicatorOpacity");
        setProperty$extension_style_release(new PropertyValue<>("location-indicator-opacity", locationIndicatorOpacity));
        return this;
    }

    public final StyleTransition getLocationIndicatorOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("location-indicator-opacity-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer locationIndicatorOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("location-indicator-opacity-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer locationIndicatorOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        locationIndicatorOpacityTransition(builder.build());
        return this;
    }

    public final Double getPerspectiveCompensation() {
        return (Double) getPropertyValueWithType("perspective-compensation", Double.class);
    }

    @Override
    public LocationIndicatorLayer perspectiveCompensation(double perspectiveCompensation) {
        setProperty$extension_style_release(new PropertyValue<>("perspective-compensation", Double.valueOf(perspectiveCompensation)));
        return this;
    }

    public final Expression getPerspectiveCompensationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("perspective-compensation");
    }

    @Override
    public LocationIndicatorLayer perspectiveCompensation(Expression perspectiveCompensation) {
        Intrinsics.checkNotNullParameter(perspectiveCompensation, "perspectiveCompensation");
        setProperty$extension_style_release(new PropertyValue<>("perspective-compensation", perspectiveCompensation));
        return this;
    }

    public final String getShadowImage() {
        return (String) getPropertyValueWithType("shadow-image", String.class);
    }

    @Override
    public LocationIndicatorLayer shadowImage(String shadowImage) {
        Intrinsics.checkNotNullParameter(shadowImage, "shadowImage");
        setProperty$extension_style_release(new PropertyValue<>("shadow-image", shadowImage));
        return this;
    }

    public final Expression getShadowImageAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("shadow-image");
    }

    @Override
    public LocationIndicatorLayer shadowImage(Expression shadowImage) {
        Intrinsics.checkNotNullParameter(shadowImage, "shadowImage");
        setProperty$extension_style_release(new PropertyValue<>("shadow-image", shadowImage));
        return this;
    }

    public final Double getShadowImageSize() {
        return (Double) getPropertyValueWithType("shadow-image-size", Double.class);
    }

    @Override
    public LocationIndicatorLayer shadowImageSize(double shadowImageSize) {
        setProperty$extension_style_release(new PropertyValue<>("shadow-image-size", Double.valueOf(shadowImageSize)));
        return this;
    }

    public final Expression getShadowImageSizeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("shadow-image-size");
    }

    @Override
    public LocationIndicatorLayer shadowImageSize(Expression shadowImageSize) {
        Intrinsics.checkNotNullParameter(shadowImageSize, "shadowImageSize");
        setProperty$extension_style_release(new PropertyValue<>("shadow-image-size", shadowImageSize));
        return this;
    }

    public final StyleTransition getShadowImageSizeTransition() {
        return (StyleTransition) getPropertyValueWithType("shadow-image-size-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer shadowImageSizeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("shadow-image-size-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer shadowImageSizeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        shadowImageSizeTransition(builder.build());
        return this;
    }

    public final String getTopImage() {
        return (String) getPropertyValueWithType("top-image", String.class);
    }

    @Override
    public LocationIndicatorLayer topImage(String topImage) {
        Intrinsics.checkNotNullParameter(topImage, "topImage");
        setProperty$extension_style_release(new PropertyValue<>("top-image", topImage));
        return this;
    }

    public final Expression getTopImageAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("top-image");
    }

    @Override
    public LocationIndicatorLayer topImage(Expression topImage) {
        Intrinsics.checkNotNullParameter(topImage, "topImage");
        setProperty$extension_style_release(new PropertyValue<>("top-image", topImage));
        return this;
    }

    public final Double getTopImageSize() {
        return (Double) getPropertyValueWithType("top-image-size", Double.class);
    }

    @Override
    public LocationIndicatorLayer topImageSize(double topImageSize) {
        setProperty$extension_style_release(new PropertyValue<>("top-image-size", Double.valueOf(topImageSize)));
        return this;
    }

    public final Expression getTopImageSizeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("top-image-size");
    }

    @Override
    public LocationIndicatorLayer topImageSize(Expression topImageSize) {
        Intrinsics.checkNotNullParameter(topImageSize, "topImageSize");
        setProperty$extension_style_release(new PropertyValue<>("top-image-size", topImageSize));
        return this;
    }

    public final StyleTransition getTopImageSizeTransition() {
        return (StyleTransition) getPropertyValueWithType("top-image-size-transition", StyleTransition.class);
    }

    @Override
    public LocationIndicatorLayer topImageSizeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("top-image-size-transition", options));
        return this;
    }

    @Override
    public LocationIndicatorLayer topImageSizeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        topImageSizeTransition(builder.build());
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "location-indicator";
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b7\n\u0002\u0010 \n\u0002\b9\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\nR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u000eR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u0002\u001a\u0004\b\u001e\u0010\nR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b \u0010\u000eR\u0013\u0010!\u001a\u0004\u0018\u00010\u00108G¢\u0006\u0006\u001a\u0004\b\"\u0010\u0012R\u0013\u0010#\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b$\u0010\nR\u0013\u0010%\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b&\u0010\u0018R\u001c\u0010'\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0002\u001a\u0004\b)\u0010\u000eR\u001c\u0010*\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0002\u001a\u0004\b,\u0010\nR\u0013\u0010-\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b.\u0010\u0018R\u0013\u0010/\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b0\u0010\u0006R\u0013\u00101\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b2\u0010\nR\u0013\u00103\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b4\u0010\u000eR\u0013\u00105\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b6\u0010\nR\u0013\u00107\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b8\u0010\u0006R\u0013\u00109\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b:\u0010\nR\u0013\u0010;\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b<\u0010\u0018R\u0013\u0010=\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b>\u0010\u0018R\u0013\u0010?\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b@\u0010\u000eR\u0013\u0010A\u001a\u0004\u0018\u00010\u00108G¢\u0006\u0006\u001a\u0004\bB\u0010\u0012R\u0013\u0010C\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bD\u0010\nR\u0013\u0010E\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\bF\u0010\u0018R\u001c\u0010G\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bH\u0010\u0002\u001a\u0004\bI\u0010\u000eR\u001c\u0010J\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bK\u0010\u0002\u001a\u0004\bL\u0010\nR\u0019\u0010M\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010N8F¢\u0006\u0006\u001a\u0004\bO\u0010PR\u0013\u0010Q\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bR\u0010\nR\u0013\u0010S\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\bT\u0010\u0018R\u0013\u0010U\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bV\u0010\u0006R\u0013\u0010W\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bX\u0010\nR\u0013\u0010Y\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\bZ\u0010\u0018R\u0013\u0010[\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\\\u0010\u0006R\u0013\u0010]\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b^\u0010\nR\u0019\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010N8F¢\u0006\u0006\u001a\u0004\b`\u0010PR\u0013\u0010a\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bb\u0010\nR\u0013\u0010c\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bd\u0010\u0006R\u0013\u0010e\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bf\u0010\nR\u0013\u0010g\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\bh\u0010\u0018R\u0013\u0010i\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\bj\u0010\u0018R\u0013\u0010k\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bl\u0010\u0006R\u0013\u0010m\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bn\u0010\u0006R\u0013\u0010o\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bp\u0010\u0006R\u0013\u0010q\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\br\u0010\nR\u0013\u0010s\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bt\u0010\u000eR\u0013\u0010u\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bv\u0010\nR\u0013\u0010w\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bx\u0010\u0006R\u0013\u0010y\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\bz\u0010\nR\u0013\u0010{\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b|\u0010\u0018R\u0013\u0010}\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b~\u0010\u000eR\u0014\u0010\u007f\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010\nR\u0015\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\u0006R\u0015\u0010\u0083\u0001\u001a\u0004\u0018\u00010\b8F¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010\nR\u0015\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0007\u001a\u0005\b\u0086\u0001\u0010\u0018R\u0017\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00018F¢\u0006\b\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001¨\u0006\u008b\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayer$Companion;", "", "()V", "defaultAccuracyRadius", "", "getDefaultAccuracyRadius", "()Ljava/lang/Double;", "defaultAccuracyRadiusAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultAccuracyRadiusAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultAccuracyRadiusBorderColor", "", "getDefaultAccuracyRadiusBorderColor", "()Ljava/lang/String;", "defaultAccuracyRadiusBorderColorAsColorInt", "", "getDefaultAccuracyRadiusBorderColorAsColorInt", "()Ljava/lang/Integer;", "defaultAccuracyRadiusBorderColorAsExpression", "getDefaultAccuracyRadiusBorderColorAsExpression", "defaultAccuracyRadiusBorderColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultAccuracyRadiusBorderColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultAccuracyRadiusBorderColorUseTheme", "getDefaultAccuracyRadiusBorderColorUseTheme$annotations", "getDefaultAccuracyRadiusBorderColorUseTheme", "defaultAccuracyRadiusBorderColorUseThemeAsExpression", "getDefaultAccuracyRadiusBorderColorUseThemeAsExpression$annotations", "getDefaultAccuracyRadiusBorderColorUseThemeAsExpression", "defaultAccuracyRadiusColor", "getDefaultAccuracyRadiusColor", "defaultAccuracyRadiusColorAsColorInt", "getDefaultAccuracyRadiusColorAsColorInt", "defaultAccuracyRadiusColorAsExpression", "getDefaultAccuracyRadiusColorAsExpression", "defaultAccuracyRadiusColorTransition", "getDefaultAccuracyRadiusColorTransition", "defaultAccuracyRadiusColorUseTheme", "getDefaultAccuracyRadiusColorUseTheme$annotations", "getDefaultAccuracyRadiusColorUseTheme", "defaultAccuracyRadiusColorUseThemeAsExpression", "getDefaultAccuracyRadiusColorUseThemeAsExpression$annotations", "getDefaultAccuracyRadiusColorUseThemeAsExpression", "defaultAccuracyRadiusTransition", "getDefaultAccuracyRadiusTransition", "defaultBearing", "getDefaultBearing", "defaultBearingAsExpression", "getDefaultBearingAsExpression", "defaultBearingImage", "getDefaultBearingImage", "defaultBearingImageAsExpression", "getDefaultBearingImageAsExpression", "defaultBearingImageSize", "getDefaultBearingImageSize", "defaultBearingImageSizeAsExpression", "getDefaultBearingImageSizeAsExpression", "defaultBearingImageSizeTransition", "getDefaultBearingImageSizeTransition", "defaultBearingTransition", "getDefaultBearingTransition", "defaultEmphasisCircleColor", "getDefaultEmphasisCircleColor", "defaultEmphasisCircleColorAsColorInt", "getDefaultEmphasisCircleColorAsColorInt", "defaultEmphasisCircleColorAsExpression", "getDefaultEmphasisCircleColorAsExpression", "defaultEmphasisCircleColorTransition", "getDefaultEmphasisCircleColorTransition", "defaultEmphasisCircleColorUseTheme", "getDefaultEmphasisCircleColorUseTheme$annotations", "getDefaultEmphasisCircleColorUseTheme", "defaultEmphasisCircleColorUseThemeAsExpression", "getDefaultEmphasisCircleColorUseThemeAsExpression$annotations", "getDefaultEmphasisCircleColorUseThemeAsExpression", "defaultEmphasisCircleGlowRange", "", "getDefaultEmphasisCircleGlowRange", "()Ljava/util/List;", "defaultEmphasisCircleGlowRangeAsExpression", "getDefaultEmphasisCircleGlowRangeAsExpression", "defaultEmphasisCircleGlowRangeTransition", "getDefaultEmphasisCircleGlowRangeTransition", "defaultEmphasisCircleRadius", "getDefaultEmphasisCircleRadius", "defaultEmphasisCircleRadiusAsExpression", "getDefaultEmphasisCircleRadiusAsExpression", "defaultEmphasisCircleRadiusTransition", "getDefaultEmphasisCircleRadiusTransition", "defaultImagePitchDisplacement", "getDefaultImagePitchDisplacement", "defaultImagePitchDisplacementAsExpression", "getDefaultImagePitchDisplacementAsExpression", "defaultLocation", "getDefaultLocation", "defaultLocationAsExpression", "getDefaultLocationAsExpression", "defaultLocationIndicatorOpacity", "getDefaultLocationIndicatorOpacity", "defaultLocationIndicatorOpacityAsExpression", "getDefaultLocationIndicatorOpacityAsExpression", "defaultLocationIndicatorOpacityTransition", "getDefaultLocationIndicatorOpacityTransition", "defaultLocationTransition", "getDefaultLocationTransition", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultPerspectiveCompensation", "getDefaultPerspectiveCompensation", "defaultPerspectiveCompensationAsExpression", "getDefaultPerspectiveCompensationAsExpression", "defaultShadowImage", "getDefaultShadowImage", "defaultShadowImageAsExpression", "getDefaultShadowImageAsExpression", "defaultShadowImageSize", "getDefaultShadowImageSize", "defaultShadowImageSizeAsExpression", "getDefaultShadowImageSizeAsExpression", "defaultShadowImageSizeTransition", "getDefaultShadowImageSizeTransition", "defaultTopImage", "getDefaultTopImage", "defaultTopImageAsExpression", "getDefaultTopImageAsExpression", "defaultTopImageSize", "getDefaultTopImageSize", "defaultTopImageSizeAsExpression", "getDefaultTopImageSizeAsExpression", "defaultTopImageSizeTransition", "getDefaultTopImageSizeTransition", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultAccuracyRadiusBorderColorUseTheme$annotations() {
        }

        public static void getDefaultAccuracyRadiusBorderColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultAccuracyRadiusColorUseTheme$annotations() {
        }

        public static void getDefaultAccuracyRadiusColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultEmphasisCircleColorUseTheme$annotations() {
        }

        public static void getDefaultEmphasisCircleColorUseThemeAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…indicator\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…on-indicator\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…on-indicator\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultAccuracyRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ator\", \"accuracy-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultAccuracyRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ator\", \"accuracy-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultAccuracyRadius = getDefaultAccuracyRadius();
            if (defaultAccuracyRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultAccuracyRadius.doubleValue());
        }

        public final StyleTransition getDefaultAccuracyRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…uracy-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultAccuracyRadiusBorderColor() {
            Expression defaultAccuracyRadiusBorderColorAsExpression = getDefaultAccuracyRadiusBorderColorAsExpression();
            if (defaultAccuracyRadiusBorderColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultAccuracyRadiusBorderColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultAccuracyRadiusBorderColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-border-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…acy-radius-border-color\")");
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

        public final Integer getDefaultAccuracyRadiusBorderColorAsColorInt() {
            Expression defaultAccuracyRadiusBorderColorAsExpression = getDefaultAccuracyRadiusBorderColorAsExpression();
            if (defaultAccuracyRadiusBorderColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultAccuracyRadiusBorderColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultAccuracyRadiusBorderColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-border-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…border-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultAccuracyRadiusBorderColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-border-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-border-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultAccuracyRadiusBorderColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-border-color-use-theme");
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
            String defaultAccuracyRadiusBorderColorUseTheme = getDefaultAccuracyRadiusBorderColorUseTheme();
            if (defaultAccuracyRadiusBorderColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultAccuracyRadiusBorderColorUseTheme);
            }
            return null;
        }

        public final String getDefaultAccuracyRadiusColor() {
            Expression defaultAccuracyRadiusColorAsExpression = getDefaultAccuracyRadiusColorAsExpression();
            if (defaultAccuracyRadiusColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultAccuracyRadiusColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultAccuracyRadiusColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"accuracy-radius-color\")");
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

        public final Integer getDefaultAccuracyRadiusColorAsColorInt() {
            Expression defaultAccuracyRadiusColorAsExpression = getDefaultAccuracyRadiusColorAsExpression();
            if (defaultAccuracyRadiusColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultAccuracyRadiusColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultAccuracyRadiusColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…radius-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultAccuracyRadiusColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-radius-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultAccuracyRadiusColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "accuracy-radius-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-radius-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultAccuracyRadiusColorUseTheme = getDefaultAccuracyRadiusColorUseTheme();
            if (defaultAccuracyRadiusColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultAccuracyRadiusColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultBearing() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…on-indicator\", \"bearing\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultBearingAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…on-indicator\", \"bearing\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultBearing = getDefaultBearing();
            if (defaultBearing == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultBearing.doubleValue());
        }

        public final StyleTransition getDefaultBearingTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r\", \"bearing-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultBearingImage() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing-image");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…icator\", \"bearing-image\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultBearingImageAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing-image");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…icator\", \"bearing-image\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultBearingImage = getDefaultBearingImage();
            if (defaultBearingImage != null) {
                return Expression.INSTANCE.literal(defaultBearingImage);
            }
            return null;
        }

        public final Double getDefaultBearingImageSize() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing-image-size");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r\", \"bearing-image-size\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultBearingImageSizeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing-image-size");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r\", \"bearing-image-size\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultBearingImageSize = getDefaultBearingImageSize();
            if (defaultBearingImageSize == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultBearingImageSize.doubleValue());
        }

        public final StyleTransition getDefaultBearingImageSizeTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "bearing-image-size-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…g-image-size-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultEmphasisCircleColor() {
            Expression defaultEmphasisCircleColorAsExpression = getDefaultEmphasisCircleColorAsExpression();
            if (defaultEmphasisCircleColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultEmphasisCircleColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultEmphasisCircleColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"emphasis-circle-color\")");
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

        public final Integer getDefaultEmphasisCircleColorAsColorInt() {
            Expression defaultEmphasisCircleColorAsExpression = getDefaultEmphasisCircleColorAsExpression();
            if (defaultEmphasisCircleColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultEmphasisCircleColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultEmphasisCircleColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…circle-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultEmphasisCircleColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-circle-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultEmphasisCircleColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-circle-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultEmphasisCircleColorUseTheme = getDefaultEmphasisCircleColorUseTheme();
            if (defaultEmphasisCircleColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultEmphasisCircleColorUseTheme);
            }
            return null;
        }

        public final List<Double> getDefaultEmphasisCircleGlowRange() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-glow-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…hasis-circle-glow-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultEmphasisCircleGlowRangeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-glow-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…hasis-circle-glow-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultEmphasisCircleGlowRange = getDefaultEmphasisCircleGlowRange();
            if (defaultEmphasisCircleGlowRange != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultEmphasisCircleGlowRange);
            }
            return null;
        }

        public final StyleTransition getDefaultEmphasisCircleGlowRangeTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-glow-range-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e-glow-range-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultEmphasisCircleRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"emphasis-circle-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultEmphasisCircleRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"emphasis-circle-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultEmphasisCircleRadius = getDefaultEmphasisCircleRadius();
            if (defaultEmphasisCircleRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultEmphasisCircleRadius.doubleValue());
        }

        public final StyleTransition getDefaultEmphasisCircleRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "emphasis-circle-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ircle-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultImagePitchDisplacement() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "image-pitch-displacement");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…mage-pitch-displacement\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultImagePitchDisplacementAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "image-pitch-displacement");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…mage-pitch-displacement\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultImagePitchDisplacement = getDefaultImagePitchDisplacement();
            if (defaultImagePitchDisplacement == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultImagePitchDisplacement.doubleValue());
        }

        public final List<Double> getDefaultLocation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "location");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…n-indicator\", \"location\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultLocationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "location");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…n-indicator\", \"location\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultLocation = getDefaultLocation();
            if (defaultLocation != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultLocation);
            }
            return null;
        }

        public final StyleTransition getDefaultLocationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "location-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"location-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultLocationIndicatorOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "location-indicator-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ation-indicator-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultLocationIndicatorOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "location-indicator-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ation-indicator-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultLocationIndicatorOpacity = getDefaultLocationIndicatorOpacity();
            if (defaultLocationIndicatorOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultLocationIndicatorOpacity.doubleValue());
        }

        public final StyleTransition getDefaultLocationIndicatorOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "location-indicator-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ator-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultPerspectiveCompensation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "perspective-compensation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…erspective-compensation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultPerspectiveCompensationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "perspective-compensation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…erspective-compensation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultPerspectiveCompensation = getDefaultPerspectiveCompensation();
            if (defaultPerspectiveCompensation == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultPerspectiveCompensation.doubleValue());
        }

        public final String getDefaultShadowImage() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "shadow-image");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…dicator\", \"shadow-image\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultShadowImageAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "shadow-image");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…dicator\", \"shadow-image\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultShadowImage = getDefaultShadowImage();
            if (defaultShadowImage != null) {
                return Expression.INSTANCE.literal(defaultShadowImage);
            }
            return null;
        }

        public final Double getDefaultShadowImageSize() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "shadow-image-size");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…or\", \"shadow-image-size\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultShadowImageSizeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "shadow-image-size");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…or\", \"shadow-image-size\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultShadowImageSize = getDefaultShadowImageSize();
            if (defaultShadowImageSize == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultShadowImageSize.doubleValue());
        }

        public final StyleTransition getDefaultShadowImageSizeTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "shadow-image-size-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…w-image-size-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultTopImage() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "top-image");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-indicator\", \"top-image\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultTopImageAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "top-image");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-indicator\", \"top-image\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultTopImage = getDefaultTopImage();
            if (defaultTopImage != null) {
                return Expression.INSTANCE.literal(defaultTopImage);
            }
            return null;
        }

        public final Double getDefaultTopImageSize() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "top-image-size");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cator\", \"top-image-size\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultTopImageSizeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "top-image-size");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cator\", \"top-image-size\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultTopImageSize = getDefaultTopImageSize();
            if (defaultTopImageSize == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultTopImageSize.doubleValue());
        }

        public final StyleTransition getDefaultTopImageSizeTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("location-indicator", "top-image-size-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…p-image-size-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }
    }
}
