package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class StyleLoaded implements Serializable {
    private final EventTimeInterval timeInterval;

    public StyleLoaded(EventTimeInterval eventTimeInterval) {
        this.timeInterval = eventTimeInterval;
    }

    public EventTimeInterval getTimeInterval() {
        return this.timeInterval;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Objects.equals(this.timeInterval, ((StyleLoaded) obj).timeInterval);
    }

    public int hashCode() {
        return Objects.hash(this.timeInterval);
    }

    public String toString() {
        return "[timeInterval: " + RecordUtils.fieldToString(this.timeInterval) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
