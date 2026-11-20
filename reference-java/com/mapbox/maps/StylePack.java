package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public final class StylePack implements Serializable {
    private final long completedResourceCount;
    private final long completedResourceSize;
    private final Date expires;
    private final Value extraData;
    private final GlyphsRasterizationMode glyphsRasterizationMode;
    private final long requiredResourceCount;
    private final String styleURI;

    public StylePack(String str, GlyphsRasterizationMode glyphsRasterizationMode, long j, long j2, long j3, Date date, Value value) {
        this.styleURI = str;
        this.glyphsRasterizationMode = glyphsRasterizationMode;
        this.requiredResourceCount = j;
        this.completedResourceCount = j2;
        this.completedResourceSize = j3;
        this.expires = date;
        this.extraData = value;
    }

    public String getStyleURI() {
        return this.styleURI;
    }

    public GlyphsRasterizationMode getGlyphsRasterizationMode() {
        return this.glyphsRasterizationMode;
    }

    public long getRequiredResourceCount() {
        return this.requiredResourceCount;
    }

    public long getCompletedResourceCount() {
        return this.completedResourceCount;
    }

    public long getCompletedResourceSize() {
        return this.completedResourceSize;
    }

    public Date getExpires() {
        return this.expires;
    }

    public Value getExtraData() {
        return this.extraData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StylePack stylePack = (StylePack) obj;
        return Objects.equals(this.styleURI, stylePack.styleURI) && Objects.equals(this.glyphsRasterizationMode, stylePack.glyphsRasterizationMode) && this.requiredResourceCount == stylePack.requiredResourceCount && this.completedResourceCount == stylePack.completedResourceCount && this.completedResourceSize == stylePack.completedResourceSize && Objects.equals(this.expires, stylePack.expires) && Objects.equals(this.extraData, stylePack.extraData);
    }

    public int hashCode() {
        return Objects.hash(this.styleURI, this.glyphsRasterizationMode, Long.valueOf(this.requiredResourceCount), Long.valueOf(this.completedResourceCount), Long.valueOf(this.completedResourceSize), this.expires, this.extraData);
    }

    public String toString() {
        return "[styleURI: " + RecordUtils.fieldToString(this.styleURI) + ", glyphsRasterizationMode: " + RecordUtils.fieldToString(this.glyphsRasterizationMode) + ", requiredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.requiredResourceCount)) + ", completedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceCount)) + ", completedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceSize)) + ", expires: " + RecordUtils.fieldToString(this.expires) + ", extraData: " + RecordUtils.fieldToString(this.extraData) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
