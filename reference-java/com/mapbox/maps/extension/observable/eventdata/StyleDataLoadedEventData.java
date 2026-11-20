package com.mapbox.maps.extension.observable.eventdata;

import ch.qos.logback.core.CoreConstants;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.uimanager.ViewProps;
import com.google.gson.annotations.SerializedName;
import com.mapbox.maps.extension.observable.model.StyleDataType;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "StyleDataLoaded", imports = {}))
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J.\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/mapbox/maps/extension/observable/eventdata/StyleDataLoadedEventData;", "", "begin", "", ViewProps.END, SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/maps/extension/observable/model/StyleDataType;", "(JLjava/lang/Long;Lcom/mapbox/maps/extension/observable/model/StyleDataType;)V", "getBegin", "()J", "getEnd", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getType", "()Lcom/mapbox/maps/extension/observable/model/StyleDataType;", "component1", "component2", "component3", "copy", "(JLjava/lang/Long;Lcom/mapbox/maps/extension/observable/model/StyleDataType;)Lcom/mapbox/maps/extension/observable/eventdata/StyleDataLoadedEventData;", "equals", "", "other", "hashCode", "", "toString", "", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class StyleDataLoadedEventData {

    @SerializedName("begin")
    private final long begin;

    @SerializedName(ViewProps.END)
    private final Long end;

    @SerializedName(SVGParser.XML_STYLESHEET_ATTR_TYPE)
    private final StyleDataType type;

    public static StyleDataLoadedEventData copy$default(StyleDataLoadedEventData styleDataLoadedEventData, long j, Long l, StyleDataType styleDataType, int i, Object obj) {
        if ((i & 1) != 0) {
            j = styleDataLoadedEventData.begin;
        }
        if ((i & 2) != 0) {
            l = styleDataLoadedEventData.end;
        }
        if ((i & 4) != 0) {
            styleDataType = styleDataLoadedEventData.type;
        }
        return styleDataLoadedEventData.copy(j, l, styleDataType);
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final StyleDataType getType() {
        return this.type;
    }

    public final StyleDataLoadedEventData copy(long begin, Long end, StyleDataType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new StyleDataLoadedEventData(begin, end, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StyleDataLoadedEventData)) {
            return false;
        }
        StyleDataLoadedEventData styleDataLoadedEventData = (StyleDataLoadedEventData) other;
        return this.begin == styleDataLoadedEventData.begin && Intrinsics.areEqual(this.end, styleDataLoadedEventData.end) && this.type == styleDataLoadedEventData.type;
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.begin) * 31;
        Long l = this.end;
        return ((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + this.type.hashCode();
    }

    public String toString() {
        return "StyleDataLoadedEventData(begin=" + this.begin + ", end=" + this.end + ", type=" + this.type + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public StyleDataLoadedEventData(long j, Long l, StyleDataType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.begin = j;
        this.end = l;
        this.type = type;
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final StyleDataType getType() {
        return this.type;
    }
}
