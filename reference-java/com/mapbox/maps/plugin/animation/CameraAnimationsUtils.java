package com.mapbox.maps.plugin.animation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.exifinterface.media.ExifInterface;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraAnimationHint;
import com.mapbox.maps.CameraAnimationHintStage;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.animation.animator.CameraAnchorAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraBearingAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraCenterAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraPaddingAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraPitchAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraZoomAnimator;
import com.mapbox.maps.plugin.delegates.MapPluginExtensionsDelegate;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import com.payfort.fortpaymentsdk.constants.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\b\u0010\u0007\u001a\u00020\u0003H\u0007\u001a$\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002\u001a&\u0010\u000f\u001a\u00020\u00102\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0000\u001a(\u0010\u0015\u001a\u0004\u0018\u00010\u0016*\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007\u001a<\u0010\u0015\u001a\u0004\u0018\u00010\u0016\"\f\b\u0000\u0010\u001c*\u0006\u0012\u0002\b\u00030\u000b*\b\u0012\u0004\u0012\u0002H\u001c0\u00192\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007\u001aB\u0010\u0015\u001a\u0004\u0018\u00010\u0016\"\f\b\u0000\u0010\u001c*\u0006\u0012\u0002\b\u00030\u000b*\b\u0012\u0004\u0012\u0002H\u001c0\u00192\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\u00192\u0006\u0010\f\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002\u001a\f\u0010\u001d\u001a\u00020\u0010*\u00020\u0014H\u0000\u001a,\u0010\u001e\u001a\u00020\u0001*\u00020\u001f2\u0006\u0010 \u001a\u00020!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0007\u001a,\u0010&\u001a\u00020\u0001*\u00020\u001f2\u0006\u0010 \u001a\u00020!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0007\u001a\f\u0010'\u001a\u00020(*\u00020\u0003H\u0007\u001a,\u0010)\u001a\u00020\u0001*\u00020\u001f2\u0006\u0010*\u001a\u00020+2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0007\u001a,\u0010,\u001a\u00020\u0001*\u00020\u001f2\u0006\u0010-\u001a\u00020.2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0007\u001a4\u0010/\u001a\u00020\u0001*\u00020\u001f2\u0006\u00100\u001a\u00020+2\u0006\u00101\u001a\u00020+2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0007\u001a\f\u00102\u001a\u00020\r*\u000203H\u0002\u001a6\u00104\u001a\u00020\u0001*\u00020\u001f2\u0006\u00105\u001a\u00020.2\b\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0003*\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u00066"}, d2 = {"emptyCancelable", "Lcom/mapbox/common/Cancelable;", "camera", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "getCamera", "(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "createCameraAnimationPlugin", "getRelativeFraction", "", "cameraAnimator", "Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "totalDuration", "", "totalFraction", "updateCameraValue", "", "animatedValue", "", "cameraOptionsBuilder", "Lcom/mapbox/maps/CameraOptions$Builder;", "calculateCameraAnimationHint", "Lcom/mapbox/maps/CameraAnimationHint;", "Landroid/animation/AnimatorSet;", "fractions", "", "startCameraState", "Lcom/mapbox/maps/CameraState;", ExifInterface.GPS_DIRECTION_TRUE, "clear", "easeTo", "Lcom/mapbox/maps/plugin/delegates/MapPluginExtensionsDelegate;", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "animationOptions", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "animatorListener", "Landroid/animation/Animator$AnimatorListener;", "flyTo", "getCameraAnimatorsFactory", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;", "moveBy", "screenCoordinate", "Lcom/mapbox/maps/ScreenCoordinate;", "pitchBy", "pitch", "", "rotateBy", "first", "second", "safeTotalDuration", "Landroid/animation/Animator;", "scaleBy", Constants.FORT_PARAMS.AMOUNT, "plugin-animation_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class CameraAnimationsUtils {
    private static final Cancelable emptyCancelable = new Cancelable() {
        @Override
        public final void cancel() {
            CameraAnimationsUtils.emptyCancelable$lambda$0();
        }
    };

    public static final Cancelable easeTo(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        return easeTo$default(mapPluginExtensionsDelegate, cameraOptions, null, null, 6, null);
    }

    public static final Cancelable easeTo(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, CameraOptions cameraOptions, MapAnimationOptions mapAnimationOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        return easeTo$default(mapPluginExtensionsDelegate, cameraOptions, mapAnimationOptions, null, 4, null);
    }

    public static final void emptyCancelable$lambda$0() {
    }

    public static final Cancelable flyTo(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        return flyTo$default(mapPluginExtensionsDelegate, cameraOptions, null, null, 6, null);
    }

    public static final Cancelable flyTo(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, CameraOptions cameraOptions, MapAnimationOptions mapAnimationOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        return flyTo$default(mapPluginExtensionsDelegate, cameraOptions, mapAnimationOptions, null, 4, null);
    }

    public static final Cancelable moveBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, ScreenCoordinate screenCoordinate) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        return moveBy$default(mapPluginExtensionsDelegate, screenCoordinate, null, null, 6, null);
    }

    public static final Cancelable moveBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, ScreenCoordinate screenCoordinate, MapAnimationOptions mapAnimationOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        return moveBy$default(mapPluginExtensionsDelegate, screenCoordinate, mapAnimationOptions, null, 4, null);
    }

    public static final Cancelable pitchBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, double d) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        return pitchBy$default(mapPluginExtensionsDelegate, d, null, null, 6, null);
    }

    public static final Cancelable pitchBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, double d, MapAnimationOptions mapAnimationOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        return pitchBy$default(mapPluginExtensionsDelegate, d, mapAnimationOptions, null, 4, null);
    }

    public static final Cancelable rotateBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, ScreenCoordinate first, ScreenCoordinate second) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        return rotateBy$default(mapPluginExtensionsDelegate, first, second, null, null, 12, null);
    }

    public static final Cancelable rotateBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, ScreenCoordinate first, ScreenCoordinate second, MapAnimationOptions mapAnimationOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        return rotateBy$default(mapPluginExtensionsDelegate, first, second, mapAnimationOptions, null, 8, null);
    }

    public static final Cancelable scaleBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, double d, ScreenCoordinate screenCoordinate) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        return scaleBy$default(mapPluginExtensionsDelegate, d, screenCoordinate, null, null, 12, null);
    }

    public static final Cancelable scaleBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, double d, ScreenCoordinate screenCoordinate, MapAnimationOptions mapAnimationOptions) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        return scaleBy$default(mapPluginExtensionsDelegate, d, screenCoordinate, mapAnimationOptions, null, 8, null);
    }

    public static final CameraAnimationsPlugin getCamera(MapPluginProviderDelegate mapPluginProviderDelegate) {
        Intrinsics.checkNotNullParameter(mapPluginProviderDelegate, "<this>");
        MapPlugin plugin = mapPluginProviderDelegate.getPlugin(Plugin.MAPBOX_CAMERA_PLUGIN_ID);
        Intrinsics.checkNotNull(plugin);
        return (CameraAnimationsPlugin) plugin;
    }

    public static Cancelable easeTo$default(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, CameraOptions cameraOptions, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            mapAnimationOptions = null;
        }
        if ((i & 4) != 0) {
            animatorListener = null;
        }
        return easeTo(mapPluginExtensionsDelegate, cameraOptions, mapAnimationOptions, animatorListener);
    }

    public static final Cancelable easeTo(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final CameraOptions cameraOptions, final MapAnimationOptions mapAnimationOptions, final Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        Object objCameraAnimationsPlugin = mapPluginExtensionsDelegate.cameraAnimationsPlugin(new Function1<CameraAnimationsPlugin, Object>() {
            {
                super(1);
            }

            @Override
            public final Object invoke(CameraAnimationsPlugin cameraAnimationsPlugin) {
                Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "$this$cameraAnimationsPlugin");
                return cameraAnimationsPlugin.easeTo(cameraOptions, mapAnimationOptions, animatorListener);
            }
        });
        Cancelable cancelable = objCameraAnimationsPlugin instanceof Cancelable ? (Cancelable) objCameraAnimationsPlugin : null;
        return cancelable == null ? emptyCancelable : cancelable;
    }

    public static Cancelable flyTo$default(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, CameraOptions cameraOptions, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            mapAnimationOptions = null;
        }
        if ((i & 4) != 0) {
            animatorListener = null;
        }
        return flyTo(mapPluginExtensionsDelegate, cameraOptions, mapAnimationOptions, animatorListener);
    }

    public static final Cancelable flyTo(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final CameraOptions cameraOptions, final MapAnimationOptions mapAnimationOptions, final Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        Object objCameraAnimationsPlugin = mapPluginExtensionsDelegate.cameraAnimationsPlugin(new Function1<CameraAnimationsPlugin, Object>() {
            {
                super(1);
            }

            @Override
            public final Object invoke(CameraAnimationsPlugin cameraAnimationsPlugin) {
                Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "$this$cameraAnimationsPlugin");
                return cameraAnimationsPlugin.flyTo(cameraOptions, mapAnimationOptions, animatorListener);
            }
        });
        Cancelable cancelable = objCameraAnimationsPlugin instanceof Cancelable ? (Cancelable) objCameraAnimationsPlugin : null;
        return cancelable == null ? emptyCancelable : cancelable;
    }

    public static Cancelable pitchBy$default(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, double d, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            mapAnimationOptions = null;
        }
        if ((i & 4) != 0) {
            animatorListener = null;
        }
        return pitchBy(mapPluginExtensionsDelegate, d, mapAnimationOptions, animatorListener);
    }

    public static final Cancelable pitchBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final double d, final MapAnimationOptions mapAnimationOptions, final Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Object objCameraAnimationsPlugin = mapPluginExtensionsDelegate.cameraAnimationsPlugin(new Function1<CameraAnimationsPlugin, Object>() {
            {
                super(1);
            }

            @Override
            public final Object invoke(CameraAnimationsPlugin cameraAnimationsPlugin) {
                Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "$this$cameraAnimationsPlugin");
                return cameraAnimationsPlugin.pitchBy(d, mapAnimationOptions, animatorListener);
            }
        });
        Cancelable cancelable = objCameraAnimationsPlugin instanceof Cancelable ? (Cancelable) objCameraAnimationsPlugin : null;
        return cancelable == null ? emptyCancelable : cancelable;
    }

    public static Cancelable scaleBy$default(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, double d, ScreenCoordinate screenCoordinate, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
        if ((i & 4) != 0) {
            mapAnimationOptions = null;
        }
        if ((i & 8) != 0) {
            animatorListener = null;
        }
        return scaleBy(mapPluginExtensionsDelegate, d, screenCoordinate, mapAnimationOptions, animatorListener);
    }

    public static final Cancelable scaleBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final double d, final ScreenCoordinate screenCoordinate, final MapAnimationOptions mapAnimationOptions, final Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Object objCameraAnimationsPlugin = mapPluginExtensionsDelegate.cameraAnimationsPlugin(new Function1<CameraAnimationsPlugin, Object>() {
            {
                super(1);
            }

            @Override
            public final Object invoke(CameraAnimationsPlugin cameraAnimationsPlugin) {
                Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "$this$cameraAnimationsPlugin");
                return cameraAnimationsPlugin.scaleBy(d, screenCoordinate, mapAnimationOptions, animatorListener);
            }
        });
        Cancelable cancelable = objCameraAnimationsPlugin instanceof Cancelable ? (Cancelable) objCameraAnimationsPlugin : null;
        return cancelable == null ? emptyCancelable : cancelable;
    }

    public static Cancelable moveBy$default(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, ScreenCoordinate screenCoordinate, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            mapAnimationOptions = null;
        }
        if ((i & 4) != 0) {
            animatorListener = null;
        }
        return moveBy(mapPluginExtensionsDelegate, screenCoordinate, mapAnimationOptions, animatorListener);
    }

    public static final Cancelable moveBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final ScreenCoordinate screenCoordinate, final MapAnimationOptions mapAnimationOptions, final Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        Object objCameraAnimationsPlugin = mapPluginExtensionsDelegate.cameraAnimationsPlugin(new Function1<CameraAnimationsPlugin, Object>() {
            {
                super(1);
            }

            @Override
            public final Object invoke(CameraAnimationsPlugin cameraAnimationsPlugin) {
                Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "$this$cameraAnimationsPlugin");
                return cameraAnimationsPlugin.moveBy(screenCoordinate, mapAnimationOptions, animatorListener);
            }
        });
        Cancelable cancelable = objCameraAnimationsPlugin instanceof Cancelable ? (Cancelable) objCameraAnimationsPlugin : null;
        return cancelable == null ? emptyCancelable : cancelable;
    }

    public static Cancelable rotateBy$default(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, ScreenCoordinate screenCoordinate, ScreenCoordinate screenCoordinate2, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
        if ((i & 4) != 0) {
            mapAnimationOptions = null;
        }
        if ((i & 8) != 0) {
            animatorListener = null;
        }
        return rotateBy(mapPluginExtensionsDelegate, screenCoordinate, screenCoordinate2, mapAnimationOptions, animatorListener);
    }

    public static final Cancelable rotateBy(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final ScreenCoordinate first, final ScreenCoordinate second, final MapAnimationOptions mapAnimationOptions, final Animator.AnimatorListener animatorListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        Object objCameraAnimationsPlugin = mapPluginExtensionsDelegate.cameraAnimationsPlugin(new Function1<CameraAnimationsPlugin, Object>() {
            {
                super(1);
            }

            @Override
            public final Object invoke(CameraAnimationsPlugin cameraAnimationsPlugin) {
                Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "$this$cameraAnimationsPlugin");
                return cameraAnimationsPlugin.rotateBy(first, second, mapAnimationOptions, animatorListener);
            }
        });
        Cancelable cancelable = objCameraAnimationsPlugin instanceof Cancelable ? (Cancelable) objCameraAnimationsPlugin : null;
        return cancelable == null ? emptyCancelable : cancelable;
    }

    public static final CameraAnimationsPlugin createCameraAnimationPlugin() {
        return new CameraAnimationsPluginImpl();
    }

    public static final CameraAnimatorsFactory getCameraAnimatorsFactory(CameraAnimationsPlugin cameraAnimationsPlugin) {
        Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "<this>");
        return ((CameraAnimationsPluginImpl) cameraAnimationsPlugin).getCameraAnimationsFactory();
    }

    public static CameraAnimationHint calculateCameraAnimationHint$default(AnimatorSet animatorSet, List list, CameraState cameraState, int i, Object obj) {
        if ((i & 2) != 0) {
            cameraState = null;
        }
        return calculateCameraAnimationHint(animatorSet, list, cameraState);
    }

    public static final CameraAnimationHint calculateCameraAnimationHint(AnimatorSet animatorSet, List fractions, CameraState cameraState) {
        long jSafeTotalDuration;
        Intrinsics.checkNotNullParameter(animatorSet, "<this>");
        Intrinsics.checkNotNullParameter(fractions, "fractions");
        ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
        Intrinsics.checkNotNullExpressionValue(childAnimations, "childAnimations");
        ArrayList arrayList = new ArrayList();
        for (Object obj : childAnimations) {
            if (obj instanceof CameraAnimator) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.size() != animatorSet.getChildAnimations().size()) {
            MapboxLogger.logW(CameraAnimationsPluginImpl.TAG, "Incompatible animators: all should be instances of CameraAnimator");
            return null;
        }
        if (animatorSet.getStartDelay() != 0) {
            MapboxLogger.logW(CameraAnimationsPluginImpl.TAG, "AnimatorSets with non-zero startDelay are not supported.");
            return null;
        }
        if (animatorSet.getChildAnimations().isEmpty()) {
            MapboxLogger.logW(CameraAnimationsPluginImpl.TAG, "AnimatorSet has no child animations.");
            return null;
        }
        if (animatorSet.getDuration() >= 0) {
            jSafeTotalDuration = animatorSet.getDuration();
        } else {
            Iterator it = arrayList2.iterator();
            if (!it.hasNext()) {
                throw new NoSuchElementException();
            }
            jSafeTotalDuration = safeTotalDuration((CameraAnimator) it.next());
            while (it.hasNext()) {
                long jSafeTotalDuration2 = safeTotalDuration((CameraAnimator) it.next());
                if (jSafeTotalDuration < jSafeTotalDuration2) {
                    jSafeTotalDuration = jSafeTotalDuration2;
                }
            }
        }
        return calculateCameraAnimationHint(arrayList2, fractions, jSafeTotalDuration, cameraState);
    }

    public static CameraAnimationHint calculateCameraAnimationHint$default(List list, List list2, CameraState cameraState, int i, Object obj) {
        if ((i & 2) != 0) {
            cameraState = null;
        }
        return calculateCameraAnimationHint(list, list2, cameraState);
    }

    public static final CameraAnimationHint calculateCameraAnimationHint(List list, List fractions, CameraState cameraState) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(fractions, "fractions");
        if (list.isEmpty()) {
            return null;
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        long jSafeTotalDuration = safeTotalDuration((CameraAnimator) it.next());
        while (it.hasNext()) {
            long jSafeTotalDuration2 = safeTotalDuration((CameraAnimator) it.next());
            if (jSafeTotalDuration < jSafeTotalDuration2) {
                jSafeTotalDuration = jSafeTotalDuration2;
            }
        }
        return calculateCameraAnimationHint(list, fractions, jSafeTotalDuration, cameraState);
    }

    private static final long safeTotalDuration(Animator animator) {
        return animator.getTotalDuration();
    }

    private static final <T extends CameraAnimator<?>> CameraAnimationHint calculateCameraAnimationHint(List<? extends T> list, List<Float> list2, long j, CameraState cameraState) {
        if (list.isEmpty() || j == 0) {
            return null;
        }
        if (j != -1) {
            List<? extends T> list3 = list;
            if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                Iterator<T> it = list3.iterator();
                while (it.hasNext()) {
                    if (((CameraAnimator) it.next()).getDuration() == -1) {
                    }
                }
            }
            CameraOptions.Builder builder = new CameraOptions.Builder();
            List<Float> list4 = list2;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
            Iterator<T> it2 = list4.iterator();
            while (it2.hasNext()) {
                float fFloatValue = ((Number) it2.next()).floatValue();
                clear(builder);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
                Iterator<T> it3 = list3.iterator();
                while (it3.hasNext()) {
                    CameraAnimator cameraAnimator = (CameraAnimator) it3.next();
                    try {
                        updateCameraValue(cameraAnimator, cameraAnimator.getAnimatedValueAt$plugin_animation_release(getRelativeFraction(cameraAnimator, j, fFloatValue), cameraState), builder);
                    } catch (UnsupportedOperationException e) {
                        MapboxLogger.logW(CameraAnimationsPluginImpl.TAG, "Unable to calculate animated value ahead of time for " + cameraAnimator.getType().name() + ": " + e.getMessage());
                    }
                    arrayList2.add(Unit.INSTANCE);
                }
                arrayList.add(new CameraAnimationHintStage.Builder().camera(builder.build()).progress((long) (j * fFloatValue)).build());
            }
            return new CameraAnimationHint.Builder().stages(arrayList).build();
        }
        MapboxLogger.logW(CameraAnimationsPluginImpl.TAG, "Animators with infinite duration are not supported. Please use finite duration for all animators.");
        return null;
    }

    private static final float getRelativeFraction(CameraAnimator<?> cameraAnimator, long j, float f) {
        long duration = cameraAnimator.getDuration();
        if (duration <= 0) {
            return 1.0f;
        }
        return RangesKt.coerceIn(((f * j) - cameraAnimator.getStartDelay()) / duration, 0.0f, 1.0f);
    }

    public static final void updateCameraValue(CameraAnimator<?> cameraAnimator, Object obj, CameraOptions.Builder cameraOptionsBuilder) {
        Intrinsics.checkNotNullParameter(cameraAnimator, "cameraAnimator");
        Intrinsics.checkNotNullParameter(cameraOptionsBuilder, "cameraOptionsBuilder");
        if (cameraAnimator instanceof CameraCenterAnimator) {
            cameraOptionsBuilder.center(obj instanceof Point ? (Point) obj : null);
            return;
        }
        if (cameraAnimator instanceof CameraZoomAnimator) {
            cameraOptionsBuilder.zoom(obj instanceof Double ? (Double) obj : null);
            return;
        }
        if (cameraAnimator instanceof CameraAnchorAnimator) {
            cameraOptionsBuilder.anchor(obj instanceof ScreenCoordinate ? (ScreenCoordinate) obj : null);
            return;
        }
        if (cameraAnimator instanceof CameraPaddingAnimator) {
            cameraOptionsBuilder.padding(obj instanceof EdgeInsets ? (EdgeInsets) obj : null);
        } else if (cameraAnimator instanceof CameraBearingAnimator) {
            cameraOptionsBuilder.bearing(obj instanceof Double ? (Double) obj : null);
        } else if (cameraAnimator instanceof CameraPitchAnimator) {
            cameraOptionsBuilder.pitch(obj instanceof Double ? (Double) obj : null);
        }
    }

    public static final void clear(CameraOptions.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.center(null);
        builder.padding(null);
        builder.anchor(null);
        builder.zoom(null);
        builder.bearing(null);
        builder.pitch(null);
    }
}
