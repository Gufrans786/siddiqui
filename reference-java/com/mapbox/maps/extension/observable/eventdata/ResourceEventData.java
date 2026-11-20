package com.mapbox.maps.extension.observable.eventdata;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.google.gson.annotations.SerializedName;
import com.mapbox.maps.extension.observable.model.DataSourceType;
import com.mapbox.maps.extension.observable.model.Request;
import com.mapbox.maps.extension.observable.model.Response;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "ResourceRequest", imports = {}))
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010 \u001a\u00020\fHÆ\u0003JN\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\f2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020(HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006)"}, d2 = {"Lcom/mapbox/maps/extension/observable/eventdata/ResourceEventData;", "", "begin", "", ViewProps.END, "dataSource", "Lcom/mapbox/maps/extension/observable/model/DataSourceType;", "request", "Lcom/mapbox/maps/extension/observable/model/Request;", "response", "Lcom/mapbox/maps/extension/observable/model/Response;", "cancelled", "", "(JLjava/lang/Long;Lcom/mapbox/maps/extension/observable/model/DataSourceType;Lcom/mapbox/maps/extension/observable/model/Request;Lcom/mapbox/maps/extension/observable/model/Response;Z)V", "getBegin", "()J", "getCancelled", "()Z", "getDataSource", "()Lcom/mapbox/maps/extension/observable/model/DataSourceType;", "getEnd", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getRequest", "()Lcom/mapbox/maps/extension/observable/model/Request;", "getResponse", "()Lcom/mapbox/maps/extension/observable/model/Response;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(JLjava/lang/Long;Lcom/mapbox/maps/extension/observable/model/DataSourceType;Lcom/mapbox/maps/extension/observable/model/Request;Lcom/mapbox/maps/extension/observable/model/Response;Z)Lcom/mapbox/maps/extension/observable/eventdata/ResourceEventData;", "equals", "other", "hashCode", "", "toString", "", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ResourceEventData {

    @SerializedName("begin")
    private final long begin;

    @SerializedName("cancelled")
    private final boolean cancelled;

    @SerializedName("data-source")
    private final DataSourceType dataSource;

    @SerializedName(ViewProps.END)
    private final Long end;

    @SerializedName("request")
    private final Request request;

    @SerializedName("response")
    private final Response response;

    public static ResourceEventData copy$default(ResourceEventData resourceEventData, long j, Long l, DataSourceType dataSourceType, Request request, Response response, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            j = resourceEventData.begin;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            l = resourceEventData.end;
        }
        Long l2 = l;
        if ((i & 4) != 0) {
            dataSourceType = resourceEventData.dataSource;
        }
        DataSourceType dataSourceType2 = dataSourceType;
        if ((i & 8) != 0) {
            request = resourceEventData.request;
        }
        Request request2 = request;
        if ((i & 16) != 0) {
            response = resourceEventData.response;
        }
        Response response2 = response;
        if ((i & 32) != 0) {
            z = resourceEventData.cancelled;
        }
        return resourceEventData.copy(j2, l2, dataSourceType2, request2, response2, z);
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final DataSourceType getDataSource() {
        return this.dataSource;
    }

    public final Request getRequest() {
        return this.request;
    }

    public final Response getResponse() {
        return this.response;
    }

    public final boolean getCancelled() {
        return this.cancelled;
    }

    public final ResourceEventData copy(long begin, Long end, DataSourceType dataSource, Request request, Response response, boolean cancelled) {
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        Intrinsics.checkNotNullParameter(request, "request");
        return new ResourceEventData(begin, end, dataSource, request, response, cancelled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResourceEventData)) {
            return false;
        }
        ResourceEventData resourceEventData = (ResourceEventData) other;
        return this.begin == resourceEventData.begin && Intrinsics.areEqual(this.end, resourceEventData.end) && this.dataSource == resourceEventData.dataSource && Intrinsics.areEqual(this.request, resourceEventData.request) && Intrinsics.areEqual(this.response, resourceEventData.response) && this.cancelled == resourceEventData.cancelled;
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.begin) * 31;
        Long l = this.end;
        int iHashCode2 = (((((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + this.dataSource.hashCode()) * 31) + this.request.hashCode()) * 31;
        Response response = this.response;
        int iHashCode3 = (iHashCode2 + (response != null ? response.hashCode() : 0)) * 31;
        boolean z = this.cancelled;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode3 + r1;
    }

    public String toString() {
        return "ResourceEventData(begin=" + this.begin + ", end=" + this.end + ", dataSource=" + this.dataSource + ", request=" + this.request + ", response=" + this.response + ", cancelled=" + this.cancelled + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public ResourceEventData(long j, Long l, DataSourceType dataSource, Request request, Response response, boolean z) {
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        Intrinsics.checkNotNullParameter(request, "request");
        this.begin = j;
        this.end = l;
        this.dataSource = dataSource;
        this.request = request;
        this.response = response;
        this.cancelled = z;
    }

    public final long getBegin() {
        return this.begin;
    }

    public final Long getEnd() {
        return this.end;
    }

    public final DataSourceType getDataSource() {
        return this.dataSource;
    }

    public final Request getRequest() {
        return this.request;
    }

    public final Response getResponse() {
        return this.response;
    }

    public final boolean getCancelled() {
        return this.cancelled;
    }
}
