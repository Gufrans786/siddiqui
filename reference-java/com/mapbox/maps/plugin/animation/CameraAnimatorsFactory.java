package com.mapbox.maps.plugin.animation;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.view.animation.Interpolator;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MercatorCoordinate;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.Size;
import com.mapbox.maps.plugin.animation.animator.CameraAnchorAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraBearingAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraCenterAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraPaddingAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraPitchAnimator;
import com.mapbox.maps.plugin.animation.animator.CameraTypeEvaluator;
import com.mapbox.maps.plugin.animation.animator.CameraZoomAnimator;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.delegates.MapProjectionDelegate;
import com.mapbox.maps.plugin.delegates.MapTransformDelegate;
import com.payfort.fortpaymentsdk.constants.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0002\u0018\u0000 &2\u00020\u0001:\u0001&B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J+\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\f2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010\u0012J+\u0010\u0013\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\f2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010\u0012J+\u0010\u0014\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\f2\u0006\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010\u0017J+\u0010\u0018\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\f2\u0006\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010\u001bJ3\u0010\u001c\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\f2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00162\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010\u001fJ7\u0010 \u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\f2\u0006\u0010!\u001a\u00020\u001a2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010#J\f\u0010$\u001a\u00020%*\u00020%H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;", "", "mapDelegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;)V", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapProjectionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "mapTransformDelegate", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "getEaseTo", "", "Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "owner", "", "(Lcom/mapbox/maps/CameraOptions;Ljava/lang/String;)[Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "getFlyTo", "getMoveBy", "offset", "Lcom/mapbox/maps/ScreenCoordinate;", "(Lcom/mapbox/maps/ScreenCoordinate;Ljava/lang/String;)[Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "getPitchBy", "pitch", "", "(DLjava/lang/String;)[Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "getRotateBy", "first", "second", "(Lcom/mapbox/maps/ScreenCoordinate;Lcom/mapbox/maps/ScreenCoordinate;Ljava/lang/String;)[Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "getScaleBy", Constants.FORT_PARAMS.AMOUNT, "anchor", "(DLcom/mapbox/maps/ScreenCoordinate;Ljava/lang/String;)[Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;", "getSafeFraction", "", "Companion", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CameraAnimatorsFactory {
    public static final Interpolator CUBIC_BEZIER_INTERPOLATOR;

    public static final Companion INSTANCE = new Companion(null);
    public static final long DEFAULT_ANIMATION_DURATION_MS = 300;
    private static final FastOutSlowInInterpolator DEFAULT_INTERPOLATOR;
    private static final HashMap<CameraAnimatorType, Function1<ValueAnimator, Unit>> defaultAnimationParameters;
    private final MapCameraManagerDelegate mapCameraManagerDelegate;
    private final MapProjectionDelegate mapProjectionDelegate;
    private final MapTransformDelegate mapTransformDelegate;

    @JvmStatic
    public static final void setDefaultAnimatorOptions(CameraAnimatorType cameraAnimatorType, Function1<? super ValueAnimator, Unit> function1) {
        INSTANCE.setDefaultAnimatorOptions(cameraAnimatorType, function1);
    }

    @JvmStatic
    public static final void setDefaultAnimatorOptions(Function1<? super ValueAnimator, Unit> function1) {
        INSTANCE.setDefaultAnimatorOptions(function1);
    }

    public final CameraAnimator<?>[] getEaseTo(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        return getEaseTo$default(this, cameraOptions, null, 2, null);
    }

    public final CameraAnimator<?>[] getFlyTo(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        return getFlyTo$default(this, cameraOptions, null, 2, null);
    }

    public final CameraAnimator<?>[] getMoveBy(ScreenCoordinate offset) {
        Intrinsics.checkNotNullParameter(offset, "offset");
        return getMoveBy$default(this, offset, null, 2, null);
    }

    public final CameraAnimator<?>[] getPitchBy(double d) {
        return getPitchBy$default(this, d, null, 2, null);
    }

    public final CameraAnimator<?>[] getRotateBy(ScreenCoordinate first, ScreenCoordinate second) {
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        return getRotateBy$default(this, first, second, null, 4, null);
    }

    public final CameraAnimator<?>[] getScaleBy(double d) {
        return getScaleBy$default(this, d, null, null, 6, null);
    }

    public final CameraAnimator<?>[] getScaleBy(double d, ScreenCoordinate screenCoordinate) {
        return getScaleBy$default(this, d, screenCoordinate, null, 4, null);
    }

    public CameraAnimatorsFactory(MapDelegateProvider mapDelegateProvider) {
        Intrinsics.checkNotNullParameter(mapDelegateProvider, "mapDelegateProvider");
        this.mapTransformDelegate = mapDelegateProvider.getMapTransformDelegate();
        this.mapProjectionDelegate = mapDelegateProvider.getMapProjectionDelegate();
        this.mapCameraManagerDelegate = mapDelegateProvider.getMapCameraManagerDelegate();
    }

    public static CameraAnimator[] getEaseTo$default(CameraAnimatorsFactory cameraAnimatorsFactory, CameraOptions cameraOptions, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return cameraAnimatorsFactory.getEaseTo(cameraOptions, str);
    }

    public final CameraAnimator<?>[] getEaseTo(CameraOptions cameraOptions, String owner) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        ArrayList arrayList = new ArrayList();
        CameraState cameraState = this.mapCameraManagerDelegate.getCameraState();
        Point center = cameraOptions.getCenter();
        if (center != null) {
            CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Point[]{center}, 1));
            Point center2 = cameraState.getCenter();
            Intrinsics.checkNotNullExpressionValue(center2, "currentCameraState.center");
            builder.startValue(center2);
            Unit unit = Unit.INSTANCE;
            CameraCenterAnimator cameraCenterAnimator = new CameraCenterAnimator(null, builder.build(), true, defaultAnimationParameters.get(CameraAnimatorType.CENTER), 1, null);
            if (owner != null) {
                cameraCenterAnimator.setOwner$plugin_animation_release(owner);
            }
            arrayList.add(cameraCenterAnimator);
        }
        ScreenCoordinate anchor = cameraOptions.getAnchor();
        if (anchor != null) {
            CameraAnimatorOptions.Companion companion2 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder2 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new ScreenCoordinate[]{anchor}, 1));
            builder2.startValue(anchor);
            CameraAnchorAnimator cameraAnchorAnimator = new CameraAnchorAnimator(builder2.build(), defaultAnimationParameters.get(CameraAnimatorType.ANCHOR));
            if (owner != null) {
                cameraAnchorAnimator.setOwner$plugin_animation_release(owner);
            }
            arrayList.add(cameraAnchorAnimator);
        }
        Double bearing = cameraOptions.getBearing();
        if (bearing != null) {
            CameraAnimatorOptions.Companion companion3 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder3 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{bearing}, 1));
            builder3.startValue(Double.valueOf(cameraState.getBearing()));
            CameraBearingAnimator cameraBearingAnimator = new CameraBearingAnimator(builder3.build(), true, defaultAnimationParameters.get(CameraAnimatorType.BEARING));
            if (owner != null) {
                cameraBearingAnimator.setOwner$plugin_animation_release(owner);
            }
            arrayList.add(cameraBearingAnimator);
        }
        EdgeInsets padding = cameraOptions.getPadding();
        if (padding != null) {
            CameraAnimatorOptions.Companion companion4 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder4 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new EdgeInsets[]{padding}, 1));
            EdgeInsets padding2 = cameraState.getPadding();
            Intrinsics.checkNotNullExpressionValue(padding2, "currentCameraState.padding");
            builder4.startValue(padding2);
            CameraPaddingAnimator cameraPaddingAnimator = new CameraPaddingAnimator(builder4.build(), defaultAnimationParameters.get(CameraAnimatorType.PADDING));
            if (owner != null) {
                cameraPaddingAnimator.setOwner$plugin_animation_release(owner);
            }
            arrayList.add(cameraPaddingAnimator);
        }
        Double pitch = cameraOptions.getPitch();
        if (pitch != null) {
            CameraAnimatorOptions.Companion companion5 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder5 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{pitch}, 1));
            builder5.startValue(Double.valueOf(cameraState.getPitch()));
            CameraPitchAnimator cameraPitchAnimator = new CameraPitchAnimator(builder5.build(), defaultAnimationParameters.get(CameraAnimatorType.PITCH));
            if (owner != null) {
                cameraPitchAnimator.setOwner$plugin_animation_release(owner);
            }
            arrayList.add(cameraPitchAnimator);
        }
        Double zoom = cameraOptions.getZoom();
        if (zoom != null) {
            CameraAnimatorOptions.Companion companion6 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder6 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{zoom}, 1));
            builder6.startValue(Double.valueOf(cameraState.getZoom()));
            CameraZoomAnimator cameraZoomAnimator = new CameraZoomAnimator(builder6.build(), defaultAnimationParameters.get(CameraAnimatorType.ZOOM));
            if (owner != null) {
                cameraZoomAnimator.setOwner$plugin_animation_release(owner);
            }
            arrayList.add(cameraZoomAnimator);
        }
        ArrayList<ValueAnimator> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (ValueAnimator valueAnimator : arrayList2) {
            Intrinsics.checkNotNull(valueAnimator, "null cannot be cast to non-null type com.mapbox.maps.plugin.animation.animator.CameraAnimator<*>");
            arrayList3.add((CameraAnimator) valueAnimator);
        }
        Object[] array = arrayList3.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (CameraAnimator[]) array;
    }

    public static CameraAnimator[] getPitchBy$default(CameraAnimatorsFactory cameraAnimatorsFactory, double d, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return cameraAnimatorsFactory.getPitchBy(d, str);
    }

    public final CameraAnimator<?>[] getPitchBy(double pitch, String owner) {
        double pitch2 = this.mapCameraManagerDelegate.getCameraState().getPitch();
        CameraAnimator<?>[] cameraAnimatorArr = new CameraAnimator[1];
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(pitch + pitch2)}, 1));
        builder.startValue(Double.valueOf(pitch2));
        Unit unit = Unit.INSTANCE;
        CameraPitchAnimator cameraPitchAnimator = new CameraPitchAnimator(builder.build(), defaultAnimationParameters.get(CameraAnimatorType.PITCH));
        if (owner != null) {
            cameraPitchAnimator.setOwner$plugin_animation_release(owner);
        }
        Unit unit2 = Unit.INSTANCE;
        cameraAnimatorArr[0] = cameraPitchAnimator;
        return cameraAnimatorArr;
    }

    public static CameraAnimator[] getScaleBy$default(CameraAnimatorsFactory cameraAnimatorsFactory, double d, ScreenCoordinate screenCoordinate, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            screenCoordinate = null;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        return cameraAnimatorsFactory.getScaleBy(d, screenCoordinate, str);
    }

    public final CameraAnimator<?>[] getScaleBy(double amount, ScreenCoordinate anchor, String owner) {
        ArrayList arrayList = new ArrayList();
        if (anchor != null) {
            CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new ScreenCoordinate[]{anchor}, 1));
            builder.startValue(anchor);
            CameraAnchorAnimator cameraAnchorAnimator = new CameraAnchorAnimator(builder.build(), defaultAnimationParameters.get(CameraAnimatorType.ANCHOR));
            if (owner != null) {
                cameraAnchorAnimator.setOwner$plugin_animation_release(owner);
            }
            arrayList.add(cameraAnchorAnimator);
        }
        double zoom = this.mapCameraManagerDelegate.getCameraState().getZoom();
        double dCalculateScaleBy = CameraTransform.INSTANCE.calculateScaleBy(amount, zoom);
        CameraAnimatorOptions.Companion companion2 = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder2 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(dCalculateScaleBy)}, 1));
        builder2.startValue(Double.valueOf(zoom));
        CameraZoomAnimator cameraZoomAnimator = new CameraZoomAnimator(builder2.build(), defaultAnimationParameters.get(CameraAnimatorType.ZOOM));
        if (owner != null) {
            cameraZoomAnimator.setOwner$plugin_animation_release(owner);
        }
        arrayList.add(cameraZoomAnimator);
        Object[] array = arrayList.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (CameraAnimator[]) array;
    }

    public static CameraAnimator[] getMoveBy$default(CameraAnimatorsFactory cameraAnimatorsFactory, ScreenCoordinate screenCoordinate, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return cameraAnimatorsFactory.getMoveBy(screenCoordinate, str);
    }

    public final CameraAnimator<?>[] getMoveBy(ScreenCoordinate offset, String owner) {
        Intrinsics.checkNotNullParameter(offset, "offset");
        CameraState cameraState = this.mapCameraManagerDelegate.getCameraState();
        Point pointCalculateLatLngMoveBy = CameraTransform.INSTANCE.calculateLatLngMoveBy(offset, cameraState, this.mapTransformDelegate, this.mapCameraManagerDelegate);
        CameraAnimator<?>[] cameraAnimatorArr = new CameraAnimator[1];
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Point[]{pointCalculateLatLngMoveBy}, 1));
        Point center = cameraState.getCenter();
        Intrinsics.checkNotNullExpressionValue(center, "cameraState.center");
        builder.startValue(center);
        Unit unit = Unit.INSTANCE;
        CameraCenterAnimator cameraCenterAnimator = new CameraCenterAnimator(null, builder.build(), true, defaultAnimationParameters.get(CameraAnimatorType.CENTER), 1, null);
        if (owner != null) {
            cameraCenterAnimator.setOwner$plugin_animation_release(owner);
        }
        Unit unit2 = Unit.INSTANCE;
        cameraAnimatorArr[0] = cameraCenterAnimator;
        return cameraAnimatorArr;
    }

    public static CameraAnimator[] getRotateBy$default(CameraAnimatorsFactory cameraAnimatorsFactory, ScreenCoordinate screenCoordinate, ScreenCoordinate screenCoordinate2, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        return cameraAnimatorsFactory.getRotateBy(screenCoordinate, screenCoordinate2, str);
    }

    public final CameraAnimator<?>[] getRotateBy(ScreenCoordinate first, ScreenCoordinate second, String owner) {
        char c;
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        CameraState cameraState = this.mapCameraManagerDelegate.getCameraState();
        Size size = this.mapTransformDelegate.getMapOptions().getSize();
        double bearing = cameraState.getBearing();
        if (size != null) {
            CameraTransform cameraTransform = CameraTransform.INSTANCE;
            EdgeInsets padding = cameraState.getPadding();
            Intrinsics.checkNotNullExpressionValue(padding, "cameraOptions.padding");
            ScreenCoordinate mapCenter = cameraTransform.getMapCenter(padding, size);
            double d = -CameraTransform.INSTANCE.deg2rad(bearing);
            ScreenCoordinate screenCoordinateOffset = CameraTransform.INSTANCE.offset(first, mapCenter);
            if (Math.hypot(screenCoordinateOffset.getX(), screenCoordinateOffset.getY()) < 200.0d) {
                double dAtan2 = Math.atan2(screenCoordinateOffset.getY(), screenCoordinateOffset.getX());
                double x = first.getX();
                double dCos = Math.cos(dAtan2);
                c = 0;
                double d2 = -200;
                mapCenter = new ScreenCoordinate(x + (dCos * d2), first.getY() + (Math.sin(dAtan2) * d2));
            } else {
                c = 0;
            }
            double d3 = -CameraTransform.INSTANCE.rad2deg(d + CameraTransform.INSTANCE.angleBetween(CameraTransform.INSTANCE.offset(first, mapCenter), CameraTransform.INSTANCE.offset(second, mapCenter)));
            CameraAnimator<?>[] cameraAnimatorArr = new CameraAnimator[1];
            CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
            Double[] dArr = new Double[1];
            dArr[c] = Double.valueOf(d3);
            CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(dArr, 1));
            builder.startValue(Double.valueOf(bearing));
            Unit unit = Unit.INSTANCE;
            CameraBearingAnimator cameraBearingAnimator = new CameraBearingAnimator(builder.build(), true, defaultAnimationParameters.get(CameraAnimatorType.BEARING));
            if (owner != null) {
                cameraBearingAnimator.setOwner$plugin_animation_release(owner);
            }
            Unit unit2 = Unit.INSTANCE;
            cameraAnimatorArr[c] = cameraBearingAnimator;
            return cameraAnimatorArr;
        }
        return new CameraAnimator[0];
    }

    public static CameraAnimator[] getFlyTo$default(CameraAnimatorsFactory cameraAnimatorsFactory, CameraOptions cameraOptions, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return cameraAnimatorsFactory.getFlyTo(cameraOptions, str);
    }

    public final CameraAnimator<?>[] getFlyTo(CameraOptions cameraOptions, String owner) {
        double dMax;
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        CameraState cameraState = this.mapCameraManagerDelegate.getCameraState();
        EdgeInsets padding = cameraState.getPadding();
        Intrinsics.checkNotNullExpressionValue(padding, "currentCameraState.padding");
        EdgeInsets padding2 = cameraOptions.getPadding();
        if (padding2 == null) {
            padding2 = padding;
        }
        CameraTransform cameraTransform = CameraTransform.INSTANCE;
        Point center = cameraOptions.getCenter();
        if (center == null) {
            center = cameraState.getCenter();
        }
        Intrinsics.checkNotNullExpressionValue(center, "cameraOptions.center ?: currentCameraState.center");
        Point pointWrapCoordinate = cameraTransform.wrapCoordinate(center);
        Double zoom = cameraOptions.getZoom();
        if (zoom == null) {
            zoom = Double.valueOf(cameraState.getZoom());
        }
        double dDoubleValue = zoom.doubleValue();
        Double bearing = cameraOptions.getBearing();
        if (bearing == null) {
            bearing = Double.valueOf(cameraState.getBearing());
        }
        double dDoubleValue2 = bearing.doubleValue();
        double pitch = cameraState.getPitch();
        Double pitch2 = cameraOptions.getPitch();
        if (pitch2 == null) {
            pitch2 = Double.valueOf(pitch);
        }
        double dDoubleValue3 = pitch2.doubleValue();
        double bearing2 = cameraState.getBearing();
        final double dPow = Math.pow(2.0d, cameraState.getZoom());
        final double dScaleZoom = CameraTransform.INSTANCE.scaleZoom(dPow);
        double dCoerceIn = RangesKt.coerceIn(dDoubleValue, this.mapCameraManagerDelegate.getBounds().getMinZoom(), this.mapCameraManagerDelegate.getBounds().getMaxZoom());
        CameraTransform cameraTransform2 = CameraTransform.INSTANCE;
        Point center2 = cameraState.getCenter();
        Intrinsics.checkNotNullExpressionValue(center2, "currentCameraState.center");
        Point pointUnwrapForShortestPath = CameraTransform.INSTANCE.unwrapForShortestPath(cameraTransform2.wrapCoordinate(center2), pointWrapCoordinate);
        final MercatorCoordinate mercatorCoordinateProject = this.mapProjectionDelegate.project(pointUnwrapForShortestPath, dPow);
        final MercatorCoordinate mercatorCoordinateProject2 = this.mapProjectionDelegate.project(pointWrapCoordinate, dPow);
        Size size = this.mapTransformDelegate.getSize();
        float pixelRatio = this.mapTransformDelegate.getMapOptions().getPixelRatio();
        if (size.getWidth() != padding2.getLeft() + padding2.getRight() && size.getHeight() != padding2.getBottom() + padding2.getTop()) {
            double d = pixelRatio;
            dMax = Math.max(((((double) size.getWidth()) - padding2.getLeft()) - padding2.getRight()) / d, ((((double) size.getHeight()) - padding2.getTop()) - padding2.getBottom()) / d);
        } else {
            double d2 = pixelRatio;
            dMax = Math.max(((double) size.getWidth()) / d2, ((double) size.getHeight()) / d2);
        }
        final double d3 = dMax;
        final double dZoomScale = d3 / CameraTransform.INSTANCE.zoomScale(dCoerceIn - dScaleZoom);
        final double dHypot = Math.hypot(CameraTransform.INSTANCE.offset(mercatorCoordinateProject2, mercatorCoordinateProject).getX(), CameraTransform.INSTANCE.offset(mercatorCoordinateProject2, mercatorCoordinateProject).getY());
        final double d4 = 2.0164d;
        final double flyTo$r = dHypot == 0.0d ? Double.POSITIVE_INFINITY : getFlyTo$r(dZoomScale, d3, 2.0164d, dHypot, 0);
        double flyTo$r2 = dHypot != 0.0d ? getFlyTo$r(dZoomScale, d3, 2.0164d, dHypot, 1) : Double.POSITIVE_INFINITY;
        final boolean z = Math.abs(dHypot) < 1.0E-6d || Double.isInfinite(flyTo$r) || Double.isInfinite(flyTo$r2);
        final double d5 = 1.42d;
        final double dAbs = (z ? Math.abs(Math.log(dZoomScale / d3)) : flyTo$r2 - flyTo$r) / 1.42d;
        CameraAnimator[] cameraAnimatorArr = new CameraAnimator[2];
        EdgeInsets edgeInsets = padding2;
        TypeEvaluator typeEvaluator = new TypeEvaluator() {
            @Override
            public final Object evaluate(float f, Object obj, Object obj2) {
                return CameraAnimatorsFactory.getFlyTo$lambda$41(this.f$0, dAbs, mercatorCoordinateProject, mercatorCoordinateProject2, dPow, z, d3, flyTo$r, d5, d4, dHypot, f, (Point) obj, (Point) obj2);
            }
        };
        final double d6 = flyTo$r;
        final boolean z2 = z;
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Point[]{pointWrapCoordinate}, 1));
        builder.startValue(pointUnwrapForShortestPath);
        Unit unit = Unit.INSTANCE;
        CameraAnimatorOptions cameraAnimatorOptionsBuild = builder.build();
        HashMap<CameraAnimatorType, Function1<ValueAnimator, Unit>> map = defaultAnimationParameters;
        CameraCenterAnimator cameraCenterAnimator = new CameraCenterAnimator(typeEvaluator, cameraAnimatorOptionsBuild, true, map.get(CameraAnimatorType.CENTER));
        if (owner != null) {
            cameraCenterAnimator.setOwner$plugin_animation_release(owner);
            Unit unit2 = Unit.INSTANCE;
            Unit unit3 = Unit.INSTANCE;
        }
        Unit unit4 = Unit.INSTANCE;
        cameraAnimatorArr[0] = cameraCenterAnimator;
        CameraTypeEvaluator<Double> cameraTypeEvaluator = new CameraTypeEvaluator<Double>() {
            @Override
            public Object evaluate(float f, Object obj, Object obj2) {
                return evaluate(f, ((Number) obj).doubleValue(), ((Number) obj2).doubleValue());
            }

            @Override
            public boolean canSkip(Object cameraCurrentValue, Object startValue, Object[] values) {
                Intrinsics.checkNotNullParameter(cameraCurrentValue, "cameraCurrentValue");
                Intrinsics.checkNotNullParameter(startValue, "startValue");
                Intrinsics.checkNotNullParameter(values, "values");
                return dAbs == 0.0d;
            }

            public Double evaluate(float fraction, double startValue, double endValue) {
                return Double.valueOf(dScaleZoom + CameraTransform.INSTANCE.scaleZoom(((double) 1) / CameraAnimatorsFactory.getFlyTo$w(z2, dZoomScale, d3, d5, d6, ((double) this.getSafeFraction(fraction)) * dAbs)));
            }
        };
        CameraAnimatorOptions.Companion companion2 = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder2 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(dCoerceIn)}, 1));
        builder2.startValue(Double.valueOf(dScaleZoom));
        Unit unit5 = Unit.INSTANCE;
        CameraZoomAnimator cameraZoomAnimator = new CameraZoomAnimator(cameraTypeEvaluator, builder2.build(), map.get(CameraAnimatorType.ZOOM));
        if (owner != null) {
            cameraZoomAnimator.setOwner$plugin_animation_release(owner);
            Unit unit6 = Unit.INSTANCE;
            Unit unit7 = Unit.INSTANCE;
        }
        Unit unit8 = Unit.INSTANCE;
        cameraAnimatorArr[1] = cameraZoomAnimator;
        List listMutableListOf = CollectionsKt.mutableListOf(cameraAnimatorArr);
        if (dDoubleValue2 != bearing2) {
            CameraAnimatorOptions.Companion companion3 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder3 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(dDoubleValue2)}, 1));
            builder3.startValue(Double.valueOf(bearing2));
            CameraBearingAnimator cameraBearingAnimator = new CameraBearingAnimator(builder3.build(), true, map.get(CameraAnimatorType.BEARING));
            if (owner != null) {
                cameraBearingAnimator.setOwner$plugin_animation_release(owner);
                Unit unit9 = Unit.INSTANCE;
                Unit unit10 = Unit.INSTANCE;
            }
            listMutableListOf.add(cameraBearingAnimator);
        }
        if (dDoubleValue3 != pitch) {
            CameraAnimatorOptions.Companion companion4 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder4 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(dDoubleValue3)}, 1));
            builder4.startValue(Double.valueOf(pitch));
            CameraPitchAnimator cameraPitchAnimator = new CameraPitchAnimator(builder4.build(), map.get(CameraAnimatorType.PITCH));
            if (owner != null) {
                cameraPitchAnimator.setOwner$plugin_animation_release(owner);
                Unit unit11 = Unit.INSTANCE;
                Unit unit12 = Unit.INSTANCE;
            }
            listMutableListOf.add(cameraPitchAnimator);
        }
        if (!Intrinsics.areEqual(edgeInsets, padding)) {
            CameraAnimatorOptions.Companion companion5 = CameraAnimatorOptions.INSTANCE;
            CameraAnimatorOptions.Builder builder5 = new CameraAnimatorOptions.Builder(Arrays.copyOf(new EdgeInsets[]{edgeInsets}, 1));
            builder5.startValue(padding);
            CameraPaddingAnimator cameraPaddingAnimator = new CameraPaddingAnimator(builder5.build(), map.get(CameraAnimatorType.PADDING));
            if (owner != null) {
                cameraPaddingAnimator.setOwner$plugin_animation_release(owner);
                Unit unit13 = Unit.INSTANCE;
                Unit unit14 = Unit.INSTANCE;
            }
            listMutableListOf.add(cameraPaddingAnimator);
        }
        Object[] array = listMutableListOf.toArray(new CameraAnimator[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (CameraAnimator[]) array;
    }

    private static final double getFlyTo$r(double d, double d2, double d3, double d4, int i) {
        double d5 = ((d * d) - (d2 * d2)) + (((double) (i == 0 ? 1 : -1)) * d3 * d3 * d4 * d4);
        double d6 = 2;
        if (i == 0) {
            d = d2;
        }
        double d7 = d5 / (((d6 * d) * d3) * d4);
        return Math.log(Math.sqrt((d7 * d7) + ((double) 1)) - d7);
    }

    public static final double getFlyTo$w(boolean z, double d, double d2, double d3, double d4, double d5) {
        if (z) {
            return Math.exp(((double) (d < d2 ? -1 : 1)) * d3 * d5);
        }
        return Math.cosh(d4) / Math.cosh(d4 + (d3 * d5));
    }

    private static final double getFlyTo$u(boolean z, double d, double d2, double d3, double d4, double d5, double d6) {
        if (z) {
            return 0.0d;
        }
        return ((d * ((Math.cosh(d2) * Math.tanh((d3 * d6) + d2)) - Math.sinh(d2))) / d4) / d5;
    }

    public static final Point getFlyTo$lambda$41(CameraAnimatorsFactory this$0, double d, MercatorCoordinate startPoint, MercatorCoordinate endPoint, double d2, boolean z, double d3, double d4, double d5, double d6, double d7, float f, Point point, Point point2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(startPoint, "$startPoint");
        Intrinsics.checkNotNullParameter(endPoint, "$endPoint");
        float safeFraction = this$0.getSafeFraction(f);
        double flyTo$u = safeFraction == 1.0f ? 1.0d : getFlyTo$u(z, d3, d4, d5, d6, d7, ((double) safeFraction) * d);
        return this$0.mapProjectionDelegate.unproject(new MercatorCoordinate(startPoint.getX() + ((endPoint.getX() - startPoint.getX()) * flyTo$u), startPoint.getY() + (flyTo$u * (endPoint.getY() - startPoint.getY()))), d2);
    }

    public final float getSafeFraction(float f) {
        if (Float.isNaN(f)) {
            return 0.0f;
        }
        return f;
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\u0011\u001a\u00020\u000e2\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fH\u0007J)\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000b2\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fH\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000RL\u0010\t\u001a@\u0012\u0004\u0012\u00020\u000b\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000f0\nj\u001f\u0012\u0004\u0012\u00020\u000b\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000f`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$Companion;", "", "()V", "CUBIC_BEZIER_INTERPOLATOR", "Landroid/view/animation/Interpolator;", "DEFAULT_ANIMATION_DURATION_MS", "", "DEFAULT_INTERPOLATOR", "Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;", "defaultAnimationParameters", "Ljava/util/HashMap;", "Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;", "Lkotlin/Function1;", "Landroid/animation/ValueAnimator;", "", "Lkotlin/ExtensionFunctionType;", "Lkotlin/collections/HashMap;", "setDefaultAnimatorOptions", "block", SVGParser.XML_STYLESHEET_ATTR_TYPE, "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final void setDefaultAnimatorOptions(CameraAnimatorType type, Function1<? super ValueAnimator, Unit> block) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(block, "block");
            CameraAnimatorsFactory.defaultAnimationParameters.put(type, block);
        }

        @JvmStatic
        public final void setDefaultAnimatorOptions(Function1<? super ValueAnimator, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            CameraAnimatorsFactory.defaultAnimationParameters.put(CameraAnimatorType.CENTER, block);
            CameraAnimatorsFactory.defaultAnimationParameters.put(CameraAnimatorType.ZOOM, block);
            CameraAnimatorsFactory.defaultAnimationParameters.put(CameraAnimatorType.BEARING, block);
            CameraAnimatorsFactory.defaultAnimationParameters.put(CameraAnimatorType.PITCH, block);
            CameraAnimatorsFactory.defaultAnimationParameters.put(CameraAnimatorType.ANCHOR, block);
            CameraAnimatorsFactory.defaultAnimationParameters.put(CameraAnimatorType.PADDING, block);
        }
    }

    static {
        Interpolator interpolatorCreate = PathInterpolatorCompat.create(0.0f, 0.0f, 0.25f, 1.0f);
        Intrinsics.checkNotNullExpressionValue(interpolatorCreate, "create(\n      0.0f,\n    …  0.25f,\n      1.0f\n    )");
        CUBIC_BEZIER_INTERPOLATOR = interpolatorCreate;
        DEFAULT_INTERPOLATOR = new FastOutSlowInInterpolator();
        HashMap<CameraAnimatorType, Function1<ValueAnimator, Unit>> map = new HashMap<>();
        map.put(CameraAnimatorType.ANCHOR, new Function1<ValueAnimator, Unit>() {
            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator put) {
                Intrinsics.checkNotNullParameter(put, "$this$put");
                put.setDuration(300L);
                put.setInterpolator(CameraAnimatorsFactory.DEFAULT_INTERPOLATOR);
            }
        });
        map.put(CameraAnimatorType.BEARING, new Function1<ValueAnimator, Unit>() {
            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator put) {
                Intrinsics.checkNotNullParameter(put, "$this$put");
                put.setDuration(300L);
                put.setInterpolator(CameraAnimatorsFactory.DEFAULT_INTERPOLATOR);
            }
        });
        map.put(CameraAnimatorType.PADDING, new Function1<ValueAnimator, Unit>() {
            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator put) {
                Intrinsics.checkNotNullParameter(put, "$this$put");
                put.setDuration(300L);
                put.setInterpolator(CameraAnimatorsFactory.DEFAULT_INTERPOLATOR);
            }
        });
        map.put(CameraAnimatorType.PITCH, new Function1<ValueAnimator, Unit>() {
            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator put) {
                Intrinsics.checkNotNullParameter(put, "$this$put");
                put.setDuration(300L);
                put.setInterpolator(CameraAnimatorsFactory.DEFAULT_INTERPOLATOR);
            }
        });
        map.put(CameraAnimatorType.CENTER, new Function1<ValueAnimator, Unit>() {
            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator put) {
                Intrinsics.checkNotNullParameter(put, "$this$put");
                put.setDuration(300L);
                put.setInterpolator(CameraAnimatorsFactory.DEFAULT_INTERPOLATOR);
            }
        });
        map.put(CameraAnimatorType.ZOOM, new Function1<ValueAnimator, Unit>() {
            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator put) {
                Intrinsics.checkNotNullParameter(put, "$this$put");
                put.setDuration(300L);
                put.setInterpolator(CameraAnimatorsFactory.DEFAULT_INTERPOLATOR);
            }
        });
        defaultAnimationParameters = map;
    }
}
