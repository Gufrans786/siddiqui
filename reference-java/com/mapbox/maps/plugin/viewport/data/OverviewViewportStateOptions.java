package com.mapbox.maps.plugin.viewport.data;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.ScreenCoordinate;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001'BO\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010!\u001a\u00020\"H\u0016J\u0006\u0010#\u001a\u00020$J\b\u0010%\u001a\u00020&H\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0019\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018R\u0015\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001d\u0010\u0013¨\u0006("}, d2 = {"Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;", "", "geometry", "Lcom/mapbox/geojson/Geometry;", ViewProps.PADDING, "Lcom/mapbox/maps/EdgeInsets;", "geometryPadding", "bearing", "", "pitch", "maxZoom", "offset", "Lcom/mapbox/maps/ScreenCoordinate;", "animationDurationMs", "", "(Lcom/mapbox/geojson/Geometry;Lcom/mapbox/maps/EdgeInsets;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;J)V", "getAnimationDurationMs", "()J", "getBearing", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getGeometry", "()Lcom/mapbox/geojson/Geometry;", "getGeometryPadding", "()Lcom/mapbox/maps/EdgeInsets;", "getMaxZoom", "getOffset", "()Lcom/mapbox/maps/ScreenCoordinate;", "getPadding", "getPitch", "equals", "", "other", "hashCode", "", "toBuilder", "Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions$Builder;", "toString", "", "Builder", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OverviewViewportStateOptions {
    private final long animationDurationMs;
    private final Double bearing;
    private final Geometry geometry;
    private final EdgeInsets geometryPadding;
    private final Double maxZoom;
    private final ScreenCoordinate offset;
    private final EdgeInsets padding;
    private final Double pitch;

    public OverviewViewportStateOptions(Geometry geometry, EdgeInsets edgeInsets, EdgeInsets edgeInsets2, Double d, Double d2, Double d3, ScreenCoordinate screenCoordinate, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(geometry, edgeInsets, edgeInsets2, d, d2, d3, screenCoordinate, j);
    }

    private OverviewViewportStateOptions(Geometry geometry, EdgeInsets edgeInsets, EdgeInsets edgeInsets2, Double d, Double d2, Double d3, ScreenCoordinate screenCoordinate, long j) {
        this.geometry = geometry;
        this.padding = edgeInsets;
        this.geometryPadding = edgeInsets2;
        this.bearing = d;
        this.pitch = d2;
        this.maxZoom = d3;
        this.offset = screenCoordinate;
        this.animationDurationMs = j;
    }

    public final Geometry getGeometry() {
        return this.geometry;
    }

    public final EdgeInsets getPadding() {
        return this.padding;
    }

    public final EdgeInsets getGeometryPadding() {
        return this.geometryPadding;
    }

    public final Double getBearing() {
        return this.bearing;
    }

    public final Double getPitch() {
        return this.pitch;
    }

    public final Double getMaxZoom() {
        return this.maxZoom;
    }

    public final ScreenCoordinate getOffset() {
        return this.offset;
    }

    public final long getAnimationDurationMs() {
        return this.animationDurationMs;
    }

    public final Builder toBuilder() {
        return new Builder().geometry(this.geometry).padding(this.padding).geometryPadding(this.geometryPadding).bearing(this.bearing).pitch(this.pitch).maxZoom(this.maxZoom).offset(this.offset).animationDurationMs(this.animationDurationMs);
    }

    public boolean equals(Object other) {
        if (!(other instanceof OverviewViewportStateOptions)) {
            return false;
        }
        OverviewViewportStateOptions overviewViewportStateOptions = (OverviewViewportStateOptions) other;
        return Intrinsics.areEqual(this.geometry, overviewViewportStateOptions.geometry) && Intrinsics.areEqual(this.padding, overviewViewportStateOptions.padding) && Intrinsics.areEqual(this.geometryPadding, overviewViewportStateOptions.geometryPadding) && Objects.equals(this.bearing, overviewViewportStateOptions.bearing) && Objects.equals(this.pitch, overviewViewportStateOptions.pitch) && Objects.equals(this.maxZoom, overviewViewportStateOptions.maxZoom) && Intrinsics.areEqual(this.offset, overviewViewportStateOptions.offset) && this.animationDurationMs == overviewViewportStateOptions.animationDurationMs;
    }

    public int hashCode() {
        return Objects.hash(this.geometry, this.padding, this.geometryPadding, this.bearing, this.pitch, this.maxZoom, this.offset, Long.valueOf(this.animationDurationMs));
    }

    public String toString() {
        return "OverviewViewportStateOptions(geometry=" + this.geometry + ", padding=" + this.padding + ", geometryPadding=" + this.geometryPadding + ", bearing=" + this.bearing + ", pitch=" + this.pitch + ", maxZoom=" + this.maxZoom + ", offset=" + this.offset + ", animationDurationMs=" + this.animationDurationMs + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0004J\u0015\u0010\u0005\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0015\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0012J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\u0015"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions$Builder;", "", "()V", "animationDurationMs", "", "bearing", "", "Ljava/lang/Double;", "geometry", "Lcom/mapbox/geojson/Geometry;", "geometryPadding", "Lcom/mapbox/maps/EdgeInsets;", "maxZoom", "offset", "Lcom/mapbox/maps/ScreenCoordinate;", ViewProps.PADDING, "pitch", TypedValues.TransitionType.S_DURATION, "(Ljava/lang/Double;)Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions$Builder;", "build", "Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private long animationDurationMs;
        private Double bearing;
        private Geometry geometry;
        private Double maxZoom;
        private ScreenCoordinate offset;
        private Double pitch;
        private EdgeInsets padding = new EdgeInsets(0.0d, 0.0d, 0.0d, 0.0d);
        private EdgeInsets geometryPadding = new EdgeInsets(0.0d, 0.0d, 0.0d, 0.0d);

        public Builder() {
            Double dValueOf = Double.valueOf(0.0d);
            this.bearing = dValueOf;
            this.pitch = dValueOf;
            this.offset = new ScreenCoordinate(0.0d, 0.0d);
            this.animationDurationMs = 1000L;
        }

        public final Builder geometry(Geometry geometry) {
            Intrinsics.checkNotNullParameter(geometry, "geometry");
            this.geometry = geometry;
            return this;
        }

        public final Builder padding(EdgeInsets padding) {
            this.padding = padding;
            return this;
        }

        public final Builder geometryPadding(EdgeInsets geometryPadding) {
            Intrinsics.checkNotNullParameter(geometryPadding, "geometryPadding");
            this.geometryPadding = geometryPadding;
            return this;
        }

        public final Builder bearing(Double bearing) {
            this.bearing = bearing;
            return this;
        }

        public final Builder pitch(Double pitch) {
            this.pitch = pitch;
            return this;
        }

        public final Builder maxZoom(Double maxZoom) {
            this.maxZoom = maxZoom;
            return this;
        }

        public final Builder offset(ScreenCoordinate offset) {
            Intrinsics.checkNotNullParameter(offset, "offset");
            this.offset = offset;
            return this;
        }

        public final Builder animationDurationMs(long duration) {
            this.animationDurationMs = duration;
            return this;
        }

        public final OverviewViewportStateOptions build() {
            Geometry geometry = this.geometry;
            if (geometry != null) {
                return new OverviewViewportStateOptions(geometry, this.padding, this.geometryPadding, this.bearing, this.pitch, this.maxZoom, this.offset, this.animationDurationMs, null);
            }
            throw new IllegalArgumentException("Geometry is required for OverviewViewportStateOptions and shouldn't be null");
        }
    }
}
