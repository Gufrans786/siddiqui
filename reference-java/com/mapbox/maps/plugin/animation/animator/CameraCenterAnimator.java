package com.mapbox.maps.plugin.animation.animator;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.geojson.Point;
import com.mapbox.maps.plugin.animation.CameraAnimatorOptions;
import com.mapbox.maps.plugin.animation.CameraAnimatorType;
import com.mapbox.maps.plugin.animation.CameraTransform;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BJ\b\u0000\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u001b\b\u0002\u0010\t\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\n¢\u0006\u0002\b\r¢\u0006\u0002\u0010\u000eJ\u001f\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0002\u0010\u0019R\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/mapbox/maps/plugin/animation/animator/CameraCenterAnimator;", "Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "Lcom/mapbox/geojson/Point;", "evaluator", "Landroid/animation/TypeEvaluator;", "options", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;", "useShortestPath", "", "block", "Lkotlin/Function1;", "Landroid/animation/ValueAnimator;", "", "Lkotlin/ExtensionFunctionType;", "(Landroid/animation/TypeEvaluator;Lcom/mapbox/maps/plugin/animation/CameraAnimatorOptions;ZLkotlin/jvm/functions/Function1;)V", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "getType", "()Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "getUseShortestPath", "()Z", "resolveAnimationObjectValues", "", "", "startValue", "(Ljava/lang/Object;)[Ljava/lang/Object;", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CameraCenterAnimator extends CameraAnimator<Point> {
    private final CameraAnimatorType type;
    private final boolean useShortestPath;

    public CameraCenterAnimator(TypeEvaluator typeEvaluator, CameraAnimatorOptions cameraAnimatorOptions, boolean z, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Evaluators.INSTANCE.getPOINT() : typeEvaluator, cameraAnimatorOptions, z, (i & 8) != 0 ? null : function1);
    }

    public final boolean getUseShortestPath() {
        return this.useShortestPath;
    }

    public CameraCenterAnimator(TypeEvaluator<Point> evaluator, CameraAnimatorOptions<Point> options, boolean z, Function1<? super ValueAnimator, Unit> function1) {
        super(evaluator, options);
        Intrinsics.checkNotNullParameter(evaluator, "evaluator");
        Intrinsics.checkNotNullParameter(options, "options");
        this.useShortestPath = z;
        if (function1 != null) {
            function1.invoke(this);
        }
        this.type = CameraAnimatorType.CENTER;
    }

    @Override
    public Object[] resolveAnimationObjectValues(Object startValue) {
        Intrinsics.checkNotNullParameter(startValue, "startValue");
        if (this.useShortestPath) {
            List listPlus = CollectionsKt.plus((Collection) CollectionsKt.listOf((Point) startValue), (Object[]) getTargets());
            ArrayList arrayList = new ArrayList();
            List list = listPlus;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(CameraTransform.INSTANCE.wrapCoordinate((Point) it.next()));
            }
            for (Point point : CollectionsKt.asReversed(arrayList2)) {
                if (arrayList.isEmpty()) {
                    arrayList.add(point);
                } else {
                    arrayList.add(CameraTransform.INSTANCE.unwrapForShortestPath(point, (Point) CollectionsKt.last((List) arrayList)));
                }
            }
            Object[] array = CollectionsKt.asReversedMutable(arrayList).toArray(new Point[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            return array;
        }
        return super.resolveAnimationObjectValues(startValue);
    }

    @Override
    public CameraAnimatorType getType() {
        return this.type;
    }
}
