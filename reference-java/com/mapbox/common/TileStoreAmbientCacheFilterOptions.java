package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public class TileStoreAmbientCacheFilterOptions implements Serializable {
    private final List<TileDataDomain> domainFilter;
    private final List<TileStoreAmbientCacheType> typeFilter;

    public TileStoreAmbientCacheFilterOptions(List<TileStoreAmbientCacheType> list, List<TileDataDomain> list2) {
        this.typeFilter = list;
        this.domainFilter = list2;
    }

    public List<TileStoreAmbientCacheType> getTypeFilter() {
        return this.typeFilter;
    }

    public List<TileDataDomain> getDomainFilter() {
        return this.domainFilter;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileStoreAmbientCacheFilterOptions tileStoreAmbientCacheFilterOptions = (TileStoreAmbientCacheFilterOptions) obj;
        return Objects.equals(this.typeFilter, tileStoreAmbientCacheFilterOptions.typeFilter) && Objects.equals(this.domainFilter, tileStoreAmbientCacheFilterOptions.domainFilter);
    }

    public int hashCode() {
        return Objects.hash(this.typeFilter, this.domainFilter);
    }

    public String toString() {
        return "[typeFilter: " + RecordUtils.fieldToString(this.typeFilter) + ", domainFilter: " + RecordUtils.fieldToString(this.domainFilter) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
