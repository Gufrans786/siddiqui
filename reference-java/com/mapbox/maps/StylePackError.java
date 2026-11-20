package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class StylePackError implements Serializable {
    private final String message;
    private final StylePackErrorType type;

    public StylePackError(StylePackErrorType stylePackErrorType, String str) {
        this.type = stylePackErrorType;
        this.message = str;
    }

    public StylePackErrorType getType() {
        return this.type;
    }

    public String getMessage() {
        return this.message;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StylePackError stylePackError = (StylePackError) obj;
        return Objects.equals(this.type, stylePackError.type) && Objects.equals(this.message, stylePackError.message);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.message);
    }

    public String toString() {
        return "[type: " + RecordUtils.fieldToString(this.type) + ", message: " + RecordUtils.fieldToString(this.message) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
