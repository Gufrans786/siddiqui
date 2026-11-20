package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public final class StyleImageMissing implements Serializable {
    private final String imageId;
    private final Date timestamp;

    public StyleImageMissing(String str, Date date) {
        this.imageId = str;
        this.timestamp = date;
    }

    public String getImageId() {
        return this.imageId;
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
        StyleImageMissing styleImageMissing = (StyleImageMissing) obj;
        return Objects.equals(this.imageId, styleImageMissing.imageId) && Objects.equals(this.timestamp, styleImageMissing.timestamp);
    }

    public int hashCode() {
        return Objects.hash(this.imageId, this.timestamp);
    }

    public String toString() {
        return "[imageId: " + RecordUtils.fieldToString(this.imageId) + ", timestamp: " + RecordUtils.fieldToString(this.timestamp) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
