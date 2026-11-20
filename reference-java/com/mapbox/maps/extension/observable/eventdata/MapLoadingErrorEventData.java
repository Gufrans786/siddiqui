package com.mapbox.maps.extension.observable.eventdata;

import ch.qos.logback.core.CoreConstants;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.uimanager.ViewProps;
import com.google.gson.annotations.SerializedName;
import com.mapbox.maps.extension.observable.model.MapLoadErrorType;
import com.mapbox.maps.extension.observable.model.TileID;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "MapLoadingError", imports = {}))
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u000bHÆ\u0003JP\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006'"}, d2 = {"Lcom/mapbox/maps/extension/observable/eventdata/MapLoadingErrorEventData;", "", "begin", "", ViewProps.END, SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/maps/extension/observable/model/MapLoadErrorType;", "message", "", "sourceId", "tileId", "Lcom/mapbox/maps/extension/observable/model/TileID;", "(JLjava/lang/Long;Lcom/mapbox/maps/extension/observable/model/MapLoadErrorType;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/maps/extension/observable/model/TileID;)V", "getBegin", "()J", "getEnd", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getMessage", "()Ljava/lang/String;", "getSourceId", "getTileId", "()Lcom/mapbox/maps/extension/observable/model/TileID;", "getType", "()Lcom/mapbox/maps/extension/observable/model/MapLoadErrorType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(JLjava/lang/Long;Lcom/mapbox/maps/extension/observable/model/MapLoadErrorType;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/maps/extension/observable/model/TileID;)Lcom/mapbox/maps/extension/observable/eventdata/MapLoadingErrorEventData;", "equals", "", "other", "hashCode", "", "toString", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapLoadingErrorEventData {

    @SerializedName("begin")
    private final long begin;

    @SerializedName(ViewProps.END)
    private final Long end;

    @SerializedName("message")
    private final String message;

    @SerializedName("source-id")
    private final String sourceId;

    @SerializedName("tile-id")
    private final TileID tileId;

    @SerializedName(SVGParser.XML_STYLESHEET_ATTR_TYPE)
    private final MapLoadErrorType type;

    public static MapLoadingErrorEventData copy$default(MapLoadingErrorEventData mapLoadingErrorEventData, long j, Long l, MapLoadErrorType mapLoadErrorType, String str, String str2, TileID tileID, int i, Object obj) {
        if ((i & 1) != 0) {
            j = mapLoadingErrorEventData.begin;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            l = mapLoadingErrorEventData.end;
        }
        Long l2 = l;
        if ((i & 4) != 0) {
            mapLoadErrorType = mapLoadingErrorEventData.type;
        }
        MapLoadErrorType mapLoadErrorType2 = mapLoadErrorType;
        if ((i & 8) != 0) {
            str = mapLoadingErrorEventData.message;
        }
        String str3 = str;
        if ((i & 16) != 0) {
            str2 = mapLoadingErrorEventData.sourceId;
        }
        String str4 = str2;
        if ((i & 32) != 0) {
            tileID = mapLoadingErrorEventData.tileId;
        }
        return mapLoadingErrorEventData.copy(j2, l2, mapLoadErrorType2, str3, str4, tileID);
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final MapLoadErrorType getType() {
        return this.type;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final TileID getTileId() {
        return this.tileId;
    }

    public final MapLoadingErrorEventData copy(long begin, Long end, MapLoadErrorType type, String message, String sourceId, TileID tileId) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(message, "message");
        return new MapLoadingErrorEventData(begin, end, type, message, sourceId, tileId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MapLoadingErrorEventData)) {
            return false;
        }
        MapLoadingErrorEventData mapLoadingErrorEventData = (MapLoadingErrorEventData) other;
        return this.begin == mapLoadingErrorEventData.begin && Intrinsics.areEqual(this.end, mapLoadingErrorEventData.end) && this.type == mapLoadingErrorEventData.type && Intrinsics.areEqual(this.message, mapLoadingErrorEventData.message) && Intrinsics.areEqual(this.sourceId, mapLoadingErrorEventData.sourceId) && Intrinsics.areEqual(this.tileId, mapLoadingErrorEventData.tileId);
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.begin) * 31;
        Long l = this.end;
        int iHashCode2 = (((((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + this.type.hashCode()) * 31) + this.message.hashCode()) * 31;
        String str = this.sourceId;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        TileID tileID = this.tileId;
        return iHashCode3 + (tileID != null ? tileID.hashCode() : 0);
    }

    public String toString() {
        return "MapLoadingErrorEventData(begin=" + this.begin + ", end=" + this.end + ", type=" + this.type + ", message=" + this.message + ", sourceId=" + this.sourceId + ", tileId=" + this.tileId + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public MapLoadingErrorEventData(long j, Long l, MapLoadErrorType type, String message, String str, TileID tileID) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(message, "message");
        this.begin = j;
        this.end = l;
        this.type = type;
        this.message = message;
        this.sourceId = str;
        this.tileId = tileID;
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final MapLoadErrorType getType() {
        return this.type;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final TileID getTileId() {
        return this.tileId;
    }
}
