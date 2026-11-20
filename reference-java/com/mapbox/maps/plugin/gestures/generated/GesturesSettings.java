package com.mapbox.maps.plugin.gestures.generated;

import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.ScrollMode;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001<B\u0091\u0001\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0003¢\u0006\u0002\u0010\u0017J\t\u0010-\u001a\u00020.HÖ\u0001J\u0013\u0010/\u001a\u00020\u00032\b\u00100\u001a\u0004\u0018\u000101H\u0096\u0002J\b\u00102\u001a\u00020.H\u0016J\u0006\u00103\u001a\u000204J\b\u00105\u001a\u000206H\u0016J\u0019\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020.HÖ\u0001R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0011\u0010\u0016\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0019R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0019R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0019R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0019R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0019R\u0011\u0010\u0014\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,¨\u0006="}, d2 = {"Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;", "Landroid/os/Parcelable;", "rotateEnabled", "", "pinchToZoomEnabled", "scrollEnabled", "simultaneousRotateAndPinchToZoomEnabled", "pitchEnabled", "scrollMode", "Lcom/mapbox/maps/plugin/ScrollMode;", "doubleTapToZoomInEnabled", "doubleTouchToZoomOutEnabled", "quickZoomEnabled", "focalPoint", "Lcom/mapbox/maps/ScreenCoordinate;", "pinchToZoomDecelerationEnabled", "rotateDecelerationEnabled", "scrollDecelerationEnabled", "increaseRotateThresholdWhenPinchingToZoom", "increasePinchToZoomThresholdWhenRotating", "zoomAnimationAmount", "", "pinchScrollEnabled", "(ZZZZZLcom/mapbox/maps/plugin/ScrollMode;ZZZLcom/mapbox/maps/ScreenCoordinate;ZZZZZFZ)V", "getDoubleTapToZoomInEnabled", "()Z", "getDoubleTouchToZoomOutEnabled", "getFocalPoint", "()Lcom/mapbox/maps/ScreenCoordinate;", "getIncreasePinchToZoomThresholdWhenRotating", "getIncreaseRotateThresholdWhenPinchingToZoom", "getPinchScrollEnabled", "getPinchToZoomDecelerationEnabled", "getPinchToZoomEnabled", "getPitchEnabled", "getQuickZoomEnabled", "getRotateDecelerationEnabled", "getRotateEnabled", "getScrollDecelerationEnabled", "getScrollEnabled", "getScrollMode", "()Lcom/mapbox/maps/plugin/ScrollMode;", "getSimultaneousRotateAndPinchToZoomEnabled", "getZoomAnimationAmount", "()F", "describeContents", "", "equals", "other", "", "hashCode", "toBuilder", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GesturesSettings implements Parcelable {
    public static final Parcelable.Creator<GesturesSettings> CREATOR = new Creator();
    private final boolean doubleTapToZoomInEnabled;
    private final boolean doubleTouchToZoomOutEnabled;
    private final ScreenCoordinate focalPoint;
    private final boolean increasePinchToZoomThresholdWhenRotating;
    private final boolean increaseRotateThresholdWhenPinchingToZoom;
    private final boolean pinchScrollEnabled;
    private final boolean pinchToZoomDecelerationEnabled;
    private final boolean pinchToZoomEnabled;
    private final boolean pitchEnabled;
    private final boolean quickZoomEnabled;
    private final boolean rotateDecelerationEnabled;
    private final boolean rotateEnabled;
    private final boolean scrollDecelerationEnabled;
    private final boolean scrollEnabled;
    private final ScrollMode scrollMode;
    private final boolean simultaneousRotateAndPinchToZoomEnabled;
    private final float zoomAnimationAmount;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<GesturesSettings> {
        @Override
        public final GesturesSettings createFromParcel(Parcel parcel) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            boolean z5 = true;
            boolean z6 = false;
            if (parcel.readInt() == 0) {
                z5 = false;
            }
            if (parcel.readInt() != 0) {
                z6 = true;
            }
            if (parcel.readInt() != 0) {
                z6 = z5;
            }
            if (parcel.readInt() != 0) {
                z6 = z5;
            }
            if (parcel.readInt() != 0) {
                z6 = z5;
            }
            ScrollMode scrollModeValueOf = ScrollMode.valueOf(parcel.readString());
            if (parcel.readInt() != 0) {
                z = false;
                z2 = z5;
            } else {
                z = z6;
                z2 = z;
            }
            if (parcel.readInt() != 0) {
                z = z5;
            }
            if (parcel.readInt() != 0) {
                z = z5;
            }
            ScreenCoordinate screenCoordinate = (ScreenCoordinate) parcel.readSerializable();
            if (parcel.readInt() != 0) {
                z3 = z;
                z4 = z5;
            } else {
                z3 = z;
                z4 = z3;
            }
            if (parcel.readInt() != 0) {
                z3 = z5;
            }
            if (parcel.readInt() != 0) {
                z3 = z5;
            }
            if (parcel.readInt() != 0) {
                z3 = z5;
            }
            if (parcel.readInt() != 0) {
                z3 = z5;
            }
            return new GesturesSettings(z5, z6, z6, z6, z6, scrollModeValueOf, z2, z, z, screenCoordinate, z4, z3, z3, z3, z3, parcel.readFloat(), parcel.readInt() == 0 ? z3 : true, null);
        }

        @Override
        public final GesturesSettings[] newArray(int i) {
            return new GesturesSettings[i];
        }
    }

    public GesturesSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ScrollMode scrollMode, boolean z6, boolean z7, boolean z8, ScreenCoordinate screenCoordinate, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, float f, boolean z14, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, z3, z4, z5, scrollMode, z6, z7, z8, screenCoordinate, z9, z10, z11, z12, z13, f, z14);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeInt(this.rotateEnabled ? 1 : 0);
        parcel.writeInt(this.pinchToZoomEnabled ? 1 : 0);
        parcel.writeInt(this.scrollEnabled ? 1 : 0);
        parcel.writeInt(this.simultaneousRotateAndPinchToZoomEnabled ? 1 : 0);
        parcel.writeInt(this.pitchEnabled ? 1 : 0);
        parcel.writeString(this.scrollMode.name());
        parcel.writeInt(this.doubleTapToZoomInEnabled ? 1 : 0);
        parcel.writeInt(this.doubleTouchToZoomOutEnabled ? 1 : 0);
        parcel.writeInt(this.quickZoomEnabled ? 1 : 0);
        parcel.writeSerializable(this.focalPoint);
        parcel.writeInt(this.pinchToZoomDecelerationEnabled ? 1 : 0);
        parcel.writeInt(this.rotateDecelerationEnabled ? 1 : 0);
        parcel.writeInt(this.scrollDecelerationEnabled ? 1 : 0);
        parcel.writeInt(this.increaseRotateThresholdWhenPinchingToZoom ? 1 : 0);
        parcel.writeInt(this.increasePinchToZoomThresholdWhenRotating ? 1 : 0);
        parcel.writeFloat(this.zoomAnimationAmount);
        parcel.writeInt(this.pinchScrollEnabled ? 1 : 0);
    }

    private GesturesSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ScrollMode scrollMode, boolean z6, boolean z7, boolean z8, ScreenCoordinate screenCoordinate, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, float f, boolean z14) {
        this.rotateEnabled = z;
        this.pinchToZoomEnabled = z2;
        this.scrollEnabled = z3;
        this.simultaneousRotateAndPinchToZoomEnabled = z4;
        this.pitchEnabled = z5;
        this.scrollMode = scrollMode;
        this.doubleTapToZoomInEnabled = z6;
        this.doubleTouchToZoomOutEnabled = z7;
        this.quickZoomEnabled = z8;
        this.focalPoint = screenCoordinate;
        this.pinchToZoomDecelerationEnabled = z9;
        this.rotateDecelerationEnabled = z10;
        this.scrollDecelerationEnabled = z11;
        this.increaseRotateThresholdWhenPinchingToZoom = z12;
        this.increasePinchToZoomThresholdWhenRotating = z13;
        this.zoomAnimationAmount = f;
        this.pinchScrollEnabled = z14;
    }

    public final boolean getRotateEnabled() {
        return this.rotateEnabled;
    }

    public final boolean getPinchToZoomEnabled() {
        return this.pinchToZoomEnabled;
    }

    public final boolean getScrollEnabled() {
        return this.scrollEnabled;
    }

    public final boolean getSimultaneousRotateAndPinchToZoomEnabled() {
        return this.simultaneousRotateAndPinchToZoomEnabled;
    }

    public final boolean getPitchEnabled() {
        return this.pitchEnabled;
    }

    public final ScrollMode getScrollMode() {
        return this.scrollMode;
    }

    public final boolean getDoubleTapToZoomInEnabled() {
        return this.doubleTapToZoomInEnabled;
    }

    public final boolean getDoubleTouchToZoomOutEnabled() {
        return this.doubleTouchToZoomOutEnabled;
    }

    public final boolean getQuickZoomEnabled() {
        return this.quickZoomEnabled;
    }

    public final ScreenCoordinate getFocalPoint() {
        return this.focalPoint;
    }

    public final boolean getPinchToZoomDecelerationEnabled() {
        return this.pinchToZoomDecelerationEnabled;
    }

    public final boolean getRotateDecelerationEnabled() {
        return this.rotateDecelerationEnabled;
    }

    public final boolean getScrollDecelerationEnabled() {
        return this.scrollDecelerationEnabled;
    }

    public final boolean getIncreaseRotateThresholdWhenPinchingToZoom() {
        return this.increaseRotateThresholdWhenPinchingToZoom;
    }

    public final boolean getIncreasePinchToZoomThresholdWhenRotating() {
        return this.increasePinchToZoomThresholdWhenRotating;
    }

    public final float getZoomAnimationAmount() {
        return this.zoomAnimationAmount;
    }

    public final boolean getPinchScrollEnabled() {
        return this.pinchScrollEnabled;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GesturesSettings(rotateEnabled=");
        sb.append(this.rotateEnabled).append(",\n      pinchToZoomEnabled=").append(this.pinchToZoomEnabled).append(", scrollEnabled=").append(this.scrollEnabled).append(",\n      simultaneousRotateAndPinchToZoomEnabled=").append(this.simultaneousRotateAndPinchToZoomEnabled).append(",\n      pitchEnabled=").append(this.pitchEnabled).append(", scrollMode=").append(this.scrollMode).append(",\n      doubleTapToZoomInEnabled=").append(this.doubleTapToZoomInEnabled).append(",\n      doubleTouchToZoomOutEnabled=").append(this.doubleTouchToZoomOutEnabled).append(", quickZoomEnabled=").append(this.quickZoomEnabled).append(",\n      focalPoint=").append(this.focalPoint).append(", pinchToZoomDecelerationEnabled=").append(this.pinchToZoomDecelerationEnabled).append(",\n      rotateDecelerationEnabled=");
        sb.append(this.rotateDecelerationEnabled).append(",\n      scrollDecelerationEnabled=").append(this.scrollDecelerationEnabled).append(",\n      increaseRotateThresholdWhenPinchingToZoom=").append(this.increaseRotateThresholdWhenPinchingToZoom).append(",\n      increasePinchToZoomThresholdWhenRotating=").append(this.increasePinchToZoomThresholdWhenRotating).append(",\n      zoomAnimationAmount=").append(this.zoomAnimationAmount).append(",\n      pinchScrollEnabled=").append(this.pinchScrollEnabled).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return StringsKt.trimIndent(sb.toString());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.plugin.gestures.generated.GesturesSettings");
        GesturesSettings gesturesSettings = (GesturesSettings) other;
        return this.rotateEnabled == gesturesSettings.rotateEnabled && this.pinchToZoomEnabled == gesturesSettings.pinchToZoomEnabled && this.scrollEnabled == gesturesSettings.scrollEnabled && this.simultaneousRotateAndPinchToZoomEnabled == gesturesSettings.simultaneousRotateAndPinchToZoomEnabled && this.pitchEnabled == gesturesSettings.pitchEnabled && this.scrollMode == gesturesSettings.scrollMode && this.doubleTapToZoomInEnabled == gesturesSettings.doubleTapToZoomInEnabled && this.doubleTouchToZoomOutEnabled == gesturesSettings.doubleTouchToZoomOutEnabled && this.quickZoomEnabled == gesturesSettings.quickZoomEnabled && Intrinsics.areEqual(this.focalPoint, gesturesSettings.focalPoint) && this.pinchToZoomDecelerationEnabled == gesturesSettings.pinchToZoomDecelerationEnabled && this.rotateDecelerationEnabled == gesturesSettings.rotateDecelerationEnabled && this.scrollDecelerationEnabled == gesturesSettings.scrollDecelerationEnabled && this.increaseRotateThresholdWhenPinchingToZoom == gesturesSettings.increaseRotateThresholdWhenPinchingToZoom && this.increasePinchToZoomThresholdWhenRotating == gesturesSettings.increasePinchToZoomThresholdWhenRotating && Float.compare(this.zoomAnimationAmount, gesturesSettings.zoomAnimationAmount) == 0 && this.pinchScrollEnabled == gesturesSettings.pinchScrollEnabled;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.rotateEnabled), Boolean.valueOf(this.pinchToZoomEnabled), Boolean.valueOf(this.scrollEnabled), Boolean.valueOf(this.simultaneousRotateAndPinchToZoomEnabled), Boolean.valueOf(this.pitchEnabled), this.scrollMode, Boolean.valueOf(this.doubleTapToZoomInEnabled), Boolean.valueOf(this.doubleTouchToZoomOutEnabled), Boolean.valueOf(this.quickZoomEnabled), this.focalPoint, Boolean.valueOf(this.pinchToZoomDecelerationEnabled), Boolean.valueOf(this.rotateDecelerationEnabled), Boolean.valueOf(this.scrollDecelerationEnabled), Boolean.valueOf(this.increaseRotateThresholdWhenPinchingToZoom), Boolean.valueOf(this.increasePinchToZoomThresholdWhenRotating), Float.valueOf(this.zoomAnimationAmount), Boolean.valueOf(this.pinchScrollEnabled));
    }

    public final Builder toBuilder() {
        return new Builder().setRotateEnabled(this.rotateEnabled).setPinchToZoomEnabled(this.pinchToZoomEnabled).setScrollEnabled(this.scrollEnabled).setSimultaneousRotateAndPinchToZoomEnabled(this.simultaneousRotateAndPinchToZoomEnabled).setPitchEnabled(this.pitchEnabled).setScrollMode(this.scrollMode).setDoubleTapToZoomInEnabled(this.doubleTapToZoomInEnabled).setDoubleTouchToZoomOutEnabled(this.doubleTouchToZoomOutEnabled).setQuickZoomEnabled(this.quickZoomEnabled).setFocalPoint(this.focalPoint).setPinchToZoomDecelerationEnabled(this.pinchToZoomDecelerationEnabled).setRotateDecelerationEnabled(this.rotateDecelerationEnabled).setScrollDecelerationEnabled(this.scrollDecelerationEnabled).setIncreaseRotateThresholdWhenPinchingToZoom(this.increaseRotateThresholdWhenPinchingToZoom).setIncreasePinchToZoomThresholdWhenRotating(this.increasePinchToZoomThresholdWhenRotating).setZoomAnimationAmount(this.zoomAnimationAmount).setPinchScrollEnabled(this.pinchScrollEnabled);
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010C\u001a\u00020DJ\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0004J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0004J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0004J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0004J\u000e\u00100\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0004J\u000e\u00103\u001a\u00020\u00002\u0006\u00101\u001a\u00020\u0004J\u000e\u00108\u001a\u00020\u00002\u0006\u00105\u001a\u000204J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010>\u001a\u00020=R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR$\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR$\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR$\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR$\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0007\"\u0004\b!\u0010\tR$\u0010\"\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0007\"\u0004\b$\u0010\tR$\u0010%\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0007\"\u0004\b'\u0010\tR$\u0010(\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0007\"\u0004\b*\u0010\tR$\u0010+\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0007\"\u0004\b-\u0010\tR$\u0010.\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0007\"\u0004\b0\u0010\tR$\u00101\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0007\"\u0004\b3\u0010\tR$\u00105\u001a\u0002042\u0006\u0010\u0003\u001a\u000204@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R$\u0010:\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0007\"\u0004\b<\u0010\tR$\u0010>\u001a\u00020=2\u0006\u0010\u0003\u001a\u00020=@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;", "", "()V", "<set-?>", "", "doubleTapToZoomInEnabled", "getDoubleTapToZoomInEnabled", "()Z", "setDoubleTapToZoomInEnabled", "(Z)V", "doubleTouchToZoomOutEnabled", "getDoubleTouchToZoomOutEnabled", "setDoubleTouchToZoomOutEnabled", "Lcom/mapbox/maps/ScreenCoordinate;", "focalPoint", "getFocalPoint", "()Lcom/mapbox/maps/ScreenCoordinate;", "setFocalPoint", "(Lcom/mapbox/maps/ScreenCoordinate;)V", "increasePinchToZoomThresholdWhenRotating", "getIncreasePinchToZoomThresholdWhenRotating", "setIncreasePinchToZoomThresholdWhenRotating", "increaseRotateThresholdWhenPinchingToZoom", "getIncreaseRotateThresholdWhenPinchingToZoom", "setIncreaseRotateThresholdWhenPinchingToZoom", "pinchScrollEnabled", "getPinchScrollEnabled", "setPinchScrollEnabled", "pinchToZoomDecelerationEnabled", "getPinchToZoomDecelerationEnabled", "setPinchToZoomDecelerationEnabled", "pinchToZoomEnabled", "getPinchToZoomEnabled", "setPinchToZoomEnabled", "pitchEnabled", "getPitchEnabled", "setPitchEnabled", "quickZoomEnabled", "getQuickZoomEnabled", "setQuickZoomEnabled", "rotateDecelerationEnabled", "getRotateDecelerationEnabled", "setRotateDecelerationEnabled", "rotateEnabled", "getRotateEnabled", "setRotateEnabled", "scrollDecelerationEnabled", "getScrollDecelerationEnabled", "setScrollDecelerationEnabled", "scrollEnabled", "getScrollEnabled", "setScrollEnabled", "Lcom/mapbox/maps/plugin/ScrollMode;", "scrollMode", "getScrollMode", "()Lcom/mapbox/maps/plugin/ScrollMode;", "setScrollMode", "(Lcom/mapbox/maps/plugin/ScrollMode;)V", "simultaneousRotateAndPinchToZoomEnabled", "getSimultaneousRotateAndPinchToZoomEnabled", "setSimultaneousRotateAndPinchToZoomEnabled", "", "zoomAnimationAmount", "getZoomAnimationAmount", "()F", "setZoomAnimationAmount", "(F)V", "build", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private ScreenCoordinate focalPoint;
        private boolean rotateEnabled = true;
        private boolean pinchToZoomEnabled = true;
        private boolean scrollEnabled = true;
        private boolean simultaneousRotateAndPinchToZoomEnabled = true;
        private boolean pitchEnabled = true;
        private ScrollMode scrollMode = ScrollMode.HORIZONTAL_AND_VERTICAL;
        private boolean doubleTapToZoomInEnabled = true;
        private boolean doubleTouchToZoomOutEnabled = true;
        private boolean quickZoomEnabled = true;
        private boolean pinchToZoomDecelerationEnabled = true;
        private boolean rotateDecelerationEnabled = true;
        private boolean scrollDecelerationEnabled = true;
        private boolean increaseRotateThresholdWhenPinchingToZoom = true;
        private boolean increasePinchToZoomThresholdWhenRotating = true;
        private float zoomAnimationAmount = 1.0f;
        private boolean pinchScrollEnabled = true;

        public final boolean getRotateEnabled() {
            return this.rotateEnabled;
        }

        public final void m1090setRotateEnabled(boolean z) {
            this.rotateEnabled = z;
        }

        public final boolean getPinchToZoomEnabled() {
            return this.pinchToZoomEnabled;
        }

        public final void m1086setPinchToZoomEnabled(boolean z) {
            this.pinchToZoomEnabled = z;
        }

        public final boolean getScrollEnabled() {
            return this.scrollEnabled;
        }

        public final void m1092setScrollEnabled(boolean z) {
            this.scrollEnabled = z;
        }

        public final boolean getSimultaneousRotateAndPinchToZoomEnabled() {
            return this.simultaneousRotateAndPinchToZoomEnabled;
        }

        public final void m1094setSimultaneousRotateAndPinchToZoomEnabled(boolean z) {
            this.simultaneousRotateAndPinchToZoomEnabled = z;
        }

        public final boolean getPitchEnabled() {
            return this.pitchEnabled;
        }

        public final void m1087setPitchEnabled(boolean z) {
            this.pitchEnabled = z;
        }

        public final ScrollMode getScrollMode() {
            return this.scrollMode;
        }

        public final void m1093setScrollMode(ScrollMode scrollMode) {
            Intrinsics.checkNotNullParameter(scrollMode, "<set-?>");
            this.scrollMode = scrollMode;
        }

        public final boolean getDoubleTapToZoomInEnabled() {
            return this.doubleTapToZoomInEnabled;
        }

        public final void m1079setDoubleTapToZoomInEnabled(boolean z) {
            this.doubleTapToZoomInEnabled = z;
        }

        public final boolean getDoubleTouchToZoomOutEnabled() {
            return this.doubleTouchToZoomOutEnabled;
        }

        public final void m1080setDoubleTouchToZoomOutEnabled(boolean z) {
            this.doubleTouchToZoomOutEnabled = z;
        }

        public final boolean getQuickZoomEnabled() {
            return this.quickZoomEnabled;
        }

        public final void m1088setQuickZoomEnabled(boolean z) {
            this.quickZoomEnabled = z;
        }

        public final ScreenCoordinate getFocalPoint() {
            return this.focalPoint;
        }

        public final void m1081setFocalPoint(ScreenCoordinate screenCoordinate) {
            this.focalPoint = screenCoordinate;
        }

        public final boolean getPinchToZoomDecelerationEnabled() {
            return this.pinchToZoomDecelerationEnabled;
        }

        public final void m1085setPinchToZoomDecelerationEnabled(boolean z) {
            this.pinchToZoomDecelerationEnabled = z;
        }

        public final boolean getRotateDecelerationEnabled() {
            return this.rotateDecelerationEnabled;
        }

        public final void m1089setRotateDecelerationEnabled(boolean z) {
            this.rotateDecelerationEnabled = z;
        }

        public final boolean getScrollDecelerationEnabled() {
            return this.scrollDecelerationEnabled;
        }

        public final void m1091setScrollDecelerationEnabled(boolean z) {
            this.scrollDecelerationEnabled = z;
        }

        public final boolean getIncreaseRotateThresholdWhenPinchingToZoom() {
            return this.increaseRotateThresholdWhenPinchingToZoom;
        }

        public final void m1083setIncreaseRotateThresholdWhenPinchingToZoom(boolean z) {
            this.increaseRotateThresholdWhenPinchingToZoom = z;
        }

        public final boolean getIncreasePinchToZoomThresholdWhenRotating() {
            return this.increasePinchToZoomThresholdWhenRotating;
        }

        public final void m1082setIncreasePinchToZoomThresholdWhenRotating(boolean z) {
            this.increasePinchToZoomThresholdWhenRotating = z;
        }

        public final float getZoomAnimationAmount() {
            return this.zoomAnimationAmount;
        }

        public final void m1095setZoomAnimationAmount(float f) {
            this.zoomAnimationAmount = f;
        }

        public final boolean getPinchScrollEnabled() {
            return this.pinchScrollEnabled;
        }

        public final void m1084setPinchScrollEnabled(boolean z) {
            this.pinchScrollEnabled = z;
        }

        public final Builder setRotateEnabled(boolean rotateEnabled) {
            this.rotateEnabled = rotateEnabled;
            return this;
        }

        public final Builder setPinchToZoomEnabled(boolean pinchToZoomEnabled) {
            this.pinchToZoomEnabled = pinchToZoomEnabled;
            return this;
        }

        public final Builder setScrollEnabled(boolean scrollEnabled) {
            this.scrollEnabled = scrollEnabled;
            return this;
        }

        public final Builder setSimultaneousRotateAndPinchToZoomEnabled(boolean simultaneousRotateAndPinchToZoomEnabled) {
            this.simultaneousRotateAndPinchToZoomEnabled = simultaneousRotateAndPinchToZoomEnabled;
            return this;
        }

        public final Builder setPitchEnabled(boolean pitchEnabled) {
            this.pitchEnabled = pitchEnabled;
            return this;
        }

        public final Builder setScrollMode(ScrollMode scrollMode) {
            Intrinsics.checkNotNullParameter(scrollMode, "scrollMode");
            this.scrollMode = scrollMode;
            return this;
        }

        public final Builder setDoubleTapToZoomInEnabled(boolean doubleTapToZoomInEnabled) {
            this.doubleTapToZoomInEnabled = doubleTapToZoomInEnabled;
            return this;
        }

        public final Builder setDoubleTouchToZoomOutEnabled(boolean doubleTouchToZoomOutEnabled) {
            this.doubleTouchToZoomOutEnabled = doubleTouchToZoomOutEnabled;
            return this;
        }

        public final Builder setQuickZoomEnabled(boolean quickZoomEnabled) {
            this.quickZoomEnabled = quickZoomEnabled;
            return this;
        }

        public final Builder setFocalPoint(ScreenCoordinate focalPoint) {
            this.focalPoint = focalPoint;
            return this;
        }

        public final Builder setPinchToZoomDecelerationEnabled(boolean pinchToZoomDecelerationEnabled) {
            this.pinchToZoomDecelerationEnabled = pinchToZoomDecelerationEnabled;
            return this;
        }

        public final Builder setRotateDecelerationEnabled(boolean rotateDecelerationEnabled) {
            this.rotateDecelerationEnabled = rotateDecelerationEnabled;
            return this;
        }

        public final Builder setScrollDecelerationEnabled(boolean scrollDecelerationEnabled) {
            this.scrollDecelerationEnabled = scrollDecelerationEnabled;
            return this;
        }

        public final Builder setIncreaseRotateThresholdWhenPinchingToZoom(boolean increaseRotateThresholdWhenPinchingToZoom) {
            this.increaseRotateThresholdWhenPinchingToZoom = increaseRotateThresholdWhenPinchingToZoom;
            return this;
        }

        public final Builder setIncreasePinchToZoomThresholdWhenRotating(boolean increasePinchToZoomThresholdWhenRotating) {
            this.increasePinchToZoomThresholdWhenRotating = increasePinchToZoomThresholdWhenRotating;
            return this;
        }

        public final Builder setZoomAnimationAmount(float zoomAnimationAmount) {
            this.zoomAnimationAmount = zoomAnimationAmount;
            return this;
        }

        public final Builder setPinchScrollEnabled(boolean pinchScrollEnabled) {
            this.pinchScrollEnabled = pinchScrollEnabled;
            return this;
        }

        public final GesturesSettings build() {
            return new GesturesSettings(this.rotateEnabled, this.pinchToZoomEnabled, this.scrollEnabled, this.simultaneousRotateAndPinchToZoomEnabled, this.pitchEnabled, this.scrollMode, this.doubleTapToZoomInEnabled, this.doubleTouchToZoomOutEnabled, this.quickZoomEnabled, this.focalPoint, this.pinchToZoomDecelerationEnabled, this.rotateDecelerationEnabled, this.scrollDecelerationEnabled, this.increaseRotateThresholdWhenPinchingToZoom, this.increasePinchToZoomThresholdWhenRotating, this.zoomAnimationAmount, this.pinchScrollEnabled, null);
        }
    }
}
