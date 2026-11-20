package com.mapbox.maps.plugin.scalebar;

import ch.qos.logback.core.CoreConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u001e\u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000b0\b¢\u0006\u0002\u0010\fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0006HÆ\u0003J\u000f\u0010 \u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J!\u0010!\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000b0\bHÆ\u0003JY\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2 \b\u0002\u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000b0\bHÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0006HÖ\u0001J\t\u0010'\u001a\u00020\tHÖ\u0001R2\u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000b0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001a¨\u0006("}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/SegmentsConfiguration;", "", "unitDistance", "", "unitBarWidth", "rectCount", "", "labelTexts", "", "", "labelMarginsAndAnchor", "Lkotlin/Triple;", "(FFILjava/util/List;Ljava/util/List;)V", "getLabelMarginsAndAnchor", "()Ljava/util/List;", "setLabelMarginsAndAnchor", "(Ljava/util/List;)V", "getLabelTexts", "setLabelTexts", "getRectCount", "()I", "setRectCount", "(I)V", "getUnitBarWidth", "()F", "setUnitBarWidth", "(F)V", "getUnitDistance", "setUnitDistance", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "plugin-scalebar_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SegmentsConfiguration {
    private List<Triple<Float, Float, Float>> labelMarginsAndAnchor;
    private List<String> labelTexts;
    private int rectCount;
    private float unitBarWidth;
    private float unitDistance;

    public static SegmentsConfiguration copy$default(SegmentsConfiguration segmentsConfiguration, float f, float f2, int i, List list, List list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = segmentsConfiguration.unitDistance;
        }
        if ((i2 & 2) != 0) {
            f2 = segmentsConfiguration.unitBarWidth;
        }
        if ((i2 & 4) != 0) {
            i = segmentsConfiguration.rectCount;
        }
        if ((i2 & 8) != 0) {
            list = segmentsConfiguration.labelTexts;
        }
        if ((i2 & 16) != 0) {
            list2 = segmentsConfiguration.labelMarginsAndAnchor;
        }
        List list3 = list2;
        int i3 = i;
        return segmentsConfiguration.copy(f, f2, i3, list, list3);
    }

    public final float getUnitDistance() {
        return this.unitDistance;
    }

    public final float getUnitBarWidth() {
        return this.unitBarWidth;
    }

    public final int getRectCount() {
        return this.rectCount;
    }

    public final List<String> component4() {
        return this.labelTexts;
    }

    public final List<Triple<Float, Float, Float>> component5() {
        return this.labelMarginsAndAnchor;
    }

    public final SegmentsConfiguration copy(float unitDistance, float unitBarWidth, int rectCount, List<String> labelTexts, List<Triple<Float, Float, Float>> labelMarginsAndAnchor) {
        Intrinsics.checkNotNullParameter(labelTexts, "labelTexts");
        Intrinsics.checkNotNullParameter(labelMarginsAndAnchor, "labelMarginsAndAnchor");
        return new SegmentsConfiguration(unitDistance, unitBarWidth, rectCount, labelTexts, labelMarginsAndAnchor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SegmentsConfiguration)) {
            return false;
        }
        SegmentsConfiguration segmentsConfiguration = (SegmentsConfiguration) other;
        return Float.compare(this.unitDistance, segmentsConfiguration.unitDistance) == 0 && Float.compare(this.unitBarWidth, segmentsConfiguration.unitBarWidth) == 0 && this.rectCount == segmentsConfiguration.rectCount && Intrinsics.areEqual(this.labelTexts, segmentsConfiguration.labelTexts) && Intrinsics.areEqual(this.labelMarginsAndAnchor, segmentsConfiguration.labelMarginsAndAnchor);
    }

    public int hashCode() {
        return (((((((Float.hashCode(this.unitDistance) * 31) + Float.hashCode(this.unitBarWidth)) * 31) + Integer.hashCode(this.rectCount)) * 31) + this.labelTexts.hashCode()) * 31) + this.labelMarginsAndAnchor.hashCode();
    }

    public String toString() {
        return "SegmentsConfiguration(unitDistance=" + this.unitDistance + ", unitBarWidth=" + this.unitBarWidth + ", rectCount=" + this.rectCount + ", labelTexts=" + this.labelTexts + ", labelMarginsAndAnchor=" + this.labelMarginsAndAnchor + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public SegmentsConfiguration(float f, float f2, int i, List<String> labelTexts, List<Triple<Float, Float, Float>> labelMarginsAndAnchor) {
        Intrinsics.checkNotNullParameter(labelTexts, "labelTexts");
        Intrinsics.checkNotNullParameter(labelMarginsAndAnchor, "labelMarginsAndAnchor");
        this.unitDistance = f;
        this.unitBarWidth = f2;
        this.rectCount = i;
        this.labelTexts = labelTexts;
        this.labelMarginsAndAnchor = labelMarginsAndAnchor;
    }

    public final float getUnitDistance() {
        return this.unitDistance;
    }

    public final void setUnitDistance(float f) {
        this.unitDistance = f;
    }

    public final float getUnitBarWidth() {
        return this.unitBarWidth;
    }

    public final void setUnitBarWidth(float f) {
        this.unitBarWidth = f;
    }

    public final int getRectCount() {
        return this.rectCount;
    }

    public final void setRectCount(int i) {
        this.rectCount = i;
    }

    public final List<String> getLabelTexts() {
        return this.labelTexts;
    }

    public final void setLabelTexts(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.labelTexts = list;
    }

    public final List<Triple<Float, Float, Float>> getLabelMarginsAndAnchor() {
        return this.labelMarginsAndAnchor;
    }

    public final void setLabelMarginsAndAnchor(List<Triple<Float, Float, Float>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.labelMarginsAndAnchor = list;
    }
}
