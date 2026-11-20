package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class RenderFrameFinished implements Serializable {
    private final boolean needsRepaint;
    private final boolean placementChanged;
    private final RenderModeType renderMode;
    private final EventTimeInterval timeInterval;

    public RenderFrameFinished(RenderModeType renderModeType, boolean z, boolean z2, EventTimeInterval eventTimeInterval) {
        this.renderMode = renderModeType;
        this.needsRepaint = z;
        this.placementChanged = z2;
        this.timeInterval = eventTimeInterval;
    }

    public RenderModeType getRenderMode() {
        return this.renderMode;
    }

    public boolean getNeedsRepaint() {
        return this.needsRepaint;
    }

    public boolean getPlacementChanged() {
        return this.placementChanged;
    }

    public EventTimeInterval getTimeInterval() {
        return this.timeInterval;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RenderFrameFinished renderFrameFinished = (RenderFrameFinished) obj;
        return Objects.equals(this.renderMode, renderFrameFinished.renderMode) && this.needsRepaint == renderFrameFinished.needsRepaint && this.placementChanged == renderFrameFinished.placementChanged && Objects.equals(this.timeInterval, renderFrameFinished.timeInterval);
    }

    public int hashCode() {
        return Objects.hash(this.renderMode, Boolean.valueOf(this.needsRepaint), Boolean.valueOf(this.placementChanged), this.timeInterval);
    }

    public String toString() {
        return "[renderMode: " + RecordUtils.fieldToString(this.renderMode) + ", needsRepaint: " + RecordUtils.fieldToString(Boolean.valueOf(this.needsRepaint)) + ", placementChanged: " + RecordUtils.fieldToString(Boolean.valueOf(this.placementChanged)) + ", timeInterval: " + RecordUtils.fieldToString(this.timeInterval) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
