package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class GenericEvent implements Serializable {
    private final Value data;
    private final String name;
    private final EventTimeInterval timeInterval;

    public GenericEvent(String str, Value value, EventTimeInterval eventTimeInterval) {
        this.name = str;
        this.data = value;
        this.timeInterval = eventTimeInterval;
    }

    public String getName() {
        return this.name;
    }

    public Value getData() {
        return this.data;
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
        GenericEvent genericEvent = (GenericEvent) obj;
        return Objects.equals(this.name, genericEvent.name) && Objects.equals(this.data, genericEvent.data) && Objects.equals(this.timeInterval, genericEvent.timeInterval);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.data, this.timeInterval);
    }

    public String toString() {
        return "[name: " + RecordUtils.fieldToString(this.name) + ", data: " + RecordUtils.fieldToString(this.data) + ", timeInterval: " + RecordUtils.fieldToString(this.timeInterval) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
