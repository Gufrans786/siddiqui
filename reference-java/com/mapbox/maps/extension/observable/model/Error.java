package com.mapbox.maps.extension.observable.model;

import ch.qos.logback.core.CoreConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "ResourceRequestError", imports = {}))
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/mapbox/maps/extension/observable/model/Error;", "", "reason", "Lcom/mapbox/maps/extension/observable/model/ResponseErrorReason;", "message", "", "(Lcom/mapbox/maps/extension/observable/model/ResponseErrorReason;Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "getReason", "()Lcom/mapbox/maps/extension/observable/model/ResponseErrorReason;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Error {

    @SerializedName("message")
    private final String message;

    @SerializedName("reason")
    private final ResponseErrorReason reason;

    public static Error copy$default(Error error, ResponseErrorReason responseErrorReason, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            responseErrorReason = error.reason;
        }
        if ((i & 2) != 0) {
            str = error.message;
        }
        return error.copy(responseErrorReason, str);
    }

    public final ResponseErrorReason getReason() {
        return this.reason;
    }

    public final String getMessage() {
        return this.message;
    }

    public final Error copy(ResponseErrorReason reason, String message) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(message, "message");
        return new Error(reason, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Error)) {
            return false;
        }
        Error error = (Error) other;
        return this.reason == error.reason && Intrinsics.areEqual(this.message, error.message);
    }

    public int hashCode() {
        return (this.reason.hashCode() * 31) + this.message.hashCode();
    }

    public String toString() {
        return "Error(reason=" + this.reason + ", message=" + this.message + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public Error(ResponseErrorReason reason, String message) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(message, "message");
        this.reason = reason;
        this.message = message;
    }

    public final ResponseErrorReason getReason() {
        return this.reason;
    }

    public final String getMessage() {
        return this.message;
    }
}
