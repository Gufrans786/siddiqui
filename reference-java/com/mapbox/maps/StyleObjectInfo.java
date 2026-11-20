package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class StyleObjectInfo implements Serializable {
    private final String id;
    private final String type;

    public StyleObjectInfo(String str, String str2) {
        this.id = str;
        this.type = str2;
    }

    public String getId() {
        return this.id;
    }

    public String getType() {
        return this.type;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StyleObjectInfo styleObjectInfo = (StyleObjectInfo) obj;
        return Objects.equals(this.id, styleObjectInfo.id) && Objects.equals(this.type, styleObjectInfo.type);
    }

    public int hashCode() {
        return Objects.hash(this.id, this.type);
    }

    public String toString() {
        return "[id: " + RecordUtils.fieldToString(this.id) + ", type: " + RecordUtils.fieldToString(this.type) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
