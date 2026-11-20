package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public final class MapLoadingError implements Serializable {
    private final String message;
    private final String sourceId;
    private final CanonicalTileID tileId;
    private final Date timestamp;
    private final MapLoadingErrorType type;

    public MapLoadingError(MapLoadingErrorType mapLoadingErrorType, String str, String str2, CanonicalTileID canonicalTileID, Date date) {
        this.type = mapLoadingErrorType;
        this.message = str;
        this.sourceId = str2;
        this.tileId = canonicalTileID;
        this.timestamp = date;
    }

    public MapLoadingErrorType getType() {
        return this.type;
    }

    public String getMessage() {
        return this.message;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public CanonicalTileID getTileId() {
        return this.tileId;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MapLoadingError mapLoadingError = (MapLoadingError) obj;
        return Objects.equals(this.type, mapLoadingError.type) && Objects.equals(this.message, mapLoadingError.message) && Objects.equals(this.sourceId, mapLoadingError.sourceId) && Objects.equals(this.tileId, mapLoadingError.tileId) && Objects.equals(this.timestamp, mapLoadingError.timestamp);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.message, this.sourceId, this.tileId, this.timestamp);
    }

    public String toString() {
        return "[type: " + RecordUtils.fieldToString(this.type) + ", message: " + RecordUtils.fieldToString(this.message) + ", sourceId: " + RecordUtils.fieldToString(this.sourceId) + ", tileId: " + RecordUtils.fieldToString(this.tileId) + ", timestamp: " + RecordUtils.fieldToString(this.timestamp) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
