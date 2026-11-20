package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class ResourceDescription implements Serializable {
    private final TileDataDomain domain;
    private final String url;

    public ResourceDescription(TileDataDomain tileDataDomain, String str) {
        this.domain = tileDataDomain;
        this.url = str;
    }

    public TileDataDomain getDomain() {
        return this.domain;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ResourceDescription resourceDescription = (ResourceDescription) obj;
        return Objects.equals(this.domain, resourceDescription.domain) && Objects.equals(this.url, resourceDescription.url);
    }

    public int hashCode() {
        return Objects.hash(this.domain, this.url);
    }

    public String toString() {
        return "[domain: " + RecordUtils.fieldToString(this.domain) + ", url: " + RecordUtils.fieldToString(this.url) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
