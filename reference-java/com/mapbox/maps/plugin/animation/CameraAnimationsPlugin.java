package com.mapbox.maps.plugin.animation;

import android.animation.Animator;
import android.animation.ValueAnimator;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.payfort.fortpaymentsdk.constants.Constants;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0013\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0011H&J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0013H&J\u0016\u0010\u0014\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H&J\u0016\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H&J\u0016\u0010\u0019\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0015H&J\u0016\u0010\u001b\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H&J\u0016\u0010\u001c\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H&J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0016H&J\u0018\u0010 \u001a\u00020\u000f2\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"H&J3\u0010$\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030'2\u001b\b\u0002\u0010(\u001a\u0015\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000f\u0018\u00010)¢\u0006\u0002\b*H&J=\u0010+\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00160'2\b\b\u0002\u0010,\u001a\u00020\t2\u001b\b\u0002\u0010(\u001a\u0015\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000f\u0018\u00010)¢\u0006\u0002\b*H&J3\u0010-\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00180'2\u001b\b\u0002\u0010(\u001a\u0015\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000f\u0018\u00010)¢\u0006\u0002\b*H\u0017J;\u0010-\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00180'2\u0006\u0010,\u001a\u00020\t2\u001b\b\u0002\u0010(\u001a\u0015\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000f\u0018\u00010)¢\u0006\u0002\b*H&J3\u0010.\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001a0'2\u001b\b\u0002\u0010(\u001a\u0015\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000f\u0018\u00010)¢\u0006\u0002\b*H&J3\u0010/\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00160'2\u001b\b\u0002\u0010(\u001a\u0015\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000f\u0018\u00010)¢\u0006\u0002\b*H&J3\u00100\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00160'2\u001b\b\u0002\u0010(\u001a\u0015\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000f\u0018\u00010)¢\u0006\u0002\b*H&J(\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108H&J(\u00109\u001a\u0002022\u0006\u00103\u001a\u0002042\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108H&J(\u0010:\u001a\u0002022\u0006\u0010;\u001a\u00020\u00032\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108H&J(\u0010<\u001a\u0002022\u0006\u0010=\u001a\u00020\u00162\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108H&J!\u0010>\u001a\u00020\u000f2\u0012\u0010?\u001a\n\u0012\u0006\b\u0001\u0012\u00020%0@\"\u00020%H&¢\u0006\u0002\u0010AJ!\u0010B\u001a\u00020\u000f2\u0012\u0010?\u001a\n\u0012\u0006\b\u0001\u0012\u00020%0@\"\u00020%H&¢\u0006\u0002\u0010AJ!\u0010C\u001a\u00020\u000f2\u0012\u0010D\u001a\n\u0012\u0006\b\u0001\u0012\u00020%0@\"\u00020%H&¢\u0006\u0002\u0010AJ\u0018\u0010E\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0011H&J\u0010\u0010F\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0013H&J\u0016\u0010G\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H&J\u0016\u0010H\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H&J\u0016\u0010I\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0015H&J\u0016\u0010J\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H&J\u0016\u0010K\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H&J0\u0010L\u001a\u0002022\u0006\u0010M\u001a\u00020\u00032\u0006\u0010N\u001a\u00020\u00032\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108H&J2\u0010O\u001a\u0002022\u0006\u0010\u001e\u001a\u00020\u00162\b\u0010;\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108H&J+\u0010P\u001a\u00020\u000f2\u0012\u0010D\u001a\n\u0012\u0006\b\u0001\u0012\u00020%0@\"\u00020%2\b\b\u0002\u0010Q\u001a\u00020\tH&¢\u0006\u0002\u0010RR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006S"}, d2 = {"Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "Lcom/mapbox/maps/plugin/MapPlugin;", "anchor", "Lcom/mapbox/maps/ScreenCoordinate;", "getAnchor", "()Lcom/mapbox/maps/ScreenCoordinate;", "setAnchor", "(Lcom/mapbox/maps/ScreenCoordinate;)V", "debugMode", "", "getDebugMode", "()Z", "setDebugMode", "(Z)V", "addCameraAnchorChangeListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/plugin/animation/CameraAnimatorNullableChangeListener;", "addCameraAnimationsLifecycleListener", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsLifecycleListener;", "addCameraBearingChangeListener", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorChangeListener;", "", "addCameraCenterChangeListener", "Lcom/mapbox/geojson/Point;", "addCameraPaddingChangeListener", "Lcom/mapbox/maps/EdgeInsets;", "addCameraPitchChangeListener", "addCameraZoomChangeListener", "calculateScaleBy", Constants.FORT_PARAMS.AMOUNT, "currentZoom", "cancelAllAnimators", "exceptOwnerList", "", "", "createAnchorAnimator", "Landroid/animation/ValueAnimator;", "options", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "createBearingAnimator", "useShortestPath", "createCenterAnimator", "createPaddingAnimator", "createPitchAnimator", "createZoomAnimator", "easeTo", "Lcom/mapbox/common/Cancelable;", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "animationOptions", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "animatorListener", "Landroid/animation/Animator$AnimatorListener;", "flyTo", "moveBy", "screenCoordinate", "pitchBy", "pitch", "playAnimatorsSequentially", "animators", "", "([Landroid/animation/ValueAnimator;)V", "playAnimatorsTogether", "registerAnimators", "cameraAnimators", "removeCameraAnchorChangeListener", "removeCameraAnimationsLifecycleListener", "removeCameraBearingChangeListener", "removeCameraCenterChangeListener", "removeCameraPaddingChangeListener", "removeCameraPitchChangeListener", "removeCameraZoomChangeListener", "rotateBy", "first", "second", "scaleBy", "unregisterAnimators", "cancelAnimators", "([Landroid/animation/ValueAnimator;Z)V", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface CameraAnimationsPlugin extends MapPlugin {
    void addCameraAnchorChangeListener(CameraAnimatorNullableChangeListener<ScreenCoordinate> listener);

    void addCameraAnimationsLifecycleListener(CameraAnimationsLifecycleListener listener);

    void addCameraBearingChangeListener(CameraAnimatorChangeListener<Double> listener);

    void addCameraCenterChangeListener(CameraAnimatorChangeListener<Point> listener);

    void addCameraPaddingChangeListener(CameraAnimatorChangeListener<EdgeInsets> listener);

    void addCameraPitchChangeListener(CameraAnimatorChangeListener<Double> listener);

    void addCameraZoomChangeListener(CameraAnimatorChangeListener<Double> listener);

    double calculateScaleBy(double amount, double currentZoom);

    void cancelAllAnimators(List<String> exceptOwnerList);

    ValueAnimator createAnchorAnimator(CameraAnimatorOptions<ScreenCoordinate> options, Function1<? super ValueAnimator, Unit> block);

    ValueAnimator createBearingAnimator(CameraAnimatorOptions<Double> options, boolean useShortestPath, Function1<? super ValueAnimator, Unit> block);

    @Deprecated(message = "createCenterAnimator(options, block) is deprecated, please use createCenterAnimator(options, useShortestPath, block) instead.", replaceWith = @ReplaceWith(expression = "createCenterAnimator(options, useShortestPath, block)", imports = {}))
    ValueAnimator createCenterAnimator(CameraAnimatorOptions<Point> options, Function1<? super ValueAnimator, Unit> block);

    ValueAnimator createCenterAnimator(CameraAnimatorOptions<Point> options, boolean useShortestPath, Function1<? super ValueAnimator, Unit> block);

    ValueAnimator createPaddingAnimator(CameraAnimatorOptions<EdgeInsets> options, Function1<? super ValueAnimator, Unit> block);

    ValueAnimator createPitchAnimator(CameraAnimatorOptions<Double> options, Function1<? super ValueAnimator, Unit> block);

    ValueAnimator createZoomAnimator(CameraAnimatorOptions<Double> options, Function1<? super ValueAnimator, Unit> block);

    Cancelable easeTo(CameraOptions cameraOptions, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener);

    Cancelable flyTo(CameraOptions cameraOptions, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener);

    ScreenCoordinate getAnchor();

    boolean getDebugMode();

    Cancelable moveBy(ScreenCoordinate screenCoordinate, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener);

    Cancelable pitchBy(double pitch, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener);

    void playAnimatorsSequentially(ValueAnimator... animators);

    void playAnimatorsTogether(ValueAnimator... animators);

    void registerAnimators(ValueAnimator... cameraAnimators);

    void removeCameraAnchorChangeListener(CameraAnimatorNullableChangeListener<ScreenCoordinate> listener);

    void removeCameraAnimationsLifecycleListener(CameraAnimationsLifecycleListener listener);

    void removeCameraBearingChangeListener(CameraAnimatorChangeListener<Double> listener);

    void removeCameraCenterChangeListener(CameraAnimatorChangeListener<Point> listener);

    void removeCameraPaddingChangeListener(CameraAnimatorChangeListener<EdgeInsets> listener);

    void removeCameraPitchChangeListener(CameraAnimatorChangeListener<Double> listener);

    void removeCameraZoomChangeListener(CameraAnimatorChangeListener<Double> listener);

    Cancelable rotateBy(ScreenCoordinate first, ScreenCoordinate second, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener);

    Cancelable scaleBy(double amount, ScreenCoordinate screenCoordinate, MapAnimationOptions animationOptions, Animator.AnimatorListener animatorListener);

    void setAnchor(ScreenCoordinate screenCoordinate);

    void setDebugMode(boolean z);

    void unregisterAnimators(ValueAnimator[] cameraAnimators, boolean cancelAnimators);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static void cleanup(CameraAnimationsPlugin cameraAnimationsPlugin) {
            MapPlugin.DefaultImpls.cleanup(cameraAnimationsPlugin);
        }

        public static void initialize(CameraAnimationsPlugin cameraAnimationsPlugin) {
            MapPlugin.DefaultImpls.initialize(cameraAnimationsPlugin);
        }

        public static void onDelegateProvider(CameraAnimationsPlugin cameraAnimationsPlugin, MapDelegateProvider delegateProvider) {
            Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
            MapPlugin.DefaultImpls.onDelegateProvider(cameraAnimationsPlugin, delegateProvider);
        }

        public static Cancelable easeTo$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraOptions cameraOptions, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: easeTo");
            }
            if ((i & 2) != 0) {
                mapAnimationOptions = null;
            }
            if ((i & 4) != 0) {
                animatorListener = null;
            }
            return cameraAnimationsPlugin.easeTo(cameraOptions, mapAnimationOptions, animatorListener);
        }

        public static Cancelable scaleBy$default(CameraAnimationsPlugin cameraAnimationsPlugin, double d, ScreenCoordinate screenCoordinate, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scaleBy");
            }
            if ((i & 4) != 0) {
                mapAnimationOptions = null;
            }
            if ((i & 8) != 0) {
                animatorListener = null;
            }
            return cameraAnimationsPlugin.scaleBy(d, screenCoordinate, mapAnimationOptions, animatorListener);
        }

        public static Cancelable moveBy$default(CameraAnimationsPlugin cameraAnimationsPlugin, ScreenCoordinate screenCoordinate, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: moveBy");
            }
            if ((i & 2) != 0) {
                mapAnimationOptions = null;
            }
            if ((i & 4) != 0) {
                animatorListener = null;
            }
            return cameraAnimationsPlugin.moveBy(screenCoordinate, mapAnimationOptions, animatorListener);
        }

        public static Cancelable rotateBy$default(CameraAnimationsPlugin cameraAnimationsPlugin, ScreenCoordinate screenCoordinate, ScreenCoordinate screenCoordinate2, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rotateBy");
            }
            if ((i & 4) != 0) {
                mapAnimationOptions = null;
            }
            if ((i & 8) != 0) {
                animatorListener = null;
            }
            return cameraAnimationsPlugin.rotateBy(screenCoordinate, screenCoordinate2, mapAnimationOptions, animatorListener);
        }

        public static Cancelable pitchBy$default(CameraAnimationsPlugin cameraAnimationsPlugin, double d, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pitchBy");
            }
            if ((i & 2) != 0) {
                mapAnimationOptions = null;
            }
            if ((i & 4) != 0) {
                animatorListener = null;
            }
            return cameraAnimationsPlugin.pitchBy(d, mapAnimationOptions, animatorListener);
        }

        public static Cancelable flyTo$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraOptions cameraOptions, MapAnimationOptions mapAnimationOptions, Animator.AnimatorListener animatorListener, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flyTo");
            }
            if ((i & 2) != 0) {
                mapAnimationOptions = null;
            }
            if ((i & 4) != 0) {
                animatorListener = null;
            }
            return cameraAnimationsPlugin.flyTo(cameraOptions, mapAnimationOptions, animatorListener);
        }

        public static ValueAnimator createZoomAnimator$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions cameraAnimatorOptions, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createZoomAnimator");
            }
            if ((i & 2) != 0) {
                function1 = null;
            }
            return cameraAnimationsPlugin.createZoomAnimator(cameraAnimatorOptions, function1);
        }

        public static ValueAnimator createAnchorAnimator$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions cameraAnimatorOptions, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createAnchorAnimator");
            }
            if ((i & 2) != 0) {
                function1 = null;
            }
            return cameraAnimationsPlugin.createAnchorAnimator(cameraAnimatorOptions, function1);
        }

        public static ValueAnimator createBearingAnimator$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions cameraAnimatorOptions, boolean z, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createBearingAnimator");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            if ((i & 4) != 0) {
                function1 = null;
            }
            return cameraAnimationsPlugin.createBearingAnimator(cameraAnimatorOptions, z, function1);
        }

        public static ValueAnimator createPitchAnimator$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions cameraAnimatorOptions, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createPitchAnimator");
            }
            if ((i & 2) != 0) {
                function1 = null;
            }
            return cameraAnimationsPlugin.createPitchAnimator(cameraAnimatorOptions, function1);
        }

        public static ValueAnimator createPaddingAnimator$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions cameraAnimatorOptions, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createPaddingAnimator");
            }
            if ((i & 2) != 0) {
                function1 = null;
            }
            return cameraAnimationsPlugin.createPaddingAnimator(cameraAnimatorOptions, function1);
        }

        public static ValueAnimator createCenterAnimator$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions cameraAnimatorOptions, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createCenterAnimator");
            }
            if ((i & 2) != 0) {
                function1 = null;
            }
            return cameraAnimationsPlugin.createCenterAnimator(cameraAnimatorOptions, function1);
        }

        @Deprecated(message = "createCenterAnimator(options, block) is deprecated, please use createCenterAnimator(options, useShortestPath, block) instead.", replaceWith = @ReplaceWith(expression = "createCenterAnimator(options, useShortestPath, block)", imports = {}))
        public static ValueAnimator createCenterAnimator(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions<Point> options, Function1<? super ValueAnimator, Unit> function1) {
            Intrinsics.checkNotNullParameter(options, "options");
            return cameraAnimationsPlugin.createCenterAnimator(options, false, function1);
        }

        public static ValueAnimator createCenterAnimator$default(CameraAnimationsPlugin cameraAnimationsPlugin, CameraAnimatorOptions cameraAnimatorOptions, boolean z, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createCenterAnimator");
            }
            if ((i & 4) != 0) {
                function1 = null;
            }
            return cameraAnimationsPlugin.createCenterAnimator(cameraAnimatorOptions, z, function1);
        }

        public static void cancelAllAnimators$default(CameraAnimationsPlugin cameraAnimationsPlugin, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancelAllAnimators");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.emptyList();
            }
            cameraAnimationsPlugin.cancelAllAnimators(list);
        }

        public static void unregisterAnimators$default(CameraAnimationsPlugin cameraAnimationsPlugin, ValueAnimator[] valueAnimatorArr, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unregisterAnimators");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            cameraAnimationsPlugin.unregisterAnimators(valueAnimatorArr, z);
        }
    }
}
