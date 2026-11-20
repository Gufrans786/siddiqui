package com.mapbox.maps.extension.observable.model;

import ch.qos.logback.core.CoreConstants;
import com.google.gson.annotations.SerializedName;
import com.mapbox.common.HttpHeaders;
import com.transistorsoft.locationmanager.config.TSAuthorization;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "ResponseInfo", imports = {}))
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\tHÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010&\u001a\u00020\rHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jk\u0010(\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001J\u0013\u0010)\u001a\u00020\u00052\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\rHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u0006-"}, d2 = {"Lcom/mapbox/maps/extension/observable/model/Response;", "", "eTag", "", "mustRevalidate", "", "noContent", "modified", "source", "Lcom/mapbox/maps/extension/observable/model/ResponseSourceType;", "notModified", TSAuthorization.FIELD_EXPIRES, "size", "", "error", "Lcom/mapbox/maps/extension/observable/model/Error;", "(Ljava/lang/String;ZZLjava/lang/String;Lcom/mapbox/maps/extension/observable/model/ResponseSourceType;ZLjava/lang/String;ILcom/mapbox/maps/extension/observable/model/Error;)V", "getETag", "()Ljava/lang/String;", "getError", "()Lcom/mapbox/maps/extension/observable/model/Error;", "getExpires", "getModified", "getMustRevalidate", "()Z", "getNoContent", "getNotModified", "getSize", "()I", "getSource", "()Lcom/mapbox/maps/extension/observable/model/ResponseSourceType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Response {

    @SerializedName(HttpHeaders.ETAG)
    private final String eTag;

    @SerializedName("error")
    private final Error error;

    @SerializedName(TSAuthorization.FIELD_EXPIRES)
    private final String expires;

    @SerializedName("modified")
    private final String modified;

    @SerializedName("must-revalidate")
    private final boolean mustRevalidate;

    @SerializedName("no-content")
    private final boolean noContent;

    @SerializedName("not-modified")
    private final boolean notModified;

    @SerializedName("size")
    private final int size;

    @SerializedName("source")
    private final ResponseSourceType source;

    public static Response copy$default(Response response, String str, boolean z, boolean z2, String str2, ResponseSourceType responseSourceType, boolean z3, String str3, int i, Error error, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = response.eTag;
        }
        if ((i2 & 2) != 0) {
            z = response.mustRevalidate;
        }
        if ((i2 & 4) != 0) {
            z2 = response.noContent;
        }
        if ((i2 & 8) != 0) {
            str2 = response.modified;
        }
        if ((i2 & 16) != 0) {
            responseSourceType = response.source;
        }
        if ((i2 & 32) != 0) {
            z3 = response.notModified;
        }
        if ((i2 & 64) != 0) {
            str3 = response.expires;
        }
        if ((i2 & 128) != 0) {
            i = response.size;
        }
        if ((i2 & 256) != 0) {
            error = response.error;
        }
        int i3 = i;
        Error error2 = error;
        boolean z4 = z3;
        String str4 = str3;
        ResponseSourceType responseSourceType2 = responseSourceType;
        boolean z5 = z2;
        return response.copy(str, z, z5, str2, responseSourceType2, z4, str4, i3, error2);
    }

    public final String getETag() {
        return this.eTag;
    }

    public final boolean getMustRevalidate() {
        return this.mustRevalidate;
    }

    public final boolean getNoContent() {
        return this.noContent;
    }

    public final String getModified() {
        return this.modified;
    }

    public final ResponseSourceType getSource() {
        return this.source;
    }

    public final boolean getNotModified() {
        return this.notModified;
    }

    public final String getExpires() {
        return this.expires;
    }

    public final int getSize() {
        return this.size;
    }

    public final Error getError() {
        return this.error;
    }

    public final Response copy(String eTag, boolean mustRevalidate, boolean noContent, String modified, ResponseSourceType source, boolean notModified, String expires, int size, Error error) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new Response(eTag, mustRevalidate, noContent, modified, source, notModified, expires, size, error);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Response)) {
            return false;
        }
        Response response = (Response) other;
        return Intrinsics.areEqual(this.eTag, response.eTag) && this.mustRevalidate == response.mustRevalidate && this.noContent == response.noContent && Intrinsics.areEqual(this.modified, response.modified) && this.source == response.source && this.notModified == response.notModified && Intrinsics.areEqual(this.expires, response.expires) && this.size == response.size && Intrinsics.areEqual(this.error, response.error);
    }

    public int hashCode() {
        String str = this.eTag;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        boolean z = this.mustRevalidate;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iHashCode + r2) * 31;
        boolean z2 = this.noContent;
        ?? r3 = z2;
        if (z2) {
            r3 = 1;
        }
        int i2 = (i + r3) * 31;
        String str2 = this.modified;
        int iHashCode2 = (((i2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.source.hashCode()) * 31;
        boolean z3 = this.notModified;
        int i3 = (iHashCode2 + (z3 ? 1 : z3)) * 31;
        String str3 = this.expires;
        int iHashCode3 = (((i3 + (str3 == null ? 0 : str3.hashCode())) * 31) + Integer.hashCode(this.size)) * 31;
        Error error = this.error;
        return iHashCode3 + (error != null ? error.hashCode() : 0);
    }

    public String toString() {
        return "Response(eTag=" + this.eTag + ", mustRevalidate=" + this.mustRevalidate + ", noContent=" + this.noContent + ", modified=" + this.modified + ", source=" + this.source + ", notModified=" + this.notModified + ", expires=" + this.expires + ", size=" + this.size + ", error=" + this.error + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public Response(String str, boolean z, boolean z2, String str2, ResponseSourceType source, boolean z3, String str3, int i, Error error) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.eTag = str;
        this.mustRevalidate = z;
        this.noContent = z2;
        this.modified = str2;
        this.source = source;
        this.notModified = z3;
        this.expires = str3;
        this.size = i;
        this.error = error;
    }

    public final String getETag() {
        return this.eTag;
    }

    public final boolean getMustRevalidate() {
        return this.mustRevalidate;
    }

    public final boolean getNoContent() {
        return this.noContent;
    }

    public final String getModified() {
        return this.modified;
    }

    public final ResponseSourceType getSource() {
        return this.source;
    }

    public final boolean getNotModified() {
        return this.notModified;
    }

    public final String getExpires() {
        return this.expires;
    }

    public final int getSize() {
        return this.size;
    }

    public final Error getError() {
        return this.error;
    }
}
