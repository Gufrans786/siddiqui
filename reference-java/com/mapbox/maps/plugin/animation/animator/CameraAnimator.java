package com.mapbox.maps.plugin.animation.animator;

import android.animation.Animator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.animation.CameraAnimationsPluginImpl;
import com.mapbox.maps.plugin.animation.CameraAnimatorOptions;
import com.mapbox.maps.plugin.animation.CameraAnimatorType;
import com.mapbox.maps.threading.AnimationThreadController;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u001a\b'\u0018\u0000 ^*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001^B#\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J\u0015\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0013H\u0000¢\u0006\u0002\b7J\u0015\u00108\u001a\u0002052\u0006\u00106\u001a\u00020\u0015H\u0000¢\u0006\u0002\b9J\u0010\u0010:\u001a\u0002052\b\u00106\u001a\u0004\u0018\u00010\u0013J\u0010\u0010;\u001a\u0002052\b\u00106\u001a\u0004\u0018\u00010\u0015J\u0006\u0010<\u001a\u000205J\u0017\u0010=\u001a\u00020>2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020A0@H\u0082\bJ\b\u0010B\u001a\u00020>H\u0016J#\u0010C\u001a\u00028\u00002\u0006\u0010D\u001a\u00020E2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010AH\u0000¢\u0006\u0004\bG\u0010HJ\u0017\u0010I\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000)H\u0000¢\u0006\u0004\bJ\u0010+J\b\u0010K\u001a\u000205H\u0002J\u0006\u0010L\u001a\u000205J\u0006\u0010M\u001a\u000205J\r\u0010N\u001a\u000205H\u0000¢\u0006\u0002\bOJ\r\u0010P\u001a\u000205H\u0000¢\u0006\u0002\bQJ\u0010\u0010R\u001a\u0002052\b\u00106\u001a\u0004\u0018\u00010\u0013J\u0010\u0010S\u001a\u0002052\b\u00106\u001a\u0004\u0018\u00010\u0015J\u0019\u0010T\u001a\u0006\u0012\u0002\b\u00030)2\u0006\u0010$\u001a\u00020>H\u0016¢\u0006\u0002\u0010UJ\u0014\u0010V\u001a\u0002052\f\u0010W\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0004J#\u0010X\u001a\u0002052\u0016\u0010Y\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010>0)\"\u0004\u0018\u00010>¢\u0006\u0002\u0010ZJ\u0006\u0010[\u001a\u000205J\u0014\u0010\\\u001a\u0002052\f\u0010]\u001a\b\u0012\u0004\u0012\u00020A0@R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0088\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000bR\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000b\"\u0004\b\u0018\u0010\rR(\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000b\"\u0004\b#\u0010\rR\u0015\u0010$\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010'\u001a\u0004\b%\u0010&R\u001b\u0010(\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000)¢\u0006\n\n\u0002\u0010,\u001a\u0004\b*\u0010+R\u0012\u0010-\u001a\u00020.X¦\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0016\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001302X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001502X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006_"}, d2 = {"Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/animation/ValueAnimator;", "evaluator", "Landroid/animation/TypeEvaluator;", "cameraAnimatorOptions", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;", "(Landroid/animation/TypeEvaluator;Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;)V", "canceled", "", "getCanceled$plugin_animation_release", "()Z", "setCanceled$plugin_animation_release", "(Z)V", "hasUserListeners", "getHasUserListeners$plugin_animation_release", "immediate", "getImmediate", "internalListener", "Landroid/animation/Animator$AnimatorListener;", "internalUpdateListener", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "isInternal", "isInternal$plugin_animation_release", "setInternal$plugin_animation_release", "<set-?>", "", "owner", "getOwner", "()Ljava/lang/String;", "setOwner$plugin_animation_release", "(Ljava/lang/String;)V", "registered", "skipped", "getSkipped$plugin_animation_release", "setSkipped$plugin_animation_release", "startValue", "getStartValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "targets", "", "getTargets", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "getType", "()Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "userListeners", "Ljava/util/concurrent/CopyOnWriteArraySet;", "userUpdateListeners", "addInternalListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addInternalListener$plugin_animation_release", "addInternalUpdateListener", "addInternalUpdateListener$plugin_animation_release", "addListener", "addUpdateListener", "cancel", "defaultStartValue", "", "cameraState", "Lkotlin/Function0;", "Lcom/mapbox/maps/CameraState;", "getAnimatedValue", "getAnimatedValueAt", "fraction", "", "startCameraState", "getAnimatedValueAt$plugin_animation_release", "(FLcom/mapbox/maps/CameraState;)Ljava/lang/Object;", "getTargetValues", "getTargetValues$plugin_animation_release", "handleImmediateAnimation", "removeAllListeners", "removeAllUpdateListeners", "removeInternalListener", "removeInternalListener$plugin_animation_release", "removeInternalUpdateListener", "removeInternalUpdateListener$plugin_animation_release", BackgroundGeolocation.ACTION_REMOVE_LISTENER, "removeUpdateListener", "resolveAnimationObjectValues", "(Ljava/lang/Object;)[Ljava/lang/Object;", "setEvaluator", "value", "setObjectValues", "values", "([Ljava/lang/Object;)V", "start", "updateObjectValues", "getStartCameraState", "Companion", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class CameraAnimator<T> extends ValueAnimator {
    private static final boolean DEBUG_MODE = false;
    private static final String TAG = "Mbgl-CameraAnimator";
    private boolean canceled;
    private final TypeEvaluator<T> evaluator;
    private Animator.AnimatorListener internalListener;
    private ValueAnimator.AnimatorUpdateListener internalUpdateListener;
    private boolean isInternal;
    private String owner;
    private boolean registered;
    private boolean skipped;
    private final T startValue;
    private final T[] targets;
    private final CopyOnWriteArraySet<Animator.AnimatorListener> userListeners;
    private final CopyOnWriteArraySet<ValueAnimator.AnimatorUpdateListener> userUpdateListeners;
    private static final ScreenCoordinate ZERO_SCREEN_COORDINATE = new ScreenCoordinate(0.0d, 0.0d);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CameraAnimatorType.values().length];
            try {
                iArr[CameraAnimatorType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CameraAnimatorType.ZOOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CameraAnimatorType.ANCHOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CameraAnimatorType.PADDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CameraAnimatorType.BEARING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CameraAnimatorType.PITCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public abstract CameraAnimatorType getType();

    public CameraAnimator(TypeEvaluator<T> evaluator, CameraAnimatorOptions<? extends T> cameraAnimatorOptions) {
        Intrinsics.checkNotNullParameter(evaluator, "evaluator");
        Intrinsics.checkNotNullParameter(cameraAnimatorOptions, "cameraAnimatorOptions");
        this.evaluator = evaluator;
        this.owner = cameraAnimatorOptions.getOwner();
        this.startValue = cameraAnimatorOptions.getStartValue();
        Object[] targets = cameraAnimatorOptions.getTargets();
        this.targets = targets;
        this.userUpdateListeners = new CopyOnWriteArraySet<>();
        this.userListeners = new CopyOnWriteArraySet<>();
        T t = targets[0];
        setObjectValues(t, t);
        setEvaluator(evaluator);
    }

    public final String getOwner() {
        return this.owner;
    }

    public final void setOwner$plugin_animation_release(String str) {
        this.owner = str;
    }

    public final T getStartValue() {
        return this.startValue;
    }

    public final T[] getTargets() {
        return this.targets;
    }

    public final boolean getCanceled() {
        return this.canceled;
    }

    public final void setCanceled$plugin_animation_release(boolean z) {
        this.canceled = z;
    }

    public final boolean getIsInternal() {
        return this.isInternal;
    }

    public final void setInternal$plugin_animation_release(boolean z) {
        this.isInternal = z;
    }

    public final boolean getSkipped() {
        return this.skipped;
    }

    public final void setSkipped$plugin_animation_release(boolean z) {
        this.skipped = z;
    }

    public final boolean getImmediate() {
        return getDuration() == 0 && getStartDelay() == 0;
    }

    @Override
    public final void setObjectValues(Object... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        super.setObjectValues(Arrays.copyOf(values, values.length));
    }

    public final void updateObjectValues(Function0<CameraState> getStartCameraState) {
        Point pointValueOf;
        Intrinsics.checkNotNullParameter(getStartCameraState, "getStartCameraState");
        if (this.skipped) {
            return;
        }
        if (this.targets.length == 0) {
            MapboxLogger.logE(CameraAnimationsPluginImpl.TAG, "Skipped animation " + getType().name() + " with no targets!");
            this.skipped = true;
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[getType().ordinal()]) {
            case 1:
                Point center = getStartCameraState.invoke().getCenter();
                Intrinsics.checkNotNullExpressionValue(center, "cameraState().center");
                pointValueOf = center;
                break;
            case 2:
                pointValueOf = Double.valueOf(getStartCameraState.invoke().getZoom());
                break;
            case 3:
                pointValueOf = ZERO_SCREEN_COORDINATE;
                break;
            case 4:
                EdgeInsets padding = getStartCameraState.invoke().getPadding();
                Intrinsics.checkNotNullExpressionValue(padding, "cameraState().padding");
                pointValueOf = padding;
                break;
            case 5:
                pointValueOf = Double.valueOf(getStartCameraState.invoke().getBearing());
                break;
            case 6:
                pointValueOf = Double.valueOf(getStartCameraState.invoke().getPitch());
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        Object obj = this.startValue;
        if (obj == null) {
            obj = pointValueOf;
        }
        Object[] objArrResolveAnimationObjectValues = resolveAnimationObjectValues(obj);
        TypeEvaluator<T> typeEvaluator = this.evaluator;
        if ((typeEvaluator instanceof CameraTypeEvaluator) && ((CameraTypeEvaluator) typeEvaluator).canSkip(pointValueOf, obj, objArrResolveAnimationObjectValues)) {
            this.skipped = true;
        } else {
            setObjectValues(Arrays.copyOf(objArrResolveAnimationObjectValues, objArrResolveAnimationObjectValues.length));
        }
    }

    private final Object defaultStartValue(Function0<CameraState> cameraState) {
        switch (WhenMappings.$EnumSwitchMapping$0[getType().ordinal()]) {
            case 1:
                Point center = cameraState.invoke().getCenter();
                Intrinsics.checkNotNullExpressionValue(center, "cameraState().center");
                return center;
            case 2:
                return Double.valueOf(cameraState.invoke().getZoom());
            case 3:
                return ZERO_SCREEN_COORDINATE;
            case 4:
                EdgeInsets padding = cameraState.invoke().getPadding();
                Intrinsics.checkNotNullExpressionValue(padding, "cameraState().padding");
                return padding;
            case 5:
                return Double.valueOf(cameraState.invoke().getBearing());
            case 6:
                return Double.valueOf(cameraState.invoke().getPitch());
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public Object[] resolveAnimationObjectValues(Object startValue) {
        Intrinsics.checkNotNullParameter(startValue, "startValue");
        int length = this.targets.length + 1;
        Object[] objArr = new Object[length];
        int i = 0;
        while (i < length) {
            objArr[i] = i == 0 ? startValue : this.targets[i - 1];
            i++;
        }
        return objArr;
    }

    @Override
    public final void setEvaluator(TypeEvaluator<?> value) {
        super.setEvaluator(value);
    }

    @Override
    public final void start() {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
            final CameraAnimator<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                if (((CameraAnimator) this.this$0).registered) {
                    this.this$0.setCanceled$plugin_animation_release(false);
                    if (this.this$0.getImmediate()) {
                        this.this$0.handleImmediateAnimation();
                        return;
                    } else {
                        CameraAnimator.super.start();
                        return;
                    }
                }
                MapboxLogger.logW(CameraAnimator.TAG, "Animation " + this.this$0.getType() + " was not registered and will not run. Register it with registerAnimation() method.");
            }
        });
    }

    @Override
    public Object getAnimatedValue() {
        if (getImmediate()) {
            Object objLast = ArraysKt.last(this.targets);
            Intrinsics.checkNotNull(objLast, "null cannot be cast to non-null type kotlin.Any");
            return objLast;
        }
        Object animatedValue = super.getAnimatedValue();
        Intrinsics.checkNotNullExpressionValue(animatedValue, "super.getAnimatedValue()");
        return animatedValue;
    }

    public static Object getAnimatedValueAt$plugin_animation_release$default(CameraAnimator cameraAnimator, float f, CameraState cameraState, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAnimatedValueAt");
        }
        if ((i & 2) != 0) {
            cameraState = null;
        }
        return cameraAnimator.getAnimatedValueAt$plugin_animation_release(f, cameraState);
    }

    public final T getAnimatedValueAt$plugin_animation_release(float fraction, CameraState startCameraState) {
        Point pointValueOf;
        if (this.targets.length != 1) {
            throw new UnsupportedOperationException("getAnimatedValueAt() is only supported for single target animations.");
        }
        Object obj = this.startValue;
        if (obj == null && startCameraState == null) {
            throw new UnsupportedOperationException("getAnimatedValueAt() is only supported for animators with a startValue or a non-null current camera state must be provided.");
        }
        if (obj == null) {
            obj = null;
            if (startCameraState != null) {
                switch (WhenMappings.$EnumSwitchMapping$0[getType().ordinal()]) {
                    case 1:
                        Point center = startCameraState.getCenter();
                        Intrinsics.checkNotNullExpressionValue(center, "cameraState().center");
                        pointValueOf = center;
                        break;
                    case 2:
                        pointValueOf = Double.valueOf(startCameraState.getZoom());
                        break;
                    case 3:
                        pointValueOf = ZERO_SCREEN_COORDINATE;
                        break;
                    case 4:
                        EdgeInsets padding = startCameraState.getPadding();
                        Intrinsics.checkNotNullExpressionValue(padding, "cameraState().padding");
                        pointValueOf = padding;
                        break;
                    case 5:
                        pointValueOf = Double.valueOf(startCameraState.getBearing());
                        break;
                    case 6:
                        pointValueOf = Double.valueOf(startCameraState.getPitch());
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            } else {
                pointValueOf = null;
            }
            if (pointValueOf != null) {
                obj = pointValueOf;
            }
        }
        if (obj == null) {
            throw new UnsupportedOperationException("Could not resolve start value for animator");
        }
        return this.evaluator.evaluate(getInterpolator().getInterpolation(fraction), (T) obj, (T) ArraysKt.last(this.targets));
    }

    public final void handleImmediateAnimation() {
        ArrayList listeners = getListeners();
        Intrinsics.checkNotNullExpressionValue(listeners, "listeners");
        List list = CollectionsKt.toList(listeners);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationStart(this);
        }
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.internalUpdateListener;
        if (animatorUpdateListener != null) {
            animatorUpdateListener.onAnimationUpdate(this);
        }
        for (ValueAnimator.AnimatorUpdateListener animatorUpdateListener2 : this.userUpdateListeners) {
            if (animatorUpdateListener2 != null) {
                animatorUpdateListener2.onAnimationUpdate(this);
            }
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((Animator.AnimatorListener) it2.next()).onAnimationEnd(this);
        }
    }

    @Override
    public final void addListener(final Animator.AnimatorListener listener) {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
            final CameraAnimator<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                if (((CameraAnimator) this.this$0).internalListener != null) {
                    CameraAnimator.super.addListener(listener);
                }
                ((CameraAnimator) this.this$0).userListeners.add(listener);
            }
        });
    }

    @Override
    public final void addUpdateListener(final ValueAnimator.AnimatorUpdateListener listener) {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
            final CameraAnimator<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                if (((CameraAnimator) this.this$0).internalUpdateListener != null) {
                    CameraAnimator.super.addUpdateListener(listener);
                }
                ((CameraAnimator) this.this$0).userUpdateListeners.add(listener);
            }
        });
    }

    @Override
    public final void removeUpdateListener(final ValueAnimator.AnimatorUpdateListener listener) {
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
                if (!Intrinsics.areEqual(listener, ((CameraAnimator) this).internalUpdateListener)) {
                    CameraAnimator.super.removeUpdateListener(listener);
                }
                if (((CameraAnimator) this).userUpdateListeners.contains(listener)) {
                    ((CameraAnimator) this).userUpdateListeners.remove(listener);
                }
            }
        });
    }

    @Override
    public final void removeAllUpdateListeners() {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
            final CameraAnimator<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                CameraAnimator.super.removeAllUpdateListeners();
                if (((CameraAnimator) this.this$0).internalUpdateListener != null) {
                    CameraAnimator<T> cameraAnimator = this.this$0;
                    CameraAnimator.super.addUpdateListener(((CameraAnimator) cameraAnimator).internalUpdateListener);
                }
                ((CameraAnimator) this.this$0).userUpdateListeners.clear();
            }
        });
    }

    @Override
    public final void removeListener(final Animator.AnimatorListener listener) {
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
                if (!Intrinsics.areEqual(listener, ((CameraAnimator) this).internalListener)) {
                    CameraAnimator.super.removeListener(listener);
                }
                if (((CameraAnimator) this).userListeners.contains(listener)) {
                    ((CameraAnimator) this).userListeners.remove(listener);
                }
            }
        });
    }

    @Override
    public final void removeAllListeners() {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
            final CameraAnimator<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                CameraAnimator.super.removeAllListeners();
                if (((CameraAnimator) this.this$0).internalListener != null) {
                    CameraAnimator<T> cameraAnimator = this.this$0;
                    CameraAnimator.super.addListener(((CameraAnimator) cameraAnimator).internalListener);
                }
                ((CameraAnimator) this.this$0).userListeners.clear();
            }
        });
    }

    @Override
    public final void cancel() {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
            final CameraAnimator<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                this.this$0.setCanceled$plugin_animation_release(true);
                CameraAnimator.super.cancel();
            }
        });
    }

    public final boolean getHasUserListeners$plugin_animation_release() {
        return !this.userUpdateListeners.isEmpty();
    }

    public final void addInternalUpdateListener$plugin_animation_release(ValueAnimator.AnimatorUpdateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        super.removeAllUpdateListeners();
        this.internalUpdateListener = listener;
        super.addUpdateListener(listener);
        Iterator<T> it = this.userUpdateListeners.iterator();
        while (it.hasNext()) {
            super.addUpdateListener((ValueAnimator.AnimatorUpdateListener) it.next());
        }
    }

    public final void removeInternalUpdateListener$plugin_animation_release() {
        super.removeUpdateListener(this.internalUpdateListener);
        this.internalUpdateListener = null;
    }

    public final void addInternalListener$plugin_animation_release(Animator.AnimatorListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        super.removeAllListeners();
        this.registered = true;
        this.internalListener = listener;
        super.addListener(listener);
        Iterator<T> it = this.userListeners.iterator();
        while (it.hasNext()) {
            super.addListener((Animator.AnimatorListener) it.next());
        }
    }

    public final void removeInternalListener$plugin_animation_release() {
        super.removeListener(this.internalListener);
        this.internalListener = null;
        this.registered = false;
    }

    public final T[] getTargetValues$plugin_animation_release() {
        return this.targets;
    }
}
