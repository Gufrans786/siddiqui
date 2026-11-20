package com.mapbox.maps.plugin.gestures.generated;

import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.ScrollMode;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010C\u001a\u00020DH&J!\u0010E\u001a\u00020F2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020F0H¢\u0006\u0002\bJH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\fX¦\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0005\"\u0004\b\u0013\u0010\u0007R\"\u0010\u0014\u001a\u00020\u00038&@&X§\u000e¢\u0006\u0012\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0005\"\u0004\b\u0018\u0010\u0007R\u0018\u0010\u0019\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u0005\"\u0004\b\u001b\u0010\u0007R\u0018\u0010\u001c\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u0005\"\u0004\b\u001e\u0010\u0007R\u0018\u0010\u001f\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b \u0010\u0005\"\u0004\b!\u0010\u0007R\u0018\u0010\"\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b#\u0010\u0005\"\u0004\b$\u0010\u0007R\u0018\u0010%\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b&\u0010\u0005\"\u0004\b'\u0010\u0007R\u0018\u0010(\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b)\u0010\u0005\"\u0004\b*\u0010\u0007R\u0018\u0010+\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b,\u0010\u0005\"\u0004\b-\u0010\u0007R\u0018\u0010.\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b/\u0010\u0005\"\u0004\b0\u0010\u0007R\u0018\u00101\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b2\u0010\u0005\"\u0004\b3\u0010\u0007R\u0018\u00104\u001a\u000205X¦\u000e¢\u0006\f\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0018\u0010:\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b;\u0010\u0005\"\u0004\b<\u0010\u0007R\u0018\u0010=\u001a\u00020>X¦\u000e¢\u0006\f\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006K"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettingsInterface;", "", "doubleTapToZoomInEnabled", "", "getDoubleTapToZoomInEnabled", "()Z", "setDoubleTapToZoomInEnabled", "(Z)V", "doubleTouchToZoomOutEnabled", "getDoubleTouchToZoomOutEnabled", "setDoubleTouchToZoomOutEnabled", "focalPoint", "Lcom/mapbox/maps/ScreenCoordinate;", "getFocalPoint", "()Lcom/mapbox/maps/ScreenCoordinate;", "setFocalPoint", "(Lcom/mapbox/maps/ScreenCoordinate;)V", "increasePinchToZoomThresholdWhenRotating", "getIncreasePinchToZoomThresholdWhenRotating", "setIncreasePinchToZoomThresholdWhenRotating", "increaseRotateThresholdWhenPinchingToZoom", "getIncreaseRotateThresholdWhenPinchingToZoom$annotations", "()V", "getIncreaseRotateThresholdWhenPinchingToZoom", "setIncreaseRotateThresholdWhenPinchingToZoom", "pinchScrollEnabled", "getPinchScrollEnabled", "setPinchScrollEnabled", "pinchToZoomDecelerationEnabled", "getPinchToZoomDecelerationEnabled", "setPinchToZoomDecelerationEnabled", "pinchToZoomEnabled", "getPinchToZoomEnabled", "setPinchToZoomEnabled", "pitchEnabled", "getPitchEnabled", "setPitchEnabled", "quickZoomEnabled", "getQuickZoomEnabled", "setQuickZoomEnabled", "rotateDecelerationEnabled", "getRotateDecelerationEnabled", "setRotateDecelerationEnabled", "rotateEnabled", "getRotateEnabled", "setRotateEnabled", "scrollDecelerationEnabled", "getScrollDecelerationEnabled", "setScrollDecelerationEnabled", "scrollEnabled", "getScrollEnabled", "setScrollEnabled", "scrollMode", "Lcom/mapbox/maps/plugin/ScrollMode;", "getScrollMode", "()Lcom/mapbox/maps/plugin/ScrollMode;", "setScrollMode", "(Lcom/mapbox/maps/plugin/ScrollMode;)V", "simultaneousRotateAndPinchToZoomEnabled", "getSimultaneousRotateAndPinchToZoomEnabled", "setSimultaneousRotateAndPinchToZoomEnabled", "zoomAnimationAmount", "", "getZoomAnimationAmount", "()F", "setZoomAnimationAmount", "(F)V", "getSettings", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;", "updateSettings", "", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;", "Lkotlin/ExtensionFunctionType;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface GesturesSettingsInterface {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        @Deprecated(message = "This property has no effect")
        public static void getIncreaseRotateThresholdWhenPinchingToZoom$annotations() {
        }
    }

    boolean getDoubleTapToZoomInEnabled();

    boolean getDoubleTouchToZoomOutEnabled();

    ScreenCoordinate getFocalPoint();

    boolean getIncreasePinchToZoomThresholdWhenRotating();

    boolean getIncreaseRotateThresholdWhenPinchingToZoom();

    boolean getPinchScrollEnabled();

    boolean getPinchToZoomDecelerationEnabled();

    boolean getPinchToZoomEnabled();

    boolean getPitchEnabled();

    boolean getQuickZoomEnabled();

    boolean getRotateDecelerationEnabled();

    boolean getRotateEnabled();

    boolean getScrollDecelerationEnabled();

    boolean getScrollEnabled();

    ScrollMode getScrollMode();

    GesturesSettings getSettings();

    boolean getSimultaneousRotateAndPinchToZoomEnabled();

    float getZoomAnimationAmount();

    void setDoubleTapToZoomInEnabled(boolean z);

    void setDoubleTouchToZoomOutEnabled(boolean z);

    void setFocalPoint(ScreenCoordinate screenCoordinate);

    void setIncreasePinchToZoomThresholdWhenRotating(boolean z);

    void setIncreaseRotateThresholdWhenPinchingToZoom(boolean z);

    void setPinchScrollEnabled(boolean z);

    void setPinchToZoomDecelerationEnabled(boolean z);

    void setPinchToZoomEnabled(boolean z);

    void setPitchEnabled(boolean z);

    void setQuickZoomEnabled(boolean z);

    void setRotateDecelerationEnabled(boolean z);

    void setRotateEnabled(boolean z);

    void setScrollDecelerationEnabled(boolean z);

    void setScrollEnabled(boolean z);

    void setScrollMode(ScrollMode scrollMode);

    void setSimultaneousRotateAndPinchToZoomEnabled(boolean z);

    void setZoomAnimationAmount(float f);

    void updateSettings(Function1<? super GesturesSettings.Builder, Unit> block);
}
