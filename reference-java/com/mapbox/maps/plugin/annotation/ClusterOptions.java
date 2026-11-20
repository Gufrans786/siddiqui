package com.mapbox.maps.plugin.annotation;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.bindgen.Value;
import com.reactcommunity.rndatetimepicker.Common;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b(\b\u0086\b\u0018\u00002\u00020\u0001BÃ\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\u001a\b\u0002\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u00140\u0013\u0012(\b\u0002\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016j\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0018¢\u0006\u0002\u0010\u0019J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\u001b\u00101\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u00140\u0013HÆ\u0003J)\u00102\u001a\"\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016j\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0018HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00105\u001a\u00020\tHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00107\u001a\u00020\fHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00109\u001a\u00020\tHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0007HÆ\u0003JÅ\u0001\u0010;\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000e\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00052\u001a\b\u0002\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u00140\u00132(\b\u0002\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016j\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0018HÆ\u0001J\u0013\u0010<\u001a\u00020\u00032\b\u0010=\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010>\u001a\u00020\fHÖ\u0001J\t\u0010?\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0011\u0010\u0011\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010!R1\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016j\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0018¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010!R#\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u00140\u0013¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001dR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001d¨\u0006@"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/ClusterOptions;", "", "cluster", "", "clusterRadius", "", "circleRadiusExpression", "Lcom/mapbox/bindgen/Value;", "circleRadius", "", "textColorExpression", Common.TEXT_COLOR, "", "textSizeExpression", "textSize", "textField", "clusterMaxZoom", "clusterMinPoints", "colorLevels", "", "Lkotlin/Pair;", "clusterProperties", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "(ZJLcom/mapbox/bindgen/Value;DLcom/mapbox/bindgen/Value;ILcom/mapbox/bindgen/Value;DLcom/mapbox/bindgen/Value;JJLjava/util/List;Ljava/util/HashMap;)V", "getCircleRadius", "()D", "getCircleRadiusExpression", "()Lcom/mapbox/bindgen/Value;", "getCluster", "()Z", "getClusterMaxZoom", "()J", "getClusterMinPoints", "getClusterProperties", "()Ljava/util/HashMap;", "getClusterRadius", "getColorLevels", "()Ljava/util/List;", "getTextColor", "()I", "getTextColorExpression", "getTextField", "getTextSize", "getTextSizeExpression", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ClusterOptions {
    private final double circleRadius;
    private final Value circleRadiusExpression;
    private final boolean cluster;
    private final long clusterMaxZoom;
    private final long clusterMinPoints;
    private final HashMap<String, Object> clusterProperties;
    private final long clusterRadius;
    private final List<Pair<Integer, Integer>> colorLevels;
    private final int textColor;
    private final Value textColorExpression;
    private final Value textField;
    private final double textSize;
    private final Value textSizeExpression;

    public ClusterOptions() {
        this(false, 0L, null, 0.0d, null, 0, null, 0.0d, null, 0L, 0L, null, null, 8191, null);
    }

    public ClusterOptions(boolean z) {
        this(z, 0L, null, 0.0d, null, 0, null, 0.0d, null, 0L, 0L, null, null, 8190, null);
    }

    public ClusterOptions(boolean z, long j) {
        this(z, j, null, 0.0d, null, 0, null, 0.0d, null, 0L, 0L, null, null, 8188, null);
    }

    public ClusterOptions(boolean z, long j, Value value) {
        this(z, j, value, 0.0d, null, 0, null, 0.0d, null, 0L, 0L, null, null, 8184, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d) {
        this(z, j, value, d, null, 0, null, 0.0d, null, 0L, 0L, null, null, 8176, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2) {
        this(z, j, value, d, value2, 0, null, 0.0d, null, 0L, 0L, null, null, 8160, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i) {
        this(z, j, value, d, value2, i, null, 0.0d, null, 0L, 0L, null, null, 8128, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3) {
        this(z, j, value, d, value2, i, value3, 0.0d, null, 0L, 0L, null, null, 8064, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3, double d2) {
        this(z, j, value, d, value2, i, value3, d2, null, 0L, 0L, null, null, 7936, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3, double d2, Value value4) {
        this(z, j, value, d, value2, i, value3, d2, value4, 0L, 0L, null, null, 7680, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3, double d2, Value value4, long j2) {
        this(z, j, value, d, value2, i, value3, d2, value4, j2, 0L, null, null, 7168, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3, double d2, Value value4, long j2, long j3) {
        this(z, j, value, d, value2, i, value3, d2, value4, j2, j3, null, null, 6144, null);
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3, double d2, Value value4, long j2, long j3, List<Pair<Integer, Integer>> colorLevels) {
        this(z, j, value, d, value2, i, value3, d2, value4, j2, j3, colorLevels, null, 4096, null);
        Intrinsics.checkNotNullParameter(colorLevels, "colorLevels");
    }

    public final boolean getCluster() {
        return this.cluster;
    }

    public final long getClusterMaxZoom() {
        return this.clusterMaxZoom;
    }

    public final long getClusterMinPoints() {
        return this.clusterMinPoints;
    }

    public final List<Pair<Integer, Integer>> component12() {
        return this.colorLevels;
    }

    public final HashMap<String, Object> component13() {
        return this.clusterProperties;
    }

    public final long getClusterRadius() {
        return this.clusterRadius;
    }

    public final Value getCircleRadiusExpression() {
        return this.circleRadiusExpression;
    }

    public final double getCircleRadius() {
        return this.circleRadius;
    }

    public final Value getTextColorExpression() {
        return this.textColorExpression;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final Value getTextSizeExpression() {
        return this.textSizeExpression;
    }

    public final double getTextSize() {
        return this.textSize;
    }

    public final Value getTextField() {
        return this.textField;
    }

    public final ClusterOptions copy(boolean cluster, long clusterRadius, Value circleRadiusExpression, double circleRadius, Value textColorExpression, int textColor, Value textSizeExpression, double textSize, Value textField, long clusterMaxZoom, long clusterMinPoints, List<Pair<Integer, Integer>> colorLevels, HashMap<String, Object> clusterProperties) {
        Intrinsics.checkNotNullParameter(colorLevels, "colorLevels");
        return new ClusterOptions(cluster, clusterRadius, circleRadiusExpression, circleRadius, textColorExpression, textColor, textSizeExpression, textSize, textField, clusterMaxZoom, clusterMinPoints, colorLevels, clusterProperties);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ClusterOptions)) {
            return false;
        }
        ClusterOptions clusterOptions = (ClusterOptions) other;
        return this.cluster == clusterOptions.cluster && this.clusterRadius == clusterOptions.clusterRadius && Intrinsics.areEqual(this.circleRadiusExpression, clusterOptions.circleRadiusExpression) && Double.compare(this.circleRadius, clusterOptions.circleRadius) == 0 && Intrinsics.areEqual(this.textColorExpression, clusterOptions.textColorExpression) && this.textColor == clusterOptions.textColor && Intrinsics.areEqual(this.textSizeExpression, clusterOptions.textSizeExpression) && Double.compare(this.textSize, clusterOptions.textSize) == 0 && Intrinsics.areEqual(this.textField, clusterOptions.textField) && this.clusterMaxZoom == clusterOptions.clusterMaxZoom && this.clusterMinPoints == clusterOptions.clusterMinPoints && Intrinsics.areEqual(this.colorLevels, clusterOptions.colorLevels) && Intrinsics.areEqual(this.clusterProperties, clusterOptions.clusterProperties);
    }

    public int hashCode() {
        boolean z = this.cluster;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iHashCode = ((r0 * 31) + Long.hashCode(this.clusterRadius)) * 31;
        Value value = this.circleRadiusExpression;
        int iHashCode2 = (((iHashCode + (value == null ? 0 : value.hashCode())) * 31) + Double.hashCode(this.circleRadius)) * 31;
        Value value2 = this.textColorExpression;
        int iHashCode3 = (((iHashCode2 + (value2 == null ? 0 : value2.hashCode())) * 31) + Integer.hashCode(this.textColor)) * 31;
        Value value3 = this.textSizeExpression;
        int iHashCode4 = (((iHashCode3 + (value3 == null ? 0 : value3.hashCode())) * 31) + Double.hashCode(this.textSize)) * 31;
        Value value4 = this.textField;
        int iHashCode5 = (((((((iHashCode4 + (value4 == null ? 0 : value4.hashCode())) * 31) + Long.hashCode(this.clusterMaxZoom)) * 31) + Long.hashCode(this.clusterMinPoints)) * 31) + this.colorLevels.hashCode()) * 31;
        HashMap<String, Object> map = this.clusterProperties;
        return iHashCode5 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClusterOptions(cluster=");
        sb.append(this.cluster).append(", clusterRadius=").append(this.clusterRadius).append(", circleRadiusExpression=").append(this.circleRadiusExpression).append(", circleRadius=").append(this.circleRadius).append(", textColorExpression=").append(this.textColorExpression).append(", textColor=").append(this.textColor).append(", textSizeExpression=").append(this.textSizeExpression).append(", textSize=").append(this.textSize).append(", textField=").append(this.textField).append(", clusterMaxZoom=").append(this.clusterMaxZoom).append(", clusterMinPoints=").append(this.clusterMinPoints).append(", colorLevels=");
        sb.append(this.colorLevels).append(", clusterProperties=").append(this.clusterProperties).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return sb.toString();
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3, double d2, Value value4, long j2, long j3, List<Pair<Integer, Integer>> colorLevels, HashMap<String, Object> map) {
        Intrinsics.checkNotNullParameter(colorLevels, "colorLevels");
        this.cluster = z;
        this.clusterRadius = j;
        this.circleRadiusExpression = value;
        this.circleRadius = d;
        this.textColorExpression = value2;
        this.textColor = i;
        this.textSizeExpression = value3;
        this.textSize = d2;
        this.textField = value4;
        this.clusterMaxZoom = j2;
        this.clusterMinPoints = j3;
        this.colorLevels = colorLevels;
        this.clusterProperties = map;
    }

    public final boolean getCluster() {
        return this.cluster;
    }

    public final long getClusterRadius() {
        return this.clusterRadius;
    }

    public final Value getCircleRadiusExpression() {
        return this.circleRadiusExpression;
    }

    public final double getCircleRadius() {
        return this.circleRadius;
    }

    public final Value getTextColorExpression() {
        return this.textColorExpression;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final Value getTextSizeExpression() {
        return this.textSizeExpression;
    }

    public final double getTextSize() {
        return this.textSize;
    }

    public final Value getTextField() {
        return this.textField;
    }

    public final long getClusterMaxZoom() {
        return this.clusterMaxZoom;
    }

    public final long getClusterMinPoints() {
        return this.clusterMinPoints;
    }

    public ClusterOptions(boolean z, long j, Value value, double d, Value value2, int i, Value value3, double d2, Value value4, long j2, long j3, List list, HashMap map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        boolean z2 = (i2 & 1) != 0 ? true : z;
        long j4 = (i2 & 2) != 0 ? 50L : j;
        this(z2, j4, (i2 & 4) != 0 ? null : value, (i2 & 8) != 0 ? 18.0d : d, (i2 & 16) != 0 ? null : value2, (i2 & 32) != 0 ? -1 : i, (i2 & 64) != 0 ? null : value3, (i2 & 128) != 0 ? 12.0d : d2, (i2 & 256) != 0 ? null : value4, (i2 & 512) != 0 ? 14L : j2, (i2 & 1024) != 0 ? 2L : j3, (i2 & 2048) != 0 ? CollectionsKt.listOf(new Pair(0, -16776961)) : list, (i2 & 4096) != 0 ? null : map);
    }

    public final List<Pair<Integer, Integer>> getColorLevels() {
        return this.colorLevels;
    }

    public final HashMap<String, Object> getClusterProperties() {
        return this.clusterProperties;
    }
}
