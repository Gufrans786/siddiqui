package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CumulativeRenderingStatistics implements Serializable {
    private final Long drawCalls;
    private final Long fboSwitchCount;
    private final Long graphicsPrograms;
    private final Double graphicsProgramsCreationTimeMillis;
    private final Long textureBytes;
    private final Long vertexBytes;

    public CumulativeRenderingStatistics(Long l, Long l2, Long l3, Long l4, Double d, Long l5) {
        this.drawCalls = l;
        this.textureBytes = l2;
        this.vertexBytes = l3;
        this.graphicsPrograms = l4;
        this.graphicsProgramsCreationTimeMillis = d;
        this.fboSwitchCount = l5;
    }

    public Long getDrawCalls() {
        return this.drawCalls;
    }

    public Long getTextureBytes() {
        return this.textureBytes;
    }

    public Long getVertexBytes() {
        return this.vertexBytes;
    }

    public Long getGraphicsPrograms() {
        return this.graphicsPrograms;
    }

    public Double getGraphicsProgramsCreationTimeMillis() {
        return this.graphicsProgramsCreationTimeMillis;
    }

    public Long getFboSwitchCount() {
        return this.fboSwitchCount;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CumulativeRenderingStatistics cumulativeRenderingStatistics = (CumulativeRenderingStatistics) obj;
        return Objects.equals(this.drawCalls, cumulativeRenderingStatistics.drawCalls) && Objects.equals(this.textureBytes, cumulativeRenderingStatistics.textureBytes) && Objects.equals(this.vertexBytes, cumulativeRenderingStatistics.vertexBytes) && Objects.equals(this.graphicsPrograms, cumulativeRenderingStatistics.graphicsPrograms) && Objects.equals(this.graphicsProgramsCreationTimeMillis, cumulativeRenderingStatistics.graphicsProgramsCreationTimeMillis) && Objects.equals(this.fboSwitchCount, cumulativeRenderingStatistics.fboSwitchCount);
    }

    public int hashCode() {
        return Objects.hash(this.drawCalls, this.textureBytes, this.vertexBytes, this.graphicsPrograms, this.graphicsProgramsCreationTimeMillis, this.fboSwitchCount);
    }

    public String toString() {
        return "[drawCalls: " + RecordUtils.fieldToString(this.drawCalls) + ", textureBytes: " + RecordUtils.fieldToString(this.textureBytes) + ", vertexBytes: " + RecordUtils.fieldToString(this.vertexBytes) + ", graphicsPrograms: " + RecordUtils.fieldToString(this.graphicsPrograms) + ", graphicsProgramsCreationTimeMillis: " + RecordUtils.fieldToString(this.graphicsProgramsCreationTimeMillis) + ", fboSwitchCount: " + RecordUtils.fieldToString(this.fboSwitchCount) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
