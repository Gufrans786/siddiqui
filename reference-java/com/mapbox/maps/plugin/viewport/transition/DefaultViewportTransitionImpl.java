package com.mapbox.maps.plugin.viewport.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.animation.CameraAnimatorType;
import com.mapbox.maps.plugin.animation.animator.CameraAnimator;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.viewport.CompletionListener;
import com.mapbox.maps.plugin.viewport.data.DefaultViewportTransitionOptions;
import com.mapbox.maps.plugin.viewport.state.ViewportState;
import com.mapbox.maps.plugin.viewport.state.ViewportStateDataObserver;
import com.mapbox.maps.threading.AnimationThreadController;
import com.mapbox.maps.util.MathUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0012\u0010\u001c\u001a\u00020\u00162\b\u0010\u001d\u001a\u0004\u0018\u00010\u0014H\u0002J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&H\u0002J*\u0010'\u001a\u00020\u0016*\u00020\u00142\f\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0019H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/mapbox/maps/plugin/viewport/transition/DefaultViewportTransitionImpl;", "Lcom/mapbox/maps/plugin/viewport/transition/DefaultViewportTransition;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "options", "Lcom/mapbox/maps/plugin/viewport/data/DefaultViewportTransitionOptions;", "transitionFactory", "Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/viewport/data/DefaultViewportTransitionOptions;Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory;)V", "cachedAnchor", "Lcom/mapbox/maps/ScreenCoordinate;", "cameraDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "cameraPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "getOptions", "()Lcom/mapbox/maps/plugin/viewport/data/DefaultViewportTransitionOptions;", "setOptions", "(Lcom/mapbox/maps/plugin/viewport/data/DefaultViewportTransitionOptions;)V", "runningAnimation", "Landroid/animation/AnimatorSet;", "cancelAnimation", "", "createAnimatorSet", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "maxDurationMs", "", "finishAnimation", "animatorSet", "run", "Lcom/mapbox/common/Cancelable;", TypedValues.TransitionType.S_TO, "Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "completionListener", "Lcom/mapbox/maps/plugin/viewport/CompletionListener;", "startAnimation", "instant", "", "updateTargetCameraOptions", "completedChildAnimators", "", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "startCamera", "Lcom/mapbox/maps/CameraState;", "targetCamera", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DefaultViewportTransitionImpl implements DefaultViewportTransition {
    private ScreenCoordinate cachedAnchor;
    private final MapCameraManagerDelegate cameraDelegate;
    private final CameraAnimationsPlugin cameraPlugin;
    private DefaultViewportTransitionOptions options;
    private AnimatorSet runningAnimation;
    private final MapboxViewportTransitionFactory transitionFactory;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CameraAnimatorType.values().length];
            try {
                iArr[CameraAnimatorType.ANCHOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CameraAnimatorType.BEARING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CameraAnimatorType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CameraAnimatorType.ZOOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CameraAnimatorType.PITCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CameraAnimatorType.PADDING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DefaultViewportTransitionImpl(MapDelegateProvider delegateProvider, DefaultViewportTransitionOptions options, MapboxViewportTransitionFactory transitionFactory) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(transitionFactory, "transitionFactory");
        this.options = options;
        this.transitionFactory = transitionFactory;
        this.cameraPlugin = CameraAnimationsUtils.getCamera(delegateProvider.getMapPluginProviderDelegate());
        this.cameraDelegate = delegateProvider.getMapCameraManagerDelegate();
    }

    @Override
    public DefaultViewportTransitionOptions getOptions() {
        return this.options;
    }

    @Override
    public void setOptions(DefaultViewportTransitionOptions defaultViewportTransitionOptions) {
        Intrinsics.checkNotNullParameter(defaultViewportTransitionOptions, "<set-?>");
        this.options = defaultViewportTransitionOptions;
    }

    public DefaultViewportTransitionImpl(MapDelegateProvider mapDelegateProvider, DefaultViewportTransitionOptions defaultViewportTransitionOptions, MapboxViewportTransitionFactory mapboxViewportTransitionFactory, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapDelegateProvider, defaultViewportTransitionOptions, (i & 4) != 0 ? new MapboxViewportTransitionFactory(mapDelegateProvider) : mapboxViewportTransitionFactory);
    }

    @Override
    public Cancelable run(ViewportState to, final CompletionListener completionListener) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(completionListener, "completionListener");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final CameraState cameraState = this.cameraDelegate.getCameraState();
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        booleanRef2.element = true;
        final Cancelable cancelableObserveDataSource = to.observeDataSource(new ViewportStateDataObserver() {
            @Override
            public final boolean onNewData(CameraOptions cameraOptions) {
                return DefaultViewportTransitionImpl.run$lambda$3(objectRef, this, linkedHashSet, cameraState, booleanRef2, booleanRef, completionListener, cameraOptions);
            }
        });
        return new Cancelable() {
            @Override
            public final void cancel() {
                DefaultViewportTransitionImpl.run$lambda$4(booleanRef, booleanRef2, this, cancelableObserveDataSource);
            }
        };
    }

    public static final boolean run$lambda$3(Ref.ObjectRef animatorSet, final DefaultViewportTransitionImpl this$0, final Set completedChildAnimators, CameraState startCamera, Ref.BooleanRef keepObserving, final Ref.BooleanRef isCancelableCalled, final CompletionListener completionListener, CameraOptions cameraOptions) {
        Unit unit;
        final Ref.BooleanRef booleanRef;
        Intrinsics.checkNotNullParameter(animatorSet, "$animatorSet");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(completedChildAnimators, "$completedChildAnimators");
        Intrinsics.checkNotNullParameter(startCamera, "$startCamera");
        Intrinsics.checkNotNullParameter(keepObserving, "$keepObserving");
        Intrinsics.checkNotNullParameter(isCancelableCalled, "$isCancelableCalled");
        Intrinsics.checkNotNullParameter(completionListener, "$completionListener");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        AnimatorSet animatorSet2 = (AnimatorSet) animatorSet.element;
        if (animatorSet2 != null) {
            this$0.updateTargetCameraOptions(animatorSet2, completedChildAnimators, startCamera, cameraOptions);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            final ?? CreateAnimatorSet = this$0.createAnimatorSet(cameraOptions, this$0.getOptions().getMaxDurationMs());
            booleanRef = keepObserving;
            CreateAnimatorSet.addListener(new Animator.AnimatorListener() {
                private boolean isCanceled;

                @Override
                public void onAnimationRepeat(Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                }

                @Override
                public void onAnimationStart(Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                }

                @Override
                public void onAnimationEnd(Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    booleanRef.element = false;
                    if (!isCancelableCalled.element) {
                        completionListener.onComplete(!this.isCanceled);
                    }
                    this$0.finishAnimation(CreateAnimatorSet);
                }

                @Override
                public void onAnimationCancel(Animator animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    this.isCanceled = true;
                }
            });
            ArrayList<Animator> childAnimations = CreateAnimatorSet.getChildAnimations();
            Intrinsics.checkNotNullExpressionValue(childAnimations, "initialAnimatorSet.childAnimations");
            for (Animator animator : childAnimations) {
                Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type com.mapbox.maps.plugin.animation.animator.CameraAnimator<*>");
                final CameraAnimator cameraAnimator = (CameraAnimator) animator;
                cameraAnimator.addListener(new Animator.AnimatorListener() {
                    private boolean isCanceled;

                    @Override
                    public void onAnimationRepeat(Animator p0) {
                        Intrinsics.checkNotNullParameter(p0, "p0");
                    }

                    @Override
                    public void onAnimationStart(Animator p0) {
                        Intrinsics.checkNotNullParameter(p0, "p0");
                    }

                    @Override
                    public void onAnimationEnd(Animator p0) {
                        Intrinsics.checkNotNullParameter(p0, "p0");
                        if (this.isCanceled) {
                            return;
                        }
                        completedChildAnimators.add(cameraAnimator.getType());
                    }

                    @Override
                    public void onAnimationCancel(Animator p0) {
                        Intrinsics.checkNotNullParameter(p0, "p0");
                        this.isCanceled = true;
                    }
                });
            }
            this$0.startAnimation(CreateAnimatorSet, false);
            animatorSet.element = CreateAnimatorSet;
        } else {
            booleanRef = keepObserving;
        }
        return booleanRef.element;
    }

    public static final void run$lambda$4(Ref.BooleanRef isCancelableCalled, Ref.BooleanRef keepObserving, DefaultViewportTransitionImpl this$0, Cancelable cancelable) {
        Intrinsics.checkNotNullParameter(isCancelableCalled, "$isCancelableCalled");
        Intrinsics.checkNotNullParameter(keepObserving, "$keepObserving");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        isCancelableCalled.element = true;
        keepObserving.element = false;
        this$0.cancelAnimation();
        cancelable.cancel();
    }

    private final AnimatorSet createAnimatorSet(CameraOptions cameraOptions, long maxDurationMs) {
        double zoom = this.cameraDelegate.getCameraState().getZoom();
        MapboxViewportTransitionFactory mapboxViewportTransitionFactory = this.transitionFactory;
        Double zoom2 = cameraOptions.getZoom();
        if (zoom2 == null) {
            zoom2 = Double.valueOf(zoom);
        }
        Intrinsics.checkNotNullExpressionValue(zoom2, "cameraOptions.zoom ?: currentZoom");
        if (zoom < zoom2.doubleValue()) {
            return mapboxViewportTransitionFactory.transitionFromLowZoomToHighZoom(cameraOptions, maxDurationMs);
        }
        return mapboxViewportTransitionFactory.transitionFromHighZoomToLowZoom(cameraOptions, maxDurationMs);
    }

    private final void cancelAnimation() {
        final AnimatorSet animatorSet = this.runningAnimation;
        if (animatorSet != null) {
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
                    animatorSet.cancel();
                    ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
                    Intrinsics.checkNotNullExpressionValue(childAnimations, "childAnimations");
                    DefaultViewportTransitionImpl defaultViewportTransitionImpl = this;
                    for (Animator animator : childAnimations) {
                        CameraAnimationsPlugin cameraAnimationsPlugin = defaultViewportTransitionImpl.cameraPlugin;
                        Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                        CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(cameraAnimationsPlugin, new ValueAnimator[]{(ValueAnimator) animator}, false, 2, null);
                    }
                }
            });
            this.runningAnimation = null;
        }
    }

    private final void startAnimation(final AnimatorSet animatorSet, boolean instant) {
        cancelAnimation();
        this.cachedAnchor = this.cameraPlugin.getAnchor();
        this.cameraPlugin.setAnchor(null);
        ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
        Intrinsics.checkNotNullExpressionValue(childAnimations, "animatorSet.childAnimations");
        for (Animator animator : childAnimations) {
            CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
            Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
            cameraAnimationsPlugin.registerAnimators((ValueAnimator) animator);
        }
        if (instant) {
            animatorSet.setDuration(0L);
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
                animatorSet.start();
                this.runningAnimation = animatorSet;
            }
        });
    }

    public final void finishAnimation(AnimatorSet animatorSet) {
        ArrayList<Animator> childAnimations;
        if (animatorSet != null && (childAnimations = animatorSet.getChildAnimations()) != null) {
            for (Animator animator : childAnimations) {
                CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
                Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(cameraAnimationsPlugin, new ValueAnimator[]{(ValueAnimator) animator}, false, 2, null);
            }
        }
        if (Intrinsics.areEqual(this.runningAnimation, animatorSet)) {
            this.runningAnimation = null;
        }
        this.cameraPlugin.setAnchor(this.cachedAnchor);
    }

    private final void updateTargetCameraOptions(AnimatorSet animatorSet, Set<? extends CameraAnimatorType> set, CameraState cameraState, CameraOptions cameraOptions) {
        ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
        Intrinsics.checkNotNullExpressionValue(childAnimations, "childAnimations");
        for (Animator animator : childAnimations) {
            Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type com.mapbox.maps.plugin.animation.animator.CameraAnimator<*>");
            CameraAnimator cameraAnimator = (CameraAnimator) animator;
            switch (WhenMappings.$EnumSwitchMapping$0[cameraAnimator.getType().ordinal()]) {
                case 2:
                    if (set.contains(CameraAnimatorType.BEARING)) {
                        MapCameraManagerDelegate mapCameraManagerDelegate = this.cameraDelegate;
                        CameraOptions.Builder builder = new CameraOptions.Builder();
                        builder.bearing(cameraOptions.getBearing());
                        CameraOptions cameraOptionsBuild = builder.build();
                        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
                        mapCameraManagerDelegate.setCamera(cameraOptionsBuild);
                    } else {
                        Double targetBearing = cameraOptions.getBearing();
                        if (targetBearing != null) {
                            MathUtils mathUtils = MathUtils.INSTANCE;
                            double bearing = cameraState.getBearing();
                            Intrinsics.checkNotNullExpressionValue(targetBearing, "targetBearing");
                            Double[] typedArray = ArraysKt.toTypedArray(mathUtils.prepareOptimalBearingPath(new double[]{bearing, targetBearing.doubleValue()}));
                            cameraAnimator.setObjectValues(Arrays.copyOf(typedArray, typedArray.length));
                        }
                    }
                    break;
                case 3:
                    if (set.contains(CameraAnimatorType.CENTER)) {
                        MapCameraManagerDelegate mapCameraManagerDelegate2 = this.cameraDelegate;
                        CameraOptions.Builder builder2 = new CameraOptions.Builder();
                        builder2.center(cameraOptions.getCenter());
                        CameraOptions cameraOptionsBuild2 = builder2.build();
                        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild2, "Builder().apply(block).build()");
                        mapCameraManagerDelegate2.setCamera(cameraOptionsBuild2);
                    } else {
                        cameraAnimator.setObjectValues(cameraState.getCenter(), cameraOptions.getCenter());
                    }
                    break;
                case 4:
                    if (set.contains(CameraAnimatorType.ZOOM)) {
                        MapCameraManagerDelegate mapCameraManagerDelegate3 = this.cameraDelegate;
                        CameraOptions.Builder builder3 = new CameraOptions.Builder();
                        builder3.zoom(cameraOptions.getZoom());
                        CameraOptions cameraOptionsBuild3 = builder3.build();
                        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild3, "Builder().apply(block).build()");
                        mapCameraManagerDelegate3.setCamera(cameraOptionsBuild3);
                    } else {
                        cameraAnimator.setObjectValues(Double.valueOf(cameraState.getZoom()), cameraOptions.getZoom());
                    }
                    break;
                case 5:
                    if (set.contains(CameraAnimatorType.PITCH)) {
                        MapCameraManagerDelegate mapCameraManagerDelegate4 = this.cameraDelegate;
                        CameraOptions.Builder builder4 = new CameraOptions.Builder();
                        builder4.pitch(cameraOptions.getPitch());
                        CameraOptions cameraOptionsBuild4 = builder4.build();
                        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild4, "Builder().apply(block).build()");
                        mapCameraManagerDelegate4.setCamera(cameraOptionsBuild4);
                    } else {
                        cameraAnimator.setObjectValues(Double.valueOf(cameraState.getPitch()), cameraOptions.getPitch());
                    }
                    break;
                case 6:
                    if (set.contains(CameraAnimatorType.PADDING)) {
                        MapCameraManagerDelegate mapCameraManagerDelegate5 = this.cameraDelegate;
                        CameraOptions.Builder builder5 = new CameraOptions.Builder();
                        builder5.padding(cameraOptions.getPadding());
                        CameraOptions cameraOptionsBuild5 = builder5.build();
                        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild5, "Builder().apply(block).build()");
                        mapCameraManagerDelegate5.setCamera(cameraOptionsBuild5);
                    } else {
                        cameraAnimator.setObjectValues(cameraState.getPadding(), cameraOptions.getPadding());
                    }
                    break;
            }
        }
    }
}
