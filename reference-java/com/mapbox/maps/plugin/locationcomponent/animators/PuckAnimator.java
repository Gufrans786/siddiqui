package com.mapbox.maps.plugin.locationcomponent.animators;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.maps.plugin.locationcomponent.LocationLayerRenderer;
import com.mapbox.maps.threading.AnimationThreadController;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\b!\u0018\u0000 ;*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001;B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010!\u001a\u00020\u00142\b\u0010\"\u001a\u0004\u0018\u00010#J<\u0010$\u001a\u00020\u00142\u0012\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000&\"\u00028\u00002\u001b\b\u0002\u0010'\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013¢\u0006\u0002\b(¢\u0006\u0002\u0010)J\u0006\u0010*\u001a\u00020\u0014J\u0006\u0010+\u001a\u00020\u0002J\u0014\u0010,\u001a\u00020\u00142\f\u0010-\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0004J\u000e\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\rJ#\u00100\u001a\u00020\u00142\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001020&\"\u0004\u0018\u000102¢\u0006\u0002\u00103J\u001a\u00104\u001a\u00020\u00142\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140\u0013J\u001d\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u0002072\u0006\u0010-\u001a\u00028\u0000H&¢\u0006\u0002\u00108J\u001f\u00109\u001a\u00020\u00142\u0017\u0010:\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\b(R\u001a\u0010\u0006\u001a\u00020\u0007X\u0090\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R2\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00138\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00028\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006<"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckAnimator;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/animation/ValueAnimator;", "evaluator", "Landroid/animation/TypeEvaluator;", "(Landroid/animation/TypeEvaluator;)V", ViewProps.ENABLED, "", "getEnabled$plugin_locationcomponent_release", "()Z", "setEnabled$plugin_locationcomponent_release", "(Z)V", "locationRenderer", "Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerRenderer;", "getLocationRenderer", "()Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerRenderer;", "setLocationRenderer", "(Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerRenderer;)V", "updateListener", "Lkotlin/Function1;", "", "getUpdateListener$plugin_locationcomponent_release$annotations", "()V", "getUpdateListener$plugin_locationcomponent_release", "()Lkotlin/jvm/functions/Function1;", "setUpdateListener$plugin_locationcomponent_release", "(Lkotlin/jvm/functions/Function1;)V", "userConfiguredAnimator", "getUserConfiguredAnimator$plugin_locationcomponent_release$annotations", "getUserConfiguredAnimator$plugin_locationcomponent_release", "()Landroid/animation/ValueAnimator;", "setUserConfiguredAnimator$plugin_locationcomponent_release", "(Landroid/animation/ValueAnimator;)V", "addUpdateListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "animate", "targets", "", "options", "Lkotlin/ExtensionFunctionType;", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "cancelRunning", "clone", "setEvaluator", "value", "setLocationLayerRenderer", "renderer", "setObjectValues", "values", "", "([Ljava/lang/Object;)V", "setUpdateListener", "updateLayer", "fraction", "", "(FLjava/lang/Object;)V", "updateOptions", "block", "Companion", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class PuckAnimator<T> extends ValueAnimator {
    private static final LinearInterpolator DEFAULT_INTERPOLATOR = new LinearInterpolator();
    private boolean enabled;
    private LocationLayerRenderer locationRenderer;
    private Function1<? super T, Unit> updateListener;
    private ValueAnimator userConfiguredAnimator;

    public static void getUpdateListener$plugin_locationcomponent_release$annotations() {
    }

    public static void getUserConfiguredAnimator$plugin_locationcomponent_release$annotations() {
    }

    public abstract void updateLayer(float fraction, T value);

    public PuckAnimator(TypeEvaluator<T> evaluator) {
        Intrinsics.checkNotNullParameter(evaluator, "evaluator");
        setObjectValues(new Object[0]);
        setEvaluator(evaluator);
        addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PuckAnimator._init_$lambda$0(this.f$0, valueAnimator);
            }
        });
        setDuration(1000L);
        setInterpolator(DEFAULT_INTERPOLATOR);
        ValueAnimator valueAnimatorClone = clone();
        this.userConfiguredAnimator = valueAnimatorClone;
        valueAnimatorClone.setDuration(getDuration());
    }

    public final Function1<T, Unit> getUpdateListener$plugin_locationcomponent_release() {
        return this.updateListener;
    }

    public final void setUpdateListener$plugin_locationcomponent_release(Function1<? super T, Unit> function1) {
        this.updateListener = function1;
    }

    public final ValueAnimator getUserConfiguredAnimator() {
        return this.userConfiguredAnimator;
    }

    public final void setUserConfiguredAnimator$plugin_locationcomponent_release(ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "<set-?>");
        this.userConfiguredAnimator = valueAnimator;
    }

    protected final LocationLayerRenderer getLocationRenderer() {
        return this.locationRenderer;
    }

    protected final void setLocationRenderer(LocationLayerRenderer locationLayerRenderer) {
        this.locationRenderer = locationLayerRenderer;
    }

    public boolean getEnabled() {
        return this.enabled;
    }

    public void setEnabled$plugin_locationcomponent_release(boolean z) {
        this.enabled = z;
    }

    public static final void _init_$lambda$0(final PuckAnimator this$0, final ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
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
                Object animatedValue = it.getAnimatedValue();
                this$0.updateLayer(it.getAnimatedFraction(), animatedValue);
                Function1 updateListener$plugin_locationcomponent_release = this$0.getUpdateListener$plugin_locationcomponent_release();
                if (updateListener$plugin_locationcomponent_release != null) {
                    updateListener$plugin_locationcomponent_release.invoke(animatedValue);
                }
            }
        });
    }

    @Override
    public final void setObjectValues(Object... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        super.setObjectValues(Arrays.copyOf(values, values.length));
    }

    @Override
    public final void setEvaluator(TypeEvaluator<?> value) {
        super.setEvaluator(value);
    }

    @Override
    public final void addUpdateListener(ValueAnimator.AnimatorUpdateListener listener) {
        super.addUpdateListener(listener);
    }

    @Override
    public final ValueAnimator clone() {
        ValueAnimator valueAnimatorClone = super.clone();
        Intrinsics.checkNotNullExpressionValue(valueAnimatorClone, "super.clone()");
        return valueAnimatorClone;
    }

    public final void setUpdateListener(Function1<? super T, Unit> updateListener) {
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        if (Intrinsics.areEqual(this.updateListener, updateListener)) {
            return;
        }
        this.updateListener = updateListener;
    }

    public final void setLocationLayerRenderer(LocationLayerRenderer renderer) {
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        this.locationRenderer = renderer;
    }

    public static void animate$default(PuckAnimator puckAnimator, Object[] objArr, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animate");
        }
        if ((i & 2) != 0) {
            function1 = null;
        }
        puckAnimator.animate(objArr, function1);
    }

    public final void animate(T[] targets, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(targets, "targets");
        cancelRunning();
        if (options == null) {
            setObjectValues(Arrays.copyOf(targets, targets.length));
            AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
                final PuckAnimator<T> this$0;

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
                    this.this$0.start();
                }
            });
        } else {
            options.invoke(this.userConfiguredAnimator);
            this.userConfiguredAnimator.setObjectValues(Arrays.copyOf(targets, targets.length));
            AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
                final PuckAnimator<T> this$0;

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
                    this.this$0.getUserConfiguredAnimator().start();
                }
            });
        }
    }

    public final void updateOptions(final Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (isRunning()) {
            addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animation, boolean isReverse) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    super.onAnimationEnd(animation, isReverse);
                    block.invoke(this);
                    this.removeListener(this);
                }
            });
        } else {
            block.invoke(this);
        }
    }

    public final void cancelRunning() {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>(this) {
            final PuckAnimator<T> this$0;

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
                if (this.this$0.isRunning()) {
                    this.this$0.cancel();
                }
                if (this.this$0.getUserConfiguredAnimator().isRunning()) {
                    this.this$0.getUserConfiguredAnimator().cancel();
                }
            }
        });
    }
}
