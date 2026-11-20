package com.mapbox.maps.plugin.animation.animator;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.maps.plugin.animation.CameraAnimatorOptions;
import com.mapbox.maps.plugin.animation.CameraAnimatorType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B2\b\u0010\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u001b\b\u0002\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006¢\u0006\u0002\b\t¢\u0006\u0002\u0010\nB@\b\u0010\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\f\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u001b\b\u0002\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006¢\u0006\u0002\b\t¢\u0006\u0002\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/mapbox/maps/plugin/animation/animator/CameraZoomAnimator;", "Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "", "options", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;", "block", "Lkotlin/Function1;", "Landroid/animation/ValueAnimator;", "", "Lkotlin/ExtensionFunctionType;", "(Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;Lkotlin/jvm/functions/Function1;)V", "evaluator", "Landroid/animation/TypeEvaluator;", "(Landroid/animation/TypeEvaluator;Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;Lkotlin/jvm/functions/Function1;)V", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "getType", "()Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CameraZoomAnimator extends CameraAnimator<Double> {
    private final CameraAnimatorType type;

    public CameraZoomAnimator(CameraAnimatorOptions cameraAnimatorOptions, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraAnimatorOptions, (i & 2) != 0 ? null : function1);
    }

    public CameraZoomAnimator(CameraAnimatorOptions<Double> options, Function1<? super ValueAnimator, Unit> function1) {
        super(Evaluators.INSTANCE.getDOUBLE(), options);
        Intrinsics.checkNotNullParameter(options, "options");
        this.type = CameraAnimatorType.ZOOM;
        if (function1 != null) {
            function1.invoke(this);
        }
    }

    public CameraZoomAnimator(TypeEvaluator typeEvaluator, CameraAnimatorOptions cameraAnimatorOptions, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeEvaluator, cameraAnimatorOptions, (i & 4) != 0 ? null : function1);
    }

    public CameraZoomAnimator(TypeEvaluator<Double> evaluator, CameraAnimatorOptions<Double> options, Function1<? super ValueAnimator, Unit> function1) {
        super(evaluator, options);
        Intrinsics.checkNotNullParameter(evaluator, "evaluator");
        Intrinsics.checkNotNullParameter(options, "options");
        this.type = CameraAnimatorType.ZOOM;
        if (function1 != null) {
            function1.invoke(this);
        }
    }

    @Override
    public CameraAnimatorType getType() {
        return this.type;
    }
}
