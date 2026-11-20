package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public final class SourceRemoved implements Serializable {
    private final String sourceId;
    private final Date timestamp;

    public SourceRemoved(String str, Date date) {
        this.sourceId = str;
        this.timestamp = date;
    }

    public String getSourceId() {
        return this.sourceId;
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
        SourceRemoved sourceRemoved = (SourceRemoved) obj;
        return Objects.equals(this.sourceId, sourceRemoved.sourceId) && Objects.equals(this.timestamp, sourceRemoved.timestamp);
    }

    public int hashCode() {
        return Objects.hash(this.sourceId, this.timestamp);
    }

    public String toString() {
        return "[sourceId: " + RecordUtils.fieldToString(this.sourceId) + ", timestamp: " + RecordUtils.fieldToString(this.timestamp) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
