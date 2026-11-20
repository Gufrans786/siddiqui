package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.ModelElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.ModelScaleMode;
import com.mapbox.maps.extension.style.layers.properties.generated.ModelType;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010 \n\u0002\b7\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 Â\u00012\u00020\u00012\u00020\u0002:\u0002Â\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u000f\u0010º\u0001\u001a\u00020\u0004H\u0010¢\u0006\u0003\b»\u0001J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\bH\u0017J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000eH\u0017J\u0011\u0010\u001a\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J&\u0010\u001a\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\bH\u0017J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 H\u0017J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\bH\u0017J\u0012\u0010'\u001a\u00020\u00002\b\b\u0001\u0010'\u001a\u00020+H\u0017J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0004H\u0017J\u0010\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\bH\u0017J\u0010\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u000eH\u0017J\u0011\u00108\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J&\u00108\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0011\u0010;\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J&\u0010;\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0010\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\bH\u0017J\u0010\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0004H\u0017J\u0010\u0010D\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\bH\u0017J\u0010\u0010D\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u000eH\u0017J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\bH\u0017J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020KH\u0017J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\bH\u0017J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u000eH\u0017J\u0011\u0010X\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J&\u0010X\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\bH\u0017J\u0016\u0010[\u001a\u00020\u00002\f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u000e0\\H\u0017J\u0011\u0010c\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J&\u0010c\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0010\u0010f\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\bH\u0017J\u0010\u0010f\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u0004H\u0017J\u0010\u0010l\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\bH\u0017J\u0010\u0010l\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u000eH\u0017J\u0011\u0010r\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J&\u0010r\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0010\u0010u\u001a\u00020\u00002\u0006\u0010u\u001a\u00020\bH\u0017J\u0010\u0010u\u001a\u00020\u00002\u0006\u0010u\u001a\u00020 H\u0017J\u0010\u0010{\u001a\u00020\u00002\u0006\u0010{\u001a\u00020\bH\u0017J\u0016\u0010{\u001a\u00020\u00002\f\u0010{\u001a\b\u0012\u0004\u0012\u00020\u000e0\\H\u0017J\u0012\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J'\u0010\u0081\u0001\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0012\u0010\u0084\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020\bH\u0017J\u0012\u0010\u0084\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020\u000eH\u0017J\u0012\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J'\u0010\u008a\u0001\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u008d\u0001\u001a\u00020\bH\u0017J\u0018\u0010\u008d\u0001\u001a\u00020\u00002\r\u0010\u008d\u0001\u001a\b\u0012\u0004\u0012\u00020\u000e0\\H\u0017J\u0012\u0010\u0093\u0001\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\bH\u0017J\u0013\u0010\u0093\u0001\u001a\u00020\u00002\b\u0010\u0093\u0001\u001a\u00030\u0094\u0001H\u0017J\u0012\u0010\u009b\u0001\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J'\u0010\u009b\u0001\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0012\u0010\u009e\u0001\u001a\u00020\u00002\u0007\u0010\u009e\u0001\u001a\u00020\bH\u0017J\u0018\u0010\u009e\u0001\u001a\u00020\u00002\r\u0010\u009e\u0001\u001a\b\u0012\u0004\u0012\u00020\u000e0\\H\u0017J\u0012\u0010¤\u0001\u001a\u00020\u00002\u0007\u0010¼\u0001\u001a\u00020\u001bH\u0017J'\u0010¤\u0001\u001a\u00020\u00002\u001c\u0010½\u0001\u001a\u0017\u0012\u0005\u0012\u00030¿\u0001\u0012\u0005\u0012\u00030À\u00010¾\u0001¢\u0006\u0003\bÁ\u0001H\u0017J\u0012\u0010§\u0001\u001a\u00020\u00002\u0007\u0010§\u0001\u001a\u00020\bH\u0017J\u0013\u0010§\u0001\u001a\u00020\u00002\b\u0010§\u0001\u001a\u00030¨\u0001H\u0017J\u0012\u0010¯\u0001\u001a\u00020\u00002\u0007\u0010¯\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010²\u0001\u001a\u00020\u00002\u0007\u0010²\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010´\u0001\u001a\u00020\u00002\u0007\u0010´\u0001\u001a\u00020\bH\u0016J\u0013\u0010´\u0001\u001a\u00020\u00002\b\u0010´\u0001\u001a\u00030µ\u0001H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0010R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\nR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0015\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0015\u001a\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0015\u001a\u0004\b&\u0010\nR\u001c\u0010'\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0015\u001a\u0004\b)\u0010\fR\u001c\u0010*\u001a\u0004\u0018\u00010+8GX\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010\u0015\u001a\u0004\b-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\u0015\u001a\u0004\b1\u0010\nR\u001c\u00102\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0015\u001a\u0004\b4\u0010\u0010R\u001c\u00105\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b6\u0010\u0015\u001a\u0004\b7\u0010\nR\u001c\u00108\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b9\u0010\u0015\u001a\u0004\b:\u0010\u001eR\u001c\u0010;\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b<\u0010\u0015\u001a\u0004\b=\u0010\u001eR\u001c\u0010>\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b?\u0010\u0015\u001a\u0004\b@\u0010\fR\u001c\u0010A\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bB\u0010\u0015\u001a\u0004\bC\u0010\nR\u001c\u0010D\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bE\u0010\u0015\u001a\u0004\bF\u0010\u0010R\u001c\u0010G\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bH\u0010\u0015\u001a\u0004\bI\u0010\nR\u001c\u0010J\u001a\u0004\u0018\u00010K8FX\u0087\u0004¢\u0006\f\u0012\u0004\bL\u0010\u0015\u001a\u0004\bM\u0010NR\u001c\u0010O\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bP\u0010\u0015\u001a\u0004\bQ\u0010\nR\u001c\u0010R\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bS\u0010\u0015\u001a\u0004\bT\u0010\u0010R\u001c\u0010U\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bV\u0010\u0015\u001a\u0004\bW\u0010\nR\u001c\u0010X\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bY\u0010\u0015\u001a\u0004\bZ\u0010\u001eR\"\u0010[\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\\8FX\u0087\u0004¢\u0006\f\u0012\u0004\b]\u0010\u0015\u001a\u0004\b^\u0010_R\u001c\u0010`\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\ba\u0010\u0015\u001a\u0004\bb\u0010\nR\u001c\u0010c\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bd\u0010\u0015\u001a\u0004\be\u0010\u001eR\u001c\u0010f\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bg\u0010\u0015\u001a\u0004\bh\u0010\fR\u001c\u0010i\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bj\u0010\u0015\u001a\u0004\bk\u0010\nR\u001c\u0010l\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bm\u0010\u0015\u001a\u0004\bn\u0010\u0010R\u001c\u0010o\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bp\u0010\u0015\u001a\u0004\bq\u0010\nR\u001c\u0010r\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bs\u0010\u0015\u001a\u0004\bt\u0010\u001eR\u001c\u0010u\u001a\u0004\u0018\u00010 8FX\u0087\u0004¢\u0006\f\u0012\u0004\bv\u0010\u0015\u001a\u0004\bw\u0010#R\u001c\u0010x\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\by\u0010\u0015\u001a\u0004\bz\u0010\nR\"\u0010{\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\\8FX\u0087\u0004¢\u0006\f\u0012\u0004\b|\u0010\u0015\u001a\u0004\b}\u0010_R\u001d\u0010~\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\r\u0012\u0004\b\u007f\u0010\u0015\u001a\u0005\b\u0080\u0001\u0010\nR\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0082\u0001\u0010\u0015\u001a\u0005\b\u0083\u0001\u0010\u001eR\u001f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0085\u0001\u0010\u0015\u001a\u0005\b\u0086\u0001\u0010\u0010R\u001f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0088\u0001\u0010\u0015\u001a\u0005\b\u0089\u0001\u0010\nR\u001f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008b\u0001\u0010\u0015\u001a\u0005\b\u008c\u0001\u0010\u001eR%\u0010\u008d\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\\8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008e\u0001\u0010\u0015\u001a\u0005\b\u008f\u0001\u0010_R\u001f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0091\u0001\u0010\u0015\u001a\u0005\b\u0092\u0001\u0010\nR!\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0094\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b\u0095\u0001\u0010\u0015\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0099\u0001\u0010\u0015\u001a\u0005\b\u009a\u0001\u0010\nR\u001f\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009c\u0001\u0010\u0015\u001a\u0005\b\u009d\u0001\u0010\u001eR%\u0010\u009e\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\\8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009f\u0001\u0010\u0015\u001a\u0005\b \u0001\u0010_R\u001f\u0010¡\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¢\u0001\u0010\u0015\u001a\u0005\b£\u0001\u0010\nR\u001f\u0010¤\u0001\u001a\u0004\u0018\u00010\u001b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¥\u0001\u0010\u0015\u001a\u0005\b¦\u0001\u0010\u001eR!\u0010§\u0001\u001a\u0005\u0018\u00010¨\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b©\u0001\u0010\u0015\u001a\u0006\bª\u0001\u0010«\u0001R\u001f\u0010¬\u0001\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u00ad\u0001\u0010\u0015\u001a\u0005\b®\u0001\u0010\nR\u0018\u0010¯\u0001\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b°\u0001\u0010\fR\u0012\u0010\u0005\u001a\u00020\u0004¢\u0006\t\n\u0000\u001a\u0005\b±\u0001\u0010\fR\u0015\u0010²\u0001\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0007\u001a\u0005\b³\u0001\u0010\fR\u001a\u0010´\u0001\u001a\u0005\u0018\u00010µ\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b¶\u0001\u0010·\u0001R\u0018\u0010¸\u0001\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010\n¨\u0006Ã\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/ModelLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/ModelLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getLayerId", "()Ljava/lang/String;", "maxZoom", "", "getMaxZoom", "()Ljava/lang/Double;", "minZoom", "getMinZoom", "modelAmbientOcclusionIntensity", "getModelAmbientOcclusionIntensity$annotations", "()V", "getModelAmbientOcclusionIntensity", "modelAmbientOcclusionIntensityAsExpression", "getModelAmbientOcclusionIntensityAsExpression$annotations", "getModelAmbientOcclusionIntensityAsExpression", "modelAmbientOcclusionIntensityTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getModelAmbientOcclusionIntensityTransition$annotations", "getModelAmbientOcclusionIntensityTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "modelCastShadows", "", "getModelCastShadows$annotations", "getModelCastShadows", "()Ljava/lang/Boolean;", "modelCastShadowsAsExpression", "getModelCastShadowsAsExpression$annotations", "getModelCastShadowsAsExpression", "modelColor", "getModelColor$annotations", "getModelColor", "modelColorAsColorInt", "", "getModelColorAsColorInt$annotations", "getModelColorAsColorInt", "()Ljava/lang/Integer;", "modelColorAsExpression", "getModelColorAsExpression$annotations", "getModelColorAsExpression", "modelColorMixIntensity", "getModelColorMixIntensity$annotations", "getModelColorMixIntensity", "modelColorMixIntensityAsExpression", "getModelColorMixIntensityAsExpression$annotations", "getModelColorMixIntensityAsExpression", "modelColorMixIntensityTransition", "getModelColorMixIntensityTransition$annotations", "getModelColorMixIntensityTransition", "modelColorTransition", "getModelColorTransition$annotations", "getModelColorTransition", "modelColorUseTheme", "getModelColorUseTheme$annotations", "getModelColorUseTheme", "modelColorUseThemeAsExpression", "getModelColorUseThemeAsExpression$annotations", "getModelColorUseThemeAsExpression", "modelCutoffFadeRange", "getModelCutoffFadeRange$annotations", "getModelCutoffFadeRange", "modelCutoffFadeRangeAsExpression", "getModelCutoffFadeRangeAsExpression$annotations", "getModelCutoffFadeRangeAsExpression", "modelElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelElevationReference;", "getModelElevationReference$annotations", "getModelElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelElevationReference;", "modelElevationReferenceAsExpression", "getModelElevationReferenceAsExpression$annotations", "getModelElevationReferenceAsExpression", "modelEmissiveStrength", "getModelEmissiveStrength$annotations", "getModelEmissiveStrength", "modelEmissiveStrengthAsExpression", "getModelEmissiveStrengthAsExpression$annotations", "getModelEmissiveStrengthAsExpression", "modelEmissiveStrengthTransition", "getModelEmissiveStrengthTransition$annotations", "getModelEmissiveStrengthTransition", "modelHeightBasedEmissiveStrengthMultiplier", "", "getModelHeightBasedEmissiveStrengthMultiplier$annotations", "getModelHeightBasedEmissiveStrengthMultiplier", "()Ljava/util/List;", "modelHeightBasedEmissiveStrengthMultiplierAsExpression", "getModelHeightBasedEmissiveStrengthMultiplierAsExpression$annotations", "getModelHeightBasedEmissiveStrengthMultiplierAsExpression", "modelHeightBasedEmissiveStrengthMultiplierTransition", "getModelHeightBasedEmissiveStrengthMultiplierTransition$annotations", "getModelHeightBasedEmissiveStrengthMultiplierTransition", "modelId", "getModelId$annotations", "getModelId", "modelIdAsExpression", "getModelIdAsExpression$annotations", "getModelIdAsExpression", "modelOpacity", "getModelOpacity$annotations", "getModelOpacity", "modelOpacityAsExpression", "getModelOpacityAsExpression$annotations", "getModelOpacityAsExpression", "modelOpacityTransition", "getModelOpacityTransition$annotations", "getModelOpacityTransition", "modelReceiveShadows", "getModelReceiveShadows$annotations", "getModelReceiveShadows", "modelReceiveShadowsAsExpression", "getModelReceiveShadowsAsExpression$annotations", "getModelReceiveShadowsAsExpression", "modelRotation", "getModelRotation$annotations", "getModelRotation", "modelRotationAsExpression", "getModelRotationAsExpression$annotations", "getModelRotationAsExpression", "modelRotationTransition", "getModelRotationTransition$annotations", "getModelRotationTransition", "modelRoughness", "getModelRoughness$annotations", "getModelRoughness", "modelRoughnessAsExpression", "getModelRoughnessAsExpression$annotations", "getModelRoughnessAsExpression", "modelRoughnessTransition", "getModelRoughnessTransition$annotations", "getModelRoughnessTransition", "modelScale", "getModelScale$annotations", "getModelScale", "modelScaleAsExpression", "getModelScaleAsExpression$annotations", "getModelScaleAsExpression", "modelScaleMode", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelScaleMode;", "getModelScaleMode$annotations", "getModelScaleMode", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelScaleMode;", "modelScaleModeAsExpression", "getModelScaleModeAsExpression$annotations", "getModelScaleModeAsExpression", "modelScaleTransition", "getModelScaleTransition$annotations", "getModelScaleTransition", "modelTranslation", "getModelTranslation$annotations", "getModelTranslation", "modelTranslationAsExpression", "getModelTranslationAsExpression$annotations", "getModelTranslationAsExpression", "modelTranslationTransition", "getModelTranslationTransition$annotations", "getModelTranslationTransition", "modelType", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelType;", "getModelType$annotations", "getModelType", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelType;", "modelTypeAsExpression", "getModelTypeAsExpression$annotations", "getModelTypeAsExpression", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "getType", "getType$extension_style_release", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ModelLayer extends Layer implements ModelLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getModelAmbientOcclusionIntensity$annotations() {
    }

    public static void getModelAmbientOcclusionIntensityAsExpression$annotations() {
    }

    public static void getModelAmbientOcclusionIntensityTransition$annotations() {
    }

    public static void getModelCastShadows$annotations() {
    }

    public static void getModelCastShadowsAsExpression$annotations() {
    }

    public static void getModelColor$annotations() {
    }

    public static void getModelColorAsColorInt$annotations() {
    }

    public static void getModelColorAsExpression$annotations() {
    }

    public static void getModelColorMixIntensity$annotations() {
    }

    public static void getModelColorMixIntensityAsExpression$annotations() {
    }

    public static void getModelColorMixIntensityTransition$annotations() {
    }

    public static void getModelColorTransition$annotations() {
    }

    public static void getModelColorUseTheme$annotations() {
    }

    public static void getModelColorUseThemeAsExpression$annotations() {
    }

    public static void getModelCutoffFadeRange$annotations() {
    }

    public static void getModelCutoffFadeRangeAsExpression$annotations() {
    }

    public static void getModelElevationReference$annotations() {
    }

    public static void getModelElevationReferenceAsExpression$annotations() {
    }

    public static void getModelEmissiveStrength$annotations() {
    }

    public static void getModelEmissiveStrengthAsExpression$annotations() {
    }

    public static void getModelEmissiveStrengthTransition$annotations() {
    }

    public static void getModelHeightBasedEmissiveStrengthMultiplier$annotations() {
    }

    public static void getModelHeightBasedEmissiveStrengthMultiplierAsExpression$annotations() {
    }

    public static void getModelHeightBasedEmissiveStrengthMultiplierTransition$annotations() {
    }

    public static void getModelId$annotations() {
    }

    public static void getModelIdAsExpression$annotations() {
    }

    public static void getModelOpacity$annotations() {
    }

    public static void getModelOpacityAsExpression$annotations() {
    }

    public static void getModelOpacityTransition$annotations() {
    }

    public static void getModelReceiveShadows$annotations() {
    }

    public static void getModelReceiveShadowsAsExpression$annotations() {
    }

    public static void getModelRotation$annotations() {
    }

    public static void getModelRotationAsExpression$annotations() {
    }

    public static void getModelRotationTransition$annotations() {
    }

    public static void getModelRoughness$annotations() {
    }

    public static void getModelRoughnessAsExpression$annotations() {
    }

    public static void getModelRoughnessTransition$annotations() {
    }

    public static void getModelScale$annotations() {
    }

    public static void getModelScaleAsExpression$annotations() {
    }

    public static void getModelScaleMode$annotations() {
    }

    public static void getModelScaleModeAsExpression$annotations() {
    }

    public static void getModelScaleTransition$annotations() {
    }

    public static void getModelTranslation$annotations() {
    }

    public static void getModelTranslationAsExpression$annotations() {
    }

    public static void getModelTranslationTransition$annotations() {
    }

    public static void getModelType$annotations() {
    }

    public static void getModelTypeAsExpression$annotations() {
    }

    public ModelLayer(String layerId, String sourceId) {
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
    public ModelLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public ModelLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public ModelLayer filter(Expression filter) {
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
    public ModelLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public ModelLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public ModelLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public ModelLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final String getModelId() {
        return (String) getPropertyValueWithType("model-id", String.class);
    }

    @Override
    public ModelLayer modelId(String modelId) {
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        setProperty$extension_style_release(new PropertyValue<>("model-id", modelId));
        return this;
    }

    public final Expression getModelIdAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-id");
    }

    @Override
    public ModelLayer modelId(Expression modelId) {
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        setProperty$extension_style_release(new PropertyValue<>("model-id", modelId));
        return this;
    }

    public final Double getModelAmbientOcclusionIntensity() {
        return (Double) getPropertyValueWithType("model-ambient-occlusion-intensity", Double.class);
    }

    @Override
    public ModelLayer modelAmbientOcclusionIntensity(double modelAmbientOcclusionIntensity) {
        setProperty$extension_style_release(new PropertyValue<>("model-ambient-occlusion-intensity", Double.valueOf(modelAmbientOcclusionIntensity)));
        return this;
    }

    public final Expression getModelAmbientOcclusionIntensityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-ambient-occlusion-intensity");
    }

    @Override
    public ModelLayer modelAmbientOcclusionIntensity(Expression modelAmbientOcclusionIntensity) {
        Intrinsics.checkNotNullParameter(modelAmbientOcclusionIntensity, "modelAmbientOcclusionIntensity");
        setProperty$extension_style_release(new PropertyValue<>("model-ambient-occlusion-intensity", modelAmbientOcclusionIntensity));
        return this;
    }

    public final StyleTransition getModelAmbientOcclusionIntensityTransition() {
        return (StyleTransition) getPropertyValueWithType("model-ambient-occlusion-intensity-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelAmbientOcclusionIntensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-ambient-occlusion-intensity-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelAmbientOcclusionIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelAmbientOcclusionIntensityTransition(builder.build());
        return this;
    }

    public final Boolean getModelCastShadows() {
        return (Boolean) getPropertyValueWithType("model-cast-shadows", Boolean.class);
    }

    @Override
    public ModelLayer modelCastShadows(boolean modelCastShadows) {
        setProperty$extension_style_release(new PropertyValue<>("model-cast-shadows", Boolean.valueOf(modelCastShadows)));
        return this;
    }

    public final Expression getModelCastShadowsAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-cast-shadows");
    }

    @Override
    public ModelLayer modelCastShadows(Expression modelCastShadows) {
        Intrinsics.checkNotNullParameter(modelCastShadows, "modelCastShadows");
        setProperty$extension_style_release(new PropertyValue<>("model-cast-shadows", modelCastShadows));
        return this;
    }

    public final String getModelColor() {
        Expression modelColorAsExpression = getModelColorAsExpression();
        if (modelColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(modelColorAsExpression);
        }
        return null;
    }

    @Override
    public ModelLayer modelColor(String modelColor) {
        Intrinsics.checkNotNullParameter(modelColor, "modelColor");
        setProperty$extension_style_release(new PropertyValue<>("model-color", modelColor));
        return this;
    }

    public final Expression getModelColorAsExpression() {
        return (Expression) getPropertyValueWithType("model-color", Expression.class);
    }

    @Override
    public ModelLayer modelColor(Expression modelColor) {
        Intrinsics.checkNotNullParameter(modelColor, "modelColor");
        setProperty$extension_style_release(new PropertyValue<>("model-color", modelColor));
        return this;
    }

    public final Integer getModelColorAsColorInt() {
        Expression modelColorAsExpression = getModelColorAsExpression();
        if (modelColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(modelColorAsExpression);
        }
        return null;
    }

    @Override
    public ModelLayer modelColor(int modelColor) {
        setProperty$extension_style_release(new PropertyValue<>("model-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(modelColor)));
        return this;
    }

    public final StyleTransition getModelColorTransition() {
        return (StyleTransition) getPropertyValueWithType("model-color-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-color-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelColorTransition(builder.build());
        return this;
    }

    public final String getModelColorUseTheme() {
        return (String) getPropertyValueWithType("model-color-use-theme", String.class);
    }

    @Override
    public ModelLayer modelColorUseTheme(String modelColorUseTheme) {
        Intrinsics.checkNotNullParameter(modelColorUseTheme, "modelColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("model-color-use-theme", modelColorUseTheme));
        return this;
    }

    public final Expression getModelColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-color-use-theme");
    }

    @Override
    public ModelLayer modelColorUseTheme(Expression modelColorUseTheme) {
        Intrinsics.checkNotNullParameter(modelColorUseTheme, "modelColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("model-color-use-theme", modelColorUseTheme));
        return this;
    }

    public final Double getModelColorMixIntensity() {
        return (Double) getPropertyValueWithType("model-color-mix-intensity", Double.class);
    }

    @Override
    public ModelLayer modelColorMixIntensity(double modelColorMixIntensity) {
        setProperty$extension_style_release(new PropertyValue<>("model-color-mix-intensity", Double.valueOf(modelColorMixIntensity)));
        return this;
    }

    public final Expression getModelColorMixIntensityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-color-mix-intensity");
    }

    @Override
    public ModelLayer modelColorMixIntensity(Expression modelColorMixIntensity) {
        Intrinsics.checkNotNullParameter(modelColorMixIntensity, "modelColorMixIntensity");
        setProperty$extension_style_release(new PropertyValue<>("model-color-mix-intensity", modelColorMixIntensity));
        return this;
    }

    public final StyleTransition getModelColorMixIntensityTransition() {
        return (StyleTransition) getPropertyValueWithType("model-color-mix-intensity-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelColorMixIntensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-color-mix-intensity-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelColorMixIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelColorMixIntensityTransition(builder.build());
        return this;
    }

    public final Double getModelCutoffFadeRange() {
        return (Double) getPropertyValueWithType("model-cutoff-fade-range", Double.class);
    }

    @Override
    public ModelLayer modelCutoffFadeRange(double modelCutoffFadeRange) {
        setProperty$extension_style_release(new PropertyValue<>("model-cutoff-fade-range", Double.valueOf(modelCutoffFadeRange)));
        return this;
    }

    public final Expression getModelCutoffFadeRangeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-cutoff-fade-range");
    }

    @Override
    public ModelLayer modelCutoffFadeRange(Expression modelCutoffFadeRange) {
        Intrinsics.checkNotNullParameter(modelCutoffFadeRange, "modelCutoffFadeRange");
        setProperty$extension_style_release(new PropertyValue<>("model-cutoff-fade-range", modelCutoffFadeRange));
        return this;
    }

    public final ModelElevationReference getModelElevationReference() {
        String str = (String) getPropertyValueWithType("model-elevation-reference", String.class);
        if (str == null) {
            return null;
        }
        ModelElevationReference.Companion companion = ModelElevationReference.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public ModelLayer modelElevationReference(ModelElevationReference modelElevationReference) {
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("model-elevation-reference", modelElevationReference));
        return this;
    }

    public final Expression getModelElevationReferenceAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("model-elevation-reference", Expression.class);
        if (expression != null) {
            return expression;
        }
        ModelElevationReference modelElevationReference = getModelElevationReference();
        if (modelElevationReference != null) {
            return Expression.INSTANCE.literal(modelElevationReference.getValue());
        }
        return null;
    }

    @Override
    public ModelLayer modelElevationReference(Expression modelElevationReference) {
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
        setProperty$extension_style_release(new PropertyValue<>("model-elevation-reference", modelElevationReference));
        return this;
    }

    public final Double getModelEmissiveStrength() {
        return (Double) getPropertyValueWithType("model-emissive-strength", Double.class);
    }

    @Override
    public ModelLayer modelEmissiveStrength(double modelEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("model-emissive-strength", Double.valueOf(modelEmissiveStrength)));
        return this;
    }

    public final Expression getModelEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-emissive-strength");
    }

    @Override
    public ModelLayer modelEmissiveStrength(Expression modelEmissiveStrength) {
        Intrinsics.checkNotNullParameter(modelEmissiveStrength, "modelEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("model-emissive-strength", modelEmissiveStrength));
        return this;
    }

    public final StyleTransition getModelEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("model-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-emissive-strength-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final List<Double> getModelHeightBasedEmissiveStrengthMultiplier() {
        return (List) getPropertyValueWithType("model-height-based-emissive-strength-multiplier", List.class);
    }

    @Override
    public ModelLayer modelHeightBasedEmissiveStrengthMultiplier(List<Double> modelHeightBasedEmissiveStrengthMultiplier) {
        Intrinsics.checkNotNullParameter(modelHeightBasedEmissiveStrengthMultiplier, "modelHeightBasedEmissiveStrengthMultiplier");
        setProperty$extension_style_release(new PropertyValue<>("model-height-based-emissive-strength-multiplier", modelHeightBasedEmissiveStrengthMultiplier));
        return this;
    }

    public final Expression getModelHeightBasedEmissiveStrengthMultiplierAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-height-based-emissive-strength-multiplier");
    }

    @Override
    public ModelLayer modelHeightBasedEmissiveStrengthMultiplier(Expression modelHeightBasedEmissiveStrengthMultiplier) {
        Intrinsics.checkNotNullParameter(modelHeightBasedEmissiveStrengthMultiplier, "modelHeightBasedEmissiveStrengthMultiplier");
        setProperty$extension_style_release(new PropertyValue<>("model-height-based-emissive-strength-multiplier", modelHeightBasedEmissiveStrengthMultiplier));
        return this;
    }

    public final StyleTransition getModelHeightBasedEmissiveStrengthMultiplierTransition() {
        return (StyleTransition) getPropertyValueWithType("model-height-based-emissive-strength-multiplier-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelHeightBasedEmissiveStrengthMultiplierTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-height-based-emissive-strength-multiplier-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelHeightBasedEmissiveStrengthMultiplierTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelHeightBasedEmissiveStrengthMultiplierTransition(builder.build());
        return this;
    }

    public final Double getModelOpacity() {
        return (Double) getPropertyValueWithType("model-opacity", Double.class);
    }

    @Override
    public ModelLayer modelOpacity(double modelOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("model-opacity", Double.valueOf(modelOpacity)));
        return this;
    }

    public final Expression getModelOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-opacity");
    }

    @Override
    public ModelLayer modelOpacity(Expression modelOpacity) {
        Intrinsics.checkNotNullParameter(modelOpacity, "modelOpacity");
        setProperty$extension_style_release(new PropertyValue<>("model-opacity", modelOpacity));
        return this;
    }

    public final StyleTransition getModelOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("model-opacity-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-opacity-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelOpacityTransition(builder.build());
        return this;
    }

    public final Boolean getModelReceiveShadows() {
        return (Boolean) getPropertyValueWithType("model-receive-shadows", Boolean.class);
    }

    @Override
    public ModelLayer modelReceiveShadows(boolean modelReceiveShadows) {
        setProperty$extension_style_release(new PropertyValue<>("model-receive-shadows", Boolean.valueOf(modelReceiveShadows)));
        return this;
    }

    public final Expression getModelReceiveShadowsAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-receive-shadows");
    }

    @Override
    public ModelLayer modelReceiveShadows(Expression modelReceiveShadows) {
        Intrinsics.checkNotNullParameter(modelReceiveShadows, "modelReceiveShadows");
        setProperty$extension_style_release(new PropertyValue<>("model-receive-shadows", modelReceiveShadows));
        return this;
    }

    public final List<Double> getModelRotation() {
        return (List) getPropertyValueWithType("model-rotation", List.class);
    }

    @Override
    public ModelLayer modelRotation(List<Double> modelRotation) {
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        setProperty$extension_style_release(new PropertyValue<>("model-rotation", modelRotation));
        return this;
    }

    public final Expression getModelRotationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-rotation");
    }

    @Override
    public ModelLayer modelRotation(Expression modelRotation) {
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        setProperty$extension_style_release(new PropertyValue<>("model-rotation", modelRotation));
        return this;
    }

    public final StyleTransition getModelRotationTransition() {
        return (StyleTransition) getPropertyValueWithType("model-rotation-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelRotationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-rotation-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelRotationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelRotationTransition(builder.build());
        return this;
    }

    public final Double getModelRoughness() {
        return (Double) getPropertyValueWithType("model-roughness", Double.class);
    }

    @Override
    public ModelLayer modelRoughness(double modelRoughness) {
        setProperty$extension_style_release(new PropertyValue<>("model-roughness", Double.valueOf(modelRoughness)));
        return this;
    }

    public final Expression getModelRoughnessAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-roughness");
    }

    @Override
    public ModelLayer modelRoughness(Expression modelRoughness) {
        Intrinsics.checkNotNullParameter(modelRoughness, "modelRoughness");
        setProperty$extension_style_release(new PropertyValue<>("model-roughness", modelRoughness));
        return this;
    }

    public final StyleTransition getModelRoughnessTransition() {
        return (StyleTransition) getPropertyValueWithType("model-roughness-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelRoughnessTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-roughness-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelRoughnessTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelRoughnessTransition(builder.build());
        return this;
    }

    public final List<Double> getModelScale() {
        return (List) getPropertyValueWithType("model-scale", List.class);
    }

    @Override
    public ModelLayer modelScale(List<Double> modelScale) {
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        setProperty$extension_style_release(new PropertyValue<>("model-scale", modelScale));
        return this;
    }

    public final Expression getModelScaleAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-scale");
    }

    @Override
    public ModelLayer modelScale(Expression modelScale) {
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        setProperty$extension_style_release(new PropertyValue<>("model-scale", modelScale));
        return this;
    }

    public final StyleTransition getModelScaleTransition() {
        return (StyleTransition) getPropertyValueWithType("model-scale-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelScaleTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-scale-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelScaleTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelScaleTransition(builder.build());
        return this;
    }

    public final ModelScaleMode getModelScaleMode() {
        String str = (String) getPropertyValueWithType("model-scale-mode", String.class);
        if (str == null) {
            return null;
        }
        ModelScaleMode.Companion companion = ModelScaleMode.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public ModelLayer modelScaleMode(ModelScaleMode modelScaleMode) {
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        setProperty$extension_style_release(new PropertyValue<>("model-scale-mode", modelScaleMode));
        return this;
    }

    public final Expression getModelScaleModeAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("model-scale-mode", Expression.class);
        if (expression != null) {
            return expression;
        }
        ModelScaleMode modelScaleMode = getModelScaleMode();
        if (modelScaleMode != null) {
            return Expression.INSTANCE.literal(modelScaleMode.getValue());
        }
        return null;
    }

    @Override
    public ModelLayer modelScaleMode(Expression modelScaleMode) {
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        setProperty$extension_style_release(new PropertyValue<>("model-scale-mode", modelScaleMode));
        return this;
    }

    public final List<Double> getModelTranslation() {
        return (List) getPropertyValueWithType("model-translation", List.class);
    }

    @Override
    public ModelLayer modelTranslation(List<Double> modelTranslation) {
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        setProperty$extension_style_release(new PropertyValue<>("model-translation", modelTranslation));
        return this;
    }

    public final Expression getModelTranslationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("model-translation");
    }

    @Override
    public ModelLayer modelTranslation(Expression modelTranslation) {
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        setProperty$extension_style_release(new PropertyValue<>("model-translation", modelTranslation));
        return this;
    }

    public final StyleTransition getModelTranslationTransition() {
        return (StyleTransition) getPropertyValueWithType("model-translation-transition", StyleTransition.class);
    }

    @Override
    public ModelLayer modelTranslationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("model-translation-transition", options));
        return this;
    }

    @Override
    public ModelLayer modelTranslationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        modelTranslationTransition(builder.build());
        return this;
    }

    public final ModelType getModelType() {
        String str = (String) getPropertyValueWithType("model-type", String.class);
        if (str == null) {
            return null;
        }
        ModelType.Companion companion = ModelType.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public ModelLayer modelType(ModelType modelType) {
        Intrinsics.checkNotNullParameter(modelType, "modelType");
        setProperty$extension_style_release(new PropertyValue<>("model-type", modelType));
        return this;
    }

    public final Expression getModelTypeAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("model-type", Expression.class);
        if (expression != null) {
            return expression;
        }
        ModelType modelType = getModelType();
        if (modelType != null) {
            return Expression.INSTANCE.literal(modelType.getValue());
        }
        return null;
    }

    @Override
    public ModelLayer modelType(Expression modelType) {
        Intrinsics.checkNotNullParameter(modelType, "modelType");
        setProperty$extension_style_release(new PropertyValue<>("model-type", modelType));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return ModelSourceWrapper.TYPE;
    }

    @Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010 \n\u0002\b7\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00178FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0002\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u0010R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u0002\u001a\u0004\b!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$8GX\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0002\u001a\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b)\u0010\u0002\u001a\u0004\b*\u0010\u0010R\u001c\u0010+\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010\u0002\u001a\u0004\b-\u0010\u0006R\u001c\u0010.\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010\u0002\u001a\u0004\b0\u0010\u0010R\u001c\u00101\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b2\u0010\u0002\u001a\u0004\b3\u0010\u0015R\u001c\u00104\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b5\u0010\u0002\u001a\u0004\b6\u0010\u0015R\u001c\u00107\u001a\u0004\u0018\u00010\u001f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010\u0002\u001a\u0004\b9\u0010\"R\u001c\u0010:\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b;\u0010\u0002\u001a\u0004\b<\u0010\u0010R\u001c\u0010=\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b>\u0010\u0002\u001a\u0004\b?\u0010\u0006R\u001c\u0010@\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bA\u0010\u0002\u001a\u0004\bB\u0010\u0010R\u001c\u0010C\u001a\u0004\u0018\u00010D8FX\u0087\u0004¢\u0006\f\u0012\u0004\bE\u0010\u0002\u001a\u0004\bF\u0010GR\u001c\u0010H\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bI\u0010\u0002\u001a\u0004\bJ\u0010\u0010R\u001c\u0010K\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bL\u0010\u0002\u001a\u0004\bM\u0010\u0006R\u001c\u0010N\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bO\u0010\u0002\u001a\u0004\bP\u0010\u0010R\u001c\u0010Q\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\bR\u0010\u0002\u001a\u0004\bS\u0010\u0015R\"\u0010T\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010U8FX\u0087\u0004¢\u0006\f\u0012\u0004\bV\u0010\u0002\u001a\u0004\bW\u0010XR\u001c\u0010Y\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bZ\u0010\u0002\u001a\u0004\b[\u0010\u0010R\u001c\u0010\\\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b]\u0010\u0002\u001a\u0004\b^\u0010\u0015R\u001c\u0010_\u001a\u0004\u0018\u00010\u001f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b`\u0010\u0002\u001a\u0004\ba\u0010\"R\u001c\u0010b\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bc\u0010\u0002\u001a\u0004\bd\u0010\u0010R\u001c\u0010e\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bf\u0010\u0002\u001a\u0004\bg\u0010\u0006R\u001c\u0010h\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bi\u0010\u0002\u001a\u0004\bj\u0010\u0010R\u001c\u0010k\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\bl\u0010\u0002\u001a\u0004\bm\u0010\u0015R\u001c\u0010n\u001a\u0004\u0018\u00010\u00178FX\u0087\u0004¢\u0006\f\u0012\u0004\bo\u0010\u0002\u001a\u0004\bp\u0010\u001aR\u001c\u0010q\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\br\u0010\u0002\u001a\u0004\bs\u0010\u0010R\"\u0010t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010U8FX\u0087\u0004¢\u0006\f\u0012\u0004\bu\u0010\u0002\u001a\u0004\bv\u0010XR\u001c\u0010w\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bx\u0010\u0002\u001a\u0004\by\u0010\u0010R\u001c\u0010z\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b{\u0010\u0002\u001a\u0004\b|\u0010\u0015R\u001c\u0010}\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b~\u0010\u0002\u001a\u0004\b\u007f\u0010\u0006R\u001f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0081\u0001\u0010\u0002\u001a\u0005\b\u0082\u0001\u0010\u0010R\u001f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0084\u0001\u0010\u0002\u001a\u0005\b\u0085\u0001\u0010\u0015R%\u0010\u0086\u0001\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010U8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0087\u0001\u0010\u0002\u001a\u0005\b\u0088\u0001\u0010XR\u001f\u0010\u0089\u0001\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008a\u0001\u0010\u0002\u001a\u0005\b\u008b\u0001\u0010\u0010R!\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b\u008e\u0001\u0010\u0002\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0092\u0001\u0010\u0002\u001a\u0005\b\u0093\u0001\u0010\u0010R\u001f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0095\u0001\u0010\u0002\u001a\u0005\b\u0096\u0001\u0010\u0015R%\u0010\u0097\u0001\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010U8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0098\u0001\u0010\u0002\u001a\u0005\b\u0099\u0001\u0010XR\u001f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009b\u0001\u0010\u0002\u001a\u0005\b\u009c\u0001\u0010\u0010R\u001f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009e\u0001\u0010\u0002\u001a\u0005\b\u009f\u0001\u0010\u0015R!\u0010 \u0001\u001a\u0005\u0018\u00010¡\u00018FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b¢\u0001\u0010\u0002\u001a\u0006\b£\u0001\u0010¤\u0001R\u001f\u0010¥\u0001\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¦\u0001\u0010\u0002\u001a\u0005\b§\u0001\u0010\u0010R\u0017\u0010¨\u0001\u001a\u0005\u0018\u00010©\u00018F¢\u0006\b\u001a\u0006\bª\u0001\u0010«\u0001¨\u0006¬\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/ModelLayer$Companion;", "", "()V", "defaultMaxZoom", "", "getDefaultMaxZoom", "()Ljava/lang/Double;", "defaultMinZoom", "getDefaultMinZoom", "defaultModelAmbientOcclusionIntensity", "getDefaultModelAmbientOcclusionIntensity$annotations", "getDefaultModelAmbientOcclusionIntensity", "defaultModelAmbientOcclusionIntensityAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultModelAmbientOcclusionIntensityAsExpression$annotations", "getDefaultModelAmbientOcclusionIntensityAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultModelAmbientOcclusionIntensityTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultModelAmbientOcclusionIntensityTransition$annotations", "getDefaultModelAmbientOcclusionIntensityTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultModelCastShadows", "", "getDefaultModelCastShadows$annotations", "getDefaultModelCastShadows", "()Ljava/lang/Boolean;", "defaultModelCastShadowsAsExpression", "getDefaultModelCastShadowsAsExpression$annotations", "getDefaultModelCastShadowsAsExpression", "defaultModelColor", "", "getDefaultModelColor$annotations", "getDefaultModelColor", "()Ljava/lang/String;", "defaultModelColorAsColorInt", "", "getDefaultModelColorAsColorInt$annotations", "getDefaultModelColorAsColorInt", "()Ljava/lang/Integer;", "defaultModelColorAsExpression", "getDefaultModelColorAsExpression$annotations", "getDefaultModelColorAsExpression", "defaultModelColorMixIntensity", "getDefaultModelColorMixIntensity$annotations", "getDefaultModelColorMixIntensity", "defaultModelColorMixIntensityAsExpression", "getDefaultModelColorMixIntensityAsExpression$annotations", "getDefaultModelColorMixIntensityAsExpression", "defaultModelColorMixIntensityTransition", "getDefaultModelColorMixIntensityTransition$annotations", "getDefaultModelColorMixIntensityTransition", "defaultModelColorTransition", "getDefaultModelColorTransition$annotations", "getDefaultModelColorTransition", "defaultModelColorUseTheme", "getDefaultModelColorUseTheme$annotations", "getDefaultModelColorUseTheme", "defaultModelColorUseThemeAsExpression", "getDefaultModelColorUseThemeAsExpression$annotations", "getDefaultModelColorUseThemeAsExpression", "defaultModelCutoffFadeRange", "getDefaultModelCutoffFadeRange$annotations", "getDefaultModelCutoffFadeRange", "defaultModelCutoffFadeRangeAsExpression", "getDefaultModelCutoffFadeRangeAsExpression$annotations", "getDefaultModelCutoffFadeRangeAsExpression", "defaultModelElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelElevationReference;", "getDefaultModelElevationReference$annotations", "getDefaultModelElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelElevationReference;", "defaultModelElevationReferenceAsExpression", "getDefaultModelElevationReferenceAsExpression$annotations", "getDefaultModelElevationReferenceAsExpression", "defaultModelEmissiveStrength", "getDefaultModelEmissiveStrength$annotations", "getDefaultModelEmissiveStrength", "defaultModelEmissiveStrengthAsExpression", "getDefaultModelEmissiveStrengthAsExpression$annotations", "getDefaultModelEmissiveStrengthAsExpression", "defaultModelEmissiveStrengthTransition", "getDefaultModelEmissiveStrengthTransition$annotations", "getDefaultModelEmissiveStrengthTransition", "defaultModelHeightBasedEmissiveStrengthMultiplier", "", "getDefaultModelHeightBasedEmissiveStrengthMultiplier$annotations", "getDefaultModelHeightBasedEmissiveStrengthMultiplier", "()Ljava/util/List;", "defaultModelHeightBasedEmissiveStrengthMultiplierAsExpression", "getDefaultModelHeightBasedEmissiveStrengthMultiplierAsExpression$annotations", "getDefaultModelHeightBasedEmissiveStrengthMultiplierAsExpression", "defaultModelHeightBasedEmissiveStrengthMultiplierTransition", "getDefaultModelHeightBasedEmissiveStrengthMultiplierTransition$annotations", "getDefaultModelHeightBasedEmissiveStrengthMultiplierTransition", "defaultModelId", "getDefaultModelId$annotations", "getDefaultModelId", "defaultModelIdAsExpression", "getDefaultModelIdAsExpression$annotations", "getDefaultModelIdAsExpression", "defaultModelOpacity", "getDefaultModelOpacity$annotations", "getDefaultModelOpacity", "defaultModelOpacityAsExpression", "getDefaultModelOpacityAsExpression$annotations", "getDefaultModelOpacityAsExpression", "defaultModelOpacityTransition", "getDefaultModelOpacityTransition$annotations", "getDefaultModelOpacityTransition", "defaultModelReceiveShadows", "getDefaultModelReceiveShadows$annotations", "getDefaultModelReceiveShadows", "defaultModelReceiveShadowsAsExpression", "getDefaultModelReceiveShadowsAsExpression$annotations", "getDefaultModelReceiveShadowsAsExpression", "defaultModelRotation", "getDefaultModelRotation$annotations", "getDefaultModelRotation", "defaultModelRotationAsExpression", "getDefaultModelRotationAsExpression$annotations", "getDefaultModelRotationAsExpression", "defaultModelRotationTransition", "getDefaultModelRotationTransition$annotations", "getDefaultModelRotationTransition", "defaultModelRoughness", "getDefaultModelRoughness$annotations", "getDefaultModelRoughness", "defaultModelRoughnessAsExpression", "getDefaultModelRoughnessAsExpression$annotations", "getDefaultModelRoughnessAsExpression", "defaultModelRoughnessTransition", "getDefaultModelRoughnessTransition$annotations", "getDefaultModelRoughnessTransition", "defaultModelScale", "getDefaultModelScale$annotations", "getDefaultModelScale", "defaultModelScaleAsExpression", "getDefaultModelScaleAsExpression$annotations", "getDefaultModelScaleAsExpression", "defaultModelScaleMode", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelScaleMode;", "getDefaultModelScaleMode$annotations", "getDefaultModelScaleMode", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelScaleMode;", "defaultModelScaleModeAsExpression", "getDefaultModelScaleModeAsExpression$annotations", "getDefaultModelScaleModeAsExpression", "defaultModelScaleTransition", "getDefaultModelScaleTransition$annotations", "getDefaultModelScaleTransition", "defaultModelTranslation", "getDefaultModelTranslation$annotations", "getDefaultModelTranslation", "defaultModelTranslationAsExpression", "getDefaultModelTranslationAsExpression$annotations", "getDefaultModelTranslationAsExpression", "defaultModelTranslationTransition", "getDefaultModelTranslationTransition$annotations", "getDefaultModelTranslationTransition", "defaultModelType", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelType;", "getDefaultModelType$annotations", "getDefaultModelType", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelType;", "defaultModelTypeAsExpression", "getDefaultModelTypeAsExpression$annotations", "getDefaultModelTypeAsExpression", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultModelAmbientOcclusionIntensity$annotations() {
        }

        public static void getDefaultModelAmbientOcclusionIntensityAsExpression$annotations() {
        }

        public static void getDefaultModelAmbientOcclusionIntensityTransition$annotations() {
        }

        public static void getDefaultModelCastShadows$annotations() {
        }

        public static void getDefaultModelCastShadowsAsExpression$annotations() {
        }

        public static void getDefaultModelColor$annotations() {
        }

        public static void getDefaultModelColorAsColorInt$annotations() {
        }

        public static void getDefaultModelColorAsExpression$annotations() {
        }

        public static void getDefaultModelColorMixIntensity$annotations() {
        }

        public static void getDefaultModelColorMixIntensityAsExpression$annotations() {
        }

        public static void getDefaultModelColorMixIntensityTransition$annotations() {
        }

        public static void getDefaultModelColorTransition$annotations() {
        }

        public static void getDefaultModelColorUseTheme$annotations() {
        }

        public static void getDefaultModelColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultModelCutoffFadeRange$annotations() {
        }

        public static void getDefaultModelCutoffFadeRangeAsExpression$annotations() {
        }

        public static void getDefaultModelElevationReference$annotations() {
        }

        public static void getDefaultModelElevationReferenceAsExpression$annotations() {
        }

        public static void getDefaultModelEmissiveStrength$annotations() {
        }

        public static void getDefaultModelEmissiveStrengthAsExpression$annotations() {
        }

        public static void getDefaultModelEmissiveStrengthTransition$annotations() {
        }

        public static void getDefaultModelHeightBasedEmissiveStrengthMultiplier$annotations() {
        }

        public static void getDefaultModelHeightBasedEmissiveStrengthMultiplierAsExpression$annotations() {
        }

        public static void getDefaultModelHeightBasedEmissiveStrengthMultiplierTransition$annotations() {
        }

        public static void getDefaultModelId$annotations() {
        }

        public static void getDefaultModelIdAsExpression$annotations() {
        }

        public static void getDefaultModelOpacity$annotations() {
        }

        public static void getDefaultModelOpacityAsExpression$annotations() {
        }

        public static void getDefaultModelOpacityTransition$annotations() {
        }

        public static void getDefaultModelReceiveShadows$annotations() {
        }

        public static void getDefaultModelReceiveShadowsAsExpression$annotations() {
        }

        public static void getDefaultModelRotation$annotations() {
        }

        public static void getDefaultModelRotationAsExpression$annotations() {
        }

        public static void getDefaultModelRotationTransition$annotations() {
        }

        public static void getDefaultModelRoughness$annotations() {
        }

        public static void getDefaultModelRoughnessAsExpression$annotations() {
        }

        public static void getDefaultModelRoughnessTransition$annotations() {
        }

        public static void getDefaultModelScale$annotations() {
        }

        public static void getDefaultModelScaleAsExpression$annotations() {
        }

        public static void getDefaultModelScaleMode$annotations() {
        }

        public static void getDefaultModelScaleModeAsExpression$annotations() {
        }

        public static void getDefaultModelScaleTransition$annotations() {
        }

        public static void getDefaultModelTranslation$annotations() {
        }

        public static void getDefaultModelTranslationAsExpression$annotations() {
        }

        public static void getDefaultModelTranslationTransition$annotations() {
        }

        public static void getDefaultModelType$annotations() {
        }

        public static void getDefaultModelTypeAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ue(\"model\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…Value(\"model\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…Value(\"model\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final String getDefaultModelId() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-id");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"model\", \"model-id\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultModelIdAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-id");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"model\", \"model-id\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultModelId = getDefaultModelId();
            if (defaultModelId != null) {
                return Expression.INSTANCE.literal(defaultModelId);
            }
            return null;
        }

        public final Double getDefaultModelAmbientOcclusionIntensity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-ambient-occlusion-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ent-occlusion-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultModelAmbientOcclusionIntensityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-ambient-occlusion-intensity");
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
            Double defaultModelAmbientOcclusionIntensity = getDefaultModelAmbientOcclusionIntensity();
            if (defaultModelAmbientOcclusionIntensity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelAmbientOcclusionIntensity.doubleValue());
        }

        public final StyleTransition getDefaultModelAmbientOcclusionIntensityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-ambient-occlusion-intensity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…on-intensity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Boolean getDefaultModelCastShadows() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-cast-shadows");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…l\", \"model-cast-shadows\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Expression getDefaultModelCastShadowsAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-cast-shadows");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…l\", \"model-cast-shadows\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Boolean defaultModelCastShadows = getDefaultModelCastShadows();
            if (defaultModelCastShadows == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelCastShadows.booleanValue());
        }

        public final String getDefaultModelColor() {
            Expression defaultModelColorAsExpression = getDefaultModelColorAsExpression();
            if (defaultModelColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultModelColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultModelColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"model\", \"model-color\")");
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

        public final Integer getDefaultModelColorAsColorInt() {
            Expression defaultModelColorAsExpression = getDefaultModelColorAsExpression();
            if (defaultModelColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultModelColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultModelColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"model-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultModelColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"model-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultModelColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"model-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultModelColorUseTheme = getDefaultModelColorUseTheme();
            if (defaultModelColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultModelColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultModelColorMixIntensity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-color-mix-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…del-color-mix-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultModelColorMixIntensityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-color-mix-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…del-color-mix-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultModelColorMixIntensity = getDefaultModelColorMixIntensity();
            if (defaultModelColorMixIntensity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelColorMixIntensity.doubleValue());
        }

        public final StyleTransition getDefaultModelColorMixIntensityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-color-mix-intensity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ix-intensity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultModelCutoffFadeRange() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-cutoff-fade-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…model-cutoff-fade-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultModelCutoffFadeRangeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-cutoff-fade-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…model-cutoff-fade-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultModelCutoffFadeRange = getDefaultModelCutoffFadeRange();
            if (defaultModelCutoffFadeRange == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelCutoffFadeRange.doubleValue());
        }

        public final ModelElevationReference getDefaultModelElevationReference() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…del-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            ModelElevationReference.Companion companion = ModelElevationReference.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultModelElevationReferenceAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-elevation-reference");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…del-elevation-reference\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            ModelElevationReference defaultModelElevationReference = getDefaultModelElevationReference();
            if (defaultModelElevationReference != null) {
                return Expression.INSTANCE.literal(defaultModelElevationReference.getValue());
            }
            return null;
        }

        public final Double getDefaultModelEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…model-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultModelEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…model-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultModelEmissiveStrength = getDefaultModelEmissiveStrength();
            if (defaultModelEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultModelEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final List<Double> getDefaultModelHeightBasedEmissiveStrengthMultiplier() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-height-based-emissive-strength-multiplier");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-multiplier\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultModelHeightBasedEmissiveStrengthMultiplierAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-height-based-emissive-strength-multiplier");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-multiplier\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultModelHeightBasedEmissiveStrengthMultiplier = getDefaultModelHeightBasedEmissiveStrengthMultiplier();
            if (defaultModelHeightBasedEmissiveStrengthMultiplier != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultModelHeightBasedEmissiveStrengthMultiplier);
            }
            return null;
        }

        public final StyleTransition getDefaultModelHeightBasedEmissiveStrengthMultiplierTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-height-based-emissive-strength-multiplier-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…h-multiplier-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultModelOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"model\", \"model-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultModelOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"model\", \"model-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultModelOpacity = getDefaultModelOpacity();
            if (defaultModelOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelOpacity.doubleValue());
        }

        public final StyleTransition getDefaultModelOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…odel-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Boolean getDefaultModelReceiveShadows() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-receive-shadows");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"model-receive-shadows\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Boolean.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Boolean) objUnwrap;
        }

        public final Expression getDefaultModelReceiveShadowsAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-receive-shadows");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"model-receive-shadows\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Boolean defaultModelReceiveShadows = getDefaultModelReceiveShadows();
            if (defaultModelReceiveShadows == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelReceiveShadows.booleanValue());
        }

        public final List<Double> getDefaultModelRotation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-rotation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…model\", \"model-rotation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultModelRotationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-rotation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…model\", \"model-rotation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultModelRotation = getDefaultModelRotation();
            if (defaultModelRotation != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultModelRotation);
            }
            return null;
        }

        public final StyleTransition getDefaultModelRotationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-rotation-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…del-rotation-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultModelRoughness() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-roughness");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…odel\", \"model-roughness\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultModelRoughnessAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-roughness");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…odel\", \"model-roughness\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultModelRoughness = getDefaultModelRoughness();
            if (defaultModelRoughness == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultModelRoughness.doubleValue());
        }

        public final StyleTransition getDefaultModelRoughnessTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-roughness-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…el-roughness-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final List<Double> getDefaultModelScale() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-scale");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"model\", \"model-scale\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultModelScaleAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-scale");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"model\", \"model-scale\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultModelScale = getDefaultModelScale();
            if (defaultModelScale != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultModelScale);
            }
            return null;
        }

        public final StyleTransition getDefaultModelScaleTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-scale-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"model-scale-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final ModelScaleMode getDefaultModelScaleMode() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-scale-mode");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…del\", \"model-scale-mode\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            ModelScaleMode.Companion companion = ModelScaleMode.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultModelScaleModeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-scale-mode");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…del\", \"model-scale-mode\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            ModelScaleMode defaultModelScaleMode = getDefaultModelScaleMode();
            if (defaultModelScaleMode != null) {
                return Expression.INSTANCE.literal(defaultModelScaleMode.getValue());
            }
            return null;
        }

        public final List<Double> getDefaultModelTranslation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-translation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…el\", \"model-translation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultModelTranslationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-translation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…el\", \"model-translation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultModelTranslation = getDefaultModelTranslation();
            if (defaultModelTranslation != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultModelTranslation);
            }
            return null;
        }

        public final StyleTransition getDefaultModelTranslationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-translation-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-translation-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final ModelType getDefaultModelType() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-type");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ue(\"model\", \"model-type\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            ModelType.Companion companion = ModelType.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultModelTypeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(ModelSourceWrapper.TYPE, "model-type");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ue(\"model\", \"model-type\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            ModelType defaultModelType = getDefaultModelType();
            if (defaultModelType != null) {
                return Expression.INSTANCE.literal(defaultModelType.getValue());
            }
            return null;
        }
    }
}
