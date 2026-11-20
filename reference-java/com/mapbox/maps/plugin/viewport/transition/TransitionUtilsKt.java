package com.mapbox.maps.plugin.viewport.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imagepipeline.common.RotationOptions;
import com.mapbox.geojson.Point;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0000\u001a \u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0000\u001a\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002\u001a\u0014\u0010\u0012\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0014H\u0000\u001a\u0014\u0010\u0015\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0017H\u0002¨\u0006\u0018"}, d2 = {"createAnimatorSet", "Landroid/animation/AnimatorSet;", "animators", "", "Landroid/animation/Animator;", "normalizeBearing", "", "currentBearing", "targetBearing", "screenDistanceFromMapCenterToTarget", "cameraManager", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "currentCenter", "Lcom/mapbox/geojson/Point;", "targetCenter", "shortestRotation", "from", TypedValues.TransitionType.S_TO, "constrainDurationTo", "maxDuration", "", "roundTo", "numFractionDigits", "", "plugin-viewport_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class TransitionUtilsKt {
    private static final double shortestRotation(double d, double d2) {
        return (((d2 - d) + ((double) 540)) % ((double) 360)) - ((double) RotationOptions.ROTATE_180);
    }

    public static final AnimatorSet createAnimatorSet(List<? extends Animator> animators) {
        Intrinsics.checkNotNullParameter(animators, "animators");
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animators);
        return animatorSet;
    }

    public static final double screenDistanceFromMapCenterToTarget(MapCameraManagerDelegate cameraManager, Point currentCenter, Point targetCenter) {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(currentCenter, "currentCenter");
        Intrinsics.checkNotNullParameter(targetCenter, "targetCenter");
        ScreenCoordinate screenCoordinatePixelForCoordinate = cameraManager.pixelForCoordinate(currentCenter);
        ScreenCoordinate screenCoordinatePixelForCoordinate2 = cameraManager.pixelForCoordinate(targetCenter);
        return Math.hypot(screenCoordinatePixelForCoordinate.getX() - screenCoordinatePixelForCoordinate2.getX(), screenCoordinatePixelForCoordinate.getY() - screenCoordinatePixelForCoordinate2.getY());
    }

    public static final double normalizeBearing(double d, double d2) {
        return roundTo(d + shortestRotation(d, d2), 6);
    }

    private static final double roundTo(double d, int i) {
        double dPow = Math.pow(10.0d, i);
        return ((double) MathKt.roundToInt(d * dPow)) / dPow;
    }

    public static final AnimatorSet constrainDurationTo(AnimatorSet animatorSet, long j) {
        Object obj;
        Intrinsics.checkNotNullParameter(animatorSet, "<this>");
        ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
        Intrinsics.checkNotNullExpressionValue(childAnimations, "childAnimations");
        Iterator<T> it = childAnimations.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                Animator animator = (Animator) next;
                long startDelay = animator.getStartDelay() + animator.getDuration();
                do {
                    Object next2 = it.next();
                    Animator animator2 = (Animator) next2;
                    long startDelay2 = animator2.getStartDelay() + animator2.getDuration();
                    if (startDelay < startDelay2) {
                        next = next2;
                        startDelay = startDelay2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        Animator animator3 = (Animator) obj;
        if (animator3 != null) {
            long startDelay3 = animator3.getStartDelay() + animator3.getDuration();
            if (startDelay3 > j) {
                double d = j / startDelay3;
                ArrayList<Animator> childAnimations2 = animatorSet.getChildAnimations();
                Intrinsics.checkNotNullExpressionValue(childAnimations2, "childAnimations");
                for (Animator animator4 : childAnimations2) {
                    animator4.setStartDelay((long) (animator4.getStartDelay() * d));
                    animator4.setDuration((long) (animator4.getDuration() * d));
                }
            }
        }
        return animatorSet;
    }
}
