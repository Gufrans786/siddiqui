package com.mapbox.maps.plugin.animation.animator;

import android.animation.TypeEvaluator;
import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002J)\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/animation/animator/CameraTypeEvaluator;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/animation/TypeEvaluator;", "canSkip", "", "cameraCurrentValue", "", "startValue", "values", "", "(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface CameraTypeEvaluator<T> extends TypeEvaluator<T> {
    boolean canSkip(Object cameraCurrentValue, Object startValue, Object[] values);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static <T> boolean canSkip(CameraTypeEvaluator<T> cameraTypeEvaluator, Object cameraCurrentValue, Object startValue, Object[] values) {
            Intrinsics.checkNotNullParameter(cameraCurrentValue, "cameraCurrentValue");
            Intrinsics.checkNotNullParameter(startValue, "startValue");
            Intrinsics.checkNotNullParameter(values, "values");
            if (!Intrinsics.areEqual(cameraCurrentValue, startValue)) {
                return false;
            }
            for (Object obj : values) {
                if (!Objects.equals(startValue, obj)) {
                    return false;
                }
            }
            return true;
        }
    }
}
