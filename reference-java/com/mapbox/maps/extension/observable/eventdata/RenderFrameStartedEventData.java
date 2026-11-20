package com.mapbox.maps.extension.observable.eventdata;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.google.gson.annotations.SerializedName;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "RenderFrameStarted", imports = {}))
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ$\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/mapbox/maps/extension/observable/eventdata/RenderFrameStartedEventData;", "", "begin", "", ViewProps.END, "(JLjava/lang/Long;)V", "getBegin", "()J", "getEnd", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "copy", "(JLjava/lang/Long;)Lcom/mapbox/maps/extension/observable/eventdata/RenderFrameStartedEventData;", "equals", "", "other", "hashCode", "", "toString", "", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RenderFrameStartedEventData {

    @SerializedName("begin")
    private final long begin;

    @SerializedName(ViewProps.END)
    private final Long end;

    public static RenderFrameStartedEventData copy$default(RenderFrameStartedEventData renderFrameStartedEventData, long j, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            j = renderFrameStartedEventData.begin;
        }
        if ((i & 2) != 0) {
            l = renderFrameStartedEventData.end;
        }
        return renderFrameStartedEventData.copy(j, l);
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final RenderFrameStartedEventData copy(long begin, Long end) {
        return new RenderFrameStartedEventData(begin, end);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderFrameStartedEventData)) {
            return false;
        }
        RenderFrameStartedEventData renderFrameStartedEventData = (RenderFrameStartedEventData) other;
        return this.begin == renderFrameStartedEventData.begin && Intrinsics.areEqual(this.end, renderFrameStartedEventData.end);
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.begin) * 31;
        Long l = this.end;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "RenderFrameStartedEventData(begin=" + this.begin + ", end=" + this.end + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public RenderFrameStartedEventData(long j, Long l) {
        this.begin = j;
        this.end = l;
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }
}
