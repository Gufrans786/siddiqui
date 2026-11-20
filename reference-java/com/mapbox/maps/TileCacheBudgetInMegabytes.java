package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class TileCacheBudgetInMegabytes implements Serializable {
    private final long size;

    public TileCacheBudgetInMegabytes(long j) {
        this.size = j;
    }

    public long getSize() {
        return this.size;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.size == ((TileCacheBudgetInMegabytes) obj).size;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.size));
    }

    public String toString() {
        return "[size: " + RecordUtils.fieldToString(Long.valueOf(this.size)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
