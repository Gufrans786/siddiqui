package com.mapbox.common.geofencing;

import com.caverock.androidsvg.SVGParser;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0007J\b\u0010\u0015\u001a\u00020\u0005H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/mapbox/common/geofencing/GeofencingError;", "Ljava/io/Serializable;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/common/geofencing/GeofencingErrorType;", "message", "", "(Lcom/mapbox/common/geofencing/GeofencingErrorType;Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "getType$annotations", "()V", "getType", "()Lcom/mapbox/common/geofencing/GeofencingErrorType;", "equals", "", "other", "", "hashCode", "", "toBuilder", "Lcom/mapbox/common/geofencing/GeofencingError$Builder;", "toString", "Builder", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GeofencingError implements Serializable {
    private final String message;
    private final GeofencingErrorType type;

    public GeofencingError(GeofencingErrorType geofencingErrorType, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(geofencingErrorType, str);
    }

    public static void getType$annotations() {
    }

    private GeofencingError(GeofencingErrorType geofencingErrorType, String str) {
        this.type = geofencingErrorType;
        this.message = str;
    }

    public final GeofencingErrorType getType() {
        return this.type;
    }

    public final String getMessage() {
        return this.message;
    }

    public String toString() {
        return StringsKt.trimIndent("\n        GeofencingError(\n            type=" + this.type + ",\n            message=" + this.message + "\n        )\n    ");
    }

    public boolean equals(Object other) {
        if (!(other instanceof GeofencingError)) {
            return false;
        }
        GeofencingError geofencingError = (GeofencingError) other;
        return this.type == geofencingError.type && Intrinsics.areEqual(this.message, geofencingError.message);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.message);
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0007R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR0\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\n8\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/mapbox/common/geofencing/GeofencingError$Builder;", "", "()V", "<set-?>", "", "message", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "Lcom/mapbox/common/geofencing/GeofencingErrorType;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "getType$annotations", "getType", "()Lcom/mapbox/common/geofencing/GeofencingErrorType;", "setType", "(Lcom/mapbox/common/geofencing/GeofencingErrorType;)V", "build", "Lcom/mapbox/common/geofencing/GeofencingError;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private String message;
        private GeofencingErrorType type;

        public static void getType$annotations() {
        }

        public final GeofencingErrorType getType() {
            return this.type;
        }

        public final void m991setType(GeofencingErrorType geofencingErrorType) {
            this.type = geofencingErrorType;
        }

        public final String getMessage() {
            return this.message;
        }

        public final void m990setMessage(String str) {
            this.message = str;
        }

        public final Builder setType(GeofencingErrorType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder setMessage(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            return this;
        }

        public final GeofencingError build() {
            if (this.type == null) {
                throw new IllegalArgumentException("Could not build an instance of GeofencingError through GeofencingError.Builder because type was null.");
            }
            if (this.message == null) {
                throw new IllegalArgumentException("Could not build an instance of GeofencingError through GeofencingError.Builder because message was null.");
            }
            GeofencingErrorType geofencingErrorType = this.type;
            Intrinsics.checkNotNull(geofencingErrorType);
            String str = this.message;
            Intrinsics.checkNotNull(str);
            return new GeofencingError(geofencingErrorType, str, null);
        }
    }

    public final Builder toBuilder() {
        return new Builder().setType(this.type).setMessage(this.message);
    }
}
