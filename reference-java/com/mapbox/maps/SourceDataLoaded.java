package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class SourceDataLoaded implements Serializable {
    private final String dataId;
    private final Boolean loaded;
    private final String sourceId;
    private final CanonicalTileID tileId;
    private final EventTimeInterval timeInterval;
    private final SourceDataLoadedType type;

    public SourceDataLoaded(String str, SourceDataLoadedType sourceDataLoadedType, Boolean bool, CanonicalTileID canonicalTileID, String str2, EventTimeInterval eventTimeInterval) {
        this.sourceId = str;
        this.type = sourceDataLoadedType;
        this.loaded = bool;
        this.tileId = canonicalTileID;
        this.dataId = str2;
        this.timeInterval = eventTimeInterval;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public SourceDataLoadedType getType() {
        return this.type;
    }

    public Boolean getLoaded() {
        return this.loaded;
    }

    public CanonicalTileID getTileId() {
        return this.tileId;
    }

    public String getDataId() {
        return this.dataId;
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
        SourceDataLoaded sourceDataLoaded = (SourceDataLoaded) obj;
        return Objects.equals(this.sourceId, sourceDataLoaded.sourceId) && Objects.equals(this.type, sourceDataLoaded.type) && Objects.equals(this.loaded, sourceDataLoaded.loaded) && Objects.equals(this.tileId, sourceDataLoaded.tileId) && Objects.equals(this.dataId, sourceDataLoaded.dataId) && Objects.equals(this.timeInterval, sourceDataLoaded.timeInterval);
    }

    public int hashCode() {
        return Objects.hash(this.sourceId, this.type, this.loaded, this.tileId, this.dataId, this.timeInterval);
    }

    public String toString() {
        return "[sourceId: " + RecordUtils.fieldToString(this.sourceId) + ", type: " + RecordUtils.fieldToString(this.type) + ", loaded: " + RecordUtils.fieldToString(this.loaded) + ", tileId: " + RecordUtils.fieldToString(this.tileId) + ", dataId: " + RecordUtils.fieldToString(this.dataId) + ", timeInterval: " + RecordUtils.fieldToString(this.timeInterval) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
