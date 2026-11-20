package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class InteractionContext implements Serializable {
    private final CoordinateInfo coordinateInfo;
    private final ScreenCoordinate screenCoordinate;

    public InteractionContext(CoordinateInfo coordinateInfo, ScreenCoordinate screenCoordinate) {
        this.coordinateInfo = coordinateInfo;
        this.screenCoordinate = screenCoordinate;
    }

    public CoordinateInfo getCoordinateInfo() {
        return this.coordinateInfo;
    }

    public ScreenCoordinate getScreenCoordinate() {
        return this.screenCoordinate;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InteractionContext interactionContext = (InteractionContext) obj;
        return Objects.equals(this.coordinateInfo, interactionContext.coordinateInfo) && Objects.equals(this.screenCoordinate, interactionContext.screenCoordinate);
    }

    public int hashCode() {
        return Objects.hash(this.coordinateInfo, this.screenCoordinate);
    }

    public String toString() {
        return "[coordinateInfo: " + RecordUtils.fieldToString(this.coordinateInfo) + ", screenCoordinate: " + RecordUtils.fieldToString(this.screenCoordinate) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
