package com.rnmapbox.rnmbx.modules;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;", "", "headerValue", "", "options", "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;", "<init>", "(Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;)V", "getHeaderValue", "()Ljava/lang/String;", "getOptions", "()Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomHttpHeadersMapValue {
    private final String headerValue;
    private final CustomHttpHeadersOptions options;

    public static CustomHttpHeadersMapValue copy$default(CustomHttpHeadersMapValue customHttpHeadersMapValue, String str, CustomHttpHeadersOptions customHttpHeadersOptions, int i, Object obj) {
        if ((i & 1) != 0) {
            str = customHttpHeadersMapValue.headerValue;
        }
        if ((i & 2) != 0) {
            customHttpHeadersOptions = customHttpHeadersMapValue.options;
        }
        return customHttpHeadersMapValue.copy(str, customHttpHeadersOptions);
    }

    public final String getHeaderValue() {
        return this.headerValue;
    }

    public final CustomHttpHeadersOptions getOptions() {
        return this.options;
    }

    public final CustomHttpHeadersMapValue copy(String headerValue, CustomHttpHeadersOptions options) {
        Intrinsics.checkNotNullParameter(headerValue, "headerValue");
        return new CustomHttpHeadersMapValue(headerValue, options);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomHttpHeadersMapValue)) {
            return false;
        }
        CustomHttpHeadersMapValue customHttpHeadersMapValue = (CustomHttpHeadersMapValue) other;
        return Intrinsics.areEqual(this.headerValue, customHttpHeadersMapValue.headerValue) && Intrinsics.areEqual(this.options, customHttpHeadersMapValue.options);
    }

    public int hashCode() {
        int iHashCode = this.headerValue.hashCode() * 31;
        CustomHttpHeadersOptions customHttpHeadersOptions = this.options;
        return iHashCode + (customHttpHeadersOptions == null ? 0 : customHttpHeadersOptions.hashCode());
    }

    public String toString() {
        return "CustomHttpHeadersMapValue(headerValue=" + this.headerValue + ", options=" + this.options + ")";
    }

    public CustomHttpHeadersMapValue(String headerValue, CustomHttpHeadersOptions customHttpHeadersOptions) {
        Intrinsics.checkNotNullParameter(headerValue, "headerValue");
        this.headerValue = headerValue;
        this.options = customHttpHeadersOptions;
    }

    public final String getHeaderValue() {
        return this.headerValue;
    }

    public final CustomHttpHeadersOptions getOptions() {
        return this.options;
    }
}
