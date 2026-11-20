package com.mapbox.maps.plugin.gestures;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.animated.InterpolationAnimatedNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.android.gestures.AndroidGesturesManager;
import com.mapbox.android.gestures.MoveGestureDetector;
import com.mapbox.android.gestures.MultiFingerTapGestureDetector;
import com.mapbox.android.gestures.RotateGestureDetector;
import com.mapbox.android.gestures.ShoveGestureDetector;
import com.mapbox.android.gestures.StandardScaleGestureDetector;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.ClickInteraction;
import com.mapbox.maps.DragInteraction;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.InteractionContext;
import com.mapbox.maps.LongClickInteraction;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.PlatformEventInfo;
import com.mapbox.maps.PlatformEventType;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.plugin.InvalidPluginConfigurationException;
import com.mapbox.maps.plugin.MapStyleObserverPlugin;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimatorChangeListener;
import com.mapbox.maps.plugin.animation.CameraAnimatorOptions;
import com.mapbox.maps.plugin.animation.MapAnimationOptions;
import com.mapbox.maps.plugin.animation.MapAnimationOwnerRegistry;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.delegates.MapInteractionDelegate;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import com.mapbox.maps.plugin.delegates.MapProjectionDelegate;
import com.mapbox.maps.plugin.delegates.MapTransformDelegate;
import com.mapbox.maps.plugin.gestures.generated.GesturesAttributeParser;
import com.mapbox.maps.plugin.gestures.generated.GesturesSettings;
import com.mapbox.maps.plugin.gestures.generated.GesturesSettingsBase;
import com.mapbox.maps.util.CoreGesturesHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000À\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\"\b\u0001\u0018\u0000 \u0094\u00022\u00020\u00012\u00020\u00022\u00020\u0003:\u000e\u0094\u0002\u0095\u0002\u0096\u0002\u0097\u0002\u0098\u0002\u0099\u0002\u009a\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bB\u001f\b\u0011\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB'\b\u0011\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\u0010\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020PH\u0016J\u0010\u0010t\u001a\u00020r2\u0006\u0010u\u001a\u00020RH\u0016J\u0010\u0010v\u001a\u00020r2\u0006\u0010w\u001a\u00020TH\u0016J\u0010\u0010x\u001a\u00020r2\u0006\u0010y\u001a\u00020VH\u0016J\u0010\u0010z\u001a\u00020r2\u0006\u0010{\u001a\u00020XH\u0016J\u0010\u0010|\u001a\u00020r2\u0006\u0010}\u001a\u00020ZH\u0016J\u0010\u0010~\u001a\u00020r2\u0006\u0010\u007f\u001a\u00020\\H\u0016J\u0012\u0010\u0080\u0001\u001a\u00020r2\u0007\u0010\u0081\u0001\u001a\u00020^H\u0016J\u001b\u0010\u0082\u0001\u001a\u00020r2\u0007\u0010\u0083\u0001\u001a\u00020\u00162\u0007\u0010\u0084\u0001\u001a\u00020\u0018H\u0002J!\u0010\u0085\u0001\u001a\u00020r2\u0007\u0010\u0083\u0001\u001a\u00020\u00162\u0007\u0010\u0084\u0001\u001a\u00020\u0018H\u0000¢\u0006\u0003\b\u0086\u0001J\t\u0010\u0087\u0001\u001a\u00020rH\u0014J$\u0010\u0088\u0001\u001a\u00020r2\u0006\u0010\u0004\u001a\u00020\u00052\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J2\u0010\u0088\u0001\u001a\u00020r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010'\u001a\u00020(2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¢\u0006\u0003\b\u008a\u0001J\u001b\u0010\u008b\u0001\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u00020f2\u0007\u0010\u008d\u0001\u001a\u00020\u0018H\u0002J\u0019\u0010\u008e\u0001\u001a\u00020f2\b\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0001¢\u0006\u0003\b\u0091\u0001J\t\u0010\u0092\u0001\u001a\u00020rH\u0002J$\u0010\u0093\u0001\u001a\u00020f2\u0007\u0010\u0094\u0001\u001a\u00020f2\u0007\u0010\u0095\u0001\u001a\u00020f2\u0007\u0010\u0096\u0001\u001a\u00020fH\u0002J$\u0010\u0093\u0001\u001a\u00020\u00072\u0007\u0010\u0094\u0001\u001a\u00020\u00072\u0007\u0010\u0095\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u0097\u0001\u001a\u00020rH\u0016J1\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020b0a2\u0007\u0010\u0099\u0001\u001a\u00020\u00072\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u0016H\u0002¢\u0006\u0003\u0010\u009d\u0001J:\u0010\u009e\u0001\u001a\b\u0012\u0004\u0012\u00020b0a2\u0007\u0010\u009f\u0001\u001a\u00020f2\u0007\u0010 \u0001\u001a\u00020f2\u0007\u0010\u009c\u0001\u001a\u00020\u00162\b\u0010\u009a\u0001\u001a\u00030\u009b\u0001H\u0002¢\u0006\u0003\u0010¡\u0001J\t\u0010¢\u0001\u001a\u00020rH\u0002J\t\u0010£\u0001\u001a\u00020(H\u0016J\u0013\u0010¤\u0001\u001a\u00020\u00162\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0002J\u0013\u0010§\u0001\u001a\u00020\u00162\b\u0010¥\u0001\u001a\u00030\u0090\u0001H\u0002J\u0018\u0010¨\u0001\u001a\u00020\u00182\u0007\u0010©\u0001\u001a\u00020\u0016H\u0000¢\u0006\u0003\bª\u0001J\"\u0010«\u0001\u001a\u00020\u00182\b\u0010¬\u0001\u001a\u00030\u00ad\u00012\u0007\u0010®\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0003\b¯\u0001J+\u0010°\u0001\u001a\u00020\u00182\b\u0010±\u0001\u001a\u00030\u00ad\u00012\u0007\u0010²\u0001\u001a\u00020\u00072\u0007\u0010³\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0003\b´\u0001J\u0018\u0010µ\u0001\u001a\u00020r2\u0007\u0010©\u0001\u001a\u00020\u0016H\u0000¢\u0006\u0003\b¶\u0001J\u0018\u0010·\u0001\u001a\u00020r2\u0007\u0010¸\u0001\u001a\u00020\u0016H\u0000¢\u0006\u0003\b¹\u0001J\u000f\u0010º\u0001\u001a\u00020rH\u0000¢\u0006\u0003\b»\u0001J\u000f\u0010¼\u0001\u001a\u00020rH\u0000¢\u0006\u0003\b½\u0001J\"\u0010¾\u0001\u001a\u00020\u00182\b\u0010¥\u0001\u001a\u00030¦\u00012\u0007\u0010¿\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0003\bÀ\u0001J\u0019\u0010Á\u0001\u001a\u00020\u00182\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0000¢\u0006\u0003\bÂ\u0001J4\u0010Ã\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030¦\u00012\u0007\u0010²\u0001\u001a\u00020\u00072\u0007\u0010³\u0001\u001a\u00020\u00072\u0007\u0010Ä\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0003\bÅ\u0001J\u0019\u0010Æ\u0001\u001a\u00020\u00182\b\u0010¥\u0001\u001a\u00030\u0090\u0001H\u0000¢\u0006\u0003\bÇ\u0001J\u0019\u0010È\u0001\u001a\u00020\u00182\b\u0010¥\u0001\u001a\u00030\u0090\u0001H\u0000¢\u0006\u0003\bÉ\u0001J+\u0010Ê\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030\u0090\u00012\u0007\u0010²\u0001\u001a\u00020\u00072\u0007\u0010³\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0003\bË\u0001J\"\u0010Ì\u0001\u001a\u00020\u00182\b\u0010¥\u0001\u001a\u00030Í\u00012\u0007\u0010Î\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0003\bÏ\u0001J\u0019\u0010Ð\u0001\u001a\u00020\u00182\b\u0010¥\u0001\u001a\u00030Í\u0001H\u0000¢\u0006\u0003\bÑ\u0001J\u0019\u0010Ò\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030Í\u0001H\u0000¢\u0006\u0003\bÓ\u0001J\u000f\u0010Ô\u0001\u001a\u00020\u0018H\u0000¢\u0006\u0003\bÕ\u0001J*\u0010Ö\u0001\u001a\u00020r2\u0007\u0010×\u0001\u001a\u00020\u00182\u0007\u0010\u0083\u0001\u001a\u00020\u00162\u0007\u0010\u0084\u0001\u001a\u00020\u0018H\u0000¢\u0006\u0003\bØ\u0001J\t\u0010Ù\u0001\u001a\u00020rH\u0016J\u001a\u0010Ú\u0001\u001a\u00020r2\u0006\u0010\u0004\u001a\u00020\u00052\u0007\u0010Û\u0001\u001a\u00020\u0018H\u0002J\u001a\u0010Ü\u0001\u001a\u00020r2\u0006\u0010'\u001a\u00020(2\u0007\u0010Ý\u0001\u001a\u00020\u0018H\u0002J\u0018\u0010Þ\u0001\u001a\u00020\u00182\u0007\u0010ß\u0001\u001a\u00020\u0016H\u0001¢\u0006\u0003\bà\u0001J\t\u0010á\u0001\u001a\u00020\u0018H\u0002J\t\u0010â\u0001\u001a\u00020rH\u0002J\u0013\u0010ã\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030ä\u0001H\u0002J\u0013\u0010å\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030ä\u0001H\u0002J\u0013\u0010æ\u0001\u001a\u00020\u00182\b\u0010¥\u0001\u001a\u00030ä\u0001H\u0002J\u0013\u0010ç\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0002J\u0013\u0010è\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0002J\u0013\u0010é\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0002J\u0013\u0010ê\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030\u0090\u0001H\u0002J\u0013\u0010ë\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030\u0090\u0001H\u0002J\u0013\u0010ì\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030\u0090\u0001H\u0002J\u0013\u0010í\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030Í\u0001H\u0002J\u0013\u0010î\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030Í\u0001H\u0002J\u0013\u0010ï\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030Í\u0001H\u0002J\u0013\u0010ð\u0001\u001a\u00020r2\b\u0010ñ\u0001\u001a\u00030ò\u0001H\u0016J\u0013\u0010ó\u0001\u001a\u00020\u00182\b\u0010ô\u0001\u001a\u00030\u00ad\u0001H\u0016J\u0013\u0010õ\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0002J\u0013\u0010ö\u0001\u001a\u00020r2\b\u0010¥\u0001\u001a\u00030\u0090\u0001H\u0002J\u001d\u0010÷\u0001\u001a\u00020r2\b\u0010ø\u0001\u001a\u00030ù\u00012\b\u0010ú\u0001\u001a\u00030ù\u0001H\u0016J\u0011\u0010û\u0001\u001a\u00020r2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0015\u0010ü\u0001\u001a\u00020\u00182\n\u0010¬\u0001\u001a\u0005\u0018\u00010\u00ad\u0001H\u0016J\t\u0010ý\u0001\u001a\u00020rH\u0002J\u0011\u0010þ\u0001\u001a\u00020r2\u0006\u0010s\u001a\u00020PH\u0016J\u0011\u0010ÿ\u0001\u001a\u00020r2\u0006\u0010u\u001a\u00020RH\u0016J\u0011\u0010\u0080\u0002\u001a\u00020r2\u0006\u0010w\u001a\u00020TH\u0016J\u0012\u0010\u0081\u0002\u001a\u00020r2\u0007\u0010\u0082\u0002\u001a\u00020VH\u0016J\u0012\u0010\u0083\u0002\u001a\u00020r2\u0007\u0010\u0082\u0002\u001a\u00020XH\u0016J\u0012\u0010\u0084\u0002\u001a\u00020r2\u0007\u0010\u0082\u0002\u001a\u00020ZH\u0016J\u0012\u0010\u0085\u0002\u001a\u00020r2\u0007\u0010\u0082\u0002\u001a\u00020\\H\u0016J\u0012\u0010\u0086\u0002\u001a\u00020r2\u0007\u0010\u0081\u0001\u001a\u00020^H\u0016J \u0010\u0087\u0002\u001a\u00020r2\u000f\u0010\u0088\u0002\u001a\n\u0012\u0004\u0012\u00020b\u0018\u00010aH\u0002¢\u0006\u0003\u0010\u0089\u0002J$\u0010\u008a\u0002\u001a\u00020r2\u0007\u0010\u008b\u0002\u001a\u00020(2\u0007\u0010Û\u0001\u001a\u00020\u00182\u0007\u0010Ý\u0001\u001a\u00020\u0018H\u0016J\t\u0010\u008c\u0002\u001a\u00020rH\u0002J\t\u0010\u008d\u0002\u001a\u00020rH\u0002J\"\u0010\u008d\u0002\u001a\u0004\u0018\u00010r2\u000f\u0010\u0088\u0002\u001a\n\u0012\u0004\u0012\u00020b\u0018\u00010aH\u0002¢\u0006\u0003\u0010\u008e\u0002J1\u0010\u008f\u0002\u001a\u00020f*\u00020f2\u0007\u0010\u0090\u0002\u001a\u00020f2\u0007\u0010\u0091\u0002\u001a\u00020f2\u0007\u0010\u0092\u0002\u001a\u00020f2\u0007\u0010\u0093\u0002\u001a\u00020fH\u0002R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u00020\u0018X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010,\u001a\u00020-X\u0094\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u000e\u00102\u001a\u000203X\u0082.¢\u0006\u0002\n\u0000R$\u00104\u001a\u0002058\u0000@\u0000X\u0081.¢\u0006\u0014\n\u0000\u0012\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u000e\u0010<\u001a\u00020=X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020?X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010G\u001a\u00060HR\u00020\u00008\u0000@\u0000X\u0081.¢\u0006\u0014\n\u0000\u0012\u0004\bI\u00107\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u0014\u0010N\u001a\b\u0012\u0004\u0012\u00020P0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010S\u001a\b\u0012\u0004\u0012\u00020T0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010U\u001a\b\u0012\u0004\u0012\u00020V0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010W\u001a\b\u0012\u0004\u0012\u00020X0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010Y\u001a\b\u0012\u0004\u0012\u00020Z0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010[\u001a\b\u0012\u0004\u0012\u00020\\0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010]\u001a\b\u0012\u0004\u0012\u00020^0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010`\u001a\n\u0012\u0004\u0012\u00020b\u0018\u00010aX\u0082\u000e¢\u0006\u0004\n\u0002\u0010cR\u0010\u0010d\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010g\u001a\n\u0012\u0004\u0012\u00020b\u0018\u00010aX\u0082\u000e¢\u0006\u0004\n\u0002\u0010cR\u0010\u0010h\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010j\u001a\u0012\u0012\u0004\u0012\u00020b0kj\b\u0012\u0004\u0012\u00020b`lX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010m\u001a\u00020fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010n\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010p\u001a\u00020fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u009b\u0002"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl;", "Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettingsBase;", "Lcom/mapbox/maps/plugin/MapStyleObserverPlugin;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "pixelRatio", "", "(Landroid/content/Context;F)V", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;F)V", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mapbox/maps/MapboxStyleManager;)V", "animationsTimeoutHandler", "Landroid/os/Handler;", "(Landroid/content/Context;Landroid/util/AttributeSet;FLandroid/os/Handler;)V", "angularVelocityMultiplier", "cameraAnimationsPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "cameraCenterScreenCoordinate", "Lcom/mapbox/maps/ScreenCoordinate;", "cameraPaddingChanged", "", "centerScreen", "coreGesturesHandler", "Lcom/mapbox/maps/util/CoreGesturesHandler;", "defaultSpanSinceStartThreshold", "doubleTapFocalPoint", "doubleTapRegistered", "getDoubleTapRegistered$plugin_gestures_release", "()Z", "setDoubleTapRegistered$plugin_gestures_release", "(Z)V", "gestureState", "Lcom/mapbox/maps/plugin/gestures/GestureState;", "gesturesInterpolator", "Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;", "gesturesManager", "Lcom/mapbox/android/gestures/AndroidGesturesManager;", "interactionsCancelableSet", "", "Lcom/mapbox/common/Cancelable;", "internalSettings", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;", "getInternalSettings", "()Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;", "setInternalSettings", "(Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;)V", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapInteractionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "getMapInteractionDelegate$plugin_gestures_release$annotations", "()V", "getMapInteractionDelegate$plugin_gestures_release", "()Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "setMapInteractionDelegate$plugin_gestures_release", "(Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;)V", "mapPluginProviderDelegate", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "mapProjectionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "mapTransformDelegate", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "minimumAngledGestureSpeed", "minimumAngularVelocity", "minimumGestureSpeed", "minimumScaleSpanWhenRotating", "minimumVelocity", "moveGestureListener", "Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$MoveGestureListener;", "getMoveGestureListener$plugin_gestures_release$annotations", "getMoveGestureListener$plugin_gestures_release", "()Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$MoveGestureListener;", "setMoveGestureListener$plugin_gestures_release", "(Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$MoveGestureListener;)V", "onFlingListeners", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/plugin/gestures/OnFlingListener;", "onMapClickListeners", "Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;", "onMapLongClickListeners", "Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;", "onMoveListeners", "Lcom/mapbox/maps/plugin/gestures/OnMoveListener;", "onRotateListeners", "Lcom/mapbox/maps/plugin/gestures/OnRotateListener;", "onScaleListeners", "Lcom/mapbox/maps/plugin/gestures/OnScaleListener;", "onShoveListeners", "Lcom/mapbox/maps/plugin/gestures/OnShoveListener;", "protectedCameraAnimatorOwners", "", "quickZoom", "rotateAnimators", "", "Landroid/animation/ValueAnimator;", "[Landroid/animation/ValueAnimator;", "rotateCachedAnchor", "rotateVelocityRatioThreshold", "", "scaleAnimators", "scaleCachedAnchor", "scaleVelocityRatioThreshold", "scheduledAnimators", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "screenHeight", "sizeChanged", "spanSinceLast", "startZoom", "addOnFlingListener", "", "onFlingListener", "addOnMapClickListener", "onMapClickListener", "addOnMapLongClickListener", "onMapLongClickListener", "addOnMoveListener", "onMoveListener", "addOnRotateListener", "onRotateListener", "addOnScaleListener", "onScaleListener", "addOnShoveListener", "onShoveListener", "addProtectedAnimationOwner", "owner", "animateZoomIn", "zoomFocalPoint", "runImmediately", "animateZoomOut", "animateZoomOut$plugin_gestures_release", "applySettings", "bind", "attrs", "bind$plugin_gestures_release", "calculateScale", "velocityXY", "isScalingOut", "calculateZoomBy", "standardScaleGestureDetector", "Lcom/mapbox/android/gestures/StandardScaleGestureDetector;", "calculateZoomBy$plugin_gestures_release", "cancelTransitionsIfRequired", InterpolationAnimatedNode.EXTRAPOLATE_TYPE_CLAMP, "value", "min", "max", "cleanup", "createRotateAnimators", "angularVelocity", "animationTime", "", "animationFocalPoint", "(FJLcom/mapbox/maps/ScreenCoordinate;)[Landroid/animation/ValueAnimator;", "createScaleAnimators", "currentZoom", "zoomAddition", "(DDLcom/mapbox/maps/ScreenCoordinate;J)[Landroid/animation/ValueAnimator;", "doubleTapFinished", "getGesturesManager", "getRotateFocalPoint", "detector", "Lcom/mapbox/android/gestures/RotateGestureDetector;", "getScaleFocalPoint", "handleClickEvent", "screenCoordinate", "handleClickEvent$plugin_gestures_release", "handleDoubleTapEvent", "motionEvent", "Landroid/view/MotionEvent;", "doubleTapMovementThreshold", "handleDoubleTapEvent$plugin_gestures_release", "handleFlingEvent", "e2", "velocityX", "velocityY", "handleFlingEvent$plugin_gestures_release", "handleLongPressEvent", "handleLongPressEvent$plugin_gestures_release", "handleMove", "targetScreenCoordinate", "handleMove$plugin_gestures_release", "handleMoveEnd", "handleMoveEnd$plugin_gestures_release", "handleMoveStartEvent", "handleMoveStartEvent$plugin_gestures_release", "handleRotate", "rotationDegreesSinceLast", "handleRotate$plugin_gestures_release", "handleRotateBegin", "handleRotateBegin$plugin_gestures_release", "handleRotateEnd", "angularVelocityEvent", "handleRotateEnd$plugin_gestures_release", "handleScale", "handleScale$plugin_gestures_release", "handleScaleBegin", "handleScaleBegin$plugin_gestures_release", "handleScaleEnd", "handleScaleEnd$plugin_gestures_release", "handleShove", "Lcom/mapbox/android/gestures/ShoveGestureDetector;", "deltaPixelsSinceLast", "handleShove$plugin_gestures_release", "handleShoveBegin", "handleShoveBegin$plugin_gestures_release", "handleShoveEnd", "handleShoveEnd$plugin_gestures_release", "handleSingleTapUpEvent", "handleSingleTapUpEvent$plugin_gestures_release", "handleZoomAnimation", "zoomIn", "handleZoomAnimation$plugin_gestures_release", "initialize", "initializeGestureListeners", "attachDefaultListeners", "initializeGesturesManager", "setDefaultMutuallyExclusives", "isPointAboveHorizon", "pixel", "isPointAboveHorizon$plugin_gestures_release", "noGesturesInProgress", "notifyOnFlingListeners", "notifyOnMoveBeginListeners", "Lcom/mapbox/android/gestures/MoveGestureDetector;", "notifyOnMoveEndListeners", "notifyOnMoveListeners", "notifyOnRotateBeginListeners", "notifyOnRotateEndListeners", "notifyOnRotateListeners", "notifyOnScaleBeginListeners", "notifyOnScaleEndListeners", "notifyOnScaleListeners", "notifyOnShoveBeginListeners", "notifyOnShoveEndListeners", "notifyOnShoveListeners", "onDelegateProvider", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "onGenericMotionEvent", NotificationCompat.CATEGORY_EVENT, "onRotateAnimationEnd", "onScaleAnimationEnd", "onSizeChanged", "width", "", "height", "onStyleChanged", "onTouchEvent", "registerInteractions", "removeOnFlingListener", "removeOnMapClickListener", "removeOnMapLongClickListener", "removeOnMoveListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "removeOnRotateListener", "removeOnScaleListener", "removeOnShoveListener", "removeProtectedAnimationOwner", "scheduleAnimators", "animators", "([Landroid/animation/ValueAnimator;)V", "setGesturesManager", "internalGesturesManager", "unregisterInteractions", "unregisterScheduledAnimators", "([Landroid/animation/ValueAnimator;)Lkotlin/Unit;", "normalize", "x", "dataLow", "dataHigh", "normalizedHigh", "Companion", "MoveGestureListener", "RotateGestureListener", "ScaleGestureListener", "ShoveGestureListener", "StandardGestureListener", "TapGestureListener", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GesturesPluginImpl extends GesturesSettingsBase implements GesturesPlugin, MapStyleObserverPlugin {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final MapAnimationOptions IMMEDIATE_ANIMATION_OPTIONS;

    @Deprecated
    public static final float MAX_SHOVE_ANGLE = 45.0f;

    @Deprecated
    public static final float ROTATION_ANGLE_THRESHOLD = 3.0f;

    @Deprecated
    private static final String TAG = "Gestures";
    private float angularVelocityMultiplier;
    private final Handler animationsTimeoutHandler;
    private CameraAnimationsPlugin cameraAnimationsPlugin;
    private ScreenCoordinate cameraCenterScreenCoordinate;
    private boolean cameraPaddingChanged;
    private ScreenCoordinate centerScreen;
    private final Context context;
    private CoreGesturesHandler coreGesturesHandler;
    private float defaultSpanSinceStartThreshold;
    private ScreenCoordinate doubleTapFocalPoint;
    private boolean doubleTapRegistered;
    private GestureState gestureState;
    private LinearOutSlowInInterpolator gesturesInterpolator;
    private AndroidGesturesManager gesturesManager;
    private final Set<Cancelable> interactionsCancelableSet;
    private GesturesSettings internalSettings;
    private MapCameraManagerDelegate mapCameraManagerDelegate;
    public MapInteractionDelegate mapInteractionDelegate;
    private MapPluginProviderDelegate mapPluginProviderDelegate;
    private MapProjectionDelegate mapProjectionDelegate;
    private MapTransformDelegate mapTransformDelegate;
    private float minimumAngledGestureSpeed;
    private float minimumAngularVelocity;
    private float minimumGestureSpeed;
    private float minimumScaleSpanWhenRotating;
    private float minimumVelocity;
    public MoveGestureListener moveGestureListener;
    private final CopyOnWriteArraySet<OnFlingListener> onFlingListeners;
    private final CopyOnWriteArraySet<OnMapClickListener> onMapClickListeners;
    private final CopyOnWriteArraySet<OnMapLongClickListener> onMapLongClickListeners;
    private final CopyOnWriteArraySet<OnMoveListener> onMoveListeners;
    private final CopyOnWriteArraySet<OnRotateListener> onRotateListeners;
    private final CopyOnWriteArraySet<OnScaleListener> onScaleListeners;
    private final CopyOnWriteArraySet<OnShoveListener> onShoveListeners;
    private float pixelRatio;
    private final CopyOnWriteArraySet<String> protectedCameraAnimatorOwners;
    private boolean quickZoom;
    private ValueAnimator[] rotateAnimators;
    private ScreenCoordinate rotateCachedAnchor;
    private double rotateVelocityRatioThreshold;
    private ValueAnimator[] scaleAnimators;
    private ScreenCoordinate scaleCachedAnchor;
    private double scaleVelocityRatioThreshold;
    private final ArrayList<ValueAnimator> scheduledAnimators;
    private double screenHeight;
    private boolean sizeChanged;
    private float spanSinceLast;
    private double startZoom;
    private MapboxStyleManager style;

    public static void getMapInteractionDelegate$plugin_gestures_release$annotations() {
    }

    public static void getMoveGestureListener$plugin_gestures_release$annotations() {
    }

    private final double normalize(double d, double d2, double d3, double d4, double d5) {
        return (((d2 - d3) / (d4 - d3)) * (d5 - d)) + d;
    }

    @Override
    protected void applySettings() {
    }

    public final MoveGestureListener getMoveGestureListener$plugin_gestures_release() {
        MoveGestureListener moveGestureListener = this.moveGestureListener;
        if (moveGestureListener != null) {
            return moveGestureListener;
        }
        Intrinsics.throwUninitializedPropertyAccessException("moveGestureListener");
        return null;
    }

    public final void setMoveGestureListener$plugin_gestures_release(MoveGestureListener moveGestureListener) {
        Intrinsics.checkNotNullParameter(moveGestureListener, "<set-?>");
        this.moveGestureListener = moveGestureListener;
    }

    public final MapInteractionDelegate getMapInteractionDelegate$plugin_gestures_release() {
        MapInteractionDelegate mapInteractionDelegate = this.mapInteractionDelegate;
        if (mapInteractionDelegate != null) {
            return mapInteractionDelegate;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mapInteractionDelegate");
        return null;
    }

    public final void setMapInteractionDelegate$plugin_gestures_release(MapInteractionDelegate mapInteractionDelegate) {
        Intrinsics.checkNotNullParameter(mapInteractionDelegate, "<set-?>");
        this.mapInteractionDelegate = mapInteractionDelegate;
    }

    public final boolean getDoubleTapRegistered() {
        return this.doubleTapRegistered;
    }

    public final void setDoubleTapRegistered$plugin_gestures_release(boolean z) {
        this.doubleTapRegistered = z;
    }

    @Override
    protected GesturesSettings getInternalSettings() {
        return this.internalSettings;
    }

    @Override
    protected void setInternalSettings(GesturesSettings gesturesSettings) {
        Intrinsics.checkNotNullParameter(gesturesSettings, "<set-?>");
        this.internalSettings = gesturesSettings;
    }

    public GesturesPluginImpl(Context context, float f) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.pixelRatio = 1.0f;
        this.interactionsCancelableSet = new LinkedHashSet();
        this.protectedCameraAnimatorOwners = new CopyOnWriteArraySet<>();
        this.onMapClickListeners = new CopyOnWriteArraySet<>();
        this.onMapLongClickListeners = new CopyOnWriteArraySet<>();
        this.onFlingListeners = new CopyOnWriteArraySet<>();
        this.onMoveListeners = new CopyOnWriteArraySet<>();
        this.onRotateListeners = new CopyOnWriteArraySet<>();
        this.onScaleListeners = new CopyOnWriteArraySet<>();
        this.onShoveListeners = new CopyOnWriteArraySet<>();
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(0.0d, 0.0d);
        this.doubleTapFocalPoint = screenCoordinate;
        this.centerScreen = screenCoordinate;
        this.cameraCenterScreenCoordinate = screenCoordinate;
        this.sizeChanged = true;
        this.scheduledAnimators = new ArrayList<>();
        this.gesturesInterpolator = new LinearOutSlowInInterpolator();
        this.context = context;
        this.pixelRatio = f;
        setInternalSettings(GesturesAttributeParser.INSTANCE.parseGesturesSettings(context, null));
        this.animationsTimeoutHandler = new Handler(Looper.getMainLooper());
    }

    public GesturesPluginImpl(Context context, AttributeSet attributeSet, float f) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributeSet, "attributeSet");
        this.pixelRatio = 1.0f;
        this.interactionsCancelableSet = new LinkedHashSet();
        this.protectedCameraAnimatorOwners = new CopyOnWriteArraySet<>();
        this.onMapClickListeners = new CopyOnWriteArraySet<>();
        this.onMapLongClickListeners = new CopyOnWriteArraySet<>();
        this.onFlingListeners = new CopyOnWriteArraySet<>();
        this.onMoveListeners = new CopyOnWriteArraySet<>();
        this.onRotateListeners = new CopyOnWriteArraySet<>();
        this.onScaleListeners = new CopyOnWriteArraySet<>();
        this.onShoveListeners = new CopyOnWriteArraySet<>();
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(0.0d, 0.0d);
        this.doubleTapFocalPoint = screenCoordinate;
        this.centerScreen = screenCoordinate;
        this.cameraCenterScreenCoordinate = screenCoordinate;
        this.sizeChanged = true;
        this.scheduledAnimators = new ArrayList<>();
        this.gesturesInterpolator = new LinearOutSlowInInterpolator();
        this.context = context;
        this.pixelRatio = f;
        setInternalSettings(GesturesAttributeParser.INSTANCE.parseGesturesSettings(context, attributeSet));
        this.animationsTimeoutHandler = new Handler(Looper.getMainLooper());
    }

    public GesturesPluginImpl(Context context, AttributeSet attributeSet, MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributeSet, "attributeSet");
        Intrinsics.checkNotNullParameter(style, "style");
        this.pixelRatio = 1.0f;
        this.interactionsCancelableSet = new LinkedHashSet();
        this.protectedCameraAnimatorOwners = new CopyOnWriteArraySet<>();
        this.onMapClickListeners = new CopyOnWriteArraySet<>();
        this.onMapLongClickListeners = new CopyOnWriteArraySet<>();
        this.onFlingListeners = new CopyOnWriteArraySet<>();
        this.onMoveListeners = new CopyOnWriteArraySet<>();
        this.onRotateListeners = new CopyOnWriteArraySet<>();
        this.onScaleListeners = new CopyOnWriteArraySet<>();
        this.onShoveListeners = new CopyOnWriteArraySet<>();
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(0.0d, 0.0d);
        this.doubleTapFocalPoint = screenCoordinate;
        this.centerScreen = screenCoordinate;
        this.cameraCenterScreenCoordinate = screenCoordinate;
        this.sizeChanged = true;
        this.scheduledAnimators = new ArrayList<>();
        this.gesturesInterpolator = new LinearOutSlowInInterpolator();
        this.context = context;
        this.pixelRatio = 1.0f;
        setInternalSettings(GesturesAttributeParser.INSTANCE.parseGesturesSettings(context, attributeSet));
        this.animationsTimeoutHandler = new Handler(Looper.getMainLooper());
        this.style = style;
    }

    public GesturesPluginImpl(Context context, AttributeSet attributeSet, float f, Handler animationsTimeoutHandler) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributeSet, "attributeSet");
        Intrinsics.checkNotNullParameter(animationsTimeoutHandler, "animationsTimeoutHandler");
        this.pixelRatio = 1.0f;
        this.interactionsCancelableSet = new LinkedHashSet();
        this.protectedCameraAnimatorOwners = new CopyOnWriteArraySet<>();
        this.onMapClickListeners = new CopyOnWriteArraySet<>();
        this.onMapLongClickListeners = new CopyOnWriteArraySet<>();
        this.onFlingListeners = new CopyOnWriteArraySet<>();
        this.onMoveListeners = new CopyOnWriteArraySet<>();
        this.onRotateListeners = new CopyOnWriteArraySet<>();
        this.onScaleListeners = new CopyOnWriteArraySet<>();
        this.onShoveListeners = new CopyOnWriteArraySet<>();
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(0.0d, 0.0d);
        this.doubleTapFocalPoint = screenCoordinate;
        this.centerScreen = screenCoordinate;
        this.cameraCenterScreenCoordinate = screenCoordinate;
        this.sizeChanged = true;
        this.scheduledAnimators = new ArrayList<>();
        this.gesturesInterpolator = new LinearOutSlowInInterpolator();
        this.context = context;
        this.pixelRatio = f;
        setInternalSettings(GesturesAttributeParser.INSTANCE.parseGesturesSettings(context, attributeSet));
        this.animationsTimeoutHandler = animationsTimeoutHandler;
    }

    private final void initializeGestureListeners(Context context, boolean attachDefaultListeners) {
        if (attachDefaultListeners) {
            StandardGestureListener standardGestureListener = new StandardGestureListener(context.getResources().getDimension(com.mapbox.android.gestures.R.dimen.mapbox_defaultScaleSpanSinceStartThreshold));
            setMoveGestureListener$plugin_gestures_release(new MoveGestureListener());
            this.minimumGestureSpeed = context.getResources().getDimension(R.dimen.mapbox_minimum_scale_speed);
            this.minimumAngledGestureSpeed = context.getResources().getDimension(R.dimen.mapbox_minimum_angled_scale_speed);
            this.minimumVelocity = context.getResources().getDimension(R.dimen.mapbox_minimum_scale_velocity);
            this.scaleVelocityRatioThreshold = ((double) context.getResources().getDimension(R.dimen.mapbox_density_constant)) * 0.004d;
            ScaleGestureListener scaleGestureListener = new ScaleGestureListener();
            this.minimumScaleSpanWhenRotating = context.getResources().getDimension(R.dimen.mapbox_minimum_scale_span_when_rotating);
            this.angularVelocityMultiplier = context.getResources().getDimension(R.dimen.mapbox_angular_velocity_multiplier);
            this.minimumAngularVelocity = context.getResources().getDimension(R.dimen.mapbox_minimum_angular_velocity);
            this.rotateVelocityRatioThreshold = ((double) context.getResources().getDimension(R.dimen.mapbox_density_constant)) * 2.2000000000000003E-4d;
            this.defaultSpanSinceStartThreshold = context.getResources().getDimension(com.mapbox.android.gestures.R.dimen.mapbox_defaultScaleSpanSinceStartThreshold);
            RotateGestureListener rotateGestureListener = new RotateGestureListener();
            ShoveGestureListener shoveGestureListener = new ShoveGestureListener();
            TapGestureListener tapGestureListener = new TapGestureListener();
            AndroidGesturesManager androidGesturesManager = this.gesturesManager;
            AndroidGesturesManager androidGesturesManager2 = null;
            if (androidGesturesManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager = null;
            }
            androidGesturesManager.setStandardGestureListener(standardGestureListener);
            AndroidGesturesManager androidGesturesManager3 = this.gesturesManager;
            if (androidGesturesManager3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager3 = null;
            }
            androidGesturesManager3.setMoveGestureListener(getMoveGestureListener$plugin_gestures_release());
            AndroidGesturesManager androidGesturesManager4 = this.gesturesManager;
            if (androidGesturesManager4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager4 = null;
            }
            androidGesturesManager4.setStandardScaleGestureListener(scaleGestureListener);
            AndroidGesturesManager androidGesturesManager5 = this.gesturesManager;
            if (androidGesturesManager5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager5 = null;
            }
            androidGesturesManager5.setRotateGestureListener(rotateGestureListener);
            AndroidGesturesManager androidGesturesManager6 = this.gesturesManager;
            if (androidGesturesManager6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager6 = null;
            }
            androidGesturesManager6.setShoveGestureListener(shoveGestureListener);
            AndroidGesturesManager androidGesturesManager7 = this.gesturesManager;
            if (androidGesturesManager7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
            } else {
                androidGesturesManager2 = androidGesturesManager7;
            }
            androidGesturesManager2.setMultiFingerTapGestureListener(tapGestureListener);
            registerInteractions();
        }
    }

    private final void registerInteractions() {
        this.interactionsCancelableSet.add(getMapInteractionDelegate$plugin_gestures_release().addInteraction(ClickInteraction.INSTANCE.map(new Function1<InteractionContext, Boolean>() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(InteractionContext context) {
                Intrinsics.checkNotNullParameter(context, "context");
                GesturesPluginImpl gesturesPluginImpl = GesturesPluginImpl.this;
                ScreenCoordinate screenCoordinate = context.getScreenCoordinate();
                Intrinsics.checkNotNullExpressionValue(screenCoordinate, "context.screenCoordinate");
                gesturesPluginImpl.handleClickEvent$plugin_gestures_release(screenCoordinate);
                return true;
            }
        })));
        this.interactionsCancelableSet.add(getMapInteractionDelegate$plugin_gestures_release().addInteraction(LongClickInteraction.INSTANCE.map(new Function1<InteractionContext, Boolean>() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(InteractionContext it) {
                Intrinsics.checkNotNullParameter(it, "it");
                GesturesPluginImpl gesturesPluginImpl = GesturesPluginImpl.this;
                ScreenCoordinate screenCoordinate = it.getScreenCoordinate();
                Intrinsics.checkNotNullExpressionValue(screenCoordinate, "it.screenCoordinate");
                gesturesPluginImpl.handleLongPressEvent$plugin_gestures_release(screenCoordinate);
                return true;
            }
        })));
        this.interactionsCancelableSet.add(getMapInteractionDelegate$plugin_gestures_release().addInteraction(DragInteraction.INSTANCE.invoke(new Function1<InteractionContext, Boolean>() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(InteractionContext it) {
                Intrinsics.checkNotNullParameter(it, "it");
                GesturesPluginImpl.this.handleMoveStartEvent$plugin_gestures_release();
                return true;
            }
        }, new Function1<InteractionContext, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(InteractionContext interactionContext) {
                invoke2(interactionContext);
                return Unit.INSTANCE;
            }

            public final void invoke2(InteractionContext it) {
                Intrinsics.checkNotNullParameter(it, "it");
                GesturesPluginImpl gesturesPluginImpl = GesturesPluginImpl.this;
                ScreenCoordinate screenCoordinate = it.getScreenCoordinate();
                Intrinsics.checkNotNullExpressionValue(screenCoordinate, "it.screenCoordinate");
                gesturesPluginImpl.handleMove$plugin_gestures_release(screenCoordinate);
            }
        }, new Function1<InteractionContext, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(InteractionContext interactionContext) {
                invoke2(interactionContext);
                return Unit.INSTANCE;
            }

            public final void invoke2(InteractionContext it) {
                Intrinsics.checkNotNullParameter(it, "it");
                GesturesPluginImpl.this.handleMoveEnd$plugin_gestures_release();
            }
        })));
    }

    private final void unregisterInteractions() {
        Iterator<T> it = this.interactionsCancelableSet.iterator();
        while (it.hasNext()) {
            ((Cancelable) it.next()).cancel();
        }
        this.interactionsCancelableSet.clear();
    }

    private final void initializeGesturesManager(AndroidGesturesManager gesturesManager, boolean setDefaultMutuallyExclusives) {
        if (setDefaultMutuallyExclusives) {
            HashSet hashSet = new HashSet();
            hashSet.add(3);
            hashSet.add(1);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(3);
            hashSet2.add(2);
            HashSet hashSet3 = new HashSet();
            hashSet3.add(1);
            hashSet3.add(6);
            gesturesManager.setMutuallyExclusiveGestures(hashSet, hashSet2, hashSet3);
        }
        gesturesManager.getRotateGestureDetector().setAngleThreshold(3.0f);
        gesturesManager.getShoveGestureDetector().setMaxShoveAngle(45.0f);
        this.gesturesManager = gesturesManager;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        if (motionEvent.getButtonState() != 0 && motionEvent.getButtonState() != 1) {
            return false;
        }
        if (motionEvent.getActionMasked() == 0) {
            unregisterScheduledAnimators();
        }
        AndroidGesturesManager androidGesturesManager = this.gesturesManager;
        CameraAnimationsPlugin cameraAnimationsPlugin = null;
        CoreGesturesHandler coreGesturesHandler = null;
        if (androidGesturesManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
            androidGesturesManager = null;
        }
        boolean zOnTouchEvent = androidGesturesManager.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            doubleTapFinished();
            CoreGesturesHandler coreGesturesHandler2 = this.coreGesturesHandler;
            if (coreGesturesHandler2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
                coreGesturesHandler2 = null;
            }
            coreGesturesHandler2.notifyCoreTouchEnded();
            if (!this.scheduledAnimators.isEmpty()) {
                this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
                CameraAnimationsPlugin cameraAnimationsPlugin2 = this.cameraAnimationsPlugin;
                if (cameraAnimationsPlugin2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                } else {
                    cameraAnimationsPlugin = cameraAnimationsPlugin2;
                }
                Object[] array = this.scheduledAnimators.toArray(new ValueAnimator[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                ValueAnimator[] valueAnimatorArr = (ValueAnimator[]) array;
                cameraAnimationsPlugin.registerAnimators((ValueAnimator[]) Arrays.copyOf(valueAnimatorArr, valueAnimatorArr.length));
                Iterator<ValueAnimator> it = this.scheduledAnimators.iterator();
                while (it.hasNext()) {
                    it.next().start();
                }
                this.scheduledAnimators.clear();
            }
        } else {
            if (actionMasked == 3) {
                this.scheduledAnimators.clear();
                CoreGesturesHandler coreGesturesHandler3 = this.coreGesturesHandler;
                if (coreGesturesHandler3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
                } else {
                    coreGesturesHandler = coreGesturesHandler3;
                }
                coreGesturesHandler.notifyCoreTouchEnded();
                doubleTapFinished();
                return zOnTouchEvent;
            }
            if (actionMasked == 5) {
                doubleTapFinished();
                return zOnTouchEvent;
            }
        }
        return zOnTouchEvent;
    }

    private final void unregisterScheduledAnimators() {
        this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
        this.scheduledAnimators.clear();
        unregisterScheduledAnimators(this.scaleAnimators);
        unregisterScheduledAnimators(this.rotateAnimators);
    }

    private final Unit unregisterScheduledAnimators(ValueAnimator[] animators) {
        if (animators == null) {
            return null;
        }
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        }
        CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(cameraAnimationsPlugin, (ValueAnimator[]) Arrays.copyOf(animators, animators.length), false, 2, null);
        return Unit.INSTANCE;
    }

    public static final void scheduleAnimators$lambda$3(GesturesPluginImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.unregisterScheduledAnimators();
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        CameraAnimationsPlugin cameraAnimationsPlugin;
        Intrinsics.checkNotNullParameter(event, "event");
        if ((event.getSource() & 2) != 2 || event.getActionMasked() != 8 || !getInternalSettings().getPinchToZoomEnabled()) {
            return false;
        }
        CameraAnimationsPlugin cameraAnimationsPlugin2 = this.cameraAnimationsPlugin;
        CameraAnimationsPlugin cameraAnimationsPlugin3 = null;
        if (cameraAnimationsPlugin2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin2 = null;
        }
        cameraAnimationsPlugin2.cancelAllAnimators(CollectionsKt.toList(this.protectedCameraAnimatorOwners));
        float axisValue = event.getAxisValue(9);
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        double zoom = mapCameraManagerDelegate.getCameraState().getZoom();
        CameraAnimationsPlugin cameraAnimationsPlugin4 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin4 = null;
        }
        ScreenCoordinate anchor = cameraAnimationsPlugin4.getAnchor();
        ScreenCoordinate screenCoordinate = GesturesPluginImplKt.toScreenCoordinate(event);
        CameraAnimationsPlugin cameraAnimationsPlugin5 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin5 = null;
        }
        double dCalculateScaleBy = cameraAnimationsPlugin5.calculateScaleBy(axisValue, zoom);
        CameraAnimationsPlugin cameraAnimationsPlugin6 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        } else {
            cameraAnimationsPlugin = cameraAnimationsPlugin6;
        }
        CameraOptions cameraOptionsBuild = new CameraOptions.Builder().anchor(screenCoordinate).zoom(Double.valueOf(dCalculateScaleBy)).build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().anchor(anchor).zoom(zoom).build()");
        CameraAnimationsPlugin.DefaultImpls.easeTo$default(cameraAnimationsPlugin, cameraOptionsBuild, IMMEDIATE_ANIMATION_OPTIONS, null, 4, null);
        CameraAnimationsPlugin cameraAnimationsPlugin7 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
        } else {
            cameraAnimationsPlugin3 = cameraAnimationsPlugin7;
        }
        cameraAnimationsPlugin3.setAnchor(anchor);
        return true;
    }

    @Override
    public void onSizeChanged(int width, int height) {
        this.centerScreen = new ScreenCoordinate(width / 2, height / 2);
        this.sizeChanged = true;
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0081\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\t\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J,\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\u0011\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\u0012\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$StandardGestureListener;", "Lcom/mapbox/maps/plugin/gestures/StandardGestureListenerShim;", "doubleTapMovementThreshold", "", "(Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl;F)V", "onDoubleTapEvent", "", "motionEvent", "Landroid/view/MotionEvent;", "onDown", "onFling", "e1", "e2", "velocityX", "velocityY", "onLongPress", "", "onSingleTapConfirmed", "onSingleTapUp", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class StandardGestureListener extends StandardGestureListenerShim {
        private final float doubleTapMovementThreshold;

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        public StandardGestureListener(float f) {
            this.doubleTapMovementThreshold = f;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return GesturesPluginImpl.this.handleSingleTapUpEvent$plugin_gestures_release();
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (motionEvent == null) {
                return false;
            }
            GesturesPluginImpl.this.getMapInteractionDelegate$plugin_gestures_release().dispatch(new PlatformEventInfo(PlatformEventType.CLICK, GesturesPluginImplKt.toScreenCoordinate(motionEvent)));
            return false;
        }

        @Override
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (motionEvent == null) {
                return false;
            }
            if (GesturesPluginImpl.this.handleDoubleTapEvent$plugin_gestures_release(motionEvent, this.doubleTapMovementThreshold)) {
                return true;
            }
            return super.onDoubleTapEvent(motionEvent);
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
            if (motionEvent == null) {
                return;
            }
            GesturesPluginImpl.this.getMapInteractionDelegate$plugin_gestures_release().dispatch(new PlatformEventInfo(PlatformEventType.LONG_CLICK, GesturesPluginImplKt.toScreenCoordinate(motionEvent)));
        }

        @Override
        public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            if (e1 == null || e2 == null) {
                return false;
            }
            return GesturesPluginImpl.this.handleFlingEvent$plugin_gestures_release(e2, velocityX, velocityY);
        }
    }

    private final void doubleTapFinished() {
        if (this.doubleTapRegistered) {
            GestureState gestureState = this.gestureState;
            if (gestureState == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gestureState");
                gestureState = null;
            }
            gestureState.restore(GestureState.Type.DoubleTap);
            this.doubleTapRegistered = false;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0081\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$MoveGestureListener;", "Lcom/mapbox/android/gestures/MoveGestureDetector$SimpleOnMoveGestureListener;", "(Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl;)V", "detector", "Lcom/mapbox/android/gestures/MoveGestureDetector;", "getDetector", "()Lcom/mapbox/android/gestures/MoveGestureDetector;", "setDetector", "(Lcom/mapbox/android/gestures/MoveGestureDetector;)V", "onMove", "", "distanceX", "", "distanceY", "onMoveBegin", "onMoveEnd", "", "velocityX", "velocityY", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class MoveGestureListener extends MoveGestureDetector.SimpleOnMoveGestureListener {
        public MoveGestureDetector detector;

        public MoveGestureListener() {
        }

        public final MoveGestureDetector getDetector() {
            MoveGestureDetector moveGestureDetector = this.detector;
            if (moveGestureDetector != null) {
                return moveGestureDetector;
            }
            Intrinsics.throwUninitializedPropertyAccessException("detector");
            return null;
        }

        public final void setDetector(MoveGestureDetector moveGestureDetector) {
            Intrinsics.checkNotNullParameter(moveGestureDetector, "<set-?>");
            this.detector = moveGestureDetector;
        }

        @Override
        public boolean onMoveBegin(MoveGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            if (this.detector == null || getDetector() != detector) {
                setDetector(detector);
            }
            if (!GesturesPluginImpl.this.getInternalSettings().getScrollEnabled()) {
                return false;
            }
            GesturesPluginImpl.this.getMapInteractionDelegate$plugin_gestures_release().dispatch(new PlatformEventInfo(PlatformEventType.DRAG_BEGIN, new ScreenCoordinate(detector.getFocalPoint().x, detector.getFocalPoint().y)));
            return true;
        }

        @Override
        public boolean onMove(MoveGestureDetector detector, float distanceX, float distanceY) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            if ((distanceX == 0.0f && distanceY == 0.0f) || detector.getPointersCount() > 2) {
                return false;
            }
            if (!GesturesPluginImpl.this.getInternalSettings().getPinchScrollEnabled() && detector.getPointersCount() > 1) {
                return false;
            }
            AndroidGesturesManager androidGesturesManager = GesturesPluginImpl.this.gesturesManager;
            if (androidGesturesManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager = null;
            }
            if (androidGesturesManager.getShoveGestureDetector().isInProgress()) {
                return false;
            }
            double d = detector.getFocalPoint().x;
            double d2 = detector.getFocalPoint().y;
            if (Double.isInfinite(d) || Double.isNaN(d) || Double.isInfinite(d2) || Double.isNaN(d2)) {
                MapboxLogger.logE(GesturesPluginImpl.TAG, "Invalid focal point=" + detector.getFocalPoint() + " to perform map panning!");
                return false;
            }
            if (Float.isInfinite(distanceX) || Float.isNaN(distanceX) || Float.isInfinite(distanceY) || Float.isNaN(distanceY)) {
                MapboxLogger.logE(GesturesPluginImpl.TAG, "Invalid distanceX=" + distanceX + " or distanceY=" + distanceY + " to perform map panning!");
                return false;
            }
            if (GesturesPluginImpl.this.isPointAboveHorizon$plugin_gestures_release(new ScreenCoordinate(d, d2))) {
                return false;
            }
            GesturesPluginImpl.this.getMapInteractionDelegate$plugin_gestures_release().dispatch(new PlatformEventInfo(PlatformEventType.DRAG, new ScreenCoordinate(d - (GesturesUtils.isScrollHorizontallyLimited(GesturesPluginImpl.this.getInternalSettings()) ? 0.0d : distanceX), d2 - (GesturesUtils.isScrollVerticallyLimited(GesturesPluginImpl.this.getInternalSettings()) ? 0.0d : distanceY))));
            return false;
        }

        @Override
        public void onMoveEnd(MoveGestureDetector detector, float velocityX, float velocityY) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            GesturesPluginImpl.this.getMapInteractionDelegate$plugin_gestures_release().dispatch(new PlatformEventInfo(PlatformEventType.DRAG_END, new ScreenCoordinate(detector.getFocalPoint().x, detector.getFocalPoint().y)));
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¨\u0006\r"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$ScaleGestureListener;", "Lcom/mapbox/android/gestures/StandardScaleGestureDetector$SimpleStandardOnScaleGestureListener;", "(Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl;)V", "onScale", "", "detector", "Lcom/mapbox/android/gestures/StandardScaleGestureDetector;", "onScaleBegin", "onScaleEnd", "", "velocityX", "", "velocityY", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private final class ScaleGestureListener extends StandardScaleGestureDetector.SimpleStandardOnScaleGestureListener {
        public ScaleGestureListener() {
        }

        @Override
        public boolean onScaleBegin(StandardScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            return GesturesPluginImpl.this.handleScaleBegin$plugin_gestures_release(detector);
        }

        @Override
        public boolean onScale(StandardScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            return GesturesPluginImpl.this.handleScale$plugin_gestures_release(detector);
        }

        @Override
        public void onScaleEnd(StandardScaleGestureDetector detector, float velocityX, float velocityY) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            GesturesPluginImpl.this.handleScaleEnd$plugin_gestures_release(detector, velocityX, velocityY);
        }
    }

    private final ScreenCoordinate getScaleFocalPoint(StandardScaleGestureDetector detector) {
        ScreenCoordinate focalPoint = getInternalSettings().getFocalPoint();
        if (focalPoint != null) {
            return focalPoint;
        }
        if (this.quickZoom) {
            return this.doubleTapFocalPoint;
        }
        PointF focalPoint2 = detector.getFocalPoint();
        return new ScreenCoordinate(focalPoint2.x, focalPoint2.y);
    }

    private final double calculateScale(double velocityXY, boolean isScalingOut) {
        double dClamp = clamp(velocityXY * 2.5d * 1.0E-4d, 0.0d, 2.5d);
        return isScalingOut ? -dClamp : dClamp;
    }

    public final void handleScaleEnd$plugin_gestures_release(StandardScaleGestureDetector detector, float velocityX, float velocityY) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        GestureState gestureState = this.gestureState;
        MapCameraManagerDelegate mapCameraManagerDelegate = null;
        if (gestureState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureState");
            gestureState = null;
        }
        gestureState.restore(this.quickZoom ? GestureState.Type.ScaleQuickZoom : GestureState.Type.Scale);
        notifyOnScaleEndListeners(detector);
        float fAbs = Math.abs(velocityX) + Math.abs(velocityY);
        if (!getInternalSettings().getPinchToZoomDecelerationEnabled() || fAbs < this.minimumVelocity || this.spanSinceLast / fAbs < this.scaleVelocityRatioThreshold) {
            return;
        }
        double dCalculateScale = calculateScale(fAbs, detector.isScalingOut());
        MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
        } else {
            mapCameraManagerDelegate = mapCameraManagerDelegate2;
        }
        ValueAnimator[] valueAnimatorArrCreateScaleAnimators = createScaleAnimators(mapCameraManagerDelegate.getCameraState().getZoom(), dCalculateScale, getScaleFocalPoint(detector), (long) ((Math.log(Math.abs(dCalculateScale) + (((double) 1) / Math.pow(2.718281828459045d, 2.0d))) + ((double) 2)) * 150.0d));
        this.scaleAnimators = valueAnimatorArrCreateScaleAnimators;
        scheduleAnimators(valueAnimatorArrCreateScaleAnimators);
    }

    public final boolean handleScale$plugin_gestures_release(StandardScaleGestureDetector detector) {
        CameraAnimationsPlugin cameraAnimationsPlugin;
        CameraAnimationsPlugin cameraAnimationsPlugin2;
        Intrinsics.checkNotNullParameter(detector, "detector");
        ScreenCoordinate scaleFocalPoint = getScaleFocalPoint(detector);
        CameraAnimationsPlugin cameraAnimationsPlugin3 = this.cameraAnimationsPlugin;
        MapCameraManagerDelegate mapCameraManagerDelegate = null;
        CameraAnimationsPlugin cameraAnimationsPlugin4 = null;
        if (cameraAnimationsPlugin3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin3 = null;
        }
        this.scaleCachedAnchor = cameraAnimationsPlugin3.getAnchor();
        CoreGesturesHandler coreGesturesHandler = this.coreGesturesHandler;
        if (coreGesturesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
            coreGesturesHandler = null;
        }
        coreGesturesHandler.notifyCoreGestureStarted();
        if (this.quickZoom) {
            double dAbs = Math.abs(((double) detector.getCurrentEvent().getY()) - this.doubleTapFocalPoint.getY());
            Object[] objArr = ((double) detector.getCurrentEvent().getY()) < this.doubleTapFocalPoint.getY();
            double dNormalize = normalize(0.0d, dAbs, 0.0d, this.screenHeight, 4.0d);
            double d = this.startZoom;
            double zoomAnimationAmount = (objArr != false ? d - dNormalize : d + dNormalize) * ((double) getInternalSettings().getZoomAnimationAmount());
            CameraAnimationsPlugin cameraAnimationsPlugin5 = this.cameraAnimationsPlugin;
            if (cameraAnimationsPlugin5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                cameraAnimationsPlugin2 = null;
            } else {
                cameraAnimationsPlugin2 = cameraAnimationsPlugin5;
            }
            CameraOptions cameraOptionsBuild = new CameraOptions.Builder().zoom(Double.valueOf(zoomAnimationAmount)).anchor(scaleFocalPoint).build();
            Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder()\n          .zoo…Point)\n          .build()");
            CameraAnimationsPlugin.DefaultImpls.easeTo$default(cameraAnimationsPlugin2, cameraOptionsBuild, IMMEDIATE_ANIMATION_OPTIONS, null, 4, null);
        } else {
            double dCalculateZoomBy$plugin_gestures_release = calculateZoomBy$plugin_gestures_release(detector);
            if (getInternalSettings().getSimultaneousRotateAndPinchToZoomEnabled()) {
                CameraAnimationsPlugin cameraAnimationsPlugin6 = this.cameraAnimationsPlugin;
                if (cameraAnimationsPlugin6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                    cameraAnimationsPlugin6 = null;
                }
                CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
                Double[] dArr = new Double[1];
                MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
                if (mapCameraManagerDelegate2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                    mapCameraManagerDelegate2 = null;
                }
                dArr[0] = Double.valueOf(mapCameraManagerDelegate2.getCameraState().getZoom() + dCalculateZoomBy$plugin_gestures_release);
                CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(dArr, 1));
                MapCameraManagerDelegate mapCameraManagerDelegate3 = this.mapCameraManagerDelegate;
                if (mapCameraManagerDelegate3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                    mapCameraManagerDelegate3 = null;
                }
                builder.startValue(Double.valueOf(mapCameraManagerDelegate3.getCameraState().getZoom()));
                builder.owner(MapAnimationOwnerRegistry.GESTURES);
                ValueAnimator valueAnimatorCreateZoomAnimator = cameraAnimationsPlugin6.createZoomAnimator(builder.build(), new Function1<ValueAnimator, Unit>() {
                    @Override
                    public Unit invoke(ValueAnimator valueAnimator) {
                        invoke2(valueAnimator);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(ValueAnimator createZoomAnimator) {
                        Intrinsics.checkNotNullParameter(createZoomAnimator, "$this$createZoomAnimator");
                        createZoomAnimator.setDuration(0L);
                    }
                });
                CameraAnimationsPlugin cameraAnimationsPlugin7 = this.cameraAnimationsPlugin;
                if (cameraAnimationsPlugin7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                    cameraAnimationsPlugin7 = null;
                }
                CameraAnimatorOptions.Companion companion2 = CameraAnimatorOptions.INSTANCE;
                CameraAnimatorOptions.Builder builder2 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new ScreenCoordinate[]{scaleFocalPoint}, 1));
                builder2.owner(MapAnimationOwnerRegistry.GESTURES);
                ValueAnimator valueAnimatorCreateAnchorAnimator = cameraAnimationsPlugin7.createAnchorAnimator(builder2.build(), new Function1<ValueAnimator, Unit>() {
                    @Override
                    public Unit invoke(ValueAnimator valueAnimator) {
                        invoke2(valueAnimator);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(ValueAnimator createAnchorAnimator) {
                        Intrinsics.checkNotNullParameter(createAnchorAnimator, "$this$createAnchorAnimator");
                        createAnchorAnimator.setDuration(0L);
                    }
                });
                CameraAnimationsPlugin cameraAnimationsPlugin8 = this.cameraAnimationsPlugin;
                if (cameraAnimationsPlugin8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                } else {
                    cameraAnimationsPlugin4 = cameraAnimationsPlugin8;
                }
                cameraAnimationsPlugin4.playAnimatorsTogether(valueAnimatorCreateAnchorAnimator, valueAnimatorCreateZoomAnimator);
            } else {
                CameraAnimationsPlugin cameraAnimationsPlugin9 = this.cameraAnimationsPlugin;
                if (cameraAnimationsPlugin9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                    cameraAnimationsPlugin = null;
                } else {
                    cameraAnimationsPlugin = cameraAnimationsPlugin9;
                }
                CameraOptions.Builder builder3 = new CameraOptions.Builder();
                MapCameraManagerDelegate mapCameraManagerDelegate4 = this.mapCameraManagerDelegate;
                if (mapCameraManagerDelegate4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                } else {
                    mapCameraManagerDelegate = mapCameraManagerDelegate4;
                }
                CameraOptions cameraOptionsBuild2 = builder3.zoom(Double.valueOf(mapCameraManagerDelegate.getCameraState().getZoom() + dCalculateZoomBy$plugin_gestures_release)).anchor(scaleFocalPoint).build();
                Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild2, "Builder()\n            .z…int)\n            .build()");
                CameraAnimationsPlugin.DefaultImpls.easeTo$default(cameraAnimationsPlugin, cameraOptionsBuild2, IMMEDIATE_ANIMATION_OPTIONS, null, 4, null);
            }
        }
        onScaleAnimationEnd(detector);
        return true;
    }

    private final void onScaleAnimationEnd(StandardScaleGestureDetector detector) {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        }
        cameraAnimationsPlugin.setAnchor(this.scaleCachedAnchor);
        notifyOnScaleListeners(detector);
        this.spanSinceLast = Math.abs(detector.getCurrentSpan() - detector.getPreviousSpan());
    }

    public final boolean handleScaleBegin$plugin_gestures_release(StandardScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        boolean z = detector.getPointersCount() == 1;
        this.quickZoom = z;
        MapCameraManagerDelegate mapCameraManagerDelegate = null;
        if (z) {
            if (!getInternalSettings().getQuickZoomEnabled()) {
                return false;
            }
            GestureState gestureState = this.gestureState;
            if (gestureState == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gestureState");
                gestureState = null;
            }
            gestureState.saveAndDisable(GestureState.Type.ScaleQuickZoom);
        } else {
            if (!getInternalSettings().getPinchToZoomEnabled() || detector.getPreviousSpan() <= 0.0f) {
                return false;
            }
            float currentSpan = detector.getCurrentSpan();
            float previousSpan = detector.getPreviousSpan();
            double eventTime = detector.getCurrentEvent().getEventTime();
            double eventTime2 = detector.getPreviousEvent().getEventTime();
            if (eventTime == eventTime2) {
                return false;
            }
            double dAbs = ((double) Math.abs(currentSpan - previousSpan)) / (eventTime - eventTime2);
            if (dAbs < this.minimumGestureSpeed) {
                return false;
            }
            AndroidGesturesManager androidGesturesManager = this.gesturesManager;
            if (androidGesturesManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager = null;
            }
            if (!androidGesturesManager.getRotateGestureDetector().isInProgress()) {
                AndroidGesturesManager androidGesturesManager2 = this.gesturesManager;
                if (androidGesturesManager2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                    androidGesturesManager2 = null;
                }
                if (Math.abs(androidGesturesManager2.getRotateGestureDetector().getDeltaSinceLast()) > 0.4d && dAbs < this.minimumAngledGestureSpeed) {
                    return false;
                }
                if (!getInternalSettings().getSimultaneousRotateAndPinchToZoomEnabled()) {
                    GestureState gestureState2 = this.gestureState;
                    if (gestureState2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("gestureState");
                        gestureState2 = null;
                    }
                    gestureState2.saveAndDisable(GestureState.Type.Scale);
                }
            }
        }
        this.screenHeight = this.context.getResources().getDisplayMetrics().heightPixels;
        MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
        } else {
            mapCameraManagerDelegate = mapCameraManagerDelegate2;
        }
        this.startZoom = mapCameraManagerDelegate.getCameraState().getZoom();
        cancelTransitionsIfRequired();
        notifyOnScaleBeginListeners(detector);
        this.spanSinceLast = Math.abs(detector.getCurrentSpan() - detector.getPreviousSpan());
        return true;
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0016¨\u0006\u0010"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$RotateGestureListener;", "Lcom/mapbox/android/gestures/RotateGestureDetector$SimpleOnRotateGestureListener;", "(Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl;)V", "onRotate", "", "detector", "Lcom/mapbox/android/gestures/RotateGestureDetector;", "rotationDegreesSinceLast", "", "rotationDegreesSinceFirst", "onRotateBegin", "onRotateEnd", "", "velocityX", "velocityY", "angularVelocity", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private final class RotateGestureListener extends RotateGestureDetector.SimpleOnRotateGestureListener {
        public RotateGestureListener() {
        }

        @Override
        public boolean onRotateBegin(RotateGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            return GesturesPluginImpl.this.handleRotateBegin$plugin_gestures_release(detector);
        }

        @Override
        public boolean onRotate(RotateGestureDetector detector, float rotationDegreesSinceLast, float rotationDegreesSinceFirst) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            return GesturesPluginImpl.this.handleRotate$plugin_gestures_release(detector, rotationDegreesSinceLast);
        }

        @Override
        public void onRotateEnd(RotateGestureDetector detector, float velocityX, float velocityY, float angularVelocity) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            GesturesPluginImpl.this.handleRotateEnd$plugin_gestures_release(detector, velocityX, velocityY, angularVelocity);
        }
    }

    private final ScreenCoordinate getRotateFocalPoint(RotateGestureDetector detector) {
        ScreenCoordinate focalPoint = getInternalSettings().getFocalPoint();
        if (focalPoint != null) {
            return focalPoint;
        }
        PointF focalPoint2 = detector.getFocalPoint();
        return new ScreenCoordinate(focalPoint2.x, focalPoint2.y);
    }

    private final ValueAnimator[] createRotateAnimators(float angularVelocity, final long animationTime, ScreenCoordinate animationFocalPoint) {
        float interpolation;
        CameraAnimationsPlugin cameraAnimationsPlugin;
        final LinearOutSlowInInterpolator linearOutSlowInInterpolator = this.gesturesInterpolator;
        long j = (animationTime / ((long) 16)) + 1;
        if (1 <= j) {
            interpolation = angularVelocity;
            long j2 = 1;
            while (true) {
                interpolation += (1 - linearOutSlowInInterpolator.getInterpolation(j2 / j)) * angularVelocity;
                if (j2 == j) {
                    break;
                }
                j2++;
            }
        } else {
            interpolation = angularVelocity;
        }
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        CameraAnimationsPlugin cameraAnimationsPlugin2 = null;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        double bearing = mapCameraManagerDelegate.getCameraState().getBearing();
        double d = ((double) interpolation) + bearing;
        CameraAnimationsPlugin cameraAnimationsPlugin3 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        } else {
            cameraAnimationsPlugin = cameraAnimationsPlugin3;
        }
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(d)}, 1));
        builder.owner(MapAnimationOwnerRegistry.GESTURES);
        builder.startValue(Double.valueOf(bearing));
        ValueAnimator valueAnimatorCreateBearingAnimator$default = CameraAnimationsPlugin.DefaultImpls.createBearingAnimator$default(cameraAnimationsPlugin, builder.build(), false, new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createBearingAnimator) {
                Intrinsics.checkNotNullParameter(createBearingAnimator, "$this$createBearingAnimator");
                createBearingAnimator.setInterpolator(linearOutSlowInInterpolator);
                createBearingAnimator.setDuration(animationTime);
            }
        }, 2, null);
        CoreGesturesHandler coreGesturesHandler = this.coreGesturesHandler;
        if (coreGesturesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
            coreGesturesHandler = null;
        }
        valueAnimatorCreateBearingAnimator$default.addListener(coreGesturesHandler.getCoreGestureAnimatorHandler());
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(animationFocalPoint.getX(), animationFocalPoint.getY());
        CameraAnimationsPlugin cameraAnimationsPlugin4 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
        } else {
            cameraAnimationsPlugin2 = cameraAnimationsPlugin4;
        }
        CameraAnimatorOptions.Companion companion2 = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder2 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new ScreenCoordinate[]{screenCoordinate}, 1));
        builder2.owner(MapAnimationOwnerRegistry.GESTURES);
        builder2.startValue(screenCoordinate);
        ValueAnimator valueAnimatorCreateAnchorAnimator = cameraAnimationsPlugin2.createAnchorAnimator(builder2.build(), new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createAnchorAnimator) {
                Intrinsics.checkNotNullParameter(createAnchorAnimator, "$this$createAnchorAnimator");
                createAnchorAnimator.setInterpolator(linearOutSlowInInterpolator);
                createAnchorAnimator.setDuration(animationTime);
            }
        });
        valueAnimatorCreateAnchorAnimator.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                CameraAnimationsPlugin cameraAnimationsPlugin5 = this.this$0.cameraAnimationsPlugin;
                if (cameraAnimationsPlugin5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                    cameraAnimationsPlugin5 = null;
                }
                cameraAnimationsPlugin5.setAnchor(this.this$0.rotateCachedAnchor);
            }
        });
        return new ValueAnimator[]{valueAnimatorCreateBearingAnimator$default, valueAnimatorCreateAnchorAnimator};
    }

    public final void handleRotateEnd$plugin_gestures_release(RotateGestureDetector detector, float velocityX, float velocityY, float angularVelocityEvent) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        AndroidGesturesManager androidGesturesManager = null;
        if (getInternalSettings().getIncreasePinchToZoomThresholdWhenRotating()) {
            AndroidGesturesManager androidGesturesManager2 = this.gesturesManager;
            if (androidGesturesManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager2 = null;
            }
            androidGesturesManager2.getStandardScaleGestureDetector().setSpanSinceStartThreshold(this.defaultSpanSinceStartThreshold);
        }
        notifyOnRotateEndListeners(detector);
        float fClamp = clamp(angularVelocityEvent * this.angularVelocityMultiplier, -30.0f, 30.0f);
        double dAbs = Math.abs(detector.getDeltaSinceLast()) / (Math.abs(velocityX) + Math.abs(velocityY));
        if (!getInternalSettings().getRotateDecelerationEnabled() || Math.abs(fClamp) < this.minimumAngularVelocity) {
            return;
        }
        AndroidGesturesManager androidGesturesManager3 = this.gesturesManager;
        if (androidGesturesManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
        } else {
            androidGesturesManager = androidGesturesManager3;
        }
        if (!androidGesturesManager.getStandardScaleGestureDetector().isInProgress() || dAbs >= this.rotateVelocityRatioThreshold) {
            ValueAnimator[] valueAnimatorArrCreateRotateAnimators = createRotateAnimators(fClamp, (long) ((Math.log(((double) Math.abs(fClamp)) + (((double) 1) / Math.pow(2.718281828459045d, 2.0d))) + ((double) 2)) * 150.0d), getRotateFocalPoint(detector));
            this.rotateAnimators = valueAnimatorArrCreateRotateAnimators;
            scheduleAnimators(valueAnimatorArrCreateRotateAnimators);
        }
    }

    public final boolean handleRotate$plugin_gestures_release(RotateGestureDetector detector, float rotationDegreesSinceLast) {
        CameraAnimationsPlugin cameraAnimationsPlugin;
        CameraAnimationsPlugin cameraAnimationsPlugin2;
        Intrinsics.checkNotNullParameter(detector, "detector");
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        CameraAnimationsPlugin cameraAnimationsPlugin3 = null;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        double bearing = mapCameraManagerDelegate.getCameraState().getBearing();
        CameraAnimationsPlugin cameraAnimationsPlugin4 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin4 = null;
        }
        this.rotateCachedAnchor = cameraAnimationsPlugin4.getAnchor();
        double d = bearing + ((double) rotationDegreesSinceLast);
        ScreenCoordinate rotateFocalPoint = getRotateFocalPoint(detector);
        CoreGesturesHandler coreGesturesHandler = this.coreGesturesHandler;
        if (coreGesturesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
            coreGesturesHandler = null;
        }
        coreGesturesHandler.notifyCoreGestureStarted();
        if (getInternalSettings().getSimultaneousRotateAndPinchToZoomEnabled()) {
            CameraAnimationsPlugin cameraAnimationsPlugin5 = this.cameraAnimationsPlugin;
            if (cameraAnimationsPlugin5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                cameraAnimationsPlugin2 = null;
            } else {
                cameraAnimationsPlugin2 = cameraAnimationsPlugin5;
            }
            CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(d)}, 1));
            builder.owner(MapAnimationOwnerRegistry.GESTURES);
            ValueAnimator valueAnimatorCreateBearingAnimator$default = CameraAnimationsPlugin.DefaultImpls.createBearingAnimator$default(cameraAnimationsPlugin2, builder.build(), false, new Function1<ValueAnimator, Unit>() {
                @Override
                public Unit invoke(ValueAnimator valueAnimator) {
                    invoke2(valueAnimator);
                    return Unit.INSTANCE;
                }

                public final void invoke2(ValueAnimator createBearingAnimator) {
                    Intrinsics.checkNotNullParameter(createBearingAnimator, "$this$createBearingAnimator");
                    createBearingAnimator.setDuration(0L);
                }
            }, 2, null);
            CameraAnimationsPlugin cameraAnimationsPlugin6 = this.cameraAnimationsPlugin;
            if (cameraAnimationsPlugin6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                cameraAnimationsPlugin6 = null;
            }
            CameraAnimatorOptions.Companion companion2 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder2 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new ScreenCoordinate[]{rotateFocalPoint}, 1));
            builder2.owner(MapAnimationOwnerRegistry.GESTURES);
            ValueAnimator valueAnimatorCreateAnchorAnimator = cameraAnimationsPlugin6.createAnchorAnimator(builder2.build(), new Function1<ValueAnimator, Unit>() {
                @Override
                public Unit invoke(ValueAnimator valueAnimator) {
                    invoke2(valueAnimator);
                    return Unit.INSTANCE;
                }

                public final void invoke2(ValueAnimator createAnchorAnimator) {
                    Intrinsics.checkNotNullParameter(createAnchorAnimator, "$this$createAnchorAnimator");
                    createAnchorAnimator.setDuration(0L);
                }
            });
            CameraAnimationsPlugin cameraAnimationsPlugin7 = this.cameraAnimationsPlugin;
            if (cameraAnimationsPlugin7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            } else {
                cameraAnimationsPlugin3 = cameraAnimationsPlugin7;
            }
            cameraAnimationsPlugin3.playAnimatorsTogether(valueAnimatorCreateAnchorAnimator, valueAnimatorCreateBearingAnimator$default);
        } else {
            CameraAnimationsPlugin cameraAnimationsPlugin8 = this.cameraAnimationsPlugin;
            if (cameraAnimationsPlugin8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                cameraAnimationsPlugin = null;
            } else {
                cameraAnimationsPlugin = cameraAnimationsPlugin8;
            }
            CameraOptions cameraOptionsBuild = new CameraOptions.Builder().anchor(rotateFocalPoint).bearing(Double.valueOf(d)).build();
            Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder()\n          .anc…aring)\n          .build()");
            CameraAnimationsPlugin.DefaultImpls.easeTo$default(cameraAnimationsPlugin, cameraOptionsBuild, IMMEDIATE_ANIMATION_OPTIONS, null, 4, null);
        }
        onRotateAnimationEnd(detector);
        return true;
    }

    private final void onRotateAnimationEnd(RotateGestureDetector detector) {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        }
        cameraAnimationsPlugin.setAnchor(this.rotateCachedAnchor);
        notifyOnRotateListeners(detector);
    }

    public final boolean handleRotateBegin$plugin_gestures_release(RotateGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (!getInternalSettings().getRotateEnabled()) {
            return false;
        }
        float fAbs = Math.abs(detector.getDeltaSinceLast());
        double eventTime = detector.getCurrentEvent().getEventTime();
        double eventTime2 = detector.getPreviousEvent().getEventTime();
        if (eventTime == eventTime2) {
            return false;
        }
        double d = ((double) fAbs) / (eventTime - eventTime2);
        float fAbs2 = Math.abs(detector.getDeltaSinceStart());
        if (d >= 0.04d && ((d <= 0.07d || fAbs2 >= 5.0f) && ((d <= 0.15d || fAbs2 >= 7.0f) && (d <= 0.5d || fAbs2 >= 15.0f)))) {
            AndroidGesturesManager androidGesturesManager = this.gesturesManager;
            AndroidGesturesManager androidGesturesManager2 = null;
            if (androidGesturesManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager = null;
            }
            if (!androidGesturesManager.getStandardScaleGestureDetector().isInProgress() || fAbs2 >= 16.0f) {
                if (getInternalSettings().getIncreasePinchToZoomThresholdWhenRotating()) {
                    AndroidGesturesManager androidGesturesManager3 = this.gesturesManager;
                    if (androidGesturesManager3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                        androidGesturesManager3 = null;
                    }
                    androidGesturesManager3.getStandardScaleGestureDetector().setSpanSinceStartThreshold(this.minimumScaleSpanWhenRotating);
                    AndroidGesturesManager androidGesturesManager4 = this.gesturesManager;
                    if (androidGesturesManager4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                    } else {
                        androidGesturesManager2 = androidGesturesManager4;
                    }
                    androidGesturesManager2.getStandardScaleGestureDetector().interrupt();
                }
                cancelTransitionsIfRequired();
                notifyOnRotateBeginListeners(detector);
                return true;
            }
        }
        return false;
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0016¨\u0006\u000f"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$ShoveGestureListener;", "Lcom/mapbox/android/gestures/ShoveGestureDetector$SimpleOnShoveGestureListener;", "(Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl;)V", "onShove", "", "detector", "Lcom/mapbox/android/gestures/ShoveGestureDetector;", "deltaPixelsSinceLast", "", "deltaPixelsSinceStart", "onShoveBegin", "onShoveEnd", "", "velocityX", "velocityY", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private final class ShoveGestureListener extends ShoveGestureDetector.SimpleOnShoveGestureListener {
        public ShoveGestureListener() {
        }

        @Override
        public boolean onShoveBegin(ShoveGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            return GesturesPluginImpl.this.handleShoveBegin$plugin_gestures_release(detector);
        }

        @Override
        public boolean onShove(ShoveGestureDetector detector, float deltaPixelsSinceLast, float deltaPixelsSinceStart) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            return GesturesPluginImpl.this.handleShove$plugin_gestures_release(detector, deltaPixelsSinceLast);
        }

        @Override
        public void onShoveEnd(ShoveGestureDetector detector, float velocityX, float velocityY) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            GesturesPluginImpl.this.handleShoveEnd$plugin_gestures_release(detector);
        }
    }

    public final boolean handleShoveBegin$plugin_gestures_release(ShoveGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (!getInternalSettings().getPitchEnabled()) {
            return false;
        }
        cancelTransitionsIfRequired();
        GestureState gestureState = this.gestureState;
        if (gestureState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureState");
            gestureState = null;
        }
        gestureState.saveAndDisable(GestureState.Type.Shove);
        notifyOnShoveBeginListeners(detector);
        return true;
    }

    public final boolean handleShove$plugin_gestures_release(ShoveGestureDetector detector, float deltaPixelsSinceLast) {
        CameraAnimationsPlugin cameraAnimationsPlugin;
        Intrinsics.checkNotNullParameter(detector, "detector");
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        double dClamp = clamp(mapCameraManagerDelegate.getCameraState().getPitch() - ((double) (0.1f * deltaPixelsSinceLast)), 0.0d, 85.0d);
        if (this.cameraPaddingChanged || this.sizeChanged) {
            MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
            if (mapCameraManagerDelegate2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                mapCameraManagerDelegate2 = null;
            }
            MapCameraManagerDelegate mapCameraManagerDelegate3 = this.mapCameraManagerDelegate;
            if (mapCameraManagerDelegate3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                mapCameraManagerDelegate3 = null;
            }
            Point center = mapCameraManagerDelegate3.getCameraState().getCenter();
            Intrinsics.checkNotNullExpressionValue(center, "mapCameraManagerDelegate.cameraState.center");
            this.cameraCenterScreenCoordinate = mapCameraManagerDelegate2.pixelForCoordinate(center);
            this.cameraPaddingChanged = false;
            this.sizeChanged = false;
        }
        CoreGesturesHandler coreGesturesHandler = this.coreGesturesHandler;
        if (coreGesturesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
            coreGesturesHandler = null;
        }
        coreGesturesHandler.notifyCoreGestureStarted();
        CameraAnimationsPlugin cameraAnimationsPlugin2 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        } else {
            cameraAnimationsPlugin = cameraAnimationsPlugin2;
        }
        CameraOptions cameraOptionsBuild = new CameraOptions.Builder().anchor(this.cameraCenterScreenCoordinate).pitch(Double.valueOf(dClamp)).build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().anchor(cameraC…ate).pitch(pitch).build()");
        CameraAnimationsPlugin.DefaultImpls.easeTo$default(cameraAnimationsPlugin, cameraOptionsBuild, IMMEDIATE_ANIMATION_OPTIONS, null, 4, null);
        notifyOnShoveListeners(detector);
        return true;
    }

    public final void handleShoveEnd$plugin_gestures_release(ShoveGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        GestureState gestureState = this.gestureState;
        if (gestureState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureState");
            gestureState = null;
        }
        gestureState.restore(GestureState.Type.Shove);
        notifyOnShoveEndListeners(detector);
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$TapGestureListener;", "Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector$OnMultiFingerTapGestureListener;", "(Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl;)V", "onMultiFingerTap", "", "detector", "Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;", "pointersCount", "", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private final class TapGestureListener implements MultiFingerTapGestureDetector.OnMultiFingerTapGestureListener {
        public TapGestureListener() {
        }

        @Override
        public boolean onMultiFingerTap(MultiFingerTapGestureDetector detector, int pointersCount) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            if (!GesturesPluginImpl.this.getInternalSettings().getDoubleTouchToZoomOutEnabled() || pointersCount != 2) {
                return false;
            }
            CameraAnimationsPlugin cameraAnimationsPlugin = GesturesPluginImpl.this.cameraAnimationsPlugin;
            if (cameraAnimationsPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                cameraAnimationsPlugin = null;
            }
            cameraAnimationsPlugin.cancelAllAnimators(CollectionsKt.toList(GesturesPluginImpl.this.protectedCameraAnimatorOwners));
            ScreenCoordinate focalPoint = GesturesPluginImpl.this.getInternalSettings().getFocalPoint();
            if (focalPoint != null) {
                GesturesPluginImpl.this.animateZoomOut$plugin_gestures_release(focalPoint, false);
                return true;
            }
            PointF focalPoint2 = detector.getFocalPoint();
            GesturesPluginImpl.this.animateZoomOut$plugin_gestures_release(new ScreenCoordinate(focalPoint2.x, focalPoint2.y), false);
            return true;
        }
    }

    private final ValueAnimator[] createScaleAnimators(double currentZoom, double zoomAddition, ScreenCoordinate animationFocalPoint, final long animationTime) {
        final LinearOutSlowInInterpolator linearOutSlowInInterpolator = this.gesturesInterpolator;
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
        CameraAnimationsPlugin cameraAnimationsPlugin2 = null;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        }
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(zoomAddition + currentZoom)}, 1));
        builder.owner(MapAnimationOwnerRegistry.GESTURES);
        builder.startValue(Double.valueOf(currentZoom));
        ValueAnimator valueAnimatorCreateZoomAnimator = cameraAnimationsPlugin.createZoomAnimator(builder.build(), new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createZoomAnimator) {
                Intrinsics.checkNotNullParameter(createZoomAnimator, "$this$createZoomAnimator");
                createZoomAnimator.setInterpolator(linearOutSlowInInterpolator);
                createZoomAnimator.setDuration(animationTime);
            }
        });
        valueAnimatorCreateZoomAnimator.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                GesturesPluginImpl gesturesPluginImpl = this.this$0;
                AndroidGesturesManager androidGesturesManager = gesturesPluginImpl.gesturesManager;
                if (androidGesturesManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                    androidGesturesManager = null;
                }
                StandardScaleGestureDetector standardScaleGestureDetector = androidGesturesManager.getStandardScaleGestureDetector();
                Intrinsics.checkNotNullExpressionValue(standardScaleGestureDetector, "gesturesManager.standardScaleGestureDetector");
                gesturesPluginImpl.notifyOnScaleListeners(standardScaleGestureDetector);
            }
        });
        CoreGesturesHandler coreGesturesHandler = this.coreGesturesHandler;
        if (coreGesturesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
            coreGesturesHandler = null;
        }
        valueAnimatorCreateZoomAnimator.addListener(coreGesturesHandler.getCoreGestureAnimatorHandler());
        CameraAnimationsPlugin cameraAnimationsPlugin3 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
        } else {
            cameraAnimationsPlugin2 = cameraAnimationsPlugin3;
        }
        CameraAnimatorOptions.Companion companion2 = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder2 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new ScreenCoordinate[]{animationFocalPoint}, 1));
        builder2.owner(MapAnimationOwnerRegistry.GESTURES);
        builder2.startValue(animationFocalPoint);
        ValueAnimator valueAnimatorCreateAnchorAnimator = cameraAnimationsPlugin2.createAnchorAnimator(builder2.build(), new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createAnchorAnimator) {
                Intrinsics.checkNotNullParameter(createAnchorAnimator, "$this$createAnchorAnimator");
                createAnchorAnimator.setInterpolator(linearOutSlowInInterpolator);
                createAnchorAnimator.setDuration(animationTime);
            }
        });
        valueAnimatorCreateAnchorAnimator.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                GesturesPluginImpl gesturesPluginImpl = this.this$0;
                AndroidGesturesManager androidGesturesManager = gesturesPluginImpl.gesturesManager;
                CameraAnimationsPlugin cameraAnimationsPlugin4 = null;
                if (androidGesturesManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                    androidGesturesManager = null;
                }
                StandardScaleGestureDetector standardScaleGestureDetector = androidGesturesManager.getStandardScaleGestureDetector();
                Intrinsics.checkNotNullExpressionValue(standardScaleGestureDetector, "gesturesManager.standardScaleGestureDetector");
                gesturesPluginImpl.notifyOnScaleEndListeners(standardScaleGestureDetector);
                CameraAnimationsPlugin cameraAnimationsPlugin5 = this.this$0.cameraAnimationsPlugin;
                if (cameraAnimationsPlugin5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                } else {
                    cameraAnimationsPlugin4 = cameraAnimationsPlugin5;
                }
                cameraAnimationsPlugin4.setAnchor(this.this$0.scaleCachedAnchor);
            }
        });
        return new ValueAnimator[]{valueAnimatorCreateZoomAnimator, valueAnimatorCreateAnchorAnimator};
    }

    private final void animateZoomIn(ScreenCoordinate zoomFocalPoint, boolean runImmediately) {
        handleZoomAnimation$plugin_gestures_release(true, zoomFocalPoint, runImmediately);
    }

    public final void animateZoomOut$plugin_gestures_release(ScreenCoordinate zoomFocalPoint, boolean runImmediately) {
        Intrinsics.checkNotNullParameter(zoomFocalPoint, "zoomFocalPoint");
        handleZoomAnimation$plugin_gestures_release(false, zoomFocalPoint, runImmediately);
    }

    public final void handleZoomAnimation$plugin_gestures_release(boolean zoomIn, ScreenCoordinate zoomFocalPoint, boolean runImmediately) {
        Intrinsics.checkNotNullParameter(zoomFocalPoint, "zoomFocalPoint");
        unregisterScheduledAnimators(this.scaleAnimators);
        AndroidGesturesManager androidGesturesManager = this.gesturesManager;
        MapCameraManagerDelegate mapCameraManagerDelegate = null;
        if (androidGesturesManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
            androidGesturesManager = null;
        }
        StandardScaleGestureDetector standardScaleGestureDetector = androidGesturesManager.getStandardScaleGestureDetector();
        Intrinsics.checkNotNullExpressionValue(standardScaleGestureDetector, "gesturesManager.standardScaleGestureDetector");
        notifyOnScaleBeginListeners(standardScaleGestureDetector);
        MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
        } else {
            mapCameraManagerDelegate = mapCameraManagerDelegate2;
        }
        ValueAnimator[] valueAnimatorArrCreateScaleAnimators = createScaleAnimators(mapCameraManagerDelegate.getCameraState().getZoom(), zoomIn ? 1 : -1, zoomFocalPoint, 300L);
        this.scaleAnimators = valueAnimatorArrCreateScaleAnimators;
        if (!runImmediately) {
            scheduleAnimators(valueAnimatorArrCreateScaleAnimators);
            return;
        }
        for (ValueAnimator valueAnimator : valueAnimatorArrCreateScaleAnimators) {
            valueAnimator.start();
        }
    }

    private final void cancelTransitionsIfRequired() {
        if (noGesturesInProgress()) {
            CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
            if (cameraAnimationsPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
                cameraAnimationsPlugin = null;
            }
            cameraAnimationsPlugin.cancelAllAnimators(CollectionsKt.toList(this.protectedCameraAnimatorOwners));
        }
    }

    private final boolean noGesturesInProgress() {
        AndroidGesturesManager androidGesturesManager = null;
        if (getInternalSettings().getScrollEnabled()) {
            AndroidGesturesManager androidGesturesManager2 = this.gesturesManager;
            if (androidGesturesManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager2 = null;
            }
            if (androidGesturesManager2.getMoveGestureDetector().isInProgress()) {
                return false;
            }
        }
        if (getInternalSettings().getPinchToZoomEnabled() || getInternalSettings().getDoubleTouchToZoomOutEnabled() || getInternalSettings().getDoubleTapToZoomInEnabled()) {
            AndroidGesturesManager androidGesturesManager3 = this.gesturesManager;
            if (androidGesturesManager3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager3 = null;
            }
            if (androidGesturesManager3.getStandardScaleGestureDetector().isInProgress()) {
                return false;
            }
        }
        if (getInternalSettings().getRotateEnabled()) {
            AndroidGesturesManager androidGesturesManager4 = this.gesturesManager;
            if (androidGesturesManager4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
                androidGesturesManager4 = null;
            }
            if (androidGesturesManager4.getRotateGestureDetector().isInProgress()) {
                return false;
            }
        }
        if (!getInternalSettings().getPitchEnabled()) {
            return true;
        }
        AndroidGesturesManager androidGesturesManager5 = this.gesturesManager;
        if (androidGesturesManager5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
        } else {
            androidGesturesManager = androidGesturesManager5;
        }
        return !androidGesturesManager.getShoveGestureDetector().isInProgress();
    }

    public final void handleLongPressEvent$plugin_gestures_release(ScreenCoordinate screenCoordinate) {
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        if (this.onMapLongClickListeners.isEmpty()) {
            return;
        }
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        Point pointCoordinateForPixel = mapCameraManagerDelegate.coordinateForPixel(screenCoordinate);
        Iterator<OnMapLongClickListener> it = this.onMapLongClickListeners.iterator();
        while (it.hasNext() && !it.next().onMapLongClick(pointCoordinateForPixel)) {
        }
    }

    public final boolean handleClickEvent$plugin_gestures_release(ScreenCoordinate screenCoordinate) {
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        if (this.onMapClickListeners.isEmpty()) {
            return false;
        }
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        Point pointCoordinateForPixel = mapCameraManagerDelegate.coordinateForPixel(screenCoordinate);
        Iterator<OnMapClickListener> it = this.onMapClickListeners.iterator();
        while (it.hasNext()) {
            if (it.next().onMapClick(pointCoordinateForPixel)) {
                return true;
            }
        }
        return false;
    }

    public final boolean handleDoubleTapEvent$plugin_gestures_release(MotionEvent motionEvent, float doubleTapMovementThreshold) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (motionEvent.getActionMasked() == 0) {
            this.doubleTapFocalPoint = GesturesPluginImplKt.toScreenCoordinate(motionEvent);
            GestureState gestureState = this.gestureState;
            if (gestureState == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gestureState");
                gestureState = null;
            }
            gestureState.saveAndDisable(GestureState.Type.DoubleTap);
            this.doubleTapRegistered = true;
        }
        if (motionEvent.getActionMasked() == 1) {
            double dAbs = Math.abs(((double) motionEvent.getX()) - this.doubleTapFocalPoint.getX());
            double dAbs2 = Math.abs(((double) motionEvent.getY()) - this.doubleTapFocalPoint.getY());
            double d = doubleTapMovementThreshold;
            if (dAbs > d || dAbs2 > d || !getInternalSettings().getDoubleTapToZoomInEnabled()) {
                return false;
            }
            ScreenCoordinate focalPoint = getInternalSettings().getFocalPoint();
            if (focalPoint != null) {
                this.doubleTapFocalPoint = focalPoint;
            }
            animateZoomIn(this.doubleTapFocalPoint, false);
            return true;
        }
        return false;
    }

    public final boolean handleFlingEvent$plugin_gestures_release(MotionEvent e2, float velocityX, float velocityY) {
        double dExp;
        Intrinsics.checkNotNullParameter(e2, "e2");
        if (!getInternalSettings().getScrollEnabled() || isPointAboveHorizon$plugin_gestures_release(GesturesPluginImplKt.toScreenCoordinate(e2))) {
            return false;
        }
        notifyOnFlingListeners();
        if (!getInternalSettings().getScrollDecelerationEnabled()) {
            return false;
        }
        float f = this.pixelRatio;
        double dHypot = Math.hypot(velocityX / f, velocityY / f);
        if (dHypot < 1000.0d) {
            return false;
        }
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        CoreGesturesHandler coreGesturesHandler = null;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        double pitch = mapCameraManagerDelegate.getCameraState().getPitch();
        if (pitch < 60.0d) {
            dExp = pitch / 10.0d;
        } else if (60.0d > pitch || pitch > 85.0d) {
            dExp = 0.0d;
        } else {
            double dLog = Math.log(6.0d);
            dExp = Math.exp((((Math.log(300.0d) - dLog) * (pitch - 60.0d)) / 25.0d) + dLog);
        }
        double d = (dExp / ((double) f)) + 10.0d;
        double d2 = GesturesUtils.isScrollHorizontallyLimited(getInternalSettings()) ? 0.0d : ((double) velocityX) / d;
        double d3 = GesturesUtils.isScrollVerticallyLimited(getInternalSettings()) ? 0.0d : ((double) velocityY) / d;
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        }
        cameraAnimationsPlugin.cancelAllAnimators(CollectionsKt.toList(this.protectedCameraAnimatorOwners));
        long j = (long) (dHypot / d);
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(this.centerScreen.getX(), this.centerScreen.getY() * 2.0d);
        CameraAnimationsPlugin cameraAnimationsPlugin2 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin2 = null;
        }
        MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate2 = null;
        }
        CameraOptions cameraOptionsCameraForDrag = mapCameraManagerDelegate2.cameraForDrag(screenCoordinate, new ScreenCoordinate(screenCoordinate.getX() + d2, screenCoordinate.getY() + d3));
        MapAnimationOptions.Companion companion = MapAnimationOptions.INSTANCE;
        MapAnimationOptions.Builder builder = new MapAnimationOptions.Builder();
        builder.owner(MapAnimationOwnerRegistry.GESTURES);
        builder.duration(j);
        builder.interpolator(this.gesturesInterpolator);
        Unit unit = Unit.INSTANCE;
        MapAnimationOptions mapAnimationOptionsBuild = builder.build();
        CoreGesturesHandler coreGesturesHandler2 = this.coreGesturesHandler;
        if (coreGesturesHandler2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
        } else {
            coreGesturesHandler = coreGesturesHandler2;
        }
        cameraAnimationsPlugin2.easeTo(cameraOptionsCameraForDrag, mapAnimationOptionsBuild, coreGesturesHandler.getCoreGestureAnimatorHandler());
        return true;
    }

    public final void handleMoveStartEvent$plugin_gestures_release() {
        cancelTransitionsIfRequired();
        notifyOnMoveBeginListeners(getMoveGestureListener$plugin_gestures_release().getDetector());
    }

    public final boolean isPointAboveHorizon$plugin_gestures_release(ScreenCoordinate pixel) {
        String upperCase;
        Intrinsics.checkNotNullParameter(pixel, "pixel");
        MapboxStyleManager mapboxStyleManager = this.style;
        MapCameraManagerDelegate mapCameraManagerDelegate = null;
        StylePropertyValue styleProjectionProperty = mapboxStyleManager != null ? mapboxStyleManager.getStyleProjectionProperty("name") : null;
        if (styleProjectionProperty == null) {
            return false;
        }
        if (styleProjectionProperty.getKind() == StylePropertyValueKind.UNDEFINED) {
            upperCase = "MERCATOR";
        } else {
            Object contents = styleProjectionProperty.getValue().getContents();
            Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type kotlin.String");
            upperCase = ((String) contents).toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        }
        if (!Intrinsics.areEqual(upperCase, "MERCATOR")) {
            return false;
        }
        MapTransformDelegate mapTransformDelegate = this.mapTransformDelegate;
        if (mapTransformDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapTransformDelegate");
            mapTransformDelegate = null;
        }
        double height = 0.04d * ((double) mapTransformDelegate.getSize().getHeight());
        double dMin = Math.min(10.0d, height / ((double) 2));
        double x = pixel.getX();
        double d = 0.0d;
        if (Double.isNaN(x)) {
            MapboxLogger.logE(TAG, "isPointAboveHorizon: screen coordinate x is NaN.");
            x = 0.0d;
        }
        double y = pixel.getY();
        if (Double.isNaN(y)) {
            MapboxLogger.logE(TAG, "isPointAboveHorizon: screen coordinate y is NaN.");
        } else {
            d = y;
        }
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(x, d - height);
        MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate2 = null;
        }
        Point pointCoordinateForPixel = mapCameraManagerDelegate2.coordinateForPixel(screenCoordinate);
        MapCameraManagerDelegate mapCameraManagerDelegate3 = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
        } else {
            mapCameraManagerDelegate = mapCameraManagerDelegate3;
        }
        return mapCameraManagerDelegate.pixelForCoordinate(pointCoordinateForPixel).getY() >= screenCoordinate.getY() + dMin;
    }

    public final double calculateZoomBy$plugin_gestures_release(StandardScaleGestureDetector standardScaleGestureDetector) {
        Intrinsics.checkNotNullParameter(standardScaleGestureDetector, "standardScaleGestureDetector");
        return (Math.log(standardScaleGestureDetector.getScaleFactor()) / Math.log(1.5707963267948966d)) * 0.6499999761581421d * ((double) getInternalSettings().getZoomAnimationAmount());
    }

    public final void handleMove$plugin_gestures_release(ScreenCoordinate targetScreenCoordinate) {
        CameraAnimationsPlugin cameraAnimationsPlugin;
        Intrinsics.checkNotNullParameter(targetScreenCoordinate, "targetScreenCoordinate");
        MoveGestureDetector detector = getMoveGestureListener$plugin_gestures_release().getDetector();
        if (notifyOnMoveListeners(detector)) {
            return;
        }
        PointF focalPoint = detector.getFocalPoint();
        double d = focalPoint.x;
        double d2 = focalPoint.y;
        CoreGesturesHandler coreGesturesHandler = this.coreGesturesHandler;
        if (coreGesturesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coreGesturesHandler");
            coreGesturesHandler = null;
        }
        coreGesturesHandler.notifyCoreGestureStarted();
        MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
            mapCameraManagerDelegate = null;
        }
        CameraOptions cameraOptionsCameraForDrag = mapCameraManagerDelegate.cameraForDrag(new ScreenCoordinate(d, d2), targetScreenCoordinate);
        CameraAnimationsPlugin cameraAnimationsPlugin2 = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        } else {
            cameraAnimationsPlugin = cameraAnimationsPlugin2;
        }
        CameraAnimationsPlugin.DefaultImpls.easeTo$default(cameraAnimationsPlugin, cameraOptionsCameraForDrag, IMMEDIATE_ANIMATION_OPTIONS, null, 4, null);
    }

    public final void handleMoveEnd$plugin_gestures_release() {
        notifyOnMoveEndListeners(getMoveGestureListener$plugin_gestures_release().getDetector());
    }

    public final boolean handleSingleTapUpEvent$plugin_gestures_release() {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        }
        cameraAnimationsPlugin.cancelAllAnimators(CollectionsKt.toList(this.protectedCameraAnimatorOwners));
        return true;
    }

    private final void notifyOnFlingListeners() {
        Iterator<OnFlingListener> it = this.onFlingListeners.iterator();
        while (it.hasNext()) {
            it.next().onFling();
        }
    }

    private final void notifyOnMoveBeginListeners(MoveGestureDetector detector) {
        Iterator<OnMoveListener> it = this.onMoveListeners.iterator();
        while (it.hasNext()) {
            it.next().onMoveBegin(detector);
        }
    }

    private final boolean notifyOnMoveListeners(MoveGestureDetector detector) {
        Iterator<OnMoveListener> it = this.onMoveListeners.iterator();
        while (it.hasNext()) {
            if (it.next().onMove(detector)) {
                return true;
            }
        }
        return false;
    }

    private final void notifyOnMoveEndListeners(MoveGestureDetector detector) {
        Iterator<OnMoveListener> it = this.onMoveListeners.iterator();
        while (it.hasNext()) {
            it.next().onMoveEnd(detector);
        }
    }

    private final void notifyOnRotateBeginListeners(RotateGestureDetector detector) {
        Iterator<OnRotateListener> it = this.onRotateListeners.iterator();
        while (it.hasNext()) {
            it.next().onRotateBegin(detector);
        }
    }

    private final void notifyOnRotateListeners(RotateGestureDetector detector) {
        Iterator<OnRotateListener> it = this.onRotateListeners.iterator();
        while (it.hasNext()) {
            it.next().onRotate(detector);
        }
    }

    private final void notifyOnRotateEndListeners(RotateGestureDetector detector) {
        Iterator<OnRotateListener> it = this.onRotateListeners.iterator();
        while (it.hasNext()) {
            it.next().onRotateEnd(detector);
        }
    }

    private final void notifyOnScaleBeginListeners(StandardScaleGestureDetector detector) {
        Iterator<OnScaleListener> it = this.onScaleListeners.iterator();
        while (it.hasNext()) {
            it.next().onScaleBegin(detector);
        }
    }

    public final void notifyOnScaleListeners(StandardScaleGestureDetector detector) {
        Iterator<OnScaleListener> it = this.onScaleListeners.iterator();
        while (it.hasNext()) {
            it.next().onScale(detector);
        }
    }

    public final void notifyOnScaleEndListeners(StandardScaleGestureDetector detector) {
        Iterator<OnScaleListener> it = this.onScaleListeners.iterator();
        while (it.hasNext()) {
            it.next().onScaleEnd(detector);
        }
    }

    private final void notifyOnShoveBeginListeners(ShoveGestureDetector detector) {
        Iterator<OnShoveListener> it = this.onShoveListeners.iterator();
        while (it.hasNext()) {
            it.next().onShoveBegin(detector);
        }
    }

    private final void notifyOnShoveListeners(ShoveGestureDetector detector) {
        Iterator<OnShoveListener> it = this.onShoveListeners.iterator();
        while (it.hasNext()) {
            it.next().onShove(detector);
        }
    }

    private final void notifyOnShoveEndListeners(ShoveGestureDetector detector) {
        Iterator<OnShoveListener> it = this.onShoveListeners.iterator();
        while (it.hasNext()) {
            it.next().onShoveEnd(detector);
        }
    }

    @Override
    public void addOnMapClickListener(OnMapClickListener onMapClickListener) {
        Intrinsics.checkNotNullParameter(onMapClickListener, "onMapClickListener");
        this.onMapClickListeners.add(onMapClickListener);
    }

    @Override
    public void removeOnMapClickListener(OnMapClickListener onMapClickListener) {
        Intrinsics.checkNotNullParameter(onMapClickListener, "onMapClickListener");
        this.onMapClickListeners.remove(onMapClickListener);
    }

    @Override
    public void addOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        Intrinsics.checkNotNullParameter(onMapLongClickListener, "onMapLongClickListener");
        this.onMapLongClickListeners.add(onMapLongClickListener);
    }

    @Override
    public void removeOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        Intrinsics.checkNotNullParameter(onMapLongClickListener, "onMapLongClickListener");
        this.onMapLongClickListeners.remove(onMapLongClickListener);
    }

    @Override
    public void addOnFlingListener(OnFlingListener onFlingListener) {
        Intrinsics.checkNotNullParameter(onFlingListener, "onFlingListener");
        this.onFlingListeners.add(onFlingListener);
    }

    @Override
    public void removeOnFlingListener(OnFlingListener onFlingListener) {
        Intrinsics.checkNotNullParameter(onFlingListener, "onFlingListener");
        this.onFlingListeners.remove(onFlingListener);
    }

    @Override
    public void addOnMoveListener(OnMoveListener onMoveListener) {
        Intrinsics.checkNotNullParameter(onMoveListener, "onMoveListener");
        this.onMoveListeners.add(onMoveListener);
    }

    @Override
    public void removeOnMoveListener(OnMoveListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onMoveListeners.remove(listener);
    }

    @Override
    public void addOnRotateListener(OnRotateListener onRotateListener) {
        Intrinsics.checkNotNullParameter(onRotateListener, "onRotateListener");
        this.onRotateListeners.add(onRotateListener);
    }

    @Override
    public void removeOnRotateListener(OnRotateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onRotateListeners.remove(listener);
    }

    @Override
    public void addOnScaleListener(OnScaleListener onScaleListener) {
        Intrinsics.checkNotNullParameter(onScaleListener, "onScaleListener");
        this.onScaleListeners.add(onScaleListener);
    }

    @Override
    public void removeOnScaleListener(OnScaleListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onScaleListeners.remove(listener);
    }

    @Override
    public void addOnShoveListener(OnShoveListener onShoveListener) {
        Intrinsics.checkNotNullParameter(onShoveListener, "onShoveListener");
        this.onShoveListeners.add(onShoveListener);
    }

    @Override
    public void removeOnShoveListener(OnShoveListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onShoveListeners.remove(listener);
    }

    @Override
    public void addProtectedAnimationOwner(String owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        this.protectedCameraAnimatorOwners.add(owner);
    }

    @Override
    public void removeProtectedAnimationOwner(String owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        this.protectedCameraAnimatorOwners.remove(owner);
    }

    @Override
    public AndroidGesturesManager getGesturesManager() {
        AndroidGesturesManager androidGesturesManager = this.gesturesManager;
        if (androidGesturesManager != null) {
            return androidGesturesManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
        return null;
    }

    @Override
    public void setGesturesManager(AndroidGesturesManager internalGesturesManager, boolean attachDefaultListeners, boolean setDefaultMutuallyExclusives) {
        Intrinsics.checkNotNullParameter(internalGesturesManager, "internalGesturesManager");
        initializeGesturesManager(internalGesturesManager, setDefaultMutuallyExclusives);
        initializeGestureListeners(this.context, attachDefaultListeners);
    }

    private final double clamp(double value, double min, double max) {
        return RangesKt.coerceAtLeast(min, RangesKt.coerceAtMost(max, value));
    }

    private final float clamp(float value, float min, float max) {
        return RangesKt.coerceAtLeast(min, RangesKt.coerceAtMost(max, value));
    }

    @Override
    public void cleanup() {
        this.style = null;
        unregisterInteractions();
        this.protectedCameraAnimatorOwners.clear();
        this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
    }

    @Override
    public void bind(Context context, AttributeSet attrs, float pixelRatio) {
        Intrinsics.checkNotNullParameter(context, "context");
        bind$plugin_gestures_release(context, new AndroidGesturesManager(context), attrs, pixelRatio);
    }

    public final void bind$plugin_gestures_release(Context context, AndroidGesturesManager gesturesManager, AttributeSet attrs, float pixelRatio) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gesturesManager, "gesturesManager");
        this.gesturesManager = gesturesManager;
        this.gestureState = new GestureState(gesturesManager);
        this.pixelRatio = pixelRatio;
        setInternalSettings(GesturesAttributeParser.INSTANCE.parseGesturesSettings(context, attrs));
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) throws InvalidPluginConfigurationException {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        delegateProvider.getStyle(new Function1<MapboxStyleManager, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(MapboxStyleManager mapboxStyleManager) {
                invoke2(mapboxStyleManager);
                return Unit.INSTANCE;
            }

            public final void invoke2(MapboxStyleManager it) {
                Intrinsics.checkNotNullParameter(it, "it");
                GesturesPluginImpl.this.style = it;
            }
        });
        this.mapTransformDelegate = delegateProvider.getMapTransformDelegate();
        this.mapCameraManagerDelegate = delegateProvider.getMapCameraManagerDelegate();
        this.mapProjectionDelegate = delegateProvider.getMapProjectionDelegate();
        setMapInteractionDelegate$plugin_gestures_release(delegateProvider.getMapInteractionDelegate());
        this.mapPluginProviderDelegate = delegateProvider.getMapPluginProviderDelegate();
        CameraAnimationsPlugin cameraAnimationsPlugin = (CameraAnimationsPlugin) delegateProvider.getMapPluginProviderDelegate().getPlugin(Plugin.MAPBOX_CAMERA_PLUGIN_ID);
        if (cameraAnimationsPlugin == null) {
            throw new InvalidPluginConfigurationException("Can't look up an instance of plugin, is it available on the clazz path and loaded through the map?");
        }
        this.cameraAnimationsPlugin = cameraAnimationsPlugin;
        MapCameraManagerDelegate mapCameraManagerDelegate = null;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnimationsPlugin");
            cameraAnimationsPlugin = null;
        }
        cameraAnimationsPlugin.addCameraPaddingChangeListener(new CameraAnimatorChangeListener() {
            @Override
            public final void onChanged(Object obj) {
                GesturesPluginImpl.onDelegateProvider$lambda$21(this.f$0, (EdgeInsets) obj);
            }
        });
        MapTransformDelegate mapTransformDelegate = this.mapTransformDelegate;
        if (mapTransformDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapTransformDelegate");
            mapTransformDelegate = null;
        }
        MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
        if (mapCameraManagerDelegate2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
        } else {
            mapCameraManagerDelegate = mapCameraManagerDelegate2;
        }
        this.coreGesturesHandler = new CoreGesturesHandler(mapTransformDelegate, mapCameraManagerDelegate);
    }

    public static final void onDelegateProvider$lambda$21(GesturesPluginImpl this$0, EdgeInsets it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.cameraPaddingChanged = true;
    }

    @Override
    public void onStyleChanged(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
    }

    @Override
    public void initialize() {
        AndroidGesturesManager androidGesturesManager = this.gesturesManager;
        if (androidGesturesManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gesturesManager");
            androidGesturesManager = null;
        }
        initializeGesturesManager(androidGesturesManager, true);
        initializeGestureListeners(this.context, true);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/GesturesPluginImpl$Companion;", "", "()V", "IMMEDIATE_ANIMATION_OPTIONS", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "MAX_SHOVE_ANGLE", "", "ROTATION_ANGLE_THRESHOLD", "TAG", "", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        MapAnimationOptions.Companion companion = MapAnimationOptions.INSTANCE;
        MapAnimationOptions.Builder builder = new MapAnimationOptions.Builder();
        builder.duration(0L);
        builder.owner(MapAnimationOwnerRegistry.GESTURES);
        IMMEDIATE_ANIMATION_OPTIONS = builder.build();
    }

    private final void scheduleAnimators(ValueAnimator[] animators) {
        if (animators != null) {
            for (ValueAnimator valueAnimator : animators) {
                this.scheduledAnimators.add(valueAnimator);
            }
        }
        this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
        this.animationsTimeoutHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                GesturesPluginImpl.scheduleAnimators$lambda$3(this.f$0);
            }
        }, 150L);
    }
}
