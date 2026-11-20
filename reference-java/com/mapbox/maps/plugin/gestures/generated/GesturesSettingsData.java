package com.mapbox.maps.plugin.gestures.generated;

import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.ScrollMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b?\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0083\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0003¢\u0006\u0002\u0010\u0017J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\t\u0010F\u001a\u00020\u0003HÆ\u0003J\t\u0010G\u001a\u00020\u0003HÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\u0015HÆ\u0003J\t\u0010J\u001a\u00020\u0003HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\t\u0010L\u001a\u00020\u0003HÆ\u0003J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\u0003HÆ\u0003J\t\u0010O\u001a\u00020\tHÆ\u0003J\t\u0010P\u001a\u00020\u0003HÆ\u0003J\t\u0010Q\u001a\u00020\u0003HÆ\u0003J\t\u0010R\u001a\u00020\u0003HÆ\u0003Jµ\u0001\u0010S\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0003HÆ\u0001J\t\u0010T\u001a\u00020UHÖ\u0001J\u0013\u0010V\u001a\u00020\u00032\b\u0010W\u001a\u0004\u0018\u00010XHÖ\u0003J\t\u0010Y\u001a\u00020UHÖ\u0001J\t\u0010Z\u001a\u00020[HÖ\u0001J\u0019\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020UHÖ\u0001R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001bR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0019\"\u0004\b#\u0010\u001bR\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0019\"\u0004\b%\u0010\u001bR\u001a\u0010\u0016\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001bR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0019\"\u0004\b)\u0010\u001bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0019\"\u0004\b+\u0010\u001bR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0019\"\u0004\b-\u0010\u001bR\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0019\"\u0004\b/\u0010\u001bR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0019\"\u0004\b1\u0010\u001bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0019\"\u0004\b3\u0010\u001bR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0019\"\u0004\b5\u0010\u001bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u0019\"\u0004\b7\u0010\u001bR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u0019\"\u0004\b=\u0010\u001bR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A¨\u0006a"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettingsData;", "Landroid/os/Parcelable;", "rotateEnabled", "", "pinchToZoomEnabled", "scrollEnabled", "simultaneousRotateAndPinchToZoomEnabled", "pitchEnabled", "scrollMode", "Lcom/mapbox/maps/plugin/ScrollMode;", "doubleTapToZoomInEnabled", "doubleTouchToZoomOutEnabled", "quickZoomEnabled", "focalPoint", "Lcom/mapbox/maps/ScreenCoordinate;", "pinchToZoomDecelerationEnabled", "rotateDecelerationEnabled", "scrollDecelerationEnabled", "increaseRotateThresholdWhenPinchingToZoom", "increasePinchToZoomThresholdWhenRotating", "zoomAnimationAmount", "", "pinchScrollEnabled", "(ZZZZZLcom/mapbox/maps/plugin/ScrollMode;ZZZLcom/mapbox/maps/ScreenCoordinate;ZZZZZFZ)V", "getDoubleTapToZoomInEnabled", "()Z", "setDoubleTapToZoomInEnabled", "(Z)V", "getDoubleTouchToZoomOutEnabled", "setDoubleTouchToZoomOutEnabled", "getFocalPoint", "()Lcom/mapbox/maps/ScreenCoordinate;", "setFocalPoint", "(Lcom/mapbox/maps/ScreenCoordinate;)V", "getIncreasePinchToZoomThresholdWhenRotating", "setIncreasePinchToZoomThresholdWhenRotating", "getIncreaseRotateThresholdWhenPinchingToZoom", "setIncreaseRotateThresholdWhenPinchingToZoom", "getPinchScrollEnabled", "setPinchScrollEnabled", "getPinchToZoomDecelerationEnabled", "setPinchToZoomDecelerationEnabled", "getPinchToZoomEnabled", "setPinchToZoomEnabled", "getPitchEnabled", "setPitchEnabled", "getQuickZoomEnabled", "setQuickZoomEnabled", "getRotateDecelerationEnabled", "setRotateDecelerationEnabled", "getRotateEnabled", "setRotateEnabled", "getScrollDecelerationEnabled", "setScrollDecelerationEnabled", "getScrollEnabled", "setScrollEnabled", "getScrollMode", "()Lcom/mapbox/maps/plugin/ScrollMode;", "setScrollMode", "(Lcom/mapbox/maps/plugin/ScrollMode;)V", "getSimultaneousRotateAndPinchToZoomEnabled", "setSimultaneousRotateAndPinchToZoomEnabled", "getZoomAnimationAmount", "()F", "setZoomAnimationAmount", "(F)V", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
final class GesturesSettingsData implements Parcelable {
    public static final Parcelable.Creator<GesturesSettingsData> CREATOR = new Creator();
    private boolean doubleTapToZoomInEnabled;
    private boolean doubleTouchToZoomOutEnabled;
    private ScreenCoordinate focalPoint;
    private boolean increasePinchToZoomThresholdWhenRotating;
    private boolean increaseRotateThresholdWhenPinchingToZoom;
    private boolean pinchScrollEnabled;
    private boolean pinchToZoomDecelerationEnabled;
    private boolean pinchToZoomEnabled;
    private boolean pitchEnabled;
    private boolean quickZoomEnabled;
    private boolean rotateDecelerationEnabled;
    private boolean rotateEnabled;
    private boolean scrollDecelerationEnabled;
    private boolean scrollEnabled;
    private ScrollMode scrollMode;
    private boolean simultaneousRotateAndPinchToZoomEnabled;
    private float zoomAnimationAmount;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<GesturesSettingsData> {
        @Override
        public final GesturesSettingsData createFromParcel(Parcel parcel) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            float f;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            boolean z6 = true;
            boolean z7 = false;
            if (parcel.readInt() == 0) {
                z6 = false;
            }
            if (parcel.readInt() != 0) {
                z7 = true;
            }
            if (parcel.readInt() != 0) {
                z7 = z6;
            }
            if (parcel.readInt() != 0) {
                z7 = z6;
            }
            if (parcel.readInt() != 0) {
                z7 = z6;
            }
            ScrollMode scrollModeValueOf = ScrollMode.valueOf(parcel.readString());
            if (parcel.readInt() != 0) {
                z = false;
                z2 = z6;
            } else {
                z = z7;
                z2 = z;
            }
            if (parcel.readInt() != 0) {
                z = z6;
            }
            if (parcel.readInt() != 0) {
                z = z6;
            }
            ScreenCoordinate screenCoordinate = (ScreenCoordinate) parcel.readSerializable();
            if (parcel.readInt() != 0) {
                z3 = z;
                z4 = z6;
            } else {
                z3 = z;
                z4 = z3;
            }
            if (parcel.readInt() != 0) {
                z3 = z6;
            }
            if (parcel.readInt() != 0) {
                z3 = z6;
            }
            if (parcel.readInt() != 0) {
                z3 = z6;
            }
            if (parcel.readInt() != 0) {
                z3 = z6;
            }
            float f2 = parcel.readFloat();
            if (parcel.readInt() != 0) {
                f = f2;
                z5 = z6;
            } else {
                z5 = z3;
                f = f2;
            }
            return new GesturesSettingsData(z6, z7, z7, z7, z7, scrollModeValueOf, z2, z, z, screenCoordinate, z4, z3, z3, z3, z3, f, z5);
        }

        @Override
        public final GesturesSettingsData[] newArray(int i) {
            return new GesturesSettingsData[i];
        }
    }

    public static GesturesSettingsData copy$default(GesturesSettingsData gesturesSettingsData, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ScrollMode scrollMode, boolean z6, boolean z7, boolean z8, ScreenCoordinate screenCoordinate, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, float f, boolean z14, int i, Object obj) {
        boolean z15;
        float f2;
        boolean z16 = (i & 1) != 0 ? gesturesSettingsData.rotateEnabled : z;
        boolean z17 = (i & 2) != 0 ? gesturesSettingsData.pinchToZoomEnabled : z2;
        boolean z18 = (i & 4) != 0 ? gesturesSettingsData.scrollEnabled : z3;
        boolean z19 = (i & 8) != 0 ? gesturesSettingsData.simultaneousRotateAndPinchToZoomEnabled : z4;
        boolean z20 = (i & 16) != 0 ? gesturesSettingsData.pitchEnabled : z5;
        ScrollMode scrollMode2 = (i & 32) != 0 ? gesturesSettingsData.scrollMode : scrollMode;
        boolean z21 = (i & 64) != 0 ? gesturesSettingsData.doubleTapToZoomInEnabled : z6;
        boolean z22 = (i & 128) != 0 ? gesturesSettingsData.doubleTouchToZoomOutEnabled : z7;
        boolean z23 = (i & 256) != 0 ? gesturesSettingsData.quickZoomEnabled : z8;
        ScreenCoordinate screenCoordinate2 = (i & 512) != 0 ? gesturesSettingsData.focalPoint : screenCoordinate;
        boolean z24 = (i & 1024) != 0 ? gesturesSettingsData.pinchToZoomDecelerationEnabled : z9;
        boolean z25 = (i & 2048) != 0 ? gesturesSettingsData.rotateDecelerationEnabled : z10;
        boolean z26 = (i & 4096) != 0 ? gesturesSettingsData.scrollDecelerationEnabled : z11;
        boolean z27 = (i & 8192) != 0 ? gesturesSettingsData.increaseRotateThresholdWhenPinchingToZoom : z12;
        boolean z28 = z16;
        boolean z29 = (i & 16384) != 0 ? gesturesSettingsData.increasePinchToZoomThresholdWhenRotating : z13;
        float f3 = (i & 32768) != 0 ? gesturesSettingsData.zoomAnimationAmount : f;
        if ((i & 65536) != 0) {
            f2 = f3;
            z15 = gesturesSettingsData.pinchScrollEnabled;
        } else {
            z15 = z14;
            f2 = f3;
        }
        return gesturesSettingsData.copy(z28, z17, z18, z19, z20, scrollMode2, z21, z22, z23, screenCoordinate2, z24, z25, z26, z27, z29, f2, z15);
    }

    public final boolean getRotateEnabled() {
        return this.rotateEnabled;
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

    public final GesturesSettingsData copy(boolean rotateEnabled, boolean pinchToZoomEnabled, boolean scrollEnabled, boolean simultaneousRotateAndPinchToZoomEnabled, boolean pitchEnabled, ScrollMode scrollMode, boolean doubleTapToZoomInEnabled, boolean doubleTouchToZoomOutEnabled, boolean quickZoomEnabled, ScreenCoordinate focalPoint, boolean pinchToZoomDecelerationEnabled, boolean rotateDecelerationEnabled, boolean scrollDecelerationEnabled, boolean increaseRotateThresholdWhenPinchingToZoom, boolean increasePinchToZoomThresholdWhenRotating, float zoomAnimationAmount, boolean pinchScrollEnabled) {
        Intrinsics.checkNotNullParameter(scrollMode, "scrollMode");
        return new GesturesSettingsData(rotateEnabled, pinchToZoomEnabled, scrollEnabled, simultaneousRotateAndPinchToZoomEnabled, pitchEnabled, scrollMode, doubleTapToZoomInEnabled, doubleTouchToZoomOutEnabled, quickZoomEnabled, focalPoint, pinchToZoomDecelerationEnabled, rotateDecelerationEnabled, scrollDecelerationEnabled, increaseRotateThresholdWhenPinchingToZoom, increasePinchToZoomThresholdWhenRotating, zoomAnimationAmount, pinchScrollEnabled);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GesturesSettingsData)) {
            return false;
        }
        GesturesSettingsData gesturesSettingsData = (GesturesSettingsData) other;
        return this.rotateEnabled == gesturesSettingsData.rotateEnabled && this.pinchToZoomEnabled == gesturesSettingsData.pinchToZoomEnabled && this.scrollEnabled == gesturesSettingsData.scrollEnabled && this.simultaneousRotateAndPinchToZoomEnabled == gesturesSettingsData.simultaneousRotateAndPinchToZoomEnabled && this.pitchEnabled == gesturesSettingsData.pitchEnabled && this.scrollMode == gesturesSettingsData.scrollMode && this.doubleTapToZoomInEnabled == gesturesSettingsData.doubleTapToZoomInEnabled && this.doubleTouchToZoomOutEnabled == gesturesSettingsData.doubleTouchToZoomOutEnabled && this.quickZoomEnabled == gesturesSettingsData.quickZoomEnabled && Intrinsics.areEqual(this.focalPoint, gesturesSettingsData.focalPoint) && this.pinchToZoomDecelerationEnabled == gesturesSettingsData.pinchToZoomDecelerationEnabled && this.rotateDecelerationEnabled == gesturesSettingsData.rotateDecelerationEnabled && this.scrollDecelerationEnabled == gesturesSettingsData.scrollDecelerationEnabled && this.increaseRotateThresholdWhenPinchingToZoom == gesturesSettingsData.increaseRotateThresholdWhenPinchingToZoom && this.increasePinchToZoomThresholdWhenRotating == gesturesSettingsData.increasePinchToZoomThresholdWhenRotating && Float.compare(this.zoomAnimationAmount, gesturesSettingsData.zoomAnimationAmount) == 0 && this.pinchScrollEnabled == gesturesSettingsData.pinchScrollEnabled;
    }

    public int hashCode() {
        boolean z = this.rotateEnabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.pinchToZoomEnabled;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.scrollEnabled;
        ?? r3 = z3;
        if (z3) {
            r3 = 1;
        }
        int i3 = (i2 + r3) * 31;
        boolean z4 = this.simultaneousRotateAndPinchToZoomEnabled;
        ?? r4 = z4;
        if (z4) {
            r4 = 1;
        }
        int i4 = (i3 + r4) * 31;
        boolean z5 = this.pitchEnabled;
        ?? r5 = z5;
        if (z5) {
            r5 = 1;
        }
        int iHashCode = (((i4 + r5) * 31) + this.scrollMode.hashCode()) * 31;
        boolean z6 = this.doubleTapToZoomInEnabled;
        ?? r6 = z6;
        if (z6) {
            r6 = 1;
        }
        int i5 = (iHashCode + r6) * 31;
        boolean z7 = this.doubleTouchToZoomOutEnabled;
        ?? r7 = z7;
        if (z7) {
            r7 = 1;
        }
        int i6 = (i5 + r7) * 31;
        boolean z8 = this.quickZoomEnabled;
        ?? r8 = z8;
        if (z8) {
            r8 = 1;
        }
        int i7 = (i6 + r8) * 31;
        ScreenCoordinate screenCoordinate = this.focalPoint;
        int iHashCode2 = (i7 + (screenCoordinate == null ? 0 : screenCoordinate.hashCode())) * 31;
        boolean z9 = this.pinchToZoomDecelerationEnabled;
        ?? r9 = z9;
        if (z9) {
            r9 = 1;
        }
        int i8 = (iHashCode2 + r9) * 31;
        boolean z10 = this.rotateDecelerationEnabled;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i9 = (i8 + r10) * 31;
        boolean z11 = this.scrollDecelerationEnabled;
        ?? r11 = z11;
        if (z11) {
            r11 = 1;
        }
        int i10 = (i9 + r11) * 31;
        boolean z12 = this.increaseRotateThresholdWhenPinchingToZoom;
        ?? r12 = z12;
        if (z12) {
            r12 = 1;
        }
        int i11 = (i10 + r12) * 31;
        boolean z13 = this.increasePinchToZoomThresholdWhenRotating;
        ?? r13 = z13;
        if (z13) {
            r13 = 1;
        }
        int iHashCode3 = (((i11 + r13) * 31) + Float.hashCode(this.zoomAnimationAmount)) * 31;
        boolean z14 = this.pinchScrollEnabled;
        return iHashCode3 + (z14 ? 1 : z14);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GesturesSettingsData(rotateEnabled=");
        sb.append(this.rotateEnabled).append(", pinchToZoomEnabled=").append(this.pinchToZoomEnabled).append(", scrollEnabled=").append(this.scrollEnabled).append(", simultaneousRotateAndPinchToZoomEnabled=").append(this.simultaneousRotateAndPinchToZoomEnabled).append(", pitchEnabled=").append(this.pitchEnabled).append(", scrollMode=").append(this.scrollMode).append(", doubleTapToZoomInEnabled=").append(this.doubleTapToZoomInEnabled).append(", doubleTouchToZoomOutEnabled=").append(this.doubleTouchToZoomOutEnabled).append(", quickZoomEnabled=").append(this.quickZoomEnabled).append(", focalPoint=").append(this.focalPoint).append(", pinchToZoomDecelerationEnabled=").append(this.pinchToZoomDecelerationEnabled).append(", rotateDecelerationEnabled=");
        sb.append(this.rotateDecelerationEnabled).append(", scrollDecelerationEnabled=").append(this.scrollDecelerationEnabled).append(", increaseRotateThresholdWhenPinchingToZoom=").append(this.increaseRotateThresholdWhenPinchingToZoom).append(", increasePinchToZoomThresholdWhenRotating=").append(this.increasePinchToZoomThresholdWhenRotating).append(", zoomAnimationAmount=").append(this.zoomAnimationAmount).append(", pinchScrollEnabled=").append(this.pinchScrollEnabled).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return sb.toString();
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

    public GesturesSettingsData(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ScrollMode scrollMode, boolean z6, boolean z7, boolean z8, ScreenCoordinate screenCoordinate, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, float f, boolean z14) {
        Intrinsics.checkNotNullParameter(scrollMode, "scrollMode");
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

    public GesturesSettingsData(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ScrollMode scrollMode, boolean z6, boolean z7, boolean z8, ScreenCoordinate screenCoordinate, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, float f, boolean z14, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, z3, z4, z5, scrollMode, z6, z7, z8, (i & 512) != 0 ? null : screenCoordinate, z9, z10, z11, z12, z13, f, z14);
    }

    public final boolean getRotateEnabled() {
        return this.rotateEnabled;
    }

    public final void setRotateEnabled(boolean z) {
        this.rotateEnabled = z;
    }

    public final boolean getPinchToZoomEnabled() {
        return this.pinchToZoomEnabled;
    }

    public final void setPinchToZoomEnabled(boolean z) {
        this.pinchToZoomEnabled = z;
    }

    public final boolean getScrollEnabled() {
        return this.scrollEnabled;
    }

    public final void setScrollEnabled(boolean z) {
        this.scrollEnabled = z;
    }

    public final boolean getSimultaneousRotateAndPinchToZoomEnabled() {
        return this.simultaneousRotateAndPinchToZoomEnabled;
    }

    public final void setSimultaneousRotateAndPinchToZoomEnabled(boolean z) {
        this.simultaneousRotateAndPinchToZoomEnabled = z;
    }

    public final boolean getPitchEnabled() {
        return this.pitchEnabled;
    }

    public final void setPitchEnabled(boolean z) {
        this.pitchEnabled = z;
    }

    public final ScrollMode getScrollMode() {
        return this.scrollMode;
    }

    public final void setScrollMode(ScrollMode scrollMode) {
        Intrinsics.checkNotNullParameter(scrollMode, "<set-?>");
        this.scrollMode = scrollMode;
    }

    public final boolean getDoubleTapToZoomInEnabled() {
        return this.doubleTapToZoomInEnabled;
    }

    public final void setDoubleTapToZoomInEnabled(boolean z) {
        this.doubleTapToZoomInEnabled = z;
    }

    public final boolean getDoubleTouchToZoomOutEnabled() {
        return this.doubleTouchToZoomOutEnabled;
    }

    public final void setDoubleTouchToZoomOutEnabled(boolean z) {
        this.doubleTouchToZoomOutEnabled = z;
    }

    public final boolean getQuickZoomEnabled() {
        return this.quickZoomEnabled;
    }

    public final void setQuickZoomEnabled(boolean z) {
        this.quickZoomEnabled = z;
    }

    public final ScreenCoordinate getFocalPoint() {
        return this.focalPoint;
    }

    public final void setFocalPoint(ScreenCoordinate screenCoordinate) {
        this.focalPoint = screenCoordinate;
    }

    public final boolean getPinchToZoomDecelerationEnabled() {
        return this.pinchToZoomDecelerationEnabled;
    }

    public final void setPinchToZoomDecelerationEnabled(boolean z) {
        this.pinchToZoomDecelerationEnabled = z;
    }

    public final boolean getRotateDecelerationEnabled() {
        return this.rotateDecelerationEnabled;
    }

    public final void setRotateDecelerationEnabled(boolean z) {
        this.rotateDecelerationEnabled = z;
    }

    public final boolean getScrollDecelerationEnabled() {
        return this.scrollDecelerationEnabled;
    }

    public final void setScrollDecelerationEnabled(boolean z) {
        this.scrollDecelerationEnabled = z;
    }

    public final boolean getIncreaseRotateThresholdWhenPinchingToZoom() {
        return this.increaseRotateThresholdWhenPinchingToZoom;
    }

    public final void setIncreaseRotateThresholdWhenPinchingToZoom(boolean z) {
        this.increaseRotateThresholdWhenPinchingToZoom = z;
    }

    public final boolean getIncreasePinchToZoomThresholdWhenRotating() {
        return this.increasePinchToZoomThresholdWhenRotating;
    }

    public final void setIncreasePinchToZoomThresholdWhenRotating(boolean z) {
        this.increasePinchToZoomThresholdWhenRotating = z;
    }

    public final float getZoomAnimationAmount() {
        return this.zoomAnimationAmount;
    }

    public final void setZoomAnimationAmount(float f) {
        this.zoomAnimationAmount = f;
    }

    public final boolean getPinchScrollEnabled() {
        return this.pinchScrollEnabled;
    }

    public final void setPinchScrollEnabled(boolean z) {
        this.pinchScrollEnabled = z;
    }
}
