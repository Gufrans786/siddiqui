package com.mapbox.maps.extension.observable.eventdata;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.google.gson.annotations.SerializedName;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "SourceAdded", imports = {}))
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J.\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/mapbox/maps/extension/observable/eventdata/SourceAddedEventData;", "", "begin", "", ViewProps.END, "id", "", "(JLjava/lang/Long;Ljava/lang/String;)V", "getBegin", "()J", "getEnd", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getId", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(JLjava/lang/Long;Ljava/lang/String;)Lcom/mapbox/maps/extension/observable/eventdata/SourceAddedEventData;", "equals", "", "other", "hashCode", "", "toString", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SourceAddedEventData {

    @SerializedName("begin")
    private final long begin;

    @SerializedName(ViewProps.END)
    private final Long end;

    @SerializedName("id")
    private final String id;

    public static SourceAddedEventData copy$default(SourceAddedEventData sourceAddedEventData, long j, Long l, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = sourceAddedEventData.begin;
        }
        if ((i & 2) != 0) {
            l = sourceAddedEventData.end;
        }
        if ((i & 4) != 0) {
            str = sourceAddedEventData.id;
        }
        return sourceAddedEventData.copy(j, l, str);
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final String getId() {
        return this.id;
    }

    public final SourceAddedEventData copy(long begin, Long end, String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new SourceAddedEventData(begin, end, id);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SourceAddedEventData)) {
            return false;
        }
        SourceAddedEventData sourceAddedEventData = (SourceAddedEventData) other;
        return this.begin == sourceAddedEventData.begin && Intrinsics.areEqual(this.end, sourceAddedEventData.end) && Intrinsics.areEqual(this.id, sourceAddedEventData.id);
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.begin) * 31;
        Long l = this.end;
        return ((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + this.id.hashCode();
    }

    public String toString() {
        return "SourceAddedEventData(begin=" + this.begin + ", end=" + this.end + ", id=" + this.id + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public SourceAddedEventData(long j, Long l, String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.begin = j;
        this.end = l;
        this.id = id;
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final String getId() {
        return this.id;
    }
}
