package com.rnmapbox.rnmbx.shapeAnimators;

import com.mapbox.geojson.GeoJson;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.Point;
import com.mapbox.turf.TurfConstants;
import com.mapbox.turf.TurfMeasurement;
import com.mapbox.turf.TurfMisc;
import com.nimbusds.jose.HeaderParameterNames;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B+\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bH\u0016J'\u0010\u0013\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\bJ\u0016\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\bR\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/ChangeLineOffsetsShapeAnimator;", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorCommon;", HeaderParameterNames.AUTHENTICATION_TAG, "", "Lcom/rnmapbox/rnmbx/shapeAnimators/Tag;", "_lineString", "Lcom/mapbox/geojson/LineString;", "startOffset", "", "endOffset", "<init>", "(JLcom/mapbox/geojson/LineString;DD)V", "lineString", "startOfLine", "Lcom/rnmapbox/rnmbx/shapeAnimators/AnimatableElement;", "endOfLine", "getAnimatedShape", "Lcom/mapbox/geojson/GeoJson;", "animatorAgeSec", "setLineString", "", "(Lcom/mapbox/geojson/LineString;Ljava/lang/Double;Ljava/lang/Double;)V", "setStartOffset", "offset", "durationSec", "setEndOffset", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChangeLineOffsetsShapeAnimator extends ShapeAnimatorCommon {
    private AnimatableElement<Double> endOfLine;
    private LineString lineString;
    private AnimatableElement<Double> startOfLine;

    public static final double endOfLine$lambda$1(double d, double d2) {
        return d2 - d;
    }

    public static final double startOfLine$lambda$0(double d, double d2) {
        return d2 - d;
    }

    public ChangeLineOffsetsShapeAnimator(long j, LineString _lineString, double d, double d2) {
        super(j);
        Intrinsics.checkNotNullParameter(_lineString, "_lineString");
        this.lineString = _lineString;
        this.startOfLine = new AnimatableElement<>(Double.valueOf(d), Double.valueOf(d), Double.valueOf(d), 0.0d, 0.0d, 0.0d, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return Double.valueOf(ChangeLineOffsetsShapeAnimator.startOfLine$lambda$0(((Double) obj).doubleValue(), ((Double) obj2).doubleValue()));
            }
        });
        this.endOfLine = new AnimatableElement<>(Double.valueOf(d2), Double.valueOf(d2), Double.valueOf(d2), 0.0d, 0.0d, 0.0d, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return Double.valueOf(ChangeLineOffsetsShapeAnimator.endOfLine$lambda$1(((Double) obj).doubleValue(), ((Double) obj2).doubleValue()));
            }
        });
    }

    @Override
    public GeoJson getAnimatedShape(double animatorAgeSec) {
        if (this.startOfLine.durationRatio() < 1.0d) {
            AnimatableElement<Double> animatableElement = this.startOfLine;
            animatableElement.setProgress(Double.valueOf(animatableElement.getSource().doubleValue() + (this.startOfLine.distanceRemaining() * this.startOfLine.durationRatio())), animatorAgeSec);
        }
        if (this.endOfLine.durationRatio() < 1.0d) {
            AnimatableElement<Double> animatableElement2 = this.endOfLine;
            animatableElement2.setProgress(Double.valueOf(animatableElement2.getSource().doubleValue() + (this.endOfLine.distanceRemaining() * this.endOfLine.durationRatio())), animatorAgeSec);
        }
        if (this.startOfLine.durationRatio() >= 1.0d && this.endOfLine.durationRatio() >= 1.0d) {
            stop();
        }
        List<Point> listCoordinates = this.lineString.coordinates();
        Intrinsics.checkNotNullExpressionValue(listCoordinates, "coordinates(...)");
        if (listCoordinates.size() < 2) {
            return getEmptyGeoJsonObj();
        }
        double length = TurfMeasurement.length(this.lineString, TurfConstants.UNIT_METERS);
        if (length == 0.0d) {
            return getEmptyGeoJsonObj();
        }
        if (this.startOfLine.getProgress().doubleValue() + this.endOfLine.getProgress().doubleValue() >= length) {
            return getEmptyGeoJsonObj();
        }
        LineString lineStringLineSliceAlong = TurfMisc.lineSliceAlong(this.lineString, this.startOfLine.getProgress().doubleValue(), length - this.endOfLine.getProgress().doubleValue(), TurfConstants.UNIT_METERS);
        Intrinsics.checkNotNullExpressionValue(lineStringLineSliceAlong, "lineSliceAlong(...)");
        return lineStringLineSliceAlong;
    }

    public final void setLineString(LineString lineString, Double startOffset, Double endOffset) {
        Intrinsics.checkNotNullParameter(lineString, "lineString");
        this.lineString = lineString;
        if (startOffset != null) {
            this.startOfLine.reset(startOffset, startOffset, startOffset, 0.0d, getAnimatorAgeSec());
        }
        if (endOffset != null) {
            this.endOfLine.reset(endOffset, endOffset, endOffset, 0.0d, getAnimatorAgeSec());
        }
        refresh();
    }

    public final void setStartOffset(double r19, double r21) {
        throw new UnsupportedOperationException("Method not decompiled: com.rnmapbox.rnmbx.shapeAnimators.ChangeLineOffsetsShapeAnimator.setStartOffset(double, double):void");
    }

    public final void setEndOffset(double r19, double r21) {
        throw new UnsupportedOperationException("Method not decompiled: com.rnmapbox.rnmbx.shapeAnimators.ChangeLineOffsetsShapeAnimator.setEndOffset(double, double):void");
    }
}
