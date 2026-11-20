package com.mapbox.maps;

import android.graphics.RectF;
import android.os.Handler;
import android.webkit.URLUtil;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.StyleExtensionImpl;
import com.mapbox.maps.extension.style.StyleExtensionImplKt;
import com.mapbox.maps.interactions.FeatureState;
import com.mapbox.maps.interactions.FeatureStateCallback;
import com.mapbox.maps.interactions.FeatureStateKey;
import com.mapbox.maps.interactions.FeaturesetFeature;
import com.mapbox.maps.interactions.QueryRenderedFeaturesetFeaturesCallback;
import com.mapbox.maps.interactions.TypedFeaturesetDescriptor;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapFeatureQueryDelegate;
import com.mapbox.maps.plugin.delegates.MapFeatureStateDelegate;
import com.mapbox.maps.plugin.delegates.MapInteractionDelegate;
import com.mapbox.maps.plugin.delegates.MapListenerDelegate;
import com.mapbox.maps.plugin.delegates.MapPluginExtensionsDelegate;
import com.mapbox.maps.plugin.delegates.MapProjectionDelegate;
import com.mapbox.maps.plugin.delegates.MapTransformDelegate;
import com.mapbox.maps.plugin.delegates.listeners.OnCameraChangeListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapIdleListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapLoadErrorListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapLoadedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnRenderFrameFinishedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnRenderFrameStartedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnSourceAddedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnSourceDataLoadedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnSourceRemovedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleDataLoadedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleImageMissingListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleImageUnusedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleLoadedListener;
import com.mapbox.maps.plugin.gestures.GesturesPlugin;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000¾\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 ¡\u00032\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t:\u0002¡\u0003B\u001f\b\u0012\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010B\u001f\b\u0012\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u0010\u0010F\u001a\u00020/2\u0006\u0010G\u001a\u00020HH\u0017J\u0010\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020LH\u0017J\u0010\u0010M\u001a\u00020J2\u0006\u0010N\u001a\u00020OH\u0017J\u0010\u0010P\u001a\u00020J2\u0006\u0010Q\u001a\u00020RH\u0017J\u0010\u0010S\u001a\u00020J2\u0006\u0010T\u001a\u00020UH\u0017J\u0010\u0010V\u001a\u00020J2\u0006\u0010W\u001a\u00020XH\u0017J\u0010\u0010Y\u001a\u00020J2\u0006\u0010Z\u001a\u00020[H\u0017J\u0010\u0010\\\u001a\u00020J2\u0006\u0010]\u001a\u00020^H\u0017J\u0010\u0010_\u001a\u00020J2\u0006\u0010`\u001a\u00020aH\u0017J\u0010\u0010b\u001a\u00020J2\u0006\u0010c\u001a\u00020dH\u0017J\u0010\u0010e\u001a\u00020J2\u0006\u0010f\u001a\u00020gH\u0017J\u0010\u0010h\u001a\u00020J2\u0006\u0010i\u001a\u00020jH\u0017J\u0010\u0010k\u001a\u00020J2\u0006\u0010l\u001a\u00020mH\u0017J\u0010\u0010n\u001a\u00020J2\u0006\u0010o\u001a\u00020pH\u0017J)\u0010q\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020t0r2\u0006\u0010u\u001a\u00020s2\u0006\u0010v\u001a\u00020wH\u0000¢\u0006\u0002\bxJ\u0010\u0010y\u001a\u00020J2\u0006\u0010A\u001a\u00020sH\u0002J%\u0010\u0016\u001a\u0004\u0018\u00010z2\u0019\u0010{\u001a\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010z0|¢\u0006\u0002\b}H\u0016JT\u0010~\u001a\u00020\u007f2\b\u0010\u0080\u0001\u001a\u00030\u0081\u00012\n\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0083\u00012\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0017¢\u0006\u0003\u0010\u008a\u0001JM\u0010\u008b\u0001\u001a\u00020\u007f2\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u007f2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0083\u00012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0017¢\u0006\u0003\u0010\u0091\u0001Jb\u0010\u008b\u0001\u001a\u00020J2\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u007f2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0083\u00012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u00012\u0013\u0010\u0092\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u007f\u0012\u0004\u0012\u00020J0|H\u0016¢\u0006\u0003\u0010\u0093\u0001J-\u0010\u008b\u0001\u001a\u00020\u007f2\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u007f2\b\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0017JD\u0010\u008b\u0001\u001a\u00020\u007f2\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00012\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0083\u00012\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0017¢\u0006\u0003\u0010\u0096\u0001J\u001d\u0010\u0097\u0001\u001a\u00020\u007f2\b\u0010\u0098\u0001\u001a\u00030\u0089\u00012\b\u0010\u0099\u0001\u001a\u00030\u0089\u0001H\u0016J=\u0010\u009a\u0001\u001a\u00020\u007f2\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u0083\u00012\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0017¢\u0006\u0003\u0010\u009e\u0001J\u001d\u0010\u009f\u0001\u001a\u00020J2\u0007\u0010 \u0001\u001a\u00020s2\t\b\u0002\u0010¡\u0001\u001a\u000201H\u0002J\u0013\u0010¢\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u007fH\u0016J\u0013\u0010£\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u007fH\u0016J\u0014\u0010¤\u0001\u001a\u00030\u0081\u00012\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0016J\u0013\u0010§\u0001\u001a\u00030¨\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u007fH\u0016J\u0013\u0010©\u0001\u001a\u00030¨\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u007fH\u0016J\u0014\u0010ª\u0001\u001a\u00030\u008e\u00012\b\u0010«\u0001\u001a\u00030\u0089\u0001H\u0016J\u0014\u0010¬\u0001\u001a\u00030\u008e\u00012\b\u0010\u00ad\u0001\u001a\u00030®\u0001H\u0016J\u0014\u0010¯\u0001\u001a\u00030°\u00012\b\u0010«\u0001\u001a\u00030\u0089\u0001H\u0016J\"\u0010±\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00012\u000f\u0010²\u0001\u001a\n\u0012\u0005\u0012\u00030\u0089\u00010\u008d\u0001H\u0016J\"\u0010³\u0001\u001a\n\u0012\u0005\u0012\u00030°\u00010\u008d\u00012\u000f\u0010²\u0001\u001a\n\u0012\u0005\u0012\u00030\u0089\u00010\u008d\u0001H\u0016J\n\u0010´\u0001\u001a\u00030µ\u0001H\u0007J\u0013\u0010¶\u0001\u001a\u00020J2\b\u0010·\u0001\u001a\u00030¸\u0001H\u0017J\u0013\u0010¹\u0001\u001a\u00020J2\b\u0010º\u0001\u001a\u00030»\u0001H\u0016J%\u0010(\u001a\u0004\u0018\u00010z2\u0019\u0010{\u001a\u0015\u0012\u0004\u0012\u00020'\u0012\u0006\u0012\u0004\u0018\u00010z0|¢\u0006\u0002\b}H\u0016J\u000e\u0010¼\u0001\u001a\t\u0012\u0004\u0012\u00020s0\u008d\u0001J\n\u0010½\u0001\u001a\u00030¾\u0001H\u0016J\n\u0010¿\u0001\u001a\u00030À\u0001H\u0016J\u0010\u0010Á\u0001\u001a\t\u0012\u0004\u0012\u00020!0\u008d\u0001H\u0007J\u001a\u0010Â\u0001\u001a\u0005\u0018\u00010\u0085\u00012\b\u0010Ã\u0001\u001a\u00030\u008e\u0001¢\u0006\u0003\u0010Ä\u0001J7\u0010Å\u0001\u001a\u00020/\"\n\b\u0000\u0010Æ\u0001*\u00030Ç\u00012\u000f\u0010È\u0001\u001a\n\u0012\u0005\u0012\u0003HÆ\u00010É\u00012\u000f\u0010Ê\u0001\u001a\n\u0012\u0005\u0012\u0003HÆ\u00010Ë\u0001H\u0007JE\u0010Å\u0001\u001a\u00020/\"\n\b\u0000\u0010Æ\u0001*\u00030Ç\u00012\u0013\u0010Ì\u0001\u001a\u000e\u0012\u0005\u0012\u0003HÆ\u0001\u0012\u0002\b\u00030Í\u00012\b\u0010Î\u0001\u001a\u00030Ï\u00012\u000f\u0010Ê\u0001\u001a\n\u0012\u0005\u0012\u0003HÆ\u00010Ë\u0001H\u0007J#\u0010Å\u0001\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\u0007\u0010Ñ\u0001\u001a\u00020s2\b\u0010Ê\u0001\u001a\u00030Ò\u0001J0\u0010Å\u0001\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\t\u0010Ó\u0001\u001a\u0004\u0018\u00010s2\u0007\u0010Ñ\u0001\u001a\u00020s2\b\u0010Ê\u0001\u001a\u00030Ò\u0001H\u0016J\n\u0010Ô\u0001\u001a\u00030Õ\u0001H\u0016J$\u0010Ö\u0001\u001a\u00020/2\u0007\u0010×\u0001\u001a\u00020s2\b\u0010Ø\u0001\u001a\u00030Ù\u00012\b\u0010Ê\u0001\u001a\u00030Ú\u0001J$\u0010Û\u0001\u001a\u00020/2\u0007\u0010×\u0001\u001a\u00020s2\b\u0010Ø\u0001\u001a\u00030Ù\u00012\b\u0010Ê\u0001\u001a\u00030Ú\u0001J>\u0010Ü\u0001\u001a\u00020/2\u0007\u0010×\u0001\u001a\u00020s2\b\u0010Ø\u0001\u001a\u00030Ù\u00012\n\b\u0002\u0010Ý\u0001\u001a\u00030Þ\u00012\n\b\u0002\u0010\u0088\u0001\u001a\u00030Þ\u00012\b\u0010Ê\u0001\u001a\u00030Ú\u0001H\u0007J\n\u0010ß\u0001\u001a\u00030à\u0001H\u0016J\u0014\u0010á\u0001\u001a\u00030\u0085\u00012\b\u0010â\u0001\u001a\u00030\u0085\u0001H\u0016J\u001e\u0010á\u0001\u001a\u00030\u0085\u00012\b\u0010â\u0001\u001a\u00030\u0085\u00012\b\u0010ã\u0001\u001a\u00030\u0085\u0001H\u0016J\n\u0010ä\u0001\u001a\u00030å\u0001H\u0007J\b\u0010æ\u0001\u001a\u00030ç\u0001J\u0007\u0010è\u0001\u001a\u000201J\u0011\u0010é\u0001\u001a\n\u0012\u0005\u0012\u00030ê\u00010\u008d\u0001H\u0007J\n\u0010ë\u0001\u001a\u00030ì\u0001H\u0016J\u0010\u0010B\u001a\u0004\u0018\u00010@H\u0007¢\u0006\u0003\bí\u0001J\u0010\u0010B\u001a\u00020J2\b\u0010î\u0001\u001a\u00030ï\u0001J!\u0010ð\u0001\u001a\u0014\u0012\u0004\u0012\u00020s0ñ\u0001j\t\u0012\u0004\u0012\u00020s`ò\u0001H\u0001¢\u0006\u0003\bó\u0001J$\u0010ô\u0001\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020w0r2\u0007\u0010õ\u0001\u001a\u00020sH\u0000¢\u0006\u0003\bö\u0001J=\u0010÷\u0001\u001a\u00020J2\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00012\b\u0010ø\u0001\u001a\u00030ï\u00012\f\b\u0002\u0010ù\u0001\u001a\u0005\u0018\u00010ï\u00012\f\b\u0002\u0010ú\u0001\u001a\u0005\u0018\u00010ï\u0001H\u0002J\t\u0010û\u0001\u001a\u000201H\u0016J\t\u0010ü\u0001\u001a\u000201H\u0016J\u0007\u0010ý\u0001\u001a\u000201J!\u0010þ\u0001\u001a\u00020J2\b\u0010ÿ\u0001\u001a\u00030\u0080\u00022\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u0001H\u0007J-\u0010þ\u0001\u001a\u00020J2\b\u0010ÿ\u0001\u001a\u00030\u0080\u00022\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J;\u0010þ\u0001\u001a\u00020J2\b\u0010ÿ\u0001\u001a\u00030\u0080\u00022\f\b\u0002\u0010\u0081\u0002\u001a\u0005\u0018\u00010\u0082\u00022\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u001f\u0010þ\u0001\u001a\u00020J2\u0006\u0010A\u001a\u00020s2\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u0001H\u0007J\u0012\u0010\u0083\u0002\u001a\u00020J2\u0007\u0010\u0084\u0002\u001a\u00020sH\u0007J\u001c\u0010\u0083\u0002\u001a\u00020J2\u0007\u0010\u0084\u0002\u001a\u00020s2\b\u0010î\u0001\u001a\u00030ï\u0001H\u0007J,\u0010\u0083\u0002\u001a\u00020J2\u0007\u0010\u0084\u0002\u001a\u00020s2\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J:\u0010\u0083\u0002\u001a\u00020J2\u0007\u0010\u0084\u0002\u001a\u00020s2\f\b\u0002\u0010\u0081\u0002\u001a\u0005\u0018\u00010\u0082\u00022\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u0012\u0010\u0085\u0002\u001a\u00020J2\u0007\u0010\u0086\u0002\u001a\u00020sH\u0007J\u001c\u0010\u0085\u0002\u001a\u00020J2\u0007\u0010\u0086\u0002\u001a\u00020s2\b\u0010î\u0001\u001a\u00030ï\u0001H\u0007J,\u0010\u0085\u0002\u001a\u00020J2\u0007\u0010\u0086\u0002\u001a\u00020s2\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J:\u0010\u0085\u0002\u001a\u00020J2\u0007\u0010\u0086\u0002\u001a\u00020s2\f\b\u0002\u0010\u0081\u0002\u001a\u0005\u0018\u00010\u0082\u00022\f\b\u0002\u0010î\u0001\u001a\u0005\u0018\u00010ï\u00012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u000f\u0010\u0087\u0002\u001a\u00020JH\u0000¢\u0006\u0003\b\u0088\u0002J\u0014\u0010\u0089\u0002\u001a\u00030\u0089\u00012\b\u0010Ã\u0001\u001a\u00030\u008e\u0001H\u0016J\"\u0010\u008a\u0002\u001a\n\u0012\u0005\u0012\u00030\u0089\u00010\u008d\u00012\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u0001H\u0016J\u001e\u0010\u008b\u0002\u001a\u00030\u008c\u00022\b\u0010\u008d\u0002\u001a\u00030\u008e\u00012\b\u0010\u008e\u0002\u001a\u00030\u0085\u0001H\u0016J\u0014\u0010\u008f\u0002\u001a\u00030®\u00012\b\u0010\u008d\u0002\u001a\u00030\u008e\u0001H\u0016J&\u0010\u0090\u0002\u001a\u00020/2\b\u0010\u009b\u0001\u001a\u00030\u0091\u00022\u0007\u0010v\u001a\u00030\u0092\u00022\b\u0010Ê\u0001\u001a\u00030\u0093\u0002H\u0016J[\u0010\u0090\u0002\u001a\u00020/\"\u000e\b\u0000\u0010\u0094\u0002*\u0007\u0012\u0002\b\u00030É\u00012\u0013\u0010Ì\u0001\u001a\u000e\u0012\u0002\b\u0003\u0012\u0005\u0012\u0003H\u0094\u00020Í\u00012\f\b\u0002\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0091\u00022\f\b\u0002\u0010\u0095\u0002\u001a\u0005\u0018\u00010\u0096\u00022\u000f\u0010Ê\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0094\u00020\u0097\u0002H\u0007J%\u0010\u0098\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\u0007\u0010v\u001a\u00030\u0099\u00022\b\u0010Ê\u0001\u001a\u00030\u009a\u0002H\u0016J\u0007\u0010\u009b\u0002\u001a\u00020JJY\u0010\u009c\u0002\u001a\u00020/\"\n\b\u0000\u0010Æ\u0001*\u00030Ç\u0001\"\u0011\b\u0001\u0010\u009d\u0002*\n\u0012\u0005\u0012\u0003HÆ\u00010\u009e\u00022\u000f\u0010È\u0001\u001a\n\u0012\u0005\u0012\u0003HÆ\u00010É\u00012\f\b\u0002\u0010\u009f\u0002\u001a\u0005\u0018\u0001H\u009d\u00022\n\b\u0002\u0010Ê\u0001\u001a\u00030 \u0002H\u0007¢\u0006\u0003\u0010¡\u0002Jg\u0010\u009c\u0002\u001a\u00020/\"\n\b\u0000\u0010Æ\u0001*\u00030Ç\u0001\"\u0011\b\u0001\u0010\u009d\u0002*\n\u0012\u0005\u0012\u0003HÆ\u00010\u009e\u00022\u0013\u0010Ì\u0001\u001a\u000e\u0012\u0005\u0012\u0003HÆ\u0001\u0012\u0002\b\u00030Í\u00012\b\u0010Î\u0001\u001a\u00030Ï\u00012\f\b\u0002\u0010\u009f\u0002\u001a\u0005\u0018\u0001H\u009d\u00022\n\b\u0002\u0010Ê\u0001\u001a\u00030 \u0002H\u0007¢\u0006\u0003\u0010¢\u0002J#\u0010\u009c\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\u0007\u0010Ñ\u0001\u001a\u00020s2\b\u0010Ê\u0001\u001a\u00030 \u0002J.\u0010\u009c\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\t\u0010Ó\u0001\u001a\u0004\u0018\u00010s2\u0007\u0010Ñ\u0001\u001a\u00020s2\b\u0010Ê\u0001\u001a\u00030 \u0002J;\u0010\u009c\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\t\u0010Ó\u0001\u001a\u0004\u0018\u00010s2\u0007\u0010Ñ\u0001\u001a\u00020s2\t\u0010\u009f\u0002\u001a\u0004\u0018\u00010s2\b\u0010Ê\u0001\u001a\u00030 \u0002H\u0016J\u0011\u0010£\u0002\u001a\u00020J2\u0006\u0010K\u001a\u00020LH\u0017J\u0011\u0010¤\u0002\u001a\u00020J2\u0006\u0010N\u001a\u00020OH\u0017J\u0011\u0010¥\u0002\u001a\u00020J2\u0006\u0010Q\u001a\u00020RH\u0017J\u0011\u0010¦\u0002\u001a\u00020J2\u0006\u0010T\u001a\u00020UH\u0017J\u0011\u0010§\u0002\u001a\u00020J2\u0006\u0010W\u001a\u00020XH\u0017J\u0011\u0010¨\u0002\u001a\u00020J2\u0006\u0010Z\u001a\u00020[H\u0017J\u0011\u0010©\u0002\u001a\u00020J2\u0006\u0010]\u001a\u00020^H\u0017J\u0011\u0010ª\u0002\u001a\u00020J2\u0006\u0010`\u001a\u00020aH\u0017J\u0011\u0010«\u0002\u001a\u00020J2\u0006\u0010c\u001a\u00020dH\u0017J\u0011\u0010¬\u0002\u001a\u00020J2\u0006\u0010f\u001a\u00020gH\u0017J\u0011\u0010\u00ad\u0002\u001a\u00020J2\u0006\u0010i\u001a\u00020jH\u0017J\u0011\u0010®\u0002\u001a\u00020J2\u0006\u0010l\u001a\u00020mH\u0017J\u0011\u0010¯\u0002\u001a\u00020J2\u0006\u0010o\u001a\u00020pH\u0017J#\u0010°\u0002\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020t0r2\u0006\u0010u\u001a\u00020sH\u0000¢\u0006\u0003\b±\u0002J'\u0010²\u0002\u001a\u00020/2\u0010\u0010Ì\u0001\u001a\u000b\u0012\u0002\b\u0003\u0012\u0002\b\u00030Í\u00012\n\b\u0002\u0010Ê\u0001\u001a\u00030 \u0002H\u0007J\u001a\u0010²\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\b\u0010Ê\u0001\u001a\u00030 \u0002J'\u0010²\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\t\u0010Ó\u0001\u001a\u0004\u0018\u00010s2\b\u0010Ê\u0001\u001a\u00030 \u0002H\u0016J\u001e\u0010³\u0002\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020t0r2\u0007\u0010v\u001a\u00030´\u0002H\u0016J\u0012\u0010µ\u0002\u001a\u00020J2\u0007\u0010¶\u0002\u001a\u00020\u007fH\u0016J\u0013\u0010µ\u0002\u001a\u00020J2\b\u0010·\u0002\u001a\u00030Õ\u0001H\u0016J\u0013\u0010¸\u0002\u001a\u00020J2\b\u0010¹\u0002\u001a\u00030º\u0002H\u0017J\u0013\u0010»\u0002\u001a\u00020J2\b\u0010¼\u0002\u001a\u00030À\u0001H\u0016J\u0013\u0010½\u0002\u001a\u00020J2\b\u0010¾\u0002\u001a\u00030¿\u0002H\u0016J!\u0010À\u0002\u001a\u00020J2\r\u0010\"\u001a\t\u0012\u0004\u0012\u00020!0\u008d\u00012\u0007\u0010Á\u0002\u001a\u000201H\u0007JB\u0010Â\u0002\u001a\u00020/\"\n\b\u0000\u0010Æ\u0001*\u00030Ç\u00012\u000f\u0010È\u0001\u001a\n\u0012\u0005\u0012\u0003HÆ\u00010É\u00012\b\u0010Ã\u0002\u001a\u0003HÆ\u00012\n\b\u0002\u0010Ê\u0001\u001a\u00030 \u0002H\u0007¢\u0006\u0003\u0010Ä\u0002JP\u0010Â\u0002\u001a\u00020/\"\n\b\u0000\u0010Æ\u0001*\u00030Ç\u00012\u0013\u0010Ì\u0001\u001a\u000e\u0012\u0005\u0012\u0003HÆ\u0001\u0012\u0002\b\u00030Í\u00012\b\u0010Î\u0001\u001a\u00030Ï\u00012\b\u0010Ã\u0002\u001a\u0003HÆ\u00012\n\b\u0002\u0010Ê\u0001\u001a\u00030 \u0002H\u0007¢\u0006\u0003\u0010Å\u0002J-\u0010Â\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\u0007\u0010Ñ\u0001\u001a\u00020s2\b\u0010Ã\u0002\u001a\u00030\u0096\u00022\b\u0010Ê\u0001\u001a\u00030 \u0002J:\u0010Â\u0002\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020s2\t\u0010Ó\u0001\u001a\u0004\u0018\u00010s2\u0007\u0010Ñ\u0001\u001a\u00020s2\b\u0010Ã\u0002\u001a\u00030\u0096\u00022\b\u0010Ê\u0001\u001a\u00030 \u0002H\u0016J\u0012\u0010Æ\u0002\u001a\u00020J2\u0007\u0010Ç\u0002\u001a\u000201H\u0016J\u0013\u0010È\u0002\u001a\u00020J2\b\u0010É\u0002\u001a\u00030Ê\u0002H\u0016J\u0011\u0010Ë\u0002\u001a\u00020J2\b\u0010Ì\u0002\u001a\u00030ç\u0001J\u0010\u0010Í\u0002\u001a\u00020J2\u0007\u0010Î\u0002\u001a\u000201J\u001a\u0010Ï\u0002\u001a\u00020J2\u000f\u0010Ð\u0002\u001a\n\u0012\u0005\u0012\u00030ê\u00010\u008d\u0001H\u0007J\u0013\u0010Ñ\u0002\u001a\u00020J2\n\u0010Ò\u0002\u001a\u0005\u0018\u00010Ó\u0002J\u0012\u0010Ô\u0002\u001a\u00020J2\u0007\u0010Ç\u0002\u001a\u000201H\u0016J:\u0010Õ\u0002\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020t0r2\u001d\u0010Ö\u0002\u001a\u0018\u0012\u0004\u0012\u00020s\u0018\u00010ñ\u0001j\u000b\u0012\u0004\u0012\u00020s\u0018\u0001`ò\u0001H\u0001¢\u0006\u0003\b×\u0002J\u001b\u0010Ø\u0002\u001a\u00020J2\n\u0010Ù\u0002\u001a\u0005\u0018\u00010Ú\u0002H\u0000¢\u0006\u0003\bÛ\u0002J\u0013\u0010Ü\u0002\u001a\u00020J2\b\u0010Ý\u0002\u001a\u00030Þ\u0002H\u0016J\u001c\u0010ß\u0002\u001a\u00020J2\u0007\u0010v\u001a\u00030à\u00022\b\u0010Ê\u0001\u001a\u00030á\u0002H\u0007J\t\u0010â\u0002\u001a\u00020JH\u0007J\u0013\u0010ã\u0002\u001a\u00020/2\b\u0010ä\u0002\u001a\u00030å\u0002H\u0016J\u0013\u0010æ\u0002\u001a\u00020/2\b\u0010ç\u0002\u001a\u00030è\u0002H\u0017J\u001c\u0010é\u0002\u001a\u00020/2\u0007\u0010ê\u0002\u001a\u00020s2\b\u0010ë\u0002\u001a\u00030ì\u0002H\u0017J\u0013\u0010í\u0002\u001a\u00020/2\b\u0010î\u0002\u001a\u00030ï\u0002H\u0016J\u0013\u0010ð\u0002\u001a\u00020/2\b\u0010ñ\u0002\u001a\u00030ò\u0002H\u0016J\u0013\u0010ó\u0002\u001a\u00020/2\b\u0010ô\u0002\u001a\u00030õ\u0002H\u0016J\u0013\u0010ö\u0002\u001a\u00020/2\b\u0010÷\u0002\u001a\u00030ø\u0002H\u0016J\u0013\u0010ù\u0002\u001a\u00020/2\b\u0010ú\u0002\u001a\u00030û\u0002H\u0016J\u0013\u0010ü\u0002\u001a\u00020/2\b\u0010ý\u0002\u001a\u00030þ\u0002H\u0016J\u0013\u0010ÿ\u0002\u001a\u00020/2\b\u0010\u0080\u0003\u001a\u00030\u0081\u0003H\u0016J\u0013\u0010\u0082\u0003\u001a\u00020/2\b\u0010\u0083\u0003\u001a\u00030\u0084\u0003H\u0016J\u0013\u0010\u0085\u0003\u001a\u00020/2\b\u0010\u0086\u0003\u001a\u00030\u0087\u0003H\u0016J\u0013\u0010\u0088\u0003\u001a\u00020/2\b\u0010\u0089\u0003\u001a\u00030\u008a\u0003H\u0016J\u0013\u0010\u008b\u0003\u001a\u00020/2\b\u0010\u008c\u0003\u001a\u00030\u008d\u0003H\u0016J\u0013\u0010\u008e\u0003\u001a\u00020/2\b\u0010\u008f\u0003\u001a\u00030\u0090\u0003H\u0016J\u0013\u0010\u0091\u0003\u001a\u00020/2\b\u0010\u0092\u0003\u001a\u00030\u0093\u0003H\u0016J&\u0010\u0094\u0003\u001a\n\u0012\u0005\u0012\u00030\u0095\u00030\u008d\u00012\b\u0010\u0096\u0003\u001a\u00030\u0097\u00032\t\u0010¶\u0002\u001a\u0004\u0018\u00010\u007fH\u0007J\u0007\u0010\u0098\u0003\u001a\u00020JJ\u001e\u0010\u0099\u0003\u001a\u00030\u008e\u00012\b\u0010Ã\u0001\u001a\u00030\u008c\u00022\b\u0010\u008e\u0002\u001a\u00030\u0085\u0001H\u0016J+\u0010\u009a\u0003\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020t0r2\u0006\u0010u\u001a\u00020s2\u0006\u0010v\u001a\u00020wH\u0000¢\u0006\u0003\b\u009b\u0003J\u0019\u0010\u009c\u0003\u001a\u00020J2\u000e\u0010\u009d\u0003\u001a\t\u0012\u0004\u0012\u00020J0\u009e\u0003H\u0007J\u000f\u0010\u009f\u0003\u001a\u00030\u0089\u0001*\u00030\u0089\u0001H\u0002J\r\u0010 \u0003\u001a\u000201*\u00020sH\u0002R*\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u00158@@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR0\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R*\u0010(\u001a\u0004\u0018\u00010'2\b\u0010\u0014\u001a\u0004\u0018\u00010'8@@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u000e¢\u0006\u0002\n\u0000R&\u00102\u001a\u0002012\u0006\u0010\u0014\u001a\u0002018@@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u00020\r8@X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u000e\u00109\u001a\u000201X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010;\u001a\u0004\u0018\u00010:2\b\u0010\u0014\u001a\u0004\u0018\u00010:8@@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R*\u0010A\u001a\u0004\u0018\u00010@2\b\u0010\u0014\u001a\u0004\u0018\u00010@8F@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006¢\u0003"}, d2 = {"Lcom/mapbox/maps/MapboxMap;", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;", "Lcom/mapbox/maps/plugin/delegates/MapListenerDelegate;", "Lcom/mapbox/maps/plugin/delegates/MapPluginExtensionsDelegate;", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "Lcom/mapbox/maps/MapboxStyleManager;", "Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "Lcom/mapbox/maps/plugin/delegates/MapFeatureStateDelegate;", "nativeMap", "Lcom/mapbox/maps/NativeMapImpl;", "nativeObserver", "Lcom/mapbox/maps/NativeObserver;", "styleObserver", "Lcom/mapbox/maps/StyleObserver;", "(Lcom/mapbox/maps/NativeMapImpl;Lcom/mapbox/maps/NativeObserver;Lcom/mapbox/maps/StyleObserver;)V", "pixelRatio", "", "(Lcom/mapbox/maps/NativeMapImpl;Lcom/mapbox/maps/NativeObserver;F)V", "<set-?>", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "cameraAnimationsPlugin", "getCameraAnimationsPlugin$maps_sdk_release", "()Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "setCameraAnimationsPlugin$maps_sdk_release", "(Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;)V", "cameraState", "Lcom/mapbox/maps/CameraState;", "getCameraState", "()Lcom/mapbox/maps/CameraState;", "value", "", "Lcom/mapbox/maps/MapDebugOptions;", "debugOptions", "getDebugOptions$maps_sdk_release", "()Ljava/util/Set;", "setDebugOptions$maps_sdk_release", "(Ljava/util/Set;)V", "Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;", "gesturesPlugin", "getGesturesPlugin$maps_sdk_release", "()Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;", "setGesturesPlugin$maps_sdk_release", "(Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;)V", "interactions", "", "Lcom/mapbox/common/Cancelable;", "isMapValid", "", "isStyleLoadInitiated", "isStyleLoadInitiated$maps_sdk_release", "()Z", "setStyleLoadInitiated$maps_sdk_release", "(Z)V", "getNativeObserver$maps_sdk_release", "()Lcom/mapbox/maps/NativeObserver;", "performanceCollectionStatisticsStarted", "Landroid/os/Handler;", "renderHandler", "getRenderHandler$maps_sdk_release", "()Landroid/os/Handler;", "setRenderHandler$maps_sdk_release", "(Landroid/os/Handler;)V", "Lcom/mapbox/maps/Style;", "style", "getStyle", "()Lcom/mapbox/maps/Style;", "setStyle$maps_sdk_release", "(Lcom/mapbox/maps/Style;)V", "addInteraction", "interaction", "Lcom/mapbox/maps/MapInteraction;", "addOnCameraChangeListener", "", "onCameraChangeListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnCameraChangeListener;", "addOnMapIdleListener", "onMapIdleListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapIdleListener;", "addOnMapLoadErrorListener", "onMapLoadErrorListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadErrorListener;", "addOnMapLoadedListener", "onMapLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadedListener;", "addOnRenderFrameFinishedListener", "onRenderFrameFinishedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameFinishedListener;", "addOnRenderFrameStartedListener", "onRenderFrameStartedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameStartedListener;", "addOnSourceAddedListener", "onSourceAddedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceAddedListener;", "addOnSourceDataLoadedListener", "onSourceDataLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceDataLoadedListener;", "addOnSourceRemovedListener", "onSourceRemovedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceRemovedListener;", "addOnStyleDataLoadedListener", "onStyleDataLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleDataLoadedListener;", "addOnStyleImageMissingListener", "onStyleImageMissingListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleImageMissingListener;", "addOnStyleImageUnusedListener", "onStyleImageUnusedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleImageUnusedListener;", "addOnStyleLoadedListener", "onStyleLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleLoadedListener;", "addViewAnnotation", "Lcom/mapbox/bindgen/Expected;", "", "Lcom/mapbox/bindgen/None;", "viewId", "options", "Lcom/mapbox/maps/ViewAnnotationOptions;", "addViewAnnotation$maps_sdk_release", "applyStyle", "", "function", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "cameraForCoordinateBounds", "Lcom/mapbox/maps/CameraOptions;", "bounds", "Lcom/mapbox/maps/CoordinateBounds;", "boundsPadding", "Lcom/mapbox/maps/EdgeInsets;", "bearing", "", "pitch", "maxZoom", "offset", "Lcom/mapbox/maps/ScreenCoordinate;", "(Lcom/mapbox/maps/CoordinateBounds;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;)Lcom/mapbox/maps/CameraOptions;", "cameraForCoordinates", "coordinates", "", "Lcom/mapbox/geojson/Point;", "camera", "coordinatesPadding", "(Ljava/util/List;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;)Lcom/mapbox/maps/CameraOptions;", "result", "(Ljava/util/List;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;Lkotlin/jvm/functions/Function1;)V", "box", "Lcom/mapbox/maps/ScreenBox;", "(Ljava/util/List;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;)Lcom/mapbox/maps/CameraOptions;", "cameraForDrag", "fromPoint", "toPoint", "cameraForGeometry", "geometry", "Lcom/mapbox/geojson/Geometry;", "geometryPadding", "(Lcom/mapbox/geojson/Geometry;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;)Lcom/mapbox/maps/CameraOptions;", "checkNativeMap", "methodName", "checkMainThread", "coordinateBoundsForCamera", "coordinateBoundsForCameraUnwrapped", "coordinateBoundsForRect", "rectF", "Landroid/graphics/RectF;", "coordinateBoundsZoomForCamera", "Lcom/mapbox/maps/CoordinateBoundsZoom;", "coordinateBoundsZoomForCameraUnwrapped", "coordinateForPixel", "pixel", "coordinateForProjectedMeters", "projectedMeters", "Lcom/mapbox/maps/ProjectedMeters;", "coordinateInfoForPixel", "Lcom/mapbox/maps/CoordinateInfo;", "coordinatesForPixels", "pixels", "coordinatesInfoForPixels", "createRecorder", "Lcom/mapbox/maps/MapboxMapRecorder;", "dispatch", "platformEventInfo", "Lcom/mapbox/maps/PlatformEventInfo;", "executeOnRenderThread", "runnable", "Ljava/lang/Runnable;", "getAttributions", "getBounds", "Lcom/mapbox/maps/CameraBounds;", "getCenterAltitudeMode", "Lcom/mapbox/maps/MapCenterAltitudeMode;", "getDebug", "getElevation", "coordinate", "(Lcom/mapbox/geojson/Point;)Ljava/lang/Double;", "getFeatureState", "FS", "Lcom/mapbox/maps/interactions/FeatureState;", "featuresetFeature", "Lcom/mapbox/maps/interactions/FeaturesetFeature;", "callback", "Lcom/mapbox/maps/interactions/FeatureStateCallback;", "descriptor", "Lcom/mapbox/maps/interactions/TypedFeaturesetDescriptor;", "id", "Lcom/mapbox/maps/FeaturesetFeatureId;", "sourceId", "featureId", "Lcom/mapbox/maps/QueryFeatureStateCallback;", "sourceLayerId", "getFreeCameraOptions", "Lcom/mapbox/maps/FreeCameraOptions;", "getGeoJsonClusterChildren", "sourceIdentifier", "cluster", "Lcom/mapbox/geojson/Feature;", "Lcom/mapbox/maps/QueryFeatureExtensionCallback;", "getGeoJsonClusterExpansionZoom", "getGeoJsonClusterLeaves", MapboxMap.QFE_LIMIT, "", "getMapOptions", "Lcom/mapbox/maps/MapOptions;", "getMetersPerPixelAtLatitude", TSGeofence.FIELD_LATITUDE, "zoom", "getNativeMap", "Lcom/mapbox/maps/Map;", "getPrefetchZoomDelta", "", "getRenderWorldCopies", "getScreenCullingShape", "Lcom/mapbox/maps/Vec2;", "getSize", "Lcom/mapbox/maps/Size;", "getStyleDeprecated", "onStyleLoaded", "Lcom/mapbox/maps/Style$OnStyleLoaded;", "getViewAnnotationAvoidLayers", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "getViewAnnotationAvoidLayers$maps_sdk_release", "getViewAnnotationOptions", TSGeofence.FIELD_IDENTIFIER, "getViewAnnotationOptions$maps_sdk_release", "initializeStyleLoad", "styleDataStyleLoadedListener", "styleDataSpritesLoadedListener", "styleDataSourcesLoadedListener", "isGestureInProgress", "isUserAnimationInProgress", "isValid", "loadStyle", "styleExtension", "Lcom/mapbox/maps/extension/style/StyleContract$StyleExtension;", "styleTransitionOptions", "Lcom/mapbox/maps/TransitionOptions;", "loadStyleJson", "styleJson", "loadStyleUri", "styleUri", "onDestroy", "onDestroy$maps_sdk_release", "pixelForCoordinate", "pixelsForCoordinates", "project", "Lcom/mapbox/maps/MercatorCoordinate;", "point", "zoomScale", "projectedMetersForCoordinate", "queryRenderedFeatures", "Lcom/mapbox/maps/RenderedQueryGeometry;", "Lcom/mapbox/maps/RenderedQueryOptions;", "Lcom/mapbox/maps/QueryRenderedFeaturesCallback;", "FF", ViewProps.FILTER, "Lcom/mapbox/bindgen/Value;", "Lcom/mapbox/maps/interactions/QueryRenderedFeaturesetFeaturesCallback;", "querySourceFeatures", "Lcom/mapbox/maps/SourceQueryOptions;", "Lcom/mapbox/maps/QuerySourceFeaturesCallback;", "reduceMemoryUse", "removeFeatureState", "FSK", "Lcom/mapbox/maps/interactions/FeatureStateKey;", "stateKey", "Lcom/mapbox/maps/FeatureStateOperationCallback;", "(Lcom/mapbox/maps/interactions/FeaturesetFeature;Lcom/mapbox/maps/interactions/FeatureStateKey;Lcom/mapbox/maps/FeatureStateOperationCallback;)Lcom/mapbox/common/Cancelable;", "(Lcom/mapbox/maps/interactions/TypedFeaturesetDescriptor;Lcom/mapbox/maps/FeaturesetFeatureId;Lcom/mapbox/maps/interactions/FeatureStateKey;Lcom/mapbox/maps/FeatureStateOperationCallback;)Lcom/mapbox/common/Cancelable;", "removeOnCameraChangeListener", "removeOnMapIdleListener", "removeOnMapLoadErrorListener", "removeOnMapLoadedListener", "removeOnRenderFrameFinishedListener", "removeOnRenderFrameStartedListener", "removeOnSourceAddedListener", "removeOnSourceDataLoadedListener", "removeOnSourceRemovedListener", "removeOnStyleDataLoadedListener", "removeOnStyleImageMissingListener", "removeOnStyleImageUnusedListener", "removeOnStyleLoadedListener", "removeViewAnnotation", "removeViewAnnotation$maps_sdk_release", "resetFeatureStates", "setBounds", "Lcom/mapbox/maps/CameraBoundsOptions;", "setCamera", "cameraOptions", "freeCameraOptions", "setCameraAnimationHint", "cameraAnimationHint", "Lcom/mapbox/maps/CameraAnimationHint;", "setCenterAltitudeMode", "mode", "setConstrainMode", "constrainMode", "Lcom/mapbox/maps/ConstrainMode;", "setDebug", ViewProps.ENABLED, "setFeatureState", RemoteConfigConstants.ResponseFieldKey.STATE, "(Lcom/mapbox/maps/interactions/FeaturesetFeature;Lcom/mapbox/maps/interactions/FeatureState;Lcom/mapbox/maps/FeatureStateOperationCallback;)Lcom/mapbox/common/Cancelable;", "(Lcom/mapbox/maps/interactions/TypedFeaturesetDescriptor;Lcom/mapbox/maps/FeaturesetFeatureId;Lcom/mapbox/maps/interactions/FeatureState;Lcom/mapbox/maps/FeatureStateOperationCallback;)Lcom/mapbox/common/Cancelable;", "setGestureInProgress", "inProgress", "setNorthOrientation", "northOrientation", "Lcom/mapbox/maps/NorthOrientation;", "setPrefetchZoomDelta", "delta", "setRenderWorldCopies", "renderWorldCopies", "setScreenCullingShape", "shape", "setTileCacheBudget", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "setUserAnimationInProgress", "setViewAnnotationAvoidLayers", "layerIds", "setViewAnnotationAvoidLayers$maps_sdk_release", "setViewAnnotationPositionsUpdateListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/DelegatingViewAnnotationPositionsUpdateListener;", "setViewAnnotationPositionsUpdateListener$maps_sdk_release", "setViewportMode", "viewportMode", "Lcom/mapbox/maps/ViewportMode;", "startPerformanceStatisticsCollection", "Lcom/mapbox/maps/PerformanceStatisticsOptions;", "Lcom/mapbox/maps/PerformanceStatisticsCallback;", "stopPerformanceStatisticsCollection", "subscribeCameraChanged", "cameraChangedCallback", "Lcom/mapbox/maps/CameraChangedCallback;", "subscribeCameraChangedCoalesced", "cameraChangedCoalescedCallback", "Lcom/mapbox/maps/CameraChangedCoalescedCallback;", "subscribeGenericEvent", "eventName", "genericEventCallback", "Lcom/mapbox/maps/GenericEventCallback;", "subscribeMapIdle", "mapIdleCallback", "Lcom/mapbox/maps/MapIdleCallback;", "subscribeMapLoaded", "mapLoadedCallback", "Lcom/mapbox/maps/MapLoadedCallback;", "subscribeMapLoadingError", "mapLoadingErrorCallback", "Lcom/mapbox/maps/MapLoadingErrorCallback;", "subscribeRenderFrameFinished", "renderFrameFinishedCallback", "Lcom/mapbox/maps/RenderFrameFinishedCallback;", "subscribeRenderFrameStarted", "renderFrameStartedCallback", "Lcom/mapbox/maps/RenderFrameStartedCallback;", "subscribeResourceRequest", "resourceRequestCallback", "Lcom/mapbox/maps/ResourceRequestCallback;", "subscribeSourceAdded", "sourceAddedCallback", "Lcom/mapbox/maps/SourceAddedCallback;", "subscribeSourceDataLoaded", "sourceDataLoadedCallback", "Lcom/mapbox/maps/SourceDataLoadedCallback;", "subscribeSourceRemoved", "sourceRemovedCallback", "Lcom/mapbox/maps/SourceRemovedCallback;", "subscribeStyleDataLoaded", "styleDataLoadedCallback", "Lcom/mapbox/maps/StyleDataLoadedCallback;", "subscribeStyleImageMissing", "styleImageMissingCallback", "Lcom/mapbox/maps/StyleImageMissingCallback;", "subscribeStyleImageRemoveUnused", "styleImageRemoveUnusedCallback", "Lcom/mapbox/maps/StyleImageRemoveUnusedCallback;", "subscribeStyleLoaded", "styleLoadedCallback", "Lcom/mapbox/maps/StyleLoadedCallback;", "tileCover", "Lcom/mapbox/maps/CanonicalTileID;", "tileCoverOptions", "Lcom/mapbox/maps/TileCoverOptions;", "triggerRepaint", "unproject", "updateViewAnnotation", "updateViewAnnotation$maps_sdk_release", "whenSizeReady", TSScheduleManager.ACTION_NAME, "Lkotlin/Function0;", "clampScreenCoordinate", "isValidUri", "Companion", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxMap extends MapboxStyleManager implements MapTransformDelegate, MapProjectionDelegate, MapFeatureQueryDelegate, MapListenerDelegate, MapPluginExtensionsDelegate, MapCameraManagerDelegate, MapInteractionDelegate, MapFeatureStateDelegate {

    public static final Companion INSTANCE = new Companion(null);
    public static final String QFE_CHILDREN = "children";
    public static final long QFE_DEFAULT_LIMIT = 10;
    public static final long QFE_DEFAULT_OFFSET = 0;
    public static final String QFE_EXPANSION_ZOOM = "expansion-zoom";
    public static final String QFE_LEAVES = "leaves";
    public static final String QFE_LIMIT = "limit";
    public static final String QFE_OFFSET = "offset";
    public static final String QFE_SUPER_CLUSTER = "supercluster";
    private static final String TAG = "Mbgl-MapboxMap";
    private CameraAnimationsPlugin cameraAnimationsPlugin;
    private GesturesPlugin gesturesPlugin;
    private final List<Cancelable> interactions;
    private boolean isMapValid;
    private boolean isStyleLoadInitiated;
    private final NativeMapImpl nativeMap;
    private final NativeObserver nativeObserver;
    private boolean performanceCollectionStatisticsStarted;
    private Handler renderHandler;
    private Style style;
    private final StyleObserver styleObserver;

    public MapboxMap(NativeMapImpl nativeMapImpl, NativeObserver nativeObserver, float f, DefaultConstructorMarker defaultConstructorMarker) {
        this(nativeMapImpl, nativeObserver, f);
    }

    public MapboxMap(NativeMapImpl nativeMapImpl, NativeObserver nativeObserver, StyleObserver styleObserver, DefaultConstructorMarker defaultConstructorMarker) {
        this(nativeMapImpl, nativeObserver, styleObserver);
    }

    @JvmStatic
    public static final void clearData(AsyncOperationResultCallback asyncOperationResultCallback) {
        INSTANCE.clearData(asyncOperationResultCallback);
    }

    public static final void getFeatureState$lambda$31() {
    }

    public static final void removeFeatureState$lambda$37() {
    }

    public static final void setFeatureState$lambda$25() {
    }

    public final Cancelable getGeoJsonClusterLeaves(String sourceIdentifier, Feature cluster, long j, QueryFeatureExtensionCallback callback) {
        Intrinsics.checkNotNullParameter(sourceIdentifier, "sourceIdentifier");
        Intrinsics.checkNotNullParameter(cluster, "cluster");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return getGeoJsonClusterLeaves$default(this, sourceIdentifier, cluster, j, 0L, callback, 8, null);
    }

    public final Cancelable getGeoJsonClusterLeaves(String sourceIdentifier, Feature cluster, QueryFeatureExtensionCallback callback) {
        Intrinsics.checkNotNullParameter(sourceIdentifier, "sourceIdentifier");
        Intrinsics.checkNotNullParameter(cluster, "cluster");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return getGeoJsonClusterLeaves$default(this, sourceIdentifier, cluster, 0L, 0L, callback, 12, null);
    }

    public final void loadStyle(StyleContract.StyleExtension styleExtension) {
        Intrinsics.checkNotNullParameter(styleExtension, "styleExtension");
        loadStyle$default(this, styleExtension, (Style.OnStyleLoaded) null, 2, (Object) null);
    }

    public final void loadStyle(String style) {
        Intrinsics.checkNotNullParameter(style, "style");
        loadStyle$default(this, style, (Style.OnStyleLoaded) null, 2, (Object) null);
    }

    public final <FF extends FeaturesetFeature<?>> Cancelable queryRenderedFeatures(TypedFeaturesetDescriptor<?, FF> descriptor, RenderedQueryGeometry renderedQueryGeometry, QueryRenderedFeaturesetFeaturesCallback<FF> callback) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return queryRenderedFeatures$default(this, descriptor, renderedQueryGeometry, null, callback, 4, null);
    }

    public final <FF extends FeaturesetFeature<?>> Cancelable queryRenderedFeatures(TypedFeaturesetDescriptor<?, FF> descriptor, QueryRenderedFeaturesetFeaturesCallback<FF> callback) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return queryRenderedFeatures$default(this, descriptor, null, null, callback, 6, null);
    }

    public final <FS extends FeatureState, FSK extends FeatureStateKey<FS>> Cancelable removeFeatureState(FeaturesetFeature<FS> featuresetFeature) {
        Intrinsics.checkNotNullParameter(featuresetFeature, "featuresetFeature");
        return removeFeatureState$default(this, featuresetFeature, null, null, 6, null);
    }

    public final <FS extends FeatureState, FSK extends FeatureStateKey<FS>> Cancelable removeFeatureState(FeaturesetFeature<FS> featuresetFeature, FSK fsk) {
        Intrinsics.checkNotNullParameter(featuresetFeature, "featuresetFeature");
        return removeFeatureState$default(this, featuresetFeature, fsk, null, 4, null);
    }

    public final <FS extends FeatureState, FSK extends FeatureStateKey<FS>> Cancelable removeFeatureState(TypedFeaturesetDescriptor<FS, ?> descriptor, FeaturesetFeatureId id) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(id, "id");
        return removeFeatureState$default(this, descriptor, id, null, null, 12, null);
    }

    public final <FS extends FeatureState, FSK extends FeatureStateKey<FS>> Cancelable removeFeatureState(TypedFeaturesetDescriptor<FS, ?> descriptor, FeaturesetFeatureId id, FSK fsk) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(id, "id");
        return removeFeatureState$default(this, descriptor, id, fsk, null, 8, null);
    }

    public final Cancelable resetFeatureStates(TypedFeaturesetDescriptor<?, ?> descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return resetFeatureStates$default(this, descriptor, null, 2, null);
    }

    public final <FS extends FeatureState> Cancelable setFeatureState(FeaturesetFeature<FS> featuresetFeature, FS state) {
        Intrinsics.checkNotNullParameter(featuresetFeature, "featuresetFeature");
        Intrinsics.checkNotNullParameter(state, "state");
        return setFeatureState$default(this, featuresetFeature, state, null, 4, null);
    }

    public final <FS extends FeatureState> Cancelable setFeatureState(TypedFeaturesetDescriptor<FS, ?> descriptor, FeaturesetFeatureId id, FS state) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        return setFeatureState$default(this, descriptor, id, state, null, 8, null);
    }

    public final boolean getIsMapValid() {
        return this.isMapValid;
    }

    public final NativeObserver getNativeObserver() {
        return this.nativeObserver;
    }

    public final void setStyle$maps_sdk_release(Style style) {
        this.style = style;
    }

    public final Style getStyleDeprecated() {
        checkNativeMap$default(this, "getStyle", false, 2, null);
        return this.style;
    }

    public final boolean getIsStyleLoadInitiated() {
        return this.isStyleLoadInitiated;
    }

    public final void setStyleLoadInitiated$maps_sdk_release(boolean z) {
        this.isStyleLoadInitiated = z;
    }

    public final Handler getRenderHandler() {
        return this.renderHandler;
    }

    public final void setRenderHandler$maps_sdk_release(Handler handler) {
        this.renderHandler = handler;
    }

    @Override
    public CameraState getCameraState() {
        checkNativeMap$default(this, "cameraState", false, 2, null);
        return this.nativeMap.getCameraState();
    }

    public final CameraAnimationsPlugin getCameraAnimationsPlugin() {
        return this.cameraAnimationsPlugin;
    }

    public final void setCameraAnimationsPlugin$maps_sdk_release(CameraAnimationsPlugin cameraAnimationsPlugin) {
        this.cameraAnimationsPlugin = cameraAnimationsPlugin;
    }

    public final GesturesPlugin getGesturesPlugin() {
        return this.gesturesPlugin;
    }

    public final void setGesturesPlugin$maps_sdk_release(GesturesPlugin gesturesPlugin) {
        this.gesturesPlugin = gesturesPlugin;
    }

    private MapboxMap(NativeMapImpl nativeMapImpl, NativeObserver nativeObserver, StyleObserver styleObserver) {
        super(nativeMapImpl.getMap(), 1.0f, new MapLoadingErrorDelegate() {
            @Override
            public final void sendMapLoadingError(MapLoadingError mapLoadingError) {
                Intrinsics.checkNotNullParameter(mapLoadingError, "it");
            }
        });
        this.isMapValid = true;
        this.interactions = new ArrayList();
        this.nativeMap = nativeMapImpl;
        this.nativeObserver = nativeObserver;
        this.styleObserver = styleObserver;
    }

    private MapboxMap(NativeMapImpl nativeMapImpl, final NativeObserver nativeObserver, float f) {
        super(nativeMapImpl.getMap(), f, new MapLoadingErrorDelegate() {
            @Override
            public final void sendMapLoadingError(MapLoadingError mapLoadingError) {
                MapboxMap._init_$lambda$1(nativeObserver, mapLoadingError);
            }
        });
        this.isMapValid = true;
        this.interactions = new ArrayList();
        this.nativeMap = nativeMapImpl;
        this.nativeObserver = nativeObserver;
        this.styleObserver = new StyleObserver(nativeMapImpl.getMap(), new Style.OnStyleLoaded() {
            @Override
            public final void onStyleLoaded(Style style) {
                MapboxMap._init_$lambda$3(this.f$0, style);
            }
        }, nativeObserver, f, new MapLoadingErrorDelegate() {
            @Override
            public final void sendMapLoadingError(MapLoadingError mapLoadingError) {
                MapboxMap._init_$lambda$2(this.f$0, mapLoadingError);
            }
        });
    }

    public static final void _init_$lambda$1(NativeObserver nativeObserver, MapLoadingError error) {
        Intrinsics.checkNotNullParameter(nativeObserver, "$nativeObserver");
        Intrinsics.checkNotNullParameter(error, "error");
        nativeObserver.sendMapLoadingError(error);
    }

    public static final void _init_$lambda$2(MapboxMap this$0, MapLoadingError error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "error");
        this$0.nativeObserver.sendMapLoadingError(error);
    }

    public static final void _init_$lambda$3(MapboxMap this$0, Style style) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(style, "style");
        this$0.style = style;
    }

    public final MapboxMapRecorder createRecorder() {
        Expected<String, MapRecorder> expectedCreateInstance = MapRecorder.createInstance(this.nativeMap.getMap());
        if (expectedCreateInstance.isValue()) {
            MapRecorder value = expectedCreateInstance.getValue();
            Intrinsics.checkNotNull(value);
            return new MapboxMapRecorder(value);
        }
        String error = expectedCreateInstance.getError();
        if (error == null) {
            error = "Error occurred in MapboxMap.createRecorder!";
        }
        throw new RuntimeException(error);
    }

    private final boolean isValidUri(String str) {
        return StringsKt.startsWith(str, "mapbox://", true) || StringsKt.startsWith(str, "asset://", true) || StringsKt.startsWith(str, "file://", true) || URLUtil.isValidUrl(str);
    }

    private final void applyStyle(String style) {
        if (isValidUri(style)) {
            this.nativeMap.setStyleURI(style);
            return;
        }
        NativeMapImpl nativeMapImpl = this.nativeMap;
        String str = style;
        if (StringsKt.isBlank(str)) {
            str = "{}";
        }
        nativeMapImpl.setStyleJSON(str);
    }

    public static void loadStyle$default(MapboxMap mapboxMap, String str, Style.OnStyleLoaded onStyleLoaded, int i, Object obj) {
        if ((i & 2) != 0) {
            onStyleLoaded = null;
        }
        mapboxMap.loadStyle(str, onStyleLoaded);
    }

    public final void loadStyle(String style, Style.OnStyleLoaded onStyleLoaded) {
        Intrinsics.checkNotNullParameter(style, "style");
        checkNativeMap$default(this, "loadStyle", false, 2, null);
        initializeStyleLoad$default(this, onStyleLoaded, new Style.OnStyleLoaded() {
            @Override
            public final void onStyleLoaded(Style style2) {
                Intrinsics.checkNotNullParameter(style2, "it");
            }
        }, null, null, 12, null);
        applyStyle(style);
    }

    public static void loadStyleUri$default(MapboxMap mapboxMap, String str, TransitionOptions transitionOptions, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            transitionOptions = null;
        }
        if ((i & 4) != 0) {
            onStyleLoaded = null;
        }
        if ((i & 8) != 0) {
            onMapLoadErrorListener = null;
        }
        mapboxMap.loadStyleUri(str, transitionOptions, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener will not be triggered anymore, please refer to documentation for new method to understand how to handle errors.", replaceWith = @ReplaceWith(expression = "loadStyle(style, onStyleLoaded)", imports = {}))
    public final void loadStyleUri(String styleUri, final TransitionOptions styleTransitionOptions, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(styleUri, "styleUri");
        loadStyle(StyleExtensionImplKt.style(styleUri, new Function1<StyleExtensionImpl.Builder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(StyleExtensionImpl.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            public final void invoke2(StyleExtensionImpl.Builder style) {
                Intrinsics.checkNotNullParameter(style, "$this$style");
                TransitionOptions transitionOptions = styleTransitionOptions;
                if (transitionOptions != null) {
                    TransitionOptions.Builder builder = new TransitionOptions.Builder();
                    transitionOptions.toBuilder();
                    TransitionOptions transition = builder.build();
                    Intrinsics.checkNotNullExpressionValue(transition, "transition");
                    style.setTransition(transition);
                }
            }
        }), onStyleLoaded);
    }

    public static void loadStyleUri$default(MapboxMap mapboxMap, String str, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            onStyleLoaded = null;
        }
        if ((i & 4) != 0) {
            onMapLoadErrorListener = null;
        }
        mapboxMap.loadStyleUri(str, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener will not be triggered anymore, please refer to documentation for new method to understand how to handle errors.", replaceWith = @ReplaceWith(expression = "loadStyle(style, onStyleLoaded)", imports = {}))
    public final void loadStyleUri(String styleUri, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(styleUri, "styleUri");
        loadStyleUri(styleUri, null, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener will not be triggered anymore, please refer to documentation for new method to understand how to handle errors.", replaceWith = @ReplaceWith(expression = "loadStyle(style, onStyleLoaded)", imports = {}))
    public final void loadStyleUri(String styleUri, Style.OnStyleLoaded onStyleLoaded) {
        Intrinsics.checkNotNullParameter(styleUri, "styleUri");
        Intrinsics.checkNotNullParameter(onStyleLoaded, "onStyleLoaded");
        loadStyleUri(styleUri, null, onStyleLoaded, null);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener will not be triggered anymore, please refer to documentation for new method to understand how to handle errors.", replaceWith = @ReplaceWith(expression = "loadStyle(style)", imports = {}))
    public final void loadStyleUri(String styleUri) {
        Intrinsics.checkNotNullParameter(styleUri, "styleUri");
        loadStyleUri(styleUri, null, null, null);
    }

    public static void loadStyleJson$default(MapboxMap mapboxMap, String str, TransitionOptions transitionOptions, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            transitionOptions = null;
        }
        if ((i & 4) != 0) {
            onStyleLoaded = null;
        }
        if ((i & 8) != 0) {
            onMapLoadErrorListener = null;
        }
        mapboxMap.loadStyleJson(str, transitionOptions, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener will not be triggered anymore, please refer to documentation for new method to understand how to handle errors.", replaceWith = @ReplaceWith(expression = "loadStyle(style, onStyleLoaded)", imports = {}))
    public final void loadStyleJson(String styleJson, TransitionOptions styleTransitionOptions, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(styleJson, "styleJson");
        loadStyleUri(styleJson, styleTransitionOptions, onStyleLoaded, onMapLoadErrorListener);
    }

    public static void loadStyleJson$default(MapboxMap mapboxMap, String str, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            onStyleLoaded = null;
        }
        if ((i & 4) != 0) {
            onMapLoadErrorListener = null;
        }
        mapboxMap.loadStyleJson(str, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener will not be triggered anymore, please refer to documentation for new method to understand how to handle errors.", replaceWith = @ReplaceWith(expression = "loadStyle(style, onStyleLoaded)", imports = {}))
    public final void loadStyleJson(String styleJson, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(styleJson, "styleJson");
        loadStyleUri(styleJson, null, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated.", replaceWith = @ReplaceWith(expression = "loadStyle(style, onStyleLoaded)", imports = {}))
    public final void loadStyleJson(String styleJson, Style.OnStyleLoaded onStyleLoaded) {
        Intrinsics.checkNotNullParameter(styleJson, "styleJson");
        Intrinsics.checkNotNullParameter(onStyleLoaded, "onStyleLoaded");
        loadStyleUri(styleJson, null, onStyleLoaded, null);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated.", replaceWith = @ReplaceWith(expression = "loadStyle(style)", imports = {}))
    public final void loadStyleJson(String styleJson) {
        Intrinsics.checkNotNullParameter(styleJson, "styleJson");
        loadStyleUri(styleJson, null, null, null);
    }

    public static void loadStyle$default(MapboxMap mapboxMap, StyleContract.StyleExtension styleExtension, Style.OnStyleLoaded onStyleLoaded, int i, Object obj) {
        if ((i & 2) != 0) {
            onStyleLoaded = null;
        }
        mapboxMap.loadStyle(styleExtension, onStyleLoaded);
    }

    public final void loadStyle(final StyleContract.StyleExtension styleExtension, Style.OnStyleLoaded onStyleLoaded) {
        Intrinsics.checkNotNullParameter(styleExtension, "styleExtension");
        checkNativeMap$default(this, "loadStyle", false, 2, null);
        initializeStyleLoad(onStyleLoaded, new Style.OnStyleLoaded() {
            @Override
            public final void onStyleLoaded(Style style) {
                MapboxMap.loadStyle$lambda$7(styleExtension, style);
            }
        }, new Style.OnStyleLoaded() {
            @Override
            public final void onStyleLoaded(Style style) {
                MapboxMap.loadStyle$lambda$13(styleExtension, style);
            }
        }, new Style.OnStyleLoaded() {
            @Override
            public final void onStyleLoaded(Style style) {
                MapboxMap.loadStyle$lambda$10(styleExtension, style);
            }
        });
        applyStyle(styleExtension.getStyle());
    }

    public static final void loadStyle$lambda$7(StyleContract.StyleExtension styleExtension, Style style) {
        Intrinsics.checkNotNullParameter(styleExtension, "$styleExtension");
        Intrinsics.checkNotNullParameter(style, "style");
        StyleContract.StyleLightExtension flatLight = styleExtension.getFlatLight();
        if (flatLight != null) {
            flatLight.bindTo(style);
        }
        StyleContract.StyleLightExtension dynamicLight = styleExtension.getDynamicLight();
        if (dynamicLight != null) {
            dynamicLight.bindTo(style);
        }
        StyleContract.StyleTerrainExtension terrain = styleExtension.getTerrain();
        if (terrain != null) {
            terrain.bindTo(style);
        }
        StyleContract.StyleAtmosphereExtension atmosphere = styleExtension.getAtmosphere();
        if (atmosphere != null) {
            atmosphere.bindTo(style);
        }
        StyleContract.StyleProjectionExtension projection = styleExtension.getProjection();
        if (projection != null) {
            projection.bindTo(style);
        }
        TransitionOptions transition = styleExtension.getTransition();
        if (transition != null) {
            style.setStyleTransition(transition);
        }
        StyleContract.StyleRainExtension rain = styleExtension.getRain();
        if (rain != null) {
            rain.bindTo(style);
        }
        StyleContract.StyleSnowExtension snow = styleExtension.getSnow();
        if (snow != null) {
            snow.bindTo(style);
        }
        ColorTheme colorTheme = styleExtension.getColorTheme();
        if (colorTheme != null) {
            style.setStyleColorTheme(colorTheme);
        }
    }

    public static final void loadStyle$lambda$10(StyleContract.StyleExtension styleExtension, Style style) {
        Intrinsics.checkNotNullParameter(styleExtension, "$styleExtension");
        Intrinsics.checkNotNullParameter(style, "style");
        Iterator<T> it = styleExtension.getSources().iterator();
        while (it.hasNext()) {
            ((StyleContract.StyleSourceExtension) it.next()).bindTo(style);
        }
        Iterator<T> it2 = styleExtension.getLayers().iterator();
        while (it2.hasNext()) {
            Pair pair = (Pair) it2.next();
            ((StyleContract.StyleLayerExtension) pair.component1()).bindTo(style, (LayerPosition) pair.component2());
        }
    }

    public static final void loadStyle$lambda$13(StyleContract.StyleExtension styleExtension, Style style) {
        Intrinsics.checkNotNullParameter(styleExtension, "$styleExtension");
        Intrinsics.checkNotNullParameter(style, "style");
        Iterator<T> it = styleExtension.getImages().iterator();
        while (it.hasNext()) {
            ((StyleContract.StyleImageExtension) it.next()).bindTo(style);
        }
        Iterator<T> it2 = styleExtension.getModels().iterator();
        while (it2.hasNext()) {
            ((StyleContract.StyleModelExtension) it2.next()).bindTo(style);
        }
    }

    public static void loadStyle$default(MapboxMap mapboxMap, StyleContract.StyleExtension styleExtension, TransitionOptions transitionOptions, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            transitionOptions = null;
        }
        if ((i & 4) != 0) {
            onStyleLoaded = null;
        }
        if ((i & 8) != 0) {
            onMapLoadErrorListener = null;
        }
        mapboxMap.loadStyle(styleExtension, transitionOptions, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener and styleTransitionOptions will not be applied anymore, please refer to documentation for new method to understand how to apply them properly.", replaceWith = @ReplaceWith(expression = "loadStyle(styleExtension, onStyleLoaded)", imports = {}))
    public final void loadStyle(StyleContract.StyleExtension styleExtension, TransitionOptions styleTransitionOptions, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(styleExtension, "styleExtension");
        loadStyle(styleExtension, onStyleLoaded);
    }

    public static void loadStyle$default(MapboxMap mapboxMap, StyleContract.StyleExtension styleExtension, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            onStyleLoaded = null;
        }
        if ((i & 4) != 0) {
            onMapLoadErrorListener = null;
        }
        mapboxMap.loadStyle(styleExtension, onStyleLoaded, onMapLoadErrorListener);
    }

    @Deprecated(message = "Loading style was revisited in v11, this method is deprecated. IMPORTANT: onMapLoadErrorListener will not be triggered anymore, please refer to documentation for new method to understand how to handle errors.", replaceWith = @ReplaceWith(expression = "loadStyle(styleExtension, onStyleLoaded)", imports = {}))
    public final void loadStyle(StyleContract.StyleExtension styleExtension, Style.OnStyleLoaded onStyleLoaded, OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(styleExtension, "styleExtension");
        loadStyle(styleExtension, onStyleLoaded);
    }

    static void initializeStyleLoad$default(MapboxMap mapboxMap, Style.OnStyleLoaded onStyleLoaded, Style.OnStyleLoaded onStyleLoaded2, Style.OnStyleLoaded onStyleLoaded3, Style.OnStyleLoaded onStyleLoaded4, int i, Object obj) {
        if ((i & 1) != 0) {
            onStyleLoaded = null;
        }
        if ((i & 4) != 0) {
            onStyleLoaded3 = null;
        }
        if ((i & 8) != 0) {
            onStyleLoaded4 = null;
        }
        mapboxMap.initializeStyleLoad(onStyleLoaded, onStyleLoaded2, onStyleLoaded3, onStyleLoaded4);
    }

    private final void initializeStyleLoad(Style.OnStyleLoaded onStyleLoaded, Style.OnStyleLoaded styleDataStyleLoadedListener, Style.OnStyleLoaded styleDataSpritesLoadedListener, Style.OnStyleLoaded styleDataSourcesLoadedListener) {
        this.style = null;
        this.styleObserver.setLoadStyleListener(onStyleLoaded, styleDataStyleLoadedListener, styleDataSpritesLoadedListener, styleDataSourcesLoadedListener);
        this.isStyleLoadInitiated = true;
    }

    public final void getStyle(Style.OnStyleLoaded onStyleLoaded) {
        Intrinsics.checkNotNullParameter(onStyleLoaded, "onStyleLoaded");
        Unit unit = null;
        checkNativeMap$default(this, "getStyle", false, 2, null);
        Style styleDeprecated = getStyleDeprecated();
        if (styleDeprecated != null) {
            onStyleLoaded.onStyleLoaded(styleDeprecated);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            this.styleObserver.addGetStyleListener(onStyleLoaded);
        }
    }

    @Override
    public void setCamera(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        checkNativeMap$default(this, "setCamera", false, 2, null);
        this.nativeMap.setCamera(cameraOptions);
    }

    @Override
    public void setGestureInProgress(boolean inProgress) {
        checkNativeMap$default(this, "setGestureInProgress", false, 2, null);
        this.nativeMap.setGestureInProgress(inProgress);
    }

    @Override
    public boolean isGestureInProgress() {
        checkNativeMap$default(this, "isGestureInProgress", false, 2, null);
        return this.nativeMap.isGestureInProgress();
    }

    @Override
    public void setNorthOrientation(NorthOrientation northOrientation) {
        Intrinsics.checkNotNullParameter(northOrientation, "northOrientation");
        checkNativeMap$default(this, "setNorthOrientation", false, 2, null);
        this.nativeMap.setNorthOrientation(northOrientation);
    }

    @Override
    public void setConstrainMode(ConstrainMode constrainMode) {
        Intrinsics.checkNotNullParameter(constrainMode, "constrainMode");
        checkNativeMap$default(this, "setConstrainMode", false, 2, null);
        this.nativeMap.setConstrainMode(constrainMode);
    }

    @Override
    public void setViewportMode(ViewportMode viewportMode) {
        Intrinsics.checkNotNullParameter(viewportMode, "viewportMode");
        checkNativeMap$default(this, "setViewportMode", false, 2, null);
        this.nativeMap.setViewportMode(viewportMode);
    }

    @Override
    public Expected<String, None> setBounds(CameraBoundsOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        checkNativeMap$default(this, "setBounds", false, 2, null);
        return this.nativeMap.setBounds(options);
    }

    @Override
    public CameraBounds getBounds() {
        checkNativeMap$default(this, "getBounds", false, 2, null);
        return this.nativeMap.getBounds();
    }

    @Override
    public void setUserAnimationInProgress(boolean inProgress) {
        checkNativeMap$default(this, "setUserAnimationInProgress", false, 2, null);
        this.nativeMap.setUserAnimationInProgress(inProgress);
    }

    @Override
    public void setCameraAnimationHint(CameraAnimationHint cameraAnimationHint) {
        Intrinsics.checkNotNullParameter(cameraAnimationHint, "cameraAnimationHint");
        checkNativeMap$default(this, "setCameraAnimationHint", false, 2, null);
        this.nativeMap.setCameraAnimationHint(cameraAnimationHint);
    }

    @Override
    public boolean isUserAnimationInProgress() {
        checkNativeMap$default(this, "isUserAnimationInProgress", false, 2, null);
        return this.nativeMap.isUserAnimationInProgress();
    }

    public final void setPrefetchZoomDelta(byte delta) {
        checkNativeMap$default(this, "setPrefetchZoomDelta", false, 2, null);
        this.nativeMap.setPrefetchZoomDelta(delta);
    }

    public final byte getPrefetchZoomDelta() {
        checkNativeMap$default(this, "getPrefetchZoomDelta", false, 2, null);
        return this.nativeMap.getPrefetchZoomDelta();
    }

    @Override
    public MapOptions getMapOptions() {
        checkNativeMap$default(this, "getMapOptions", false, 2, null);
        return this.nativeMap.getMapOptions();
    }

    @Override
    public Size getSize() {
        checkNativeMap$default(this, "getSize", false, 2, null);
        return this.nativeMap.getSize();
    }

    public final void whenSizeReady(Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        checkNativeMap$default(this, "whenSizeReady", false, 2, null);
        this.nativeMap.whenMapSizeReady(action);
    }

    @Deprecated(message = "Use `MapView.debugOptions` instead.")
    public final List<MapDebugOptions> getDebug() {
        checkNativeMap$default(this, "getDebug", false, 2, null);
        return this.nativeMap.getDebug();
    }

    @Deprecated(message = "Use `MapView.debugOptions` instead.")
    public final void setDebug(List<? extends MapDebugOptions> debugOptions, boolean enabled) {
        Intrinsics.checkNotNullParameter(debugOptions, "debugOptions");
        checkNativeMap$default(this, "setDebug", false, 2, null);
        this.nativeMap.setDebug(debugOptions, enabled);
    }

    public final Set<MapDebugOptions> getDebugOptions$maps_sdk_release() {
        checkNativeMap$default(this, "getDebug", false, 2, null);
        return CollectionsKt.toSet(this.nativeMap.getDebug());
    }

    public final void setDebugOptions$maps_sdk_release(Set<? extends MapDebugOptions> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        checkNativeMap$default(this, "setDebug", false, 2, null);
        NativeMapImpl nativeMapImpl = this.nativeMap;
        nativeMapImpl.setDebug(nativeMapImpl.getDebug(), false);
        this.nativeMap.setDebug(CollectionsKt.toList(value), true);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated", replaceWith = @ReplaceWith(expression = "cameraForCoordinates(coordinates, camera, coordinatesPadding, maxZoom, offset, result)", imports = {}))
    public CameraOptions cameraForCoordinateBounds(CoordinateBounds bounds, EdgeInsets boundsPadding, Double bearing, Double pitch, Double maxZoom, ScreenCoordinate offset) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        checkNativeMap$default(this, "cameraForCoordinateBounds", false, 2, null);
        return this.nativeMap.cameraForCoordinateBounds(bounds, boundsPadding, bearing, pitch, maxZoom, offset);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated", replaceWith = @ReplaceWith(expression = "cameraForCoordinates(coordinates, camera, coordinatesPadding, maxZoom, offset, result)", imports = {}))
    public CameraOptions cameraForCoordinates(List<Point> coordinates, EdgeInsets coordinatesPadding, Double bearing, Double pitch) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        checkNativeMap$default(this, "cameraForCoordinates", false, 2, null);
        return this.nativeMap.cameraForCoordinates(INSTANCE.calculateBoundingBox(coordinates), coordinatesPadding, bearing, pitch);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated", replaceWith = @ReplaceWith(expression = "cameraForCoordinates(coordinates, camera, coordinatesPadding, maxZoom, offset, result)", imports = {}))
    public CameraOptions cameraForCoordinates(List<Point> coordinates, CameraOptions camera, ScreenBox box) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(box, "box");
        checkNativeMap$default(this, "cameraForCoordinates", false, 2, null);
        return this.nativeMap.cameraForCoordinates(INSTANCE.calculateBoundingBox(coordinates), camera, box);
    }

    @Override
    public CameraOptions cameraForCoordinates(final List<Point> coordinates, final CameraOptions camera, final EdgeInsets coordinatesPadding, final Double maxZoom, final ScreenCoordinate offset) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        Intrinsics.checkNotNullParameter(camera, "camera");
        checkNativeMap$default(this, "cameraForCoordinates", false, 2, null);
        if (this.nativeMap.getSizeSet()) {
            CameraOptions valueOrElse = this.nativeMap.cameraForCoordinates(INSTANCE.calculateBoundingBox(coordinates), camera, coordinatesPadding, maxZoom, offset).getValueOrElse(new Expected.Transformer() {
                @Override
                public final Object invoke(Object obj) {
                    return MapboxMap.cameraForCoordinates$lambda$17(coordinates, camera, coordinatesPadding, maxZoom, offset, this, (String) obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(valueOrElse, "nativeMap.cameraForCoord…e cameraOptions { }\n    }");
            return valueOrElse;
        }
        CameraOptions cameraOptionsBuild = new CameraOptions.Builder().build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
        return cameraOptionsBuild;
    }

    public static final CameraOptions cameraForCoordinates$lambda$17(List coordinates, CameraOptions camera, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate, MapboxMap this$0, String it) {
        Intrinsics.checkNotNullParameter(coordinates, "$coordinates");
        Intrinsics.checkNotNullParameter(camera, "$camera");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        MapboxLogger.logE(TAG, "Error occurred in synchronous cameraForCoordinates(coordinates: " + coordinates + ", camera: " + camera + ", coordinatesPadding: " + edgeInsets + ", maxZoom: " + d + ", offset: " + screenCoordinate + ", mapSize: " + this$0.nativeMap.getSize() + "): " + it + ", empty cameraState will be returned");
        CameraOptions cameraOptionsBuild = new CameraOptions.Builder().build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
        return cameraOptionsBuild;
    }

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    static final class AnonymousClass3 extends Lambda implements Function0<Unit> {
        final CameraOptions $camera;
        final List<Point> $coordinates;
        final EdgeInsets $coordinatesPadding;
        final Double $maxZoom;
        final ScreenCoordinate $offset;
        final Function1<CameraOptions, Unit> $result;
        final MapboxMap this$0;

        AnonymousClass3(Function1<? super CameraOptions, Unit> function1, MapboxMap mapboxMap, List<Point> list, CameraOptions cameraOptions, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate) {
            super(0);
            this.$result = function1;
            this.this$0 = mapboxMap;
            this.$coordinates = list;
            this.$camera = cameraOptions;
            this.$coordinatesPadding = edgeInsets;
            this.$maxZoom = d;
            this.$offset = screenCoordinate;
        }

        @Override
        public Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        public final void invoke2() {
            Function1<CameraOptions, Unit> function1 = this.$result;
            Expected<String, CameraOptions> expectedCameraForCoordinates = this.this$0.nativeMap.cameraForCoordinates(MapboxMap.INSTANCE.calculateBoundingBox(this.$coordinates), this.$camera, this.$coordinatesPadding, this.$maxZoom, this.$offset);
            final List<Point> list = this.$coordinates;
            final CameraOptions cameraOptions = this.$camera;
            final EdgeInsets edgeInsets = this.$coordinatesPadding;
            final Double d = this.$maxZoom;
            final ScreenCoordinate screenCoordinate = this.$offset;
            final MapboxMap mapboxMap = this.this$0;
            CameraOptions valueOrElse = expectedCameraForCoordinates.getValueOrElse(new Expected.Transformer() {
                @Override
                public final Object invoke(Object obj) {
                    return MapboxMap.AnonymousClass3.invoke$lambda$1(list, cameraOptions, edgeInsets, d, screenCoordinate, mapboxMap, (String) obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(valueOrElse, "nativeMap.cameraForCoord…meraOptions { }\n        }");
            function1.invoke(valueOrElse);
        }

        public static final CameraOptions invoke$lambda$1(List coordinates, CameraOptions camera, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate, MapboxMap this$0, String it) {
            Intrinsics.checkNotNullParameter(coordinates, "$coordinates");
            Intrinsics.checkNotNullParameter(camera, "$camera");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it, "it");
            MapboxLogger.logE(MapboxMap.TAG, "Error occurred in asynchronous cameraForCoordinates(coordinates: " + coordinates + ", camera: " + camera + ", coordinatesPadding: " + edgeInsets + ", maxZoom: " + d + ", offset: " + screenCoordinate + ", mapSize: " + this$0.nativeMap.getSize() + "): " + it + ", empty cameraState will be returned");
            CameraOptions cameraOptionsBuild = new CameraOptions.Builder().build();
            Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
            return cameraOptionsBuild;
        }
    }

    @Override
    public void cameraForCoordinates(List<Point> coordinates, CameraOptions camera, EdgeInsets coordinatesPadding, Double maxZoom, ScreenCoordinate offset, Function1<? super CameraOptions, Unit> result) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(result, "result");
        checkNativeMap$default(this, "cameraForCoordinates", false, 2, null);
        this.nativeMap.whenMapSizeReady(new AnonymousClass3(result, this, coordinates, camera, coordinatesPadding, maxZoom, offset));
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated", replaceWith = @ReplaceWith(expression = "cameraForCoordinates(coordinates, camera, coordinatesPadding, maxZoom, offset, result)", imports = {}))
    public CameraOptions cameraForGeometry(Geometry geometry, EdgeInsets geometryPadding, Double bearing, Double pitch) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        checkNativeMap$default(this, "cameraForGeometry", false, 2, null);
        return this.nativeMap.cameraForGeometry(geometry, geometryPadding, bearing, pitch);
    }

    @Override
    public CoordinateBounds coordinateBoundsForCamera(CameraOptions camera) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        checkNativeMap$default(this, "coordinateBoundsForCamera", false, 2, null);
        return this.nativeMap.coordinateBoundsForCamera(camera);
    }

    @Override
    public CoordinateBounds coordinateBoundsForCameraUnwrapped(CameraOptions camera) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        checkNativeMap$default(this, "coordinateBoundsForCameraUnwrapped", false, 2, null);
        return this.nativeMap.coordinateBoundsForCameraUnwrapped(camera);
    }

    @Override
    public CoordinateBoundsZoom coordinateBoundsZoomForCamera(CameraOptions camera) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        checkNativeMap$default(this, "coordinateBoundsZoomForCamera", false, 2, null);
        return this.nativeMap.coordinateBoundsZoomForCamera(camera);
    }

    @Override
    public CoordinateBoundsZoom coordinateBoundsZoomForCameraUnwrapped(CameraOptions camera) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        checkNativeMap$default(this, "coordinateBoundsZoomForCameraUnwrapped", false, 2, null);
        return this.nativeMap.coordinateBoundsZoomForCameraUnwrapped(camera);
    }

    @Override
    public CoordinateBounds coordinateBoundsForRect(RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        checkNativeMap$default(this, "coordinateBoundsForRect", false, 2, null);
        if (rectF.isEmpty()) {
            throw new IllegalArgumentException("RectF must not be empty");
        }
        List<Point> listCoordinatesForPixels = this.nativeMap.coordinatesForPixels(CollectionsKt.mutableListOf(new ScreenCoordinate(rectF.bottom, rectF.left), new ScreenCoordinate(rectF.top, rectF.right)));
        return new CoordinateBounds(listCoordinatesForPixels.get(0), listCoordinatesForPixels.get(1));
    }

    @Override
    public ScreenCoordinate pixelForCoordinate(Point coordinate) {
        Intrinsics.checkNotNullParameter(coordinate, "coordinate");
        checkNativeMap$default(this, "pixelForCoordinate", false, 2, null);
        return clampScreenCoordinate(this.nativeMap.pixelForCoordinate(coordinate));
    }

    @Override
    public List<ScreenCoordinate> pixelsForCoordinates(List<Point> coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        checkNativeMap$default(this, "pixelsForCoordinates", false, 2, null);
        List<ScreenCoordinate> listPixelsForCoordinates = this.nativeMap.pixelsForCoordinates(CollectionsKt.toMutableList((Collection) coordinates));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPixelsForCoordinates, 10));
        Iterator<T> it = listPixelsForCoordinates.iterator();
        while (it.hasNext()) {
            arrayList.add(clampScreenCoordinate((ScreenCoordinate) it.next()));
        }
        return arrayList;
    }

    private final ScreenCoordinate clampScreenCoordinate(ScreenCoordinate screenCoordinate) {
        Size size = this.nativeMap.getSize();
        double x = screenCoordinate.getX();
        double y = screenCoordinate.getY();
        if (screenCoordinate.getX() < 0.0d || screenCoordinate.getX() > size.getWidth()) {
            x = MathKt.roundToInt(screenCoordinate.getX());
        }
        if (screenCoordinate.getY() < 0.0d || screenCoordinate.getY() > size.getHeight()) {
            y = MathKt.roundToInt(screenCoordinate.getY());
        }
        if (0.0d <= x && x <= size.getWidth() && 0.0d <= y && y <= size.getHeight()) {
            return new ScreenCoordinate(x, y);
        }
        return new ScreenCoordinate(-1.0d, -1.0d);
    }

    @Override
    public Point coordinateForPixel(ScreenCoordinate pixel) {
        Intrinsics.checkNotNullParameter(pixel, "pixel");
        checkNativeMap$default(this, "coordinateForPixel", false, 2, null);
        return this.nativeMap.coordinateForPixel(pixel);
    }

    @Override
    public List<Point> coordinatesForPixels(List<ScreenCoordinate> pixels) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        checkNativeMap$default(this, "coordinatesForPixels", false, 2, null);
        return this.nativeMap.coordinatesForPixels(CollectionsKt.toMutableList((Collection) pixels));
    }

    @Override
    public CoordinateInfo coordinateInfoForPixel(ScreenCoordinate pixel) {
        Intrinsics.checkNotNullParameter(pixel, "pixel");
        checkNativeMap$default(this, "coordinateInfoForPixel", false, 2, null);
        return this.nativeMap.coordinateInfoForPixel(pixel);
    }

    @Override
    public List<CoordinateInfo> coordinatesInfoForPixels(List<ScreenCoordinate> pixels) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        checkNativeMap$default(this, "coordinatesInfoForPixels", false, 2, null);
        return this.nativeMap.coordinatesInfoForPixels(pixels);
    }

    @Override
    public double getMetersPerPixelAtLatitude(double latitude, double zoom) {
        return Projection.getMetersPerPixelAtLatitude(latitude, zoom);
    }

    @Override
    public double getMetersPerPixelAtLatitude(double latitude) {
        return Projection.getMetersPerPixelAtLatitude(latitude, getCameraState().getZoom());
    }

    @Override
    public ProjectedMeters projectedMetersForCoordinate(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        ProjectedMeters projectedMetersProjectedMetersForCoordinate = Projection.projectedMetersForCoordinate(point);
        Intrinsics.checkNotNullExpressionValue(projectedMetersProjectedMetersForCoordinate, "projectedMetersForCoordinate(point)");
        return projectedMetersProjectedMetersForCoordinate;
    }

    @Override
    public Point coordinateForProjectedMeters(ProjectedMeters projectedMeters) {
        Intrinsics.checkNotNullParameter(projectedMeters, "projectedMeters");
        Point pointCoordinateForProjectedMeters = Projection.coordinateForProjectedMeters(projectedMeters);
        Intrinsics.checkNotNullExpressionValue(pointCoordinateForProjectedMeters, "coordinateForProjectedMeters(projectedMeters)");
        return pointCoordinateForProjectedMeters;
    }

    @Override
    public MercatorCoordinate project(Point point, double zoomScale) {
        Intrinsics.checkNotNullParameter(point, "point");
        MercatorCoordinate mercatorCoordinateProject = Projection.project(point, zoomScale);
        Intrinsics.checkNotNullExpressionValue(mercatorCoordinateProject, "project(point, zoomScale)");
        return mercatorCoordinateProject;
    }

    @Override
    public Point unproject(MercatorCoordinate coordinate, double zoomScale) {
        Intrinsics.checkNotNullParameter(coordinate, "coordinate");
        Point pointUnproject = Projection.unproject(coordinate, zoomScale);
        Intrinsics.checkNotNullExpressionValue(pointUnproject, "unproject(coordinate, zoomScale)");
        return pointUnproject;
    }

    @Override
    public Cancelable queryRenderedFeatures(RenderedQueryGeometry geometry, RenderedQueryOptions options, QueryRenderedFeaturesCallback callback) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap("queryRenderedFeatures", false);
        return this.nativeMap.queryRenderedFeatures(geometry, options, callback);
    }

    @Override
    public Cancelable querySourceFeatures(String sourceId, SourceQueryOptions options, QuerySourceFeaturesCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap("querySourceFeatures", false);
        return this.nativeMap.querySourceFeatures(sourceId, options, callback);
    }

    @Override
    public void executeOnRenderThread(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        checkNativeMap$default(this, "executeOnRenderThread", false, 2, null);
        Handler handler = this.renderHandler;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    public static Cancelable getGeoJsonClusterLeaves$default(MapboxMap mapboxMap, String str, Feature feature, long j, long j2, QueryFeatureExtensionCallback queryFeatureExtensionCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            j = 10;
        }
        return mapboxMap.getGeoJsonClusterLeaves(str, feature, j, (i & 8) != 0 ? 0L : j2, queryFeatureExtensionCallback);
    }

    public final Cancelable getGeoJsonClusterLeaves(String sourceIdentifier, Feature cluster, long limit, long offset, QueryFeatureExtensionCallback callback) {
        Intrinsics.checkNotNullParameter(sourceIdentifier, "sourceIdentifier");
        Intrinsics.checkNotNullParameter(cluster, "cluster");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return this.nativeMap.queryFeatureExtensions(sourceIdentifier, cluster, QFE_SUPER_CLUSTER, QFE_LEAVES, MapsKt.hashMapOf(TuplesKt.to(QFE_LIMIT, new Value(limit)), TuplesKt.to("offset", new Value(offset))), callback);
    }

    public final Cancelable getGeoJsonClusterChildren(String sourceIdentifier, Feature cluster, QueryFeatureExtensionCallback callback) {
        Intrinsics.checkNotNullParameter(sourceIdentifier, "sourceIdentifier");
        Intrinsics.checkNotNullParameter(cluster, "cluster");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return this.nativeMap.queryFeatureExtensions(sourceIdentifier, cluster, QFE_SUPER_CLUSTER, QFE_CHILDREN, null, callback);
    }

    public final Cancelable getGeoJsonClusterExpansionZoom(String sourceIdentifier, Feature cluster, QueryFeatureExtensionCallback callback) {
        Intrinsics.checkNotNullParameter(sourceIdentifier, "sourceIdentifier");
        Intrinsics.checkNotNullParameter(cluster, "cluster");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return this.nativeMap.queryFeatureExtensions(sourceIdentifier, cluster, QFE_SUPER_CLUSTER, QFE_EXPANSION_ZOOM, null, callback);
    }

    @Override
    public Cancelable setFeatureState(String sourceId, String sourceLayerId, String featureId, Value state, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "setFeatureState", false, 2, null);
        return this.nativeMap.setFeatureState(sourceId, sourceLayerId, featureId, state, callback);
    }

    public final Cancelable setFeatureState(String sourceId, String featureId, Value state, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return setFeatureState(sourceId, null, featureId, state, callback);
    }

    @Override
    public Cancelable getFeatureState(String sourceId, String sourceLayerId, String featureId, QueryFeatureStateCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "getFeatureState", false, 2, null);
        return this.nativeMap.getFeatureState(sourceId, sourceLayerId, featureId, callback);
    }

    public final Cancelable getFeatureState(String sourceId, String featureId, QueryFeatureStateCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return getFeatureState(sourceId, null, featureId, callback);
    }

    @Override
    public Cancelable removeFeatureState(String sourceId, String sourceLayerId, String featureId, String stateKey, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "removeFeatureState", false, 2, null);
        return this.nativeMap.removeFeatureState(sourceId, sourceLayerId, featureId, stateKey, callback);
    }

    public final Cancelable removeFeatureState(String sourceId, String sourceLayerId, String featureId, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return removeFeatureState(sourceId, sourceLayerId, featureId, null, callback);
    }

    public final Cancelable removeFeatureState(String sourceId, String featureId, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return removeFeatureState(sourceId, null, featureId, null, callback);
    }

    @Override
    public Cancelable resetFeatureStates(String sourceId, String sourceLayerId, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "resetFeatureState", false, 2, null);
        return this.nativeMap.resetFeatureStates(sourceId, sourceLayerId, callback);
    }

    public final Cancelable resetFeatureStates(String sourceId, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return resetFeatureStates(sourceId, null, callback);
    }

    public final void reduceMemoryUse() {
        checkNativeMap$default(this, "reduceMemoryUse", false, 2, null);
        this.nativeMap.reduceMemoryUse();
    }

    @Override
    public Cancelable subscribeMapLoaded(MapLoadedCallback mapLoadedCallback) {
        Intrinsics.checkNotNullParameter(mapLoadedCallback, "mapLoadedCallback");
        checkNativeMap$default(this, "subscribeMapLoaded", false, 2, null);
        return NativeObserver.subscribeMapLoaded$default(this.nativeObserver, mapLoadedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeMapIdle(MapIdleCallback mapIdleCallback) {
        Intrinsics.checkNotNullParameter(mapIdleCallback, "mapIdleCallback");
        checkNativeMap$default(this, "subscribeMapIdle", false, 2, null);
        return NativeObserver.subscribeMapIdle$default(this.nativeObserver, mapIdleCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeMapLoadingError(MapLoadingErrorCallback mapLoadingErrorCallback) {
        Intrinsics.checkNotNullParameter(mapLoadingErrorCallback, "mapLoadingErrorCallback");
        checkNativeMap$default(this, "subscribeMapLoadingError", false, 2, null);
        return NativeObserver.subscribeMapLoadingError$default(this.nativeObserver, mapLoadingErrorCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeStyleLoaded(StyleLoadedCallback styleLoadedCallback) {
        Intrinsics.checkNotNullParameter(styleLoadedCallback, "styleLoadedCallback");
        checkNativeMap$default(this, "subscribeStyleLoaded", false, 2, null);
        return NativeObserver.subscribeStyleLoaded$default(this.nativeObserver, styleLoadedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeStyleDataLoaded(StyleDataLoadedCallback styleDataLoadedCallback) {
        Intrinsics.checkNotNullParameter(styleDataLoadedCallback, "styleDataLoadedCallback");
        checkNativeMap$default(this, "subscribeStyleDataLoaded", false, 2, null);
        return NativeObserver.subscribeStyleDataLoaded$default(this.nativeObserver, styleDataLoadedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeSourceDataLoaded(SourceDataLoadedCallback sourceDataLoadedCallback) {
        Intrinsics.checkNotNullParameter(sourceDataLoadedCallback, "sourceDataLoadedCallback");
        checkNativeMap$default(this, "subscribeSourceDataLoaded", false, 2, null);
        return NativeObserver.subscribeSourceDataLoaded$default(this.nativeObserver, sourceDataLoadedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeSourceAdded(SourceAddedCallback sourceAddedCallback) {
        Intrinsics.checkNotNullParameter(sourceAddedCallback, "sourceAddedCallback");
        checkNativeMap$default(this, "subscribeSourceAdded", false, 2, null);
        return NativeObserver.subscribeSourceAdded$default(this.nativeObserver, sourceAddedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeSourceRemoved(SourceRemovedCallback sourceRemovedCallback) {
        Intrinsics.checkNotNullParameter(sourceRemovedCallback, "sourceRemovedCallback");
        checkNativeMap$default(this, "subscribeSourceRemoved", false, 2, null);
        return NativeObserver.subscribeSourceRemoved$default(this.nativeObserver, sourceRemovedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeStyleImageMissing(StyleImageMissingCallback styleImageMissingCallback) {
        Intrinsics.checkNotNullParameter(styleImageMissingCallback, "styleImageMissingCallback");
        checkNativeMap$default(this, "subscribeStyleImageMissing", false, 2, null);
        return NativeObserver.subscribeStyleImageMissing$default(this.nativeObserver, styleImageMissingCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeStyleImageRemoveUnused(StyleImageRemoveUnusedCallback styleImageRemoveUnusedCallback) {
        Intrinsics.checkNotNullParameter(styleImageRemoveUnusedCallback, "styleImageRemoveUnusedCallback");
        checkNativeMap$default(this, "subscribeStyleImageRemoveUnused", false, 2, null);
        return NativeObserver.subscribeStyleImageRemoveUnused$default(this.nativeObserver, styleImageRemoveUnusedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeCameraChanged(CameraChangedCallback cameraChangedCallback) {
        Intrinsics.checkNotNullParameter(cameraChangedCallback, "cameraChangedCallback");
        checkNativeMap$default(this, "subscribeCameraChanged", false, 2, null);
        return NativeObserver.subscribeCameraChanged$default(this.nativeObserver, cameraChangedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeCameraChangedCoalesced(CameraChangedCoalescedCallback cameraChangedCoalescedCallback) {
        Intrinsics.checkNotNullParameter(cameraChangedCoalescedCallback, "cameraChangedCoalescedCallback");
        checkNativeMap$default(this, "subscribeCameraChangedCoalesced", false, 2, null);
        return NativeObserver.subscribeCameraChangedCoalesced$default(this.nativeObserver, cameraChangedCoalescedCallback, null, 2, null);
    }

    @Override
    public Cancelable subscribeRenderFrameStarted(RenderFrameStartedCallback renderFrameStartedCallback) {
        Intrinsics.checkNotNullParameter(renderFrameStartedCallback, "renderFrameStartedCallback");
        checkNativeMap$default(this, "subscribeRenderFrameStarted", false, 2, null);
        return NativeObserver.subscribeRenderFrameStarted$default(this.nativeObserver, renderFrameStartedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeRenderFrameFinished(RenderFrameFinishedCallback renderFrameFinishedCallback) {
        Intrinsics.checkNotNullParameter(renderFrameFinishedCallback, "renderFrameFinishedCallback");
        checkNativeMap$default(this, "subscribeRenderFrameFinished", false, 2, null);
        return NativeObserver.subscribeRenderFrameFinished$default(this.nativeObserver, renderFrameFinishedCallback, null, null, 6, null);
    }

    @Override
    public Cancelable subscribeResourceRequest(ResourceRequestCallback resourceRequestCallback) {
        Intrinsics.checkNotNullParameter(resourceRequestCallback, "resourceRequestCallback");
        checkNativeMap$default(this, "subscribeResourceRequest", false, 2, null);
        return NativeObserver.subscribeResourceRequest$default(this.nativeObserver, resourceRequestCallback, null, 2, null);
    }

    @Override
    public Cancelable subscribeGenericEvent(String eventName, GenericEventCallback genericEventCallback) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(genericEventCallback, "genericEventCallback");
        checkNativeMap$default(this, "subscribeGenericEvent", false, 2, null);
        return NativeObserver.subscribeGenericEvent$default(this.nativeObserver, eventName, genericEventCallback, null, 4, null);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeCameraChange] instead.", replaceWith = @ReplaceWith(expression = "subscribeCameraChanged(cameraChangedCallback)", imports = {}))
    public void addOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        Intrinsics.checkNotNullParameter(onCameraChangeListener, "onCameraChangeListener");
        checkNativeMap$default(this, "addOnCameraChangeListener", false, 2, null);
        this.nativeObserver.addOnCameraChangeListener(onCameraChangeListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeCameraChange] to remove the listener.")
    public void removeOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        Intrinsics.checkNotNullParameter(onCameraChangeListener, "onCameraChangeListener");
        checkNativeMap$default(this, "removeOnCameraChangeListener", false, 2, null);
        this.nativeObserver.removeOnCameraChangeListener(onCameraChangeListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeMapIdle] instead.", replaceWith = @ReplaceWith(expression = "subscribeMapIdle(mapIdleCallback)", imports = {}))
    public void addOnMapIdleListener(OnMapIdleListener onMapIdleListener) {
        Intrinsics.checkNotNullParameter(onMapIdleListener, "onMapIdleListener");
        checkNativeMap$default(this, "addOnMapIdleListener", false, 2, null);
        this.nativeObserver.addOnMapIdleListener(onMapIdleListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeMapIdle] to remove the listener.")
    public void removeOnMapIdleListener(OnMapIdleListener onMapIdleListener) {
        Intrinsics.checkNotNullParameter(onMapIdleListener, "onMapIdleListener");
        checkNativeMap$default(this, "removeOnMapIdleListener", false, 2, null);
        this.nativeObserver.removeOnMapIdleListener(onMapIdleListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeMapLoadingError] instead.", replaceWith = @ReplaceWith(expression = "subscribeMapLoadingError(mapLoadingErrorCallback)", imports = {}))
    public void addOnMapLoadErrorListener(OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(onMapLoadErrorListener, "onMapLoadErrorListener");
        checkNativeMap$default(this, "addOnMapLoadErrorListener", false, 2, null);
        this.nativeObserver.addOnMapLoadErrorListener(onMapLoadErrorListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeMapLoadingError] to remove the listener.")
    public void removeOnMapLoadErrorListener(OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(onMapLoadErrorListener, "onMapLoadErrorListener");
        checkNativeMap$default(this, "removeOnMapLoadErrorListener", false, 2, null);
        this.nativeObserver.removeOnMapLoadErrorListener(onMapLoadErrorListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeMapLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeMapLoaded(mapLoadedCallback)", imports = {}))
    public void addOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener) {
        Intrinsics.checkNotNullParameter(onMapLoadedListener, "onMapLoadedListener");
        checkNativeMap$default(this, "addOnMapLoadedListener", false, 2, null);
        this.nativeObserver.addOnMapLoadedListener(onMapLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeMapLoaded] to remove the listener.")
    public void removeOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener) {
        Intrinsics.checkNotNullParameter(onMapLoadedListener, "onMapLoadedListener");
        checkNativeMap$default(this, "removeOnMapLoadedListener", false, 2, null);
        this.nativeObserver.removeOnMapLoadedListener(onMapLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeRenderFrameStarted] instead.", replaceWith = @ReplaceWith(expression = "subscribeRenderFrameStarted(renderFrameStartedCallback)", imports = {}))
    public void addOnRenderFrameStartedListener(OnRenderFrameStartedListener onRenderFrameStartedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameStartedListener, "onRenderFrameStartedListener");
        checkNativeMap$default(this, "addOnRenderFrameStartedListener", false, 2, null);
        this.nativeObserver.addOnRenderFrameStartedListener(onRenderFrameStartedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeRenderFrameStarted] to remove the listener.")
    public void removeOnRenderFrameStartedListener(OnRenderFrameStartedListener onRenderFrameStartedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameStartedListener, "onRenderFrameStartedListener");
        checkNativeMap$default(this, "removeOnRenderFrameStartedListener", false, 2, null);
        this.nativeObserver.removeOnRenderFrameStartedListener(onRenderFrameStartedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeRenderFrameFinished] instead.", replaceWith = @ReplaceWith(expression = "subscribeRenderFrameFinished(renderFrameFinishedCallback)", imports = {}))
    public void addOnRenderFrameFinishedListener(OnRenderFrameFinishedListener onRenderFrameFinishedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameFinishedListener, "onRenderFrameFinishedListener");
        checkNativeMap$default(this, "addOnRenderFrameFinishedListener", false, 2, null);
        this.nativeObserver.addOnRenderFrameFinishedListener(onRenderFrameFinishedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeRenderFrameFinished] to remove the listener.")
    public void removeOnRenderFrameFinishedListener(OnRenderFrameFinishedListener onRenderFrameFinishedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameFinishedListener, "onRenderFrameFinishedListener");
        checkNativeMap$default(this, "removeOnRenderFrameFinishedListener", false, 2, null);
        this.nativeObserver.removeOnRenderFrameFinishedListener(onRenderFrameFinishedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeSourceAdded] instead.", replaceWith = @ReplaceWith(expression = "subscribeSourceAdded(sourceAddedCallback)", imports = {}))
    public void addOnSourceAddedListener(OnSourceAddedListener onSourceAddedListener) {
        Intrinsics.checkNotNullParameter(onSourceAddedListener, "onSourceAddedListener");
        checkNativeMap$default(this, "addOnSourceAddedListener", false, 2, null);
        this.nativeObserver.addOnSourceAddedListener(onSourceAddedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeSourceAdded] to remove the listener.")
    public void removeOnSourceAddedListener(OnSourceAddedListener onSourceAddedListener) {
        Intrinsics.checkNotNullParameter(onSourceAddedListener, "onSourceAddedListener");
        checkNativeMap$default(this, "removeOnSourceAddedListener", false, 2, null);
        this.nativeObserver.removeOnSourceAddedListener(onSourceAddedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeSourceDataLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeSourceDataLoaded(sourceDataLoadedCallback)", imports = {}))
    public void addOnSourceDataLoadedListener(OnSourceDataLoadedListener onSourceDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onSourceDataLoadedListener, "onSourceDataLoadedListener");
        checkNativeMap$default(this, "addOnSourceDataLoadedListener", false, 2, null);
        this.nativeObserver.addOnSourceDataLoadedListener(onSourceDataLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeSourceDataLoaded] to remove the listener.")
    public void removeOnSourceDataLoadedListener(OnSourceDataLoadedListener onSourceDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onSourceDataLoadedListener, "onSourceDataLoadedListener");
        checkNativeMap$default(this, "removeOnSourceDataLoadedListener", false, 2, null);
        this.nativeObserver.removeOnSourceDataLoadedListener(onSourceDataLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeSourceRemoved] instead.", replaceWith = @ReplaceWith(expression = "subscribeSourceRemoved(sourceRemovedCallback)", imports = {}))
    public void addOnSourceRemovedListener(OnSourceRemovedListener onSourceRemovedListener) {
        Intrinsics.checkNotNullParameter(onSourceRemovedListener, "onSourceRemovedListener");
        checkNativeMap$default(this, "addOnSourceRemovedListener", false, 2, null);
        this.nativeObserver.addOnSourceRemovedListener(onSourceRemovedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeSourceRemoved] to remove the listener.")
    public void removeOnSourceRemovedListener(OnSourceRemovedListener onSourceRemovedListener) {
        Intrinsics.checkNotNullParameter(onSourceRemovedListener, "onSourceRemovedListener");
        checkNativeMap$default(this, "removeOnSourceRemovedListener", false, 2, null);
        this.nativeObserver.removeOnSourceRemovedListener(onSourceRemovedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleLoaded(styleLoadedCallback)", imports = {}))
    public void addOnStyleLoadedListener(OnStyleLoadedListener onStyleLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleLoadedListener, "onStyleLoadedListener");
        checkNativeMap$default(this, "addOnStyleLoadedListener", false, 2, null);
        this.nativeObserver.addOnStyleLoadedListener(onStyleLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleLoaded] to remove the listener.")
    public void removeOnStyleLoadedListener(OnStyleLoadedListener onStyleLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleLoadedListener, "onStyleLoadedListener");
        checkNativeMap$default(this, "removeOnStyleLoadedListener", false, 2, null);
        this.nativeObserver.removeOnStyleLoadedListener(onStyleLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleDataLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleDataLoaded(styleDataLoadedCallback)", imports = {}))
    public void addOnStyleDataLoadedListener(OnStyleDataLoadedListener onStyleDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleDataLoadedListener, "onStyleDataLoadedListener");
        checkNativeMap$default(this, "addOnStyleDataLoadedListener", false, 2, null);
        this.nativeObserver.addOnStyleDataLoadedListener(onStyleDataLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleDataLoaded] to remove the listener.")
    public void removeOnStyleDataLoadedListener(OnStyleDataLoadedListener onStyleDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleDataLoadedListener, "onStyleDataLoadedListener");
        checkNativeMap$default(this, "removeOnStyleDataLoadedListener", false, 2, null);
        this.nativeObserver.removeOnStyleDataLoadedListener(onStyleDataLoadedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleImageMissing] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleImageMissing(styleImageMissingCallback)", imports = {}))
    public void addOnStyleImageMissingListener(OnStyleImageMissingListener onStyleImageMissingListener) {
        Intrinsics.checkNotNullParameter(onStyleImageMissingListener, "onStyleImageMissingListener");
        checkNativeMap$default(this, "addOnStyleImageMissingListener", false, 2, null);
        this.nativeObserver.addOnStyleImageMissingListener(onStyleImageMissingListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleImageMissing] to remove the listener.")
    public void removeOnStyleImageMissingListener(OnStyleImageMissingListener onStyleImageMissingListener) {
        Intrinsics.checkNotNullParameter(onStyleImageMissingListener, "onStyleImageMissingListener");
        checkNativeMap$default(this, "removeOnStyleImageMissingListener", false, 2, null);
        this.nativeObserver.removeOnStyleImageMissingListener(onStyleImageMissingListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleImageRemoveUnused] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleImageRemoveUnused(styleImageRemoveUnusedCallback)", imports = {}))
    public void addOnStyleImageUnusedListener(OnStyleImageUnusedListener onStyleImageUnusedListener) {
        Intrinsics.checkNotNullParameter(onStyleImageUnusedListener, "onStyleImageUnusedListener");
        checkNativeMap$default(this, "addOnStyleImageUnusedListener", false, 2, null);
        this.nativeObserver.addOnStyleImageUnusedListener(onStyleImageUnusedListener);
    }

    @Override
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleImageRemoveUnused] to remove the listener.")
    public void removeOnStyleImageUnusedListener(OnStyleImageUnusedListener onStyleImageUnusedListener) {
        Intrinsics.checkNotNullParameter(onStyleImageUnusedListener, "onStyleImageUnusedListener");
        checkNativeMap$default(this, "removeOnStyleImageUnusedListener", false, 2, null);
        this.nativeObserver.removeOnStyleImageUnusedListener(onStyleImageUnusedListener);
    }

    public final void triggerRepaint() {
        checkNativeMap$default(this, "triggerRepaint", false, 2, null);
        this.nativeMap.triggerRepaint();
    }

    @Override
    public FreeCameraOptions getFreeCameraOptions() {
        checkNativeMap$default(this, "getFreeCameraOptions", false, 2, null);
        return this.nativeMap.getFreeCameraOptions();
    }

    @Override
    public void setCamera(FreeCameraOptions freeCameraOptions) {
        Intrinsics.checkNotNullParameter(freeCameraOptions, "freeCameraOptions");
        checkNativeMap$default(this, "setCamera", false, 2, null);
        this.nativeMap.setCamera(freeCameraOptions);
    }

    public final Double getElevation(Point coordinate) {
        Intrinsics.checkNotNullParameter(coordinate, "coordinate");
        checkNativeMap$default(this, "getElevation", false, 2, null);
        return this.nativeMap.getElevation(coordinate);
    }

    public final void setTileCacheBudget(TileCacheBudget tileCacheBudget) {
        checkNativeMap$default(this, "setTileCacheBudget", false, 2, null);
        this.nativeMap.setTileCacheBudget(tileCacheBudget);
    }

    public final void setRenderWorldCopies(boolean renderWorldCopies) {
        checkNativeMap$default(this, "setRenderWorldCopies", false, 2, null);
        this.nativeMap.setRenderWorldCopies(renderWorldCopies);
    }

    public final boolean getRenderWorldCopies() {
        checkNativeMap$default(this, "getRenderWorldCopies", false, 2, null);
        return this.nativeMap.getRenderWorldCopies();
    }

    public final void setScreenCullingShape(List<Vec2> shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        checkNativeMap$default(this, "setScreenCullingShape", false, 2, null);
        this.nativeMap.setScreenCullingShape(shape);
    }

    public final List<Vec2> getScreenCullingShape() {
        checkNativeMap$default(this, "getScreenCullingShape", false, 2, null);
        return this.nativeMap.getScreenCullingShape();
    }

    public final void startPerformanceStatisticsCollection(PerformanceStatisticsOptions options, PerformanceStatisticsCallback callback) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "startPerformanceStatisticsCollection", false, 2, null);
        this.nativeMap.startPerformanceStatisticsCollection(options, callback);
        this.performanceCollectionStatisticsStarted = true;
    }

    public final void stopPerformanceStatisticsCollection() {
        checkNativeMap$default(this, "stopPerformanceStatisticsCollection", false, 2, null);
        this.nativeMap.stopPerformanceStatisticsCollection();
        this.performanceCollectionStatisticsStarted = false;
    }

    @Override
    public CameraOptions cameraForDrag(ScreenCoordinate fromPoint, ScreenCoordinate toPoint) {
        Intrinsics.checkNotNullParameter(fromPoint, "fromPoint");
        Intrinsics.checkNotNullParameter(toPoint, "toPoint");
        checkNativeMap$default(this, "cameraForDrag", false, 2, null);
        return this.nativeMap.cameraForDrag(fromPoint, toPoint);
    }

    @Override
    public void setCenterAltitudeMode(MapCenterAltitudeMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        checkNativeMap$default(this, "setCenterAltitudeMode", false, 2, null);
        this.nativeMap.setCenterAltitudeMode(mode);
    }

    @Override
    public MapCenterAltitudeMode getCenterAltitudeMode() {
        checkNativeMap$default(this, "getCenterAltitudeMode", false, 2, null);
        return this.nativeMap.getCenterAltitudeMode();
    }

    @Override
    public Object cameraAnimationsPlugin(Function1<? super CameraAnimationsPlugin, ? extends Object> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraAnimationsPlugin;
        if (cameraAnimationsPlugin != null) {
            return function.invoke(cameraAnimationsPlugin);
        }
        MapboxLogger.logW(TAG, "Either camera plugin is not added to the MapView or MapView has already been destroyed; MapboxMap camera extension functions are no-op.");
        return null;
    }

    @Override
    public Object gesturesPlugin(Function1<? super GesturesPlugin, ? extends Object> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        GesturesPlugin gesturesPlugin = this.gesturesPlugin;
        if (gesturesPlugin != null) {
            return function.invoke(gesturesPlugin);
        }
        MapboxLogger.logW(TAG, "Either gestures plugin is not added to the MapView or MapView has already been destroyed; MapboxMap gestures extension functions are no-op.");
        return null;
    }

    public final void onDestroy$maps_sdk_release() {
        if (this.performanceCollectionStatisticsStarted) {
            stopPerformanceStatisticsCollection();
        }
        this.cameraAnimationsPlugin = null;
        this.gesturesPlugin = null;
        Iterator<T> it = this.interactions.iterator();
        while (it.hasNext()) {
            ((Cancelable) it.next()).cancel();
        }
        this.interactions.clear();
        this.styleObserver.onDestroy();
        this.isMapValid = false;
    }

    public final List<CanonicalTileID> tileCover(TileCoverOptions tileCoverOptions, CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(tileCoverOptions, "tileCoverOptions");
        checkNativeMap$default(this, "tileCover", false, 2, null);
        return this.nativeMap.tileCover(tileCoverOptions, cameraOptions);
    }

    public final List<String> getAttributions() {
        checkNativeMap$default(this, "getAttributions", false, 2, null);
        return this.nativeMap.getAttributions();
    }

    public final Expected addViewAnnotation$maps_sdk_release(String viewId, ViewAnnotationOptions options) {
        Intrinsics.checkNotNullParameter(viewId, "viewId");
        Intrinsics.checkNotNullParameter(options, "options");
        checkNativeMap$default(this, "addViewAnnotation", false, 2, null);
        return this.nativeMap.addViewAnnotation(viewId, options);
    }

    public final Expected<String, None> setViewAnnotationAvoidLayers$maps_sdk_release(HashSet<String> layerIds) {
        checkNativeMap$default(this, "setViewAnnotationAvoidLayers", false, 2, null);
        return this.nativeMap.setViewAnnotationAvoidLayers(layerIds);
    }

    public final HashSet<String> getViewAnnotationAvoidLayers$maps_sdk_release() {
        checkNativeMap$default(this, "getViewAnnotationAvoidLayers", false, 2, null);
        return this.nativeMap.getViewAnnotationAvoidLayers();
    }

    public final Expected updateViewAnnotation$maps_sdk_release(String viewId, ViewAnnotationOptions options) {
        Intrinsics.checkNotNullParameter(viewId, "viewId");
        Intrinsics.checkNotNullParameter(options, "options");
        checkNativeMap$default(this, "updateViewAnnotation", false, 2, null);
        return this.nativeMap.updateViewAnnotation(viewId, options);
    }

    public final Expected removeViewAnnotation$maps_sdk_release(String viewId) {
        Intrinsics.checkNotNullParameter(viewId, "viewId");
        checkNativeMap$default(this, "removeViewAnnotation", false, 2, null);
        return this.nativeMap.removeViewAnnotation(viewId);
    }

    public final Expected getViewAnnotationOptions$maps_sdk_release(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        checkNativeMap$default(this, "getViewAnnotationOptions", false, 2, null);
        return this.nativeMap.getViewAnnotationOptions(identifier);
    }

    public final void setViewAnnotationPositionsUpdateListener$maps_sdk_release(DelegatingViewAnnotationPositionsUpdateListener listener) {
        checkNativeMap$default(this, "setViewAnnotationPositionsUpdateListener", false, 2, null);
        this.nativeMap.setViewAnnotationPositionsUpdateListener(listener);
    }

    static void checkNativeMap$default(MapboxMap mapboxMap, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        mapboxMap.checkNativeMap(str, z);
    }

    private final void checkNativeMap(String methodName, boolean checkMainThread) {
        if (checkMainThread) {
            ThreadChecker.INSTANCE.throwIfNotMainThread();
        }
        if (this.isMapValid) {
            return;
        }
        MapboxLogger.logW(TAG, "MapboxMap object (accessing " + methodName + ") should not be stored and used after MapView is destroyed.");
    }

    @Override
    public Cancelable addInteraction(MapInteraction interaction) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        checkNativeMap$default(this, "addInteraction", false, 2, null);
        NativeMapImpl nativeMapImpl = this.nativeMap;
        Interaction interaction2 = interaction.coreInteraction;
        Intrinsics.checkNotNullExpressionValue(interaction2, "interaction.coreInteraction");
        final Cancelable cancelableAddInteraction = nativeMapImpl.addInteraction(interaction2);
        this.interactions.add(cancelableAddInteraction);
        return new Cancelable() {
            @Override
            public final void cancel() {
                MapboxMap.addInteraction$lambda$22(this.f$0, cancelableAddInteraction);
            }
        };
    }

    public static final void addInteraction$lambda$22(MapboxMap this$0, Cancelable cancelable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        this$0.interactions.remove(cancelable);
        cancelable.cancel();
    }

    @Override
    public void dispatch(PlatformEventInfo platformEventInfo) {
        Intrinsics.checkNotNullParameter(platformEventInfo, "platformEventInfo");
        checkNativeMap$default(this, "dispatch", false, 2, null);
        this.nativeMap.dispatch(platformEventInfo);
    }

    public static Cancelable setFeatureState$default(MapboxMap mapboxMap, FeaturesetFeature featuresetFeature, FeatureState featureState, FeatureStateOperationCallback featureStateOperationCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            featureStateOperationCallback = new FeatureStateOperationCallback() {
                @Override
                public final void run(Expected expected) {
                    Intrinsics.checkNotNullParameter(expected, "it");
                }
            };
        }
        return mapboxMap.setFeatureState((FeaturesetFeature<FeatureState>) featuresetFeature, featureState, featureStateOperationCallback);
    }

    public final <FS extends FeatureState> Cancelable setFeatureState(FeaturesetFeature<FS> featuresetFeature, FS state, FeatureStateOperationCallback callback) {
        Cancelable featureState;
        Intrinsics.checkNotNullParameter(featuresetFeature, "featuresetFeature");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "setFeatureState", false, 2, null);
        FeaturesetFeatureId id = featuresetFeature.getId();
        if (id != null && (featureState = this.nativeMap.setFeatureState(featuresetFeature.getDescriptor().toFeaturesetDescriptor(), id, state.getInternalState(), callback)) != null) {
            return featureState;
        }
        Cancelable cancelable = new Cancelable() {
            @Override
            public final void cancel() {
                MapboxMap.setFeatureState$lambda$25();
            }
        };
        MapboxLogger.logE(TAG, "setFeatureState called but featuresetFeature.id is NULL!");
        return cancelable;
    }

    public static Cancelable setFeatureState$default(MapboxMap mapboxMap, TypedFeaturesetDescriptor typedFeaturesetDescriptor, FeaturesetFeatureId featuresetFeatureId, FeatureState featureState, FeatureStateOperationCallback featureStateOperationCallback, int i, Object obj) {
        if ((i & 8) != 0) {
            featureStateOperationCallback = new FeatureStateOperationCallback() {
                @Override
                public final void run(Expected expected) {
                    Intrinsics.checkNotNullParameter(expected, "it");
                }
            };
        }
        return mapboxMap.setFeatureState((TypedFeaturesetDescriptor<FeatureState, ?>) typedFeaturesetDescriptor, featuresetFeatureId, featureState, featureStateOperationCallback);
    }

    public final <FS extends FeatureState> Cancelable setFeatureState(TypedFeaturesetDescriptor<FS, ?> descriptor, FeaturesetFeatureId id, FS state, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "setFeatureState", false, 2, null);
        return this.nativeMap.setFeatureState(descriptor.toFeaturesetDescriptor(), id, state.getInternalState(), callback);
    }

    public final <FS extends FeatureState> Cancelable getFeatureState(final FeaturesetFeature<FS> featuresetFeature, final FeatureStateCallback<FS> callback) {
        Cancelable featureState;
        Intrinsics.checkNotNullParameter(featuresetFeature, "featuresetFeature");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "getFeatureState", false, 2, null);
        FeaturesetFeatureId id = featuresetFeature.getId();
        if (id != null && (featureState = this.nativeMap.getFeatureState(featuresetFeature.getDescriptor().toFeaturesetDescriptor(), id, new QueryFeatureStateCallback() {
            @Override
            public final void run(Expected expected) {
                MapboxMap.getFeatureState$lambda$30$lambda$29(callback, featuresetFeature, expected);
            }
        })) != null) {
            return featureState;
        }
        Cancelable cancelable = new Cancelable() {
            @Override
            public final void cancel() {
                MapboxMap.getFeatureState$lambda$31();
            }
        };
        MapboxLogger.logE(TAG, "getFeatureState called but featuresetFeature.id is NULL!");
        return cancelable;
    }

    public static final void getFeatureState$lambda$30$lambda$29(final FeatureStateCallback callback, final FeaturesetFeature featuresetFeature, Expected it) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(featuresetFeature, "$featuresetFeature");
        Intrinsics.checkNotNullParameter(it, "it");
        it.onValue(new Expected.Action() {
            @Override
            public final void run(Object obj) {
                MapboxMap.getFeatureState$lambda$30$lambda$29$lambda$28(callback, featuresetFeature, (Value) obj);
            }
        });
    }

    public static final void getFeatureState$lambda$30$lambda$29$lambda$28(FeatureStateCallback callback, FeaturesetFeature featuresetFeature, Value stateAsValue) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(featuresetFeature, "$featuresetFeature");
        Intrinsics.checkNotNullParameter(stateAsValue, "stateAsValue");
        callback.onFeatureState(featuresetFeature.getDescriptor().getFeatureState(stateAsValue));
    }

    public final <FS extends FeatureState> Cancelable getFeatureState(final TypedFeaturesetDescriptor<FS, ?> descriptor, FeaturesetFeatureId id, final FeatureStateCallback<FS> callback) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "getFeatureState", false, 2, null);
        return this.nativeMap.getFeatureState(descriptor.toFeaturesetDescriptor(), id, new QueryFeatureStateCallback() {
            @Override
            public final void run(Expected expected) {
                MapboxMap.getFeatureState$lambda$34(callback, descriptor, expected);
            }
        });
    }

    public static final void getFeatureState$lambda$34(final FeatureStateCallback callback, final TypedFeaturesetDescriptor descriptor, Expected it) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(descriptor, "$descriptor");
        Intrinsics.checkNotNullParameter(it, "it");
        it.onValue(new Expected.Action() {
            @Override
            public final void run(Object obj) {
                MapboxMap.getFeatureState$lambda$34$lambda$33(callback, descriptor, (Value) obj);
            }
        });
    }

    public static final void getFeatureState$lambda$34$lambda$33(FeatureStateCallback callback, TypedFeaturesetDescriptor descriptor, Value stateAsValue) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(descriptor, "$descriptor");
        Intrinsics.checkNotNullParameter(stateAsValue, "stateAsValue");
        callback.onFeatureState(descriptor.getFeatureState(stateAsValue));
    }

    public static Cancelable removeFeatureState$default(MapboxMap mapboxMap, FeaturesetFeature featuresetFeature, FeatureStateKey featureStateKey, FeatureStateOperationCallback featureStateOperationCallback, int i, Object obj) {
        if ((i & 2) != 0) {
            featureStateKey = null;
        }
        if ((i & 4) != 0) {
            featureStateOperationCallback = new FeatureStateOperationCallback() {
                @Override
                public final void run(Expected expected) {
                    Intrinsics.checkNotNullParameter(expected, "it");
                }
            };
        }
        return mapboxMap.removeFeatureState(featuresetFeature, featureStateKey, featureStateOperationCallback);
    }

    public final <FS extends FeatureState, FSK extends FeatureStateKey<FS>> Cancelable removeFeatureState(FeaturesetFeature<FS> featuresetFeature, FSK stateKey, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(featuresetFeature, "featuresetFeature");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "removeFeatureState", false, 2, null);
        FeaturesetFeatureId id = featuresetFeature.getId();
        if (id != null) {
            Cancelable cancelableRemoveFeatureState = this.nativeMap.removeFeatureState(featuresetFeature.getDescriptor().toFeaturesetDescriptor(), id, stateKey != null ? stateKey.getKey() : null, callback);
            if (cancelableRemoveFeatureState != null) {
                return cancelableRemoveFeatureState;
            }
        }
        Cancelable cancelable = new Cancelable() {
            @Override
            public final void cancel() {
                MapboxMap.removeFeatureState$lambda$37();
            }
        };
        MapboxLogger.logE(TAG, "removeFeatureState called but featuresetFeature.id is NULL!");
        return cancelable;
    }

    public static Cancelable removeFeatureState$default(MapboxMap mapboxMap, TypedFeaturesetDescriptor typedFeaturesetDescriptor, FeaturesetFeatureId featuresetFeatureId, FeatureStateKey featureStateKey, FeatureStateOperationCallback featureStateOperationCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            featureStateKey = null;
        }
        if ((i & 8) != 0) {
            featureStateOperationCallback = new FeatureStateOperationCallback() {
                @Override
                public final void run(Expected expected) {
                    Intrinsics.checkNotNullParameter(expected, "it");
                }
            };
        }
        return mapboxMap.removeFeatureState(typedFeaturesetDescriptor, featuresetFeatureId, featureStateKey, featureStateOperationCallback);
    }

    public final <FS extends FeatureState, FSK extends FeatureStateKey<FS>> Cancelable removeFeatureState(TypedFeaturesetDescriptor<FS, ?> descriptor, FeaturesetFeatureId id, FSK stateKey, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "removeFeatureState", false, 2, null);
        return this.nativeMap.removeFeatureState(descriptor.toFeaturesetDescriptor(), id, stateKey != null ? stateKey.getKey() : null, callback);
    }

    public static Cancelable resetFeatureStates$default(MapboxMap mapboxMap, TypedFeaturesetDescriptor typedFeaturesetDescriptor, FeatureStateOperationCallback featureStateOperationCallback, int i, Object obj) {
        if ((i & 2) != 0) {
            featureStateOperationCallback = new FeatureStateOperationCallback() {
                @Override
                public final void run(Expected expected) {
                    Intrinsics.checkNotNullParameter(expected, "it");
                }
            };
        }
        return mapboxMap.resetFeatureStates((TypedFeaturesetDescriptor<?, ?>) typedFeaturesetDescriptor, featureStateOperationCallback);
    }

    public final Cancelable resetFeatureStates(TypedFeaturesetDescriptor<?, ?> descriptor, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "resetFeatureState", false, 2, null);
        return this.nativeMap.resetFeatureStates(descriptor.toFeaturesetDescriptor(), callback);
    }

    public static Cancelable queryRenderedFeatures$default(MapboxMap mapboxMap, TypedFeaturesetDescriptor typedFeaturesetDescriptor, RenderedQueryGeometry renderedQueryGeometry, Value value, QueryRenderedFeaturesetFeaturesCallback queryRenderedFeaturesetFeaturesCallback, int i, Object obj) {
        if ((i & 2) != 0) {
            renderedQueryGeometry = null;
        }
        if ((i & 4) != 0) {
            value = null;
        }
        return mapboxMap.queryRenderedFeatures(typedFeaturesetDescriptor, renderedQueryGeometry, value, queryRenderedFeaturesetFeaturesCallback);
    }

    public final <FF extends FeaturesetFeature<?>> Cancelable queryRenderedFeatures(final TypedFeaturesetDescriptor<?, FF> descriptor, RenderedQueryGeometry geometry, Value filter, final QueryRenderedFeaturesetFeaturesCallback<FF> callback) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkNativeMap$default(this, "queryRenderedFeatures", false, 2, null);
        NativeMapImpl nativeMapImpl = this.nativeMap;
        if (geometry == null) {
            geometry = RenderedQueryGeometry.valueOf(new ScreenBox(new ScreenCoordinate(0.0d, 0.0d), new ScreenCoordinate(getSize().getWidth(), getSize().getHeight())));
        }
        Intrinsics.checkNotNullExpressionValue(geometry, "geometry ?: RenderedQuer…uble())\n        )\n      )");
        return nativeMapImpl.queryRenderedFeatures(geometry, CollectionsKt.listOf(new FeaturesetQueryTarget(descriptor.toFeaturesetDescriptor(), filter, null)), new QueryRenderedFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                MapboxMap.queryRenderedFeatures$lambda$44(callback, descriptor, expected);
            }
        });
    }

    public static final void queryRenderedFeatures$lambda$44(final QueryRenderedFeaturesetFeaturesCallback callback, final TypedFeaturesetDescriptor descriptor, Expected expected) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(descriptor, "$descriptor");
        Intrinsics.checkNotNullParameter(expected, "expected");
        expected.onValue(new Expected.Action() {
            @Override
            public final void run(Object obj) {
                MapboxMap.queryRenderedFeatures$lambda$44$lambda$43(callback, descriptor, (List) obj);
            }
        });
    }

    public static final void queryRenderedFeatures$lambda$44$lambda$43(QueryRenderedFeaturesetFeaturesCallback callback, TypedFeaturesetDescriptor descriptor, List listQueriedRenderedFeatureAsValue) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(descriptor, "$descriptor");
        Intrinsics.checkNotNullParameter(listQueriedRenderedFeatureAsValue, "listQueriedRenderedFeatureAsValue");
        ArrayList arrayList = new ArrayList();
        for (Object obj : listQueriedRenderedFeatureAsValue) {
            if (((QueriedRenderedFeature) obj).getQueriedFeature().getFeature().geometry() != null) {
                arrayList.add(obj);
            }
        }
        ArrayList<QueriedRenderedFeature> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (QueriedRenderedFeature queriedRenderedFeature : arrayList2) {
            Feature feature = queriedRenderedFeature.getQueriedFeature().getFeature();
            Intrinsics.checkNotNullExpressionValue(feature, "it.queriedFeature.feature");
            FeaturesetFeatureId featuresetFeatureId = queriedRenderedFeature.getQueriedFeature().getFeaturesetFeatureId();
            String featureNamespace = featuresetFeatureId != null ? featuresetFeatureId.getFeatureNamespace() : null;
            Value state = queriedRenderedFeature.getQueriedFeature().getState();
            Intrinsics.checkNotNullExpressionValue(state, "it.queriedFeature.state");
            arrayList3.add(descriptor.getFeaturesetFeature(feature, featureNamespace, state));
        }
        callback.onQueryRenderedFeatures(arrayList3);
    }

    public final Map getNativeMap() {
        return this.nativeMap.getMap();
    }

    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J&\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0081\u0002¢\u0006\u0002\b\u001eJ&\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 H\u0080\u0002¢\u0006\u0002\b\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/mapbox/maps/MapboxMap$Companion;", "", "()V", "QFE_CHILDREN", "", "QFE_DEFAULT_LIMIT", "", "QFE_DEFAULT_OFFSET", "QFE_EXPANSION_ZOOM", "QFE_LEAVES", "QFE_LIMIT", "QFE_OFFSET", "QFE_SUPER_CLUSTER", "TAG", "calculateBoundingBox", "", "Lcom/mapbox/geojson/Point;", "points", "clearData", "", "callback", "Lcom/mapbox/maps/AsyncOperationResultCallback;", "invoke", "Lcom/mapbox/maps/MapboxMap;", "nativeMap", "Lcom/mapbox/maps/NativeMapImpl;", "nativeObserver", "Lcom/mapbox/maps/NativeObserver;", "styleObserver", "Lcom/mapbox/maps/StyleObserver;", "invoke$maps_sdk_release", "pixelRatio", "", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final void clearData(AsyncOperationResultCallback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            MapsResourceOptions.clearData(callback);
        }

        public final MapboxMap invoke$maps_sdk_release(NativeMapImpl nativeMap, NativeObserver nativeObserver, StyleObserver styleObserver) {
            Intrinsics.checkNotNullParameter(nativeMap, "nativeMap");
            Intrinsics.checkNotNullParameter(nativeObserver, "nativeObserver");
            Intrinsics.checkNotNullParameter(styleObserver, "styleObserver");
            return new MapboxMap(nativeMap, nativeObserver, styleObserver, (DefaultConstructorMarker) null);
        }

        public final MapboxMap invoke$maps_sdk_release(NativeMapImpl nativeMap, NativeObserver nativeObserver, float pixelRatio) {
            Intrinsics.checkNotNullParameter(nativeMap, "nativeMap");
            Intrinsics.checkNotNullParameter(nativeObserver, "nativeObserver");
            return new MapboxMap(nativeMap, nativeObserver, pixelRatio, (DefaultConstructorMarker) null);
        }

        public final List<Point> calculateBoundingBox(List<Point> points) {
            if (points.size() <= 2) {
                return points;
            }
            double d = Double.NEGATIVE_INFINITY;
            double d2 = Double.POSITIVE_INFINITY;
            double d3 = Double.POSITIVE_INFINITY;
            double d4 = Double.NEGATIVE_INFINITY;
            for (Point point : points) {
                double dLongitude = point.longitude();
                double dLatitude = point.latitude();
                if (d2 > dLongitude) {
                    d2 = dLongitude;
                }
                if (d3 > dLatitude) {
                    d3 = dLatitude;
                }
                if (d < dLongitude) {
                    d = dLongitude;
                }
                if (d4 < dLatitude) {
                    d4 = dLatitude;
                }
            }
            return CollectionsKt.listOf((Object[]) new Point[]{Point.fromLngLat(d2, d3), Point.fromLngLat(d, d4)});
        }
    }
}
