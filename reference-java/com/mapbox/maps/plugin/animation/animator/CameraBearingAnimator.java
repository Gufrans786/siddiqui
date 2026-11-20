package com.mapbox.maps.plugin.animation.animator;

import android.animation.ValueAnimator;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.maps.plugin.animation.CameraAnimatorOptions;
import com.mapbox.maps.plugin.animation.CameraAnimatorType;
import com.mapbox.maps.util.MathUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B8\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u001b\b\u0002\u0010\u0007\u001a\u0015\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b¢\u0006\u0002\b\u000b¢\u0006\u0002\u0010\fJ\u001f\u0010\u0013\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0002\u0010\u0017R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, d2 = {"Lcom/mapbox/maps/plugin/animation/animator/CameraBearingAnimator;", "Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "", "options", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;", "useShortestPath", "", "block", "Lkotlin/Function1;", "Landroid/animation/ValueAnimator;", "", "Lkotlin/ExtensionFunctionType;", "(Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;ZLkotlin/jvm/functions/Function1;)V", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "getType", "()Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "getUseShortestPath", "()Z", "resolveAnimationObjectValues", "", "", "startValue", "(Ljava/lang/Object;)[Ljava/lang/Object;", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CameraBearingAnimator extends CameraAnimator<Double> {
    private final CameraAnimatorType type;
    private final boolean useShortestPath;

    public CameraBearingAnimator(CameraAnimatorOptions cameraAnimatorOptions, boolean z, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraAnimatorOptions, z, (i & 4) != 0 ? null : function1);
    }

    public final boolean getUseShortestPath() {
        return this.useShortestPath;
    }

    public CameraBearingAnimator(CameraAnimatorOptions<Double> options, boolean z, Function1<? super ValueAnimator, Unit> function1) {
        super(Evaluators.INSTANCE.getDOUBLE(), options);
        Intrinsics.checkNotNullParameter(options, "options");
        this.useShortestPath = z;
        if (function1 != null) {
            function1.invoke(this);
        }
        this.type = CameraAnimatorType.BEARING;
    }

    @Override
    public Object[] resolveAnimationObjectValues(Object startValue) {
        double dDoubleValue;
        Intrinsics.checkNotNullParameter(startValue, "startValue");
        if (this.useShortestPath) {
            MathUtils mathUtils = MathUtils.INSTANCE;
            int length = getTargets().length + 1;
            double[] dArr = new double[length];
            for (int i = 0; i < length; i++) {
                if (i == 0) {
                    dDoubleValue = ((Double) startValue).doubleValue();
                } else {
                    dDoubleValue = getTargets()[i - 1].doubleValue();
                }
                dArr[i] = dDoubleValue;
            }
            return ArraysKt.toTypedArray(mathUtils.prepareOptimalBearingPath(dArr));
        }
        return super.resolveAnimationObjectValues(startValue);
    }

    @Override
    public CameraAnimatorType getType() {
        return this.type;
    }
}
