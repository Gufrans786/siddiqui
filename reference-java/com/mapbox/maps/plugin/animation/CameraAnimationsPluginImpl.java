package com.mapbox.maps.plugin.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraAnimationHint;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapboxCameraAnimationException;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.MapCameraPlugin;
import com.mapbox.maps.plugin.animation.animator.CameraAnchorAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraBearingAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraCenterAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraPaddingAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraPitchAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraZoomAnimator;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.delegates.MapProjectionDelegate;
import com.mapbox.maps.plugin.delegates.MapTransformDelegate;
import com.mapbox.maps.threading.AnimationThreadController;
import com.mapbox.maps.util.CameraOptionsUtils;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

@Metadata(d1 = {"\u0000õ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0011\n\u0002\b\u001b*\u00014\b\u0001\u0018\u0000 \u00ad\u00012\u00020\u00012\u00020\u0002:\u0004¬\u0001\u00ad\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010a\u001a\u00020b2\u000e\u0010c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000fH\u0016J\u0010\u0010d\u001a\u00020b2\u0006\u0010c\u001a\u00020BH\u0016J\u0016\u0010e\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0016J\u0016\u0010f\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020+0\u001fH\u0016J\u0016\u0010g\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020K0\u001fH\u0016J\u0016\u0010h\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0016J\u0016\u0010i\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0016J\u0018\u0010j\u001a\u00020\u00172\u0006\u0010k\u001a\u00020\u00172\u0006\u0010l\u001a\u00020\u0017H\u0016J\u0016\u0010m\u001a\u00020b2\f\u0010n\u001a\b\u0012\u0004\u0012\u00020o0!H\u0016J\b\u0010p\u001a\u00020bH\u0002J\b\u0010q\u001a\u00020bH\u0016J\b\u0010r\u001a\u00020bH\u0002J1\u0010s\u001a\u00020Z2\f\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00050u2\u0019\u0010v\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020b\u0018\u00010w¢\u0006\u0002\bxH\u0016J9\u0010y\u001a\u00020Z2\f\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00170u2\u0006\u0010z\u001a\u0002072\u0019\u0010v\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020b\u0018\u00010w¢\u0006\u0002\bxH\u0016J9\u0010{\u001a\u00020Z2\f\u0010t\u001a\b\u0012\u0004\u0012\u00020+0u2\u0006\u0010z\u001a\u0002072\u0019\u0010v\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020b\u0018\u00010w¢\u0006\u0002\bxH\u0016J1\u0010|\u001a\u00020Z2\f\u0010t\u001a\b\u0012\u0004\u0012\u00020K0u2\u0019\u0010v\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020b\u0018\u00010w¢\u0006\u0002\bxH\u0016J1\u0010}\u001a\u00020Z2\f\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00170u2\u0019\u0010v\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020b\u0018\u00010w¢\u0006\u0002\bxH\u0016J1\u0010~\u001a\u00020Z2\f\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00170u2\u0019\u0010v\u001a\u0015\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020b\u0018\u00010w¢\u0006\u0002\bxH\u0016J+\u0010\u007f\u001a\u00030\u0080\u00012\b\u0010\u0081\u0001\u001a\u00030\u0082\u00012\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J,\u0010\u0087\u0001\u001a\u00030\u0080\u00012\b\u0010\u0081\u0001\u001a\u00030\u0082\u00012\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J+\u0010\u0088\u0001\u001a\u00030\u0080\u00012\u0007\u0010\u0089\u0001\u001a\u00020\u00052\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J\u0016\u0010\u008a\u0001\u001a\u00020b2\u000b\u0010\u008b\u0001\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0002J1\u0010\u008c\u0001\u001a\u00020b2\u0006\u0010,\u001a\u00020+2\u0006\u0010\\\u001a\u00020\u00172\u0006\u0010S\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010L\u001a\u00020KH\u0016J\u0012\u0010\u008d\u0001\u001a\u00020b2\u0007\u0010\u008e\u0001\u001a\u00020FH\u0016J\u0019\u0010\u008f\u0001\u001a\u00020b2\b\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0001¢\u0006\u0003\b\u0090\u0001J*\u0010\u0091\u0001\u001a\u00030\u0080\u00012\u0006\u0010S\u001a\u00020\u00172\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J$\u0010\u0092\u0001\u001a\u00020b2\u0013\u0010\u0010\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020Z0\u0093\u0001\"\u00020ZH\u0016¢\u0006\u0003\u0010\u0094\u0001J$\u0010\u0095\u0001\u001a\u00020b2\u0013\u0010\u0010\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020Z0\u0093\u0001\"\u00020ZH\u0016¢\u0006\u0003\u0010\u0094\u0001J%\u0010\u0096\u0001\u001a\u00020b2\u0014\u0010\u0097\u0001\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020Z0\u0093\u0001\"\u00020ZH\u0016¢\u0006\u0003\u0010\u0094\u0001J\u0016\u0010\u0098\u0001\u001a\u00020b2\u000b\u0010\u008b\u0001\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0002J\u0016\u0010\u0099\u0001\u001a\u00020b2\u000b\u0010\u008b\u0001\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0002J\u0019\u0010\u009a\u0001\u001a\u00020b2\u000e\u0010c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000fH\u0016J\u0011\u0010\u009b\u0001\u001a\u00020b2\u0006\u0010c\u001a\u00020BH\u0016J\u0017\u0010\u009c\u0001\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0016J\u0017\u0010\u009d\u0001\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020+0\u001fH\u0016J\u0017\u0010\u009e\u0001\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020K0\u001fH\u0016J\u0017\u0010\u009f\u0001\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0016J\u0017\u0010 \u0001\u001a\u00020b2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0016J4\u0010¡\u0001\u001a\u00030\u0080\u00012\u0007\u0010¢\u0001\u001a\u00020\u00052\u0007\u0010£\u0001\u001a\u00020\u00052\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J5\u0010¤\u0001\u001a\u00030\u0080\u00012\u0006\u0010k\u001a\u00020\u00172\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00052\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J\u0013\u0010¥\u0001\u001a\u0002072\b\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0002J;\u0010¦\u0001\u001a\u00030\u0080\u00012\u0011\u0010\u0010\u001a\r\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00120\u0093\u00012\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0002¢\u0006\u0003\u0010§\u0001J\u0007\u0010¨\u0001\u001a\u00020bJ.\u0010©\u0001\u001a\u00020b2\u0014\u0010\u0097\u0001\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020Z0\u0093\u0001\"\u00020Z2\u0007\u0010ª\u0001\u001a\u000207H\u0016¢\u0006\u0003\u0010«\u0001R/\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00058V@VX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\r\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R4\u0010\u0010\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00120\u0011j\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0012`\u00138\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0003\u001a\u0004\b\u0015\u0010\u0016R/\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00178B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u001f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u00020$X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u000e\u0010)\u001a\u00020*X\u0082\u000e¢\u0006\u0002\n\u0000R/\u0010,\u001a\u0004\u0018\u00010+2\b\u0010\u0004\u001a\u0004\u0018\u00010+8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b1\u0010\f\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00102\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u001f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0004\n\u0002\u00105R\u001a\u00106\u001a\u000207X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0014\u0010<\u001a\b\u0012\u0004\u0012\u00020>0=X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u0004\u0018\u00010@X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010A\u001a\b\u0012\u0004\u0012\u00020B0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020DX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020FX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020HX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020JX\u0082.¢\u0006\u0002\n\u0000R/\u0010L\u001a\u0004\u0018\u00010K2\b\u0010\u0004\u001a\u0004\u0018\u00010K8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bQ\u0010\f\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u001a\u0010R\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020K0\u001f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010S\u001a\u0004\u0018\u00010\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00178B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bV\u0010\f\u001a\u0004\bT\u0010\u001a\"\u0004\bU\u0010\u001cR\u001a\u0010W\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u001f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010X\u001a\u0012\u0012\u0004\u0012\u00020Z0Yj\b\u0012\u0004\u0012\u00020Z`[X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\\\u001a\u0004\u0018\u00010\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00178B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b_\u0010\f\u001a\u0004\b]\u0010\u001a\"\u0004\b^\u0010\u001cR\u001a\u0010`\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u001f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006®\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "Lcom/mapbox/maps/plugin/MapCameraPlugin;", "()V", "<set-?>", "Lcom/mapbox/maps/ScreenCoordinate;", "anchor", "getAnchor", "()Lcom/mapbox/maps/ScreenCoordinate;", "setAnchor", "(Lcom/mapbox/maps/ScreenCoordinate;)V", "anchor$delegate", "Lkotlin/properties/ReadWriteProperty;", "anchorListeners", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorNullableChangeListener;", "animators", "Ljava/util/HashSet;", "Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "Lkotlin/collections/HashSet;", "getAnimators$plugin_animation_release$annotations", "getAnimators$plugin_animation_release", "()Ljava/util/HashSet;", "", "bearing", "getBearing", "()Ljava/lang/Double;", "setBearing", "(Ljava/lang/Double;)V", "bearing$delegate", "bearingListeners", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorChangeListener;", "cameraAnimationHintFractions", "", "", "cameraAnimationsFactory", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;", "getCameraAnimationsFactory", "()Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;", "setCameraAnimationsFactory", "(Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;)V", "cameraOptionsBuilder", "Lcom/mapbox/maps/CameraOptions$Builder;", "Lcom/mapbox/geojson/Point;", "center", "getCenter", "()Lcom/mapbox/geojson/Point;", "setCenter", "(Lcom/mapbox/geojson/Point;)V", "center$delegate", "centerListeners", "clearHighLevelAnimatorSetListener", "com/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1;", "debugMode", "", "getDebugMode", "()Z", "setDebugMode", "(Z)V", "getCurrentCameraState", "Lkotlin/Function0;", "Lcom/mapbox/maps/CameraState;", "highLevelAnimatorSet", "Lcom/mapbox/maps/plugin/animation/HighLevelAnimatorSet;", "lifecycleListeners", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsLifecycleListener;", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapDelegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "mapProjectionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "mapTransformDelegate", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "Lcom/mapbox/maps/EdgeInsets;", ViewProps.PADDING, "getPadding", "()Lcom/mapbox/maps/EdgeInsets;", "setPadding", "(Lcom/mapbox/maps/EdgeInsets;)V", "padding$delegate", "paddingListeners", "pitch", "getPitch", "setPitch", "pitch$delegate", "pitchListeners", "runningAnimatorsQueue", "Ljava/util/LinkedHashSet;", "Landroid/animation/ValueAnimator;", "Lkotlin/collections/LinkedHashSet;", "zoom", "getZoom", "setZoom", "zoom$delegate", "zoomListeners", "addCameraAnchorChangeListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addCameraAnimationsLifecycleListener", "addCameraBearingChangeListener", "addCameraCenterChangeListener", "addCameraPaddingChangeListener", "addCameraPitchChangeListener", "addCameraZoomChangeListener", "calculateScaleBy", Constants.FORT_PARAMS.AMOUNT, "currentZoom", "cancelAllAnimators", "exceptOwnerList", "", "cancelAnimatorSet", "cleanup", "commitChanges", "createAnchorAnimator", "options", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "createBearingAnimator", "useShortestPath", "createCenterAnimator", "createPaddingAnimator", "createPitchAnimator", "createZoomAnimator", "easeTo", "Lcom/mapbox/common/Cancelable;", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "animationOptions", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "animatorListener", "Landroid/animation/Animator$AnimatorListener;", "flyTo", "moveBy", "screenCoordinate", "onAnimationUpdateInternal", "animator", "onCameraMove", "onDelegateProvider", "delegateProvider", "performMapJump", "performMapJump$plugin_animation_release", "pitchBy", "playAnimatorsSequentially", "", "([Landroid/animation/ValueAnimator;)V", "playAnimatorsTogether", "registerAnimators", "cameraAnimators", "registerInternalListener", "registerInternalUpdateListener", "removeCameraAnchorChangeListener", "removeCameraAnimationsLifecycleListener", "removeCameraBearingChangeListener", "removeCameraCenterChangeListener", "removeCameraPaddingChangeListener", "removeCameraPitchChangeListener", "removeCameraZoomChangeListener", "rotateBy", "first", "second", "scaleBy", "skipMapJump", "startHighLevelAnimation", "([Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;Landroid/animation/Animator$AnimatorListener;)Lcom/mapbox/common/Cancelable;", "unregisterAllAnimators", "unregisterAnimators", "cancelAnimators", "([Landroid/animation/ValueAnimator;Z)V", "AnimationFinishStatus", "Companion", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CameraAnimationsPluginImpl implements CameraAnimationsPlugin, MapCameraPlugin {
    static final KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(CameraAnimationsPluginImpl.class, "center", "getCenter()Lcom/mapbox/geojson/Point;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(CameraAnimationsPluginImpl.class, "zoom", "getZoom()Ljava/lang/Double;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(CameraAnimationsPluginImpl.class, ViewProps.PADDING, "getPadding()Lcom/mapbox/maps/EdgeInsets;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(CameraAnimationsPluginImpl.class, "anchor", "getAnchor()Lcom/mapbox/maps/ScreenCoordinate;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(CameraAnimationsPluginImpl.class, "bearing", "getBearing()Ljava/lang/Double;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(CameraAnimationsPluginImpl.class, "pitch", "getPitch()Ljava/lang/Double;", 0))};
    public static final String TAG = "Mbgl-CameraManager";

    private final ReadWriteProperty anchor;

    private final ReadWriteProperty bearing;
    public CameraAnimatorsFactory cameraAnimationsFactory;
    private CameraOptions.Builder cameraOptionsBuilder;

    private final ReadWriteProperty center;
    private final CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1 clearHighLevelAnimatorSetListener;
    private boolean debugMode;
    private final Function0<CameraState> getCurrentCameraState;
    private HighLevelAnimatorSet highLevelAnimatorSet;
    private MapCameraManagerDelegate mapCameraManagerDelegate;
    private MapDelegateProvider mapDelegateProvider;
    private MapProjectionDelegate mapProjectionDelegate;
    private MapTransformDelegate mapTransformDelegate;

    private final ReadWriteProperty padding;

    private final ReadWriteProperty pitch;

    private final ReadWriteProperty zoom;
    private final HashSet<CameraAnimator<?>> animators = new HashSet<>();
    private final LinkedHashSet<ValueAnimator> runningAnimatorsQueue = new LinkedHashSet<>();
    private final CopyOnWriteArraySet<CameraAnimatorChangeListener<Point>> centerListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<CameraAnimatorChangeListener<Double>> zoomListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<CameraAnimatorChangeListener<EdgeInsets>> paddingListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<CameraAnimatorNullableChangeListener<ScreenCoordinate>> anchorListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<CameraAnimatorChangeListener<Double>> bearingListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<CameraAnimatorChangeListener<Double>> pitchListeners = new CopyOnWriteArraySet<>();
    private final CopyOnWriteArraySet<CameraAnimationsLifecycleListener> lifecycleListeners = new CopyOnWriteArraySet<>();
    private final List<Float> cameraAnimationHintFractions = CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(0.25f), Float.valueOf(0.5f), Float.valueOf(0.75f), Float.valueOf(1.0f)});

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$AnimationFinishStatus;", "", "(Ljava/lang/String;I)V", "CANCELED", "ENDED", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    enum AnimationFinishStatus {
        CANCELED,
        ENDED
    }

    public static final void easeTo$lambda$21() {
    }

    public static final void flyTo$lambda$22() {
    }

    public static void getAnimators$plugin_animation_release$annotations() {
    }

    public static final void startHighLevelAnimation$lambda$25() {
    }

    public CameraAnimationsPluginImpl() {
        Delegates delegates = Delegates.INSTANCE;
        final Object obj = null;
        this.center = new ObservableProperty<Point>(obj) {
            @Override
            protected void afterChange(KProperty<?> property, Point oldValue, Point newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                Point point = newValue;
                Point point2 = oldValue;
                if (point == null || Intrinsics.areEqual(point2, point)) {
                    return;
                }
                Iterator it = this.centerListeners.iterator();
                while (it.hasNext()) {
                    ((CameraAnimatorChangeListener) it.next()).onChanged(point);
                }
            }
        };
        Delegates delegates2 = Delegates.INSTANCE;
        this.zoom = new ObservableProperty<Double>(obj) {
            @Override
            protected void afterChange(KProperty<?> property, Double oldValue, Double newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                Double d = newValue;
                Double d2 = oldValue;
                if (d != null) {
                    double dDoubleValue = d.doubleValue();
                    if (Intrinsics.areEqual(d2, dDoubleValue)) {
                        return;
                    }
                    Iterator it = this.zoomListeners.iterator();
                    while (it.hasNext()) {
                        ((CameraAnimatorChangeListener) it.next()).onChanged(Double.valueOf(dDoubleValue));
                    }
                }
            }
        };
        Delegates delegates3 = Delegates.INSTANCE;
        this.padding = new ObservableProperty<EdgeInsets>(obj) {
            @Override
            protected void afterChange(KProperty<?> property, EdgeInsets oldValue, EdgeInsets newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                EdgeInsets edgeInsets = newValue;
                EdgeInsets edgeInsets2 = oldValue;
                if (edgeInsets == null || Intrinsics.areEqual(edgeInsets2, edgeInsets)) {
                    return;
                }
                Iterator it = this.paddingListeners.iterator();
                while (it.hasNext()) {
                    ((CameraAnimatorChangeListener) it.next()).onChanged(edgeInsets);
                }
            }
        };
        Delegates delegates4 = Delegates.INSTANCE;
        this.anchor = new ObservableProperty<ScreenCoordinate>(obj) {
            @Override
            protected void afterChange(KProperty<?> property, ScreenCoordinate oldValue, ScreenCoordinate newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                ScreenCoordinate screenCoordinate = newValue;
                if (Intrinsics.areEqual(oldValue, screenCoordinate)) {
                    return;
                }
                Iterator it = this.anchorListeners.iterator();
                while (it.hasNext()) {
                    ((CameraAnimatorNullableChangeListener) it.next()).onChanged(screenCoordinate);
                }
            }
        };
        Delegates delegates5 = Delegates.INSTANCE;
        this.bearing = new ObservableProperty<Double>(obj) {
            @Override
            protected void afterChange(KProperty<?> property, Double oldValue, Double newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                Double d = newValue;
                Double d2 = oldValue;
                if (d != null) {
                    double dDoubleValue = d.doubleValue();
                    if (Intrinsics.areEqual(d2, dDoubleValue)) {
                        return;
                    }
                    Iterator it = this.bearingListeners.iterator();
                    while (it.hasNext()) {
                        ((CameraAnimatorChangeListener) it.next()).onChanged(Double.valueOf(dDoubleValue));
                    }
                }
            }
        };
        Delegates delegates6 = Delegates.INSTANCE;
        this.pitch = new ObservableProperty<Double>(obj) {
            @Override
            protected void afterChange(KProperty<?> property, Double oldValue, Double newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                Double d = newValue;
                Double d2 = oldValue;
                if (d != null) {
                    double dDoubleValue = d.doubleValue();
                    if (Intrinsics.areEqual(d2, dDoubleValue)) {
                        return;
                    }
                    Iterator it = this.pitchListeners.iterator();
                    while (it.hasNext()) {
                        ((CameraAnimatorChangeListener) it.next()).onChanged(Double.valueOf(dDoubleValue));
                    }
                }
            }
        };
        this.cameraOptionsBuilder = new CameraOptions.Builder();
        this.getCurrentCameraState = new Function0<CameraState>() {
            {
                super(0);
            }

            @Override
            public final CameraState invoke() {
                MapCameraManagerDelegate mapCameraManagerDelegate = this.this$0.mapCameraManagerDelegate;
                if (mapCameraManagerDelegate == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                    mapCameraManagerDelegate = null;
                }
                return mapCameraManagerDelegate.getCameraState();
            }
        };
        this.clearHighLevelAnimatorSetListener = new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                HighLevelAnimatorSet highLevelAnimatorSet = this.this$0.highLevelAnimatorSet;
                if ((highLevelAnimatorSet != null ? highLevelAnimatorSet.getAnimatorSet() : null) == animation) {
                    this.this$0.highLevelAnimatorSet = null;
                }
            }
        };
    }

    @Override
    @Deprecated(message = "createCenterAnimator(options, block) is deprecated, please use createCenterAnimator(options, useShortestPath, block) instead.", replaceWith = @ReplaceWith(expression = "createCenterAnimator(options, useShortestPath, block)", imports = {}))
    public ValueAnimator createCenterAnimator(CameraAnimatorOptions<Point> cameraAnimatorOptions, Function1<? super ValueAnimator, Unit> function1) {
        return CameraAnimationsPlugin.DefaultImpls.createCenterAnimator(this, cameraAnimatorOptions, function1);
    }

    @Override
    public void initialize() {
        CameraAnimationsPlugin.DefaultImpls.initialize(this);
    }

    public final HashSet<CameraAnimator<?>> getAnimators$plugin_animation_release() {
        return this.animators;
    }

    @Override
    public boolean getDebugMode() {
        return this.debugMode;
    }

    @Override
    public void setDebugMode(boolean z) {
        this.debugMode = z;
    }

    private final Point getCenter() {
        return (Point) this.center.getValue(this, $$delegatedProperties[0]);
    }

    private final void setCenter(Point point) {
        this.center.setValue(this, $$delegatedProperties[0], point);
    }

    private final Double getZoom() {
        return (Double) this.zoom.getValue(this, $$delegatedProperties[1]);
    }

    private final void setZoom(Double d) {
        this.zoom.setValue(this, $$delegatedProperties[1], d);
    }

    private final EdgeInsets getPadding() {
        return (EdgeInsets) this.padding.getValue(this, $$delegatedProperties[2]);
    }

    private final void setPadding(EdgeInsets edgeInsets) {
        this.padding.setValue(this, $$delegatedProperties[2], edgeInsets);
    }

    @Override
    public ScreenCoordinate getAnchor() {
        return (ScreenCoordinate) this.anchor.getValue(this, $$delegatedProperties[3]);
    }

    @Override
    public void setAnchor(ScreenCoordinate screenCoordinate) {
        this.anchor.setValue(this, $$delegatedProperties[3], screenCoordinate);
    }

    private final Double getBearing() {
        return (Double) this.bearing.getValue(this, $$delegatedProperties[4]);
    }

    private final void setBearing(Double d) {
        this.bearing.setValue(this, $$delegatedProperties[4], d);
    }

    private final Double getPitch() {
        return (Double) this.pitch.getValue(this, $$delegatedProperties[5]);
    }

    private final void setPitch(Double d) {
        this.pitch.setValue(this, $$delegatedProperties[5], d);
    }

    public final CameraAnimatorsFactory getCameraAnimationsFactory() {
        CameraAnimatorsFactory cameraAnimatorsFactory = this.cameraAnimationsFactory;
        if (cameraAnimatorsFactory != null) {
            return cameraAnimatorsFactory;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsFactory");
        return null;
    }

    public final void setCameraAnimationsFactory(CameraAnimatorsFactory cameraAnimatorsFactory) {
        Intrinsics.checkNotNullParameter(cameraAnimatorsFactory, "<set-?>");
        this.cameraAnimationsFactory = cameraAnimatorsFactory;
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.mapDelegateProvider = delegateProvider;
        MapDelegateProvider mapDelegateProvider = null;
        if (delegateProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapDelegateProvider");
            delegateProvider = null;
        }
        this.mapCameraManagerDelegate = delegateProvider.getMapCameraManagerDelegate();
        MapDelegateProvider mapDelegateProvider2 = this.mapDelegateProvider;
        if (mapDelegateProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapDelegateProvider");
            mapDelegateProvider2 = null;
        }
        this.mapTransformDelegate = mapDelegateProvider2.getMapTransformDelegate();
        MapDelegateProvider mapDelegateProvider3 = this.mapDelegateProvider;
        if (mapDelegateProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapDelegateProvider");
            mapDelegateProvider3 = null;
        }
        this.mapProjectionDelegate = mapDelegateProvider3.getMapProjectionDelegate();
        MapDelegateProvider mapDelegateProvider4 = this.mapDelegateProvider;
        if (mapDelegateProvider4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapDelegateProvider");
        } else {
            mapDelegateProvider = mapDelegateProvider4;
        }
        setCameraAnimationsFactory(new CameraAnimatorsFactory(mapDelegateProvider));
    }

    @Override
    public void onCameraMove(Point center, double zoom, double pitch, double bearing, EdgeInsets padding) {
        Intrinsics.checkNotNullParameter(center, "center");
        Intrinsics.checkNotNullParameter(padding, "padding");
        setBearing(Double.valueOf(bearing));
        setCenter(center);
        setPadding(padding);
        setPitch(Double.valueOf(pitch));
        setZoom(Double.valueOf(zoom));
    }

    @Override
    public void cleanup() {
        Object[] array = this.animators.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CameraAnimator[] cameraAnimatorArr = (CameraAnimator[]) array;
        CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(this, (ValueAnimator[]) Arrays.copyOf(cameraAnimatorArr, cameraAnimatorArr.length), false, 2, null);
        cancelAnimatorSet();
        this.centerListeners.clear();
        this.zoomListeners.clear();
        this.bearingListeners.clear();
        this.pitchListeners.clear();
        this.anchorListeners.clear();
        this.paddingListeners.clear();
        this.lifecycleListeners.clear();
        this.animators.clear();
    }

    private final boolean skipMapJump(CameraOptions cameraOptions) {
        if (CameraOptionsUtils.isEmpty(cameraOptions)) {
            return true;
        }
        if (cameraOptions.getAnchor() != null) {
            return false;
        }
        Double pitch = cameraOptions.getPitch();
        if (pitch != null && (pitch.doubleValue() >= 60.0d || !Intrinsics.areEqual(pitch.doubleValue(), getPitch()))) {
            return false;
        }
        if (cameraOptions.getZoom() != null && !Intrinsics.areEqual(cameraOptions.getZoom(), getZoom())) {
            return false;
        }
        if (cameraOptions.getBearing() != null && !Intrinsics.areEqual(cameraOptions.getBearing(), getBearing())) {
            return false;
        }
        if (cameraOptions.getCenter() == null || Intrinsics.areEqual(cameraOptions.getCenter(), getCenter())) {
            return cameraOptions.getPadding() == null || Intrinsics.areEqual(cameraOptions.getPadding(), getPadding());
        }
        return false;
    }

    public final void performMapJump$plugin_animation_release(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        if (skipMapJump(cameraOptions)) {
            if (getDebugMode()) {
                MapboxLogger.logI(TAG, "Setting " + cameraOptions + " to core was skipped due to optimization.");
                return;
            }
            return;
        }
        try {
            MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
            if (mapCameraManagerDelegate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                mapCameraManagerDelegate = null;
            }
            mapCameraManagerDelegate.setCamera(cameraOptions);
        } catch (Exception e) {
            MapboxLogger.logE(TAG, "Exception while setting camera options : " + e.getMessage() + " CameraOptions = " + cameraOptions);
        }
    }

    public final void registerInternalListener(final CameraAnimator<?> animator) {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002¨\u0006\r"}, d2 = {"com/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$registerInternalListener$1$1", "Landroid/animation/Animator$AnimatorListener;", "finishAnimation", "", "animation", "Landroid/animation/Animator;", "finishStatus", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$AnimationFinishStatus;", "onAnimationCancel", "onAnimationEnd", "onAnimationRepeat", "onAnimationStart", "onAnimationStartInternal", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
            public static final class C00451 implements Animator.AnimatorListener {
                final CameraAnimationsPluginImpl this$0;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                public class WhenMappings {
                    public static final int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[AnimationFinishStatus.values().length];
                        try {
                            iArr[AnimationFinishStatus.CANCELED.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[AnimationFinishStatus.ENDED.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                @Override
                public void onAnimationRepeat(Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                }

                C00451(CameraAnimationsPluginImpl cameraAnimationsPluginImpl) {
                    this.this$0 = cameraAnimationsPluginImpl;
                }

                @Override
                public void onAnimationStart(final Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    if (AnimationThreadController.INSTANCE.getUsingBackgroundThread() && animation.getDuration() == 0) {
                        this.this$0.registerInternalUpdateListener((CameraAnimator) animation);
                    }
                    AnimationThreadController.INSTANCE.postOnMainThread(new Function0<Unit>() {
                        {
                            super(0);
                        }

                        @Override
                        public Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        public final void invoke2() {
                            this.this$0.onAnimationStartInternal(animation);
                        }
                    });
                }

                public final void onAnimationStartInternal(Animator animation) {
                    Unit unit = null;
                    MapTransformDelegate mapTransformDelegate = null;
                    CameraAnimator cameraAnimator = animation instanceof CameraAnimator ? (CameraAnimator) animation : null;
                    if (cameraAnimator != null) {
                        CameraAnimationsPluginImpl cameraAnimationsPluginImpl = this.this$0;
                        if (cameraAnimator.getCanceled()) {
                            return;
                        }
                        cameraAnimator.updateObjectValues(cameraAnimationsPluginImpl.getCurrentCameraState);
                        if (cameraAnimator.getSkipped()) {
                            return;
                        }
                        Iterator it = cameraAnimationsPluginImpl.lifecycleListeners.iterator();
                        while (it.hasNext()) {
                            ((CameraAnimationsLifecycleListener) it.next()).onAnimatorStarting(cameraAnimator.getType(), cameraAnimator, cameraAnimator.getOwner());
                        }
                        MapTransformDelegate mapTransformDelegate2 = cameraAnimationsPluginImpl.mapTransformDelegate;
                        if (mapTransformDelegate2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("mapTransformDelegate");
                        } else {
                            mapTransformDelegate = mapTransformDelegate2;
                        }
                        mapTransformDelegate.setUserAnimationInProgress(true);
                        for (final CameraAnimator existingAnimator : new HashSet(cameraAnimationsPluginImpl.getAnimators$plugin_animation_release())) {
                            if (existingAnimator.getType() == cameraAnimator.getType() && existingAnimator.isRunning() && !Intrinsics.areEqual(existingAnimator, cameraAnimator)) {
                                for (CameraAnimationsLifecycleListener cameraAnimationsLifecycleListener : cameraAnimationsPluginImpl.lifecycleListeners) {
                                    CameraAnimatorType type = cameraAnimator.getType();
                                    Intrinsics.checkNotNullExpressionValue(existingAnimator, "existingAnimator");
                                    cameraAnimationsLifecycleListener.onAnimatorInterrupting(type, existingAnimator, existingAnimator.getOwner(), cameraAnimator, cameraAnimator.getOwner());
                                }
                                AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
                                    {
                                        super(0);
                                    }

                                    @Override
                                    public Unit invoke() {
                                        invoke2();
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2() {
                                        existingAnimator.cancel();
                                    }
                                });
                            }
                        }
                        if (!AnimationThreadController.INSTANCE.getUsingBackgroundThread() || cameraAnimator.getDuration() != 0) {
                            cameraAnimationsPluginImpl.registerInternalUpdateListener(cameraAnimator);
                        }
                        if (cameraAnimationsPluginImpl.getDebugMode()) {
                            MapboxLogger.logI(CameraAnimationsPluginImpl.TAG, "Animation " + cameraAnimator.getType().name() + CoreConstants.LEFT_PARENTHESIS_CHAR + cameraAnimator.hashCode() + ") started.");
                        }
                        unit = Unit.INSTANCE;
                    }
                    if (unit == null) {
                        throw new MapboxCameraAnimationException("Could not start animation as it must be an instance of CameraAnimator and not null!");
                    }
                }

                @Override
                public void onAnimationEnd(final Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    AnimationThreadController.INSTANCE.postOnMainThread(new Function0<Unit>() {
                        {
                            super(0);
                        }

                        @Override
                        public Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        public final void invoke2() {
                            this.this$0.finishAnimation(animation, CameraAnimationsPluginImpl.AnimationFinishStatus.ENDED);
                        }
                    });
                }

                @Override
                public void onAnimationCancel(final Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    AnimationThreadController.INSTANCE.postOnMainThread(new Function0<Unit>() {
                        {
                            super(0);
                        }

                        @Override
                        public Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        public final void invoke2() {
                            this.this$0.finishAnimation(animation, CameraAnimationsPluginImpl.AnimationFinishStatus.CANCELED);
                        }
                    });
                }

                public final void finishAnimation(Animator animation, AnimationFinishStatus finishStatus) {
                    String str;
                    MapTransformDelegate mapTransformDelegate = null;
                    CameraAnimator cameraAnimator = animation instanceof CameraAnimator ? (CameraAnimator) animation : null;
                    if (cameraAnimator != null) {
                        CameraAnimationsPluginImpl cameraAnimationsPluginImpl = this.this$0;
                        if (cameraAnimationsPluginImpl.getDebugMode()) {
                            int i = WhenMappings.$EnumSwitchMapping$0[finishStatus.ordinal()];
                            if (i == 1) {
                                str = "was canceled.";
                            } else {
                                if (i != 2) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                str = "ended.";
                            }
                            MapboxLogger.logI(CameraAnimationsPluginImpl.TAG, "Animation " + cameraAnimator.getType().name() + CoreConstants.LEFT_PARENTHESIS_CHAR + cameraAnimator.hashCode() + CoreConstants.RIGHT_PARENTHESIS_CHAR + (cameraAnimator.getSkipped() ? " skipped" : "") + CardNumberHelper.DIVIDER + str);
                        }
                        if (cameraAnimator.getIsInternal()) {
                            cameraAnimationsPluginImpl.unregisterAnimators(new ValueAnimator[]{cameraAnimator}, false);
                            if (cameraAnimationsPluginImpl.getDebugMode()) {
                                MapboxLogger.logI(CameraAnimationsPluginImpl.TAG, "Internal Animator " + cameraAnimator.getType().name() + CoreConstants.LEFT_PARENTHESIS_CHAR + cameraAnimator.hashCode() + ") was unregistered (" + cameraAnimationsPluginImpl.getAnimators$plugin_animation_release().size() + CoreConstants.RIGHT_PARENTHESIS_CHAR);
                            }
                        }
                        if (cameraAnimator.getSkipped()) {
                            return;
                        }
                        cameraAnimationsPluginImpl.runningAnimatorsQueue.remove(animation);
                        if (cameraAnimationsPluginImpl.runningAnimatorsQueue.isEmpty()) {
                            MapTransformDelegate mapTransformDelegate2 = cameraAnimationsPluginImpl.mapTransformDelegate;
                            if (mapTransformDelegate2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("mapTransformDelegate");
                            } else {
                                mapTransformDelegate = mapTransformDelegate2;
                            }
                            mapTransformDelegate.setUserAnimationInProgress(false);
                        }
                        for (CameraAnimationsLifecycleListener cameraAnimationsLifecycleListener : cameraAnimationsPluginImpl.lifecycleListeners) {
                            int i2 = WhenMappings.$EnumSwitchMapping$0[finishStatus.ordinal()];
                            if (i2 == 1) {
                                cameraAnimationsLifecycleListener.onAnimatorCancelling(cameraAnimator.getType(), cameraAnimator, cameraAnimator.getOwner());
                            } else if (i2 == 2) {
                                cameraAnimationsLifecycleListener.onAnimatorEnding(cameraAnimator.getType(), cameraAnimator, cameraAnimator.getOwner());
                            }
                        }
                        return;
                    }
                    throw new MapboxCameraAnimationException("Could not finish animation as it must be an instance of CameraAnimator and not null!");
                }
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                animator.addInternalListener$plugin_animation_release(new C00451(this));
            }
        });
    }

    public final void registerInternalUpdateListener(final CameraAnimator<?> animator) {
        final Function0<Unit> function0 = new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                this.this$0.onAnimationUpdateInternal(animator);
            }
        };
        animator.addInternalUpdateListener$plugin_animation_release(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CameraAnimationsPluginImpl.registerInternalUpdateListener$lambda$18(function0, valueAnimator);
            }
        });
    }

    public static final void registerInternalUpdateListener$lambda$18(Function0 updateInternalFun, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(updateInternalFun, "$updateInternalFun");
        Intrinsics.checkNotNullParameter(it, "it");
        AnimationThreadController.INSTANCE.postOnMainThread(updateInternalFun);
    }

    public final void onAnimationUpdateInternal(CameraAnimator<?> animator) {
        this.runningAnimatorsQueue.add(animator);
        if (animator.getType() == CameraAnimatorType.ANCHOR) {
            Object animatedValue = animator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type com.mapbox.maps.ScreenCoordinate");
            setAnchor((ScreenCoordinate) animatedValue);
        } else {
            CameraAnimationsUtils.updateCameraValue(animator, animator.getAnimatedValue(), this.cameraOptionsBuilder);
            commitChanges();
        }
    }

    private final void commitChanges() {
        CameraOptions cameraOptionsBuild = this.cameraOptionsBuilder.anchor(getAnchor()).build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "cameraOptionsBuilder.anchor(anchor).build()");
        performMapJump$plugin_animation_release(cameraOptionsBuild);
        CameraAnimationsUtils.clear(this.cameraOptionsBuilder);
    }

    private final void cancelAnimatorSet() {
        final HighLevelAnimatorSet highLevelAnimatorSet = this.highLevelAnimatorSet;
        if (highLevelAnimatorSet != null) {
            AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                public final void invoke2() {
                    highLevelAnimatorSet.getAnimatorSet().cancel();
                    highLevelAnimatorSet.getAnimatorSet().removeAllListeners();
                }
            });
        }
    }

    @Override
    public void registerAnimators(final ValueAnimator... cameraAnimators) {
        Intrinsics.checkNotNullParameter(cameraAnimators, "cameraAnimators");
        AnimationThreadController.INSTANCE.postOnMainThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                for (ValueAnimator valueAnimator : cameraAnimators) {
                    if (valueAnimator instanceof CameraAnimator) {
                        this.registerInternalListener((CameraAnimator) valueAnimator);
                    } else {
                        MapboxLogger.logE(CameraAnimationsPluginImpl.TAG, "All animators must be CameraAnimator's to be registered!");
                        return;
                    }
                }
                HashSet<CameraAnimator<?>> animators$plugin_animation_release = this.getAnimators$plugin_animation_release();
                ValueAnimator[] valueAnimatorArr = cameraAnimators;
                ArrayList arrayList = new ArrayList(valueAnimatorArr.length);
                for (ValueAnimator valueAnimator2 : valueAnimatorArr) {
                    Intrinsics.checkNotNull(valueAnimator2, "null cannot be cast to non-null type com.mapbox.maps.plugin.animation.animator.CameraAnimator<*>");
                    arrayList.add((CameraAnimator) valueAnimator2);
                }
                animators$plugin_animation_release.addAll(arrayList);
                if (this.getDebugMode()) {
                    MapboxLogger.logI(CameraAnimationsPluginImpl.TAG, "Registered " + cameraAnimators.length + " animators. Currently, " + this.getAnimators$plugin_animation_release().size() + " animators registered.");
                }
            }
        });
    }

    @Override
    public void unregisterAnimators(final ValueAnimator[] cameraAnimators, final boolean cancelAnimators) {
        Intrinsics.checkNotNullParameter(cameraAnimators, "cameraAnimators");
        AnimationThreadController.INSTANCE.postOnMainThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                for (final ValueAnimator valueAnimator : cameraAnimators) {
                    if (valueAnimator instanceof CameraAnimator) {
                        AnimationThreadController animationThreadController = AnimationThreadController.INSTANCE;
                        final boolean z = cancelAnimators;
                        animationThreadController.postOnAnimatorThread(new Function0<Unit>() {
                            {
                                super(0);
                            }

                            @Override
                            public Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            public final void invoke2() {
                                if (z) {
                                    valueAnimator.cancel();
                                }
                                ((CameraAnimator) valueAnimator).removeInternalListener$plugin_animation_release();
                                ((CameraAnimator) valueAnimator).removeInternalUpdateListener$plugin_animation_release();
                            }
                        });
                    } else {
                        MapboxLogger.logE(CameraAnimationsPluginImpl.TAG, "All animators must be CameraAnimator's to be unregistered!");
                        return;
                    }
                }
                HashSet<CameraAnimator<?>> animators$plugin_animation_release = this.getAnimators$plugin_animation_release();
                ValueAnimator[] valueAnimatorArr = cameraAnimators;
                ArrayList arrayList = new ArrayList(valueAnimatorArr.length);
                for (ValueAnimator valueAnimator2 : valueAnimatorArr) {
                    Intrinsics.checkNotNull(valueAnimator2, "null cannot be cast to non-null type com.mapbox.maps.plugin.animation.animator.CameraAnimator<*>");
                    arrayList.add((CameraAnimator) valueAnimator2);
                }
                animators$plugin_animation_release.removeAll(arrayList);
            }
        });
    }

    public final void unregisterAllAnimators() {
        Object[] array = this.animators.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CameraAnimator[] cameraAnimatorArr = (CameraAnimator[]) array;
        CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(this, (ValueAnimator[]) Arrays.copyOf(cameraAnimatorArr, cameraAnimatorArr.length), false, 2, null);
    }

    @Override
    public void cancelAllAnimators(List<String> exceptOwnerList) {
        Intrinsics.checkNotNullParameter(exceptOwnerList, "exceptOwnerList");
        for (final CameraAnimator cameraAnimator : new HashSet(this.animators)) {
            if (!CollectionsKt.contains(exceptOwnerList, cameraAnimator.getOwner())) {
                AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    public final void invoke2() {
                        cameraAnimator.cancel();
                    }
                });
            }
        }
        List<String> list = exceptOwnerList;
        HighLevelAnimatorSet highLevelAnimatorSet = this.highLevelAnimatorSet;
        if (CollectionsKt.contains(list, highLevelAnimatorSet != null ? highLevelAnimatorSet.getOwner() : null)) {
            return;
        }
        cancelAnimatorSet();
    }

    @Override
    public void addCameraZoomChangeListener(CameraAnimatorChangeListener<Double> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.zoomListeners.add(listener);
    }

    @Override
    public void removeCameraZoomChangeListener(CameraAnimatorChangeListener<Double> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.zoomListeners.remove(listener);
    }

    @Override
    public void addCameraCenterChangeListener(CameraAnimatorChangeListener<Point> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.centerListeners.add(listener);
    }

    @Override
    public void removeCameraCenterChangeListener(CameraAnimatorChangeListener<Point> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.centerListeners.remove(listener);
    }

    @Override
    public void addCameraPaddingChangeListener(CameraAnimatorChangeListener<EdgeInsets> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.paddingListeners.add(listener);
    }

    @Override
    public void removeCameraPaddingChangeListener(CameraAnimatorChangeListener<EdgeInsets> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.paddingListeners.remove(listener);
    }

    @Override
    public void addCameraAnchorChangeListener(CameraAnimatorNullableChangeListener<ScreenCoordinate> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.anchorListeners.add(listener);
    }

    @Override
    public void removeCameraAnchorChangeListener(CameraAnimatorNullableChangeListener<ScreenCoordinate> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.anchorListeners.remove(listener);
    }

    @Override
    public void addCameraBearingChangeListener(CameraAnimatorChangeListener<Double> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.bearingListeners.add(listener);
    }

    @Override
    public void removeCameraBearingChangeListener(CameraAnimatorChangeListener<Double> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.bearingListeners.remove(listener);
    }

    @Override
    public void addCameraPitchChangeListener(CameraAnimatorChangeListener<Double> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.pitchListeners.add(listener);
    }

    @Override
    public void removeCameraPitchChangeListener(CameraAnimatorChangeListener<Double> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.pitchListeners.remove(listener);
    }

    @Override
    public void addCameraAnimationsLifecycleListener(CameraAnimationsLifecycleListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.lifecycleListeners.add(listener);
    }

    @Override
    public void removeCameraAnimationsLifecycleListener(CameraAnimationsLifecycleListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.lifecycleListeners.remove(listener);
    }

    @Override
    public Cancelable easeTo(CameraOptions cameraOptions, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        if (CameraOptionsUtils.isEmpty(cameraOptions)) {
            MapboxLogger.logW(TAG, "No-op easeTo camera high-level animation as CameraOptions.isEmpty == true.");
            return new Cancelable() {
                @Override
                public final void cancel() {
                    CameraAnimationsPluginImpl.easeTo$lambda$21();
                }
            };
        }
        return startHighLevelAnimation(CameraAnimatorsFactory.getEaseTo$default(getCameraAnimationsFactory(), cameraOptions, null, 2, null), animationOptions, animatorListener);
    }

    @Override
    public Cancelable moveBy(ScreenCoordinate screenCoordinate, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        return startHighLevelAnimation(CameraAnimatorsFactory.getMoveBy$default(getCameraAnimationsFactory(), screenCoordinate, null, 2, null), animationOptions, animatorListener);
    }

    @Override
    public Cancelable scaleBy(double amount, ScreenCoordinate screenCoordinate, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener) {
        return startHighLevelAnimation(CameraAnimatorsFactory.getScaleBy$default(getCameraAnimationsFactory(), amount, screenCoordinate, null, 4, null), animationOptions, animatorListener);
    }

    @Override
    public double calculateScaleBy(double amount, double currentZoom) {
        return CameraTransform.INSTANCE.calculateScaleBy(amount, currentZoom);
    }

    @Override
    public Cancelable rotateBy(ScreenCoordinate first, ScreenCoordinate second, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        return startHighLevelAnimation(CameraAnimatorsFactory.getRotateBy$default(getCameraAnimationsFactory(), first, second, null, 4, null), animationOptions, animatorListener);
    }

    @Override
    public Cancelable pitchBy(double pitch, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener) {
        return startHighLevelAnimation(CameraAnimatorsFactory.getPitchBy$default(getCameraAnimationsFactory(), pitch, null, 2, null), animationOptions, animatorListener);
    }

    @Override
    public Cancelable flyTo(CameraOptions cameraOptions, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        if (CameraOptionsUtils.isEmpty(cameraOptions)) {
            MapboxLogger.logW(TAG, "No-op flyTo camera high-level animation as CameraOptions.isEmpty == true.");
            return new Cancelable() {
                @Override
                public final void cancel() {
                    CameraAnimationsPluginImpl.flyTo$lambda$22();
                }
            };
        }
        return startHighLevelAnimation(CameraAnimatorsFactory.getFlyTo$default(getCameraAnimationsFactory(), cameraOptions, null, 2, null), animationOptions, animatorListener);
    }

    @Override
    public ValueAnimator createZoomAnimator(CameraAnimatorOptions<Double> options, Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new CameraZoomAnimator(options, block);
    }

    @Override
    public ValueAnimator createAnchorAnimator(CameraAnimatorOptions<ScreenCoordinate> options, Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new CameraAnchorAnimator(options, block);
    }

    @Override
    public ValueAnimator createBearingAnimator(CameraAnimatorOptions<Double> options, boolean useShortestPath, Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new CameraBearingAnimator(options, useShortestPath, block);
    }

    @Override
    public ValueAnimator createPitchAnimator(CameraAnimatorOptions<Double> options, Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new CameraPitchAnimator(options, block);
    }

    @Override
    public ValueAnimator createPaddingAnimator(CameraAnimatorOptions<EdgeInsets> options, Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new CameraPaddingAnimator(options, block);
    }

    @Override
    public ValueAnimator createCenterAnimator(CameraAnimatorOptions<Point> options, boolean useShortestPath, Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new CameraCenterAnimator(null, options, useShortestPath, block, 1, null);
    }

    @Override
    public void playAnimatorsTogether(ValueAnimator... animators) {
        Intrinsics.checkNotNullParameter(animators, "animators");
        if (animators.length == 0) {
            MapboxLogger.logW(TAG, "No-op playAnimatorsTogether() as no animators are passed");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ValueAnimator valueAnimator : animators) {
            if (valueAnimator instanceof CameraAnimator) {
                CameraAnimator cameraAnimator = (CameraAnimator) valueAnimator;
                cameraAnimator.setInternal$plugin_animation_release(true);
                if (cameraAnimator.getOwner() == null) {
                    cameraAnimator.setOwner$plugin_animation_release(MapAnimationOwnerRegistry.INTERNAL);
                }
                arrayList.add(valueAnimator);
            } else {
                MapboxLogger.logE(TAG, "All animators must be CameraAnimator's to be played together!");
            }
        }
        ArrayList arrayList2 = arrayList;
        Object[] array = arrayList2.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CameraAnimator[] cameraAnimatorArr = (CameraAnimator[]) array;
        registerAnimators((ValueAnimator[]) Arrays.copyOf(cameraAnimatorArr, cameraAnimatorArr.length));
        final AnimatorSet animatorSet = new AnimatorSet();
        Object[] array2 = arrayList2.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CameraAnimator[] cameraAnimatorArr2 = (CameraAnimator[]) array2;
        animatorSet.playTogether((Animator[]) Arrays.copyOf(cameraAnimatorArr2, cameraAnimatorArr2.length));
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                animatorSet.start();
            }
        });
    }

    @Override
    public void playAnimatorsSequentially(ValueAnimator... animators) {
        Intrinsics.checkNotNullParameter(animators, "animators");
        if (animators.length == 0) {
            MapboxLogger.logW(TAG, "No-op playAnimatorsSequentially() as no animators are passed");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ValueAnimator valueAnimator : animators) {
            if (valueAnimator instanceof CameraAnimator) {
                CameraAnimator cameraAnimator = (CameraAnimator) valueAnimator;
                cameraAnimator.setInternal$plugin_animation_release(true);
                if (cameraAnimator.getOwner() == null) {
                    cameraAnimator.setOwner$plugin_animation_release(MapAnimationOwnerRegistry.INTERNAL);
                }
                arrayList.add(valueAnimator);
            } else {
                MapboxLogger.logE(TAG, "All animators must be CameraAnimator's to be played sequentially!");
            }
        }
        ArrayList arrayList2 = arrayList;
        Object[] array = arrayList2.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CameraAnimator[] cameraAnimatorArr = (CameraAnimator[]) array;
        registerAnimators((ValueAnimator[]) Arrays.copyOf(cameraAnimatorArr, cameraAnimatorArr.length));
        final AnimatorSet animatorSet = new AnimatorSet();
        Object[] array2 = arrayList2.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CameraAnimator[] cameraAnimatorArr2 = (CameraAnimator[]) array2;
        animatorSet.playSequentially((Animator[]) Arrays.copyOf(cameraAnimatorArr2, cameraAnimatorArr2.length));
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                animatorSet.start();
            }
        });
    }

    private final Cancelable startHighLevelAnimation(CameraAnimator<?>[] animators, MapAnimationOptions animationOptions, final Animator.AnimatorListener animatorListener) {
        TimeInterpolator interpolator;
        Long startDelay;
        Long duration;
        if (animators.length == 0) {
            MapboxLogger.logW(TAG, "No-op camera high-level animation as CameraOptions are empty.");
            return new Cancelable() {
                @Override
                public final void cancel() {
                    CameraAnimationsPluginImpl.startHighLevelAnimation$lambda$25();
                }
            };
        }
        int length = animators.length;
        int i = 0;
        while (true) {
            String owner = null;
            if (i >= length) {
                break;
            }
            CameraAnimator<?> cameraAnimator = animators[i];
            cameraAnimator.setInternal$plugin_animation_release(true);
            if (animationOptions != null) {
                owner = animationOptions.getOwner();
            }
            cameraAnimator.setOwner$plugin_animation_release(owner);
            i++;
        }
        cancelAnimatorSet();
        registerAnimators((ValueAnimator[]) Arrays.copyOf(animators, animators.length));
        final AnimatorSet animatorSet = new AnimatorSet();
        if (animationOptions != null && (duration = animationOptions.getDuration()) != null) {
            animatorSet.setDuration(duration.longValue());
        }
        if (animationOptions != null && (startDelay = animationOptions.getStartDelay()) != null) {
            animatorSet.setStartDelay(startDelay.longValue());
        }
        if (animationOptions != null && (interpolator = animationOptions.getInterpolator()) != null) {
            animatorSet.setInterpolator(interpolator);
        }
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                animatorSet.addListener(this.clearHighLevelAnimatorSetListener);
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorSet.addListener(animatorListener2);
                }
            }
        });
        animatorSet.playTogether((Animator[]) Arrays.copyOf(animators, animators.length));
        CameraAnimationHint cameraAnimationHintCalculateCameraAnimationHint$default = CameraAnimationsUtils.calculateCameraAnimationHint$default(animatorSet, this.cameraAnimationHintFractions, (CameraState) null, 2, (Object) null);
        if (cameraAnimationHintCalculateCameraAnimationHint$default != null) {
            MapTransformDelegate mapTransformDelegate = this.mapTransformDelegate;
            if (mapTransformDelegate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapTransformDelegate");
                mapTransformDelegate = null;
            }
            mapTransformDelegate.setCameraAnimationHint(cameraAnimationHintCalculateCameraAnimationHint$default);
        }
        final HighLevelAnimatorSet highLevelAnimatorSet = new HighLevelAnimatorSet(animationOptions != null ? animationOptions.getOwner() : null, animatorSet);
        this.highLevelAnimatorSet = highLevelAnimatorSet;
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                highLevelAnimatorSet.getAnimatorSet().start();
            }
        });
        return highLevelAnimatorSet;
    }
}
