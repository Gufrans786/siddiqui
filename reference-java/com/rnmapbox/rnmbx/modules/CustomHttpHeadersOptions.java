package com.rnmapbox.rnmbx.modules;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;", "", "urlRegexp", "Lkotlin/text/Regex;", "<init>", "(Lkotlin/text/Regex;)V", "getUrlRegexp", "()Lkotlin/text/Regex;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomHttpHeadersOptions {
    private final Regex urlRegexp;

    public static CustomHttpHeadersOptions copy$default(CustomHttpHeadersOptions customHttpHeadersOptions, Regex regex, int i, Object obj) {
        if ((i & 1) != 0) {
            regex = customHttpHeadersOptions.urlRegexp;
        }
        return customHttpHeadersOptions.copy(regex);
    }

    public final Regex getUrlRegexp() {
        return this.urlRegexp;
    }

    public final CustomHttpHeadersOptions copy(Regex urlRegexp) {
        return new CustomHttpHeadersOptions(urlRegexp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CustomHttpHeadersOptions) && Intrinsics.areEqual(this.urlRegexp, ((CustomHttpHeadersOptions) other).urlRegexp);
    }

    public int hashCode() {
        Regex regex = this.urlRegexp;
        if (regex == null) {
            return 0;
        }
        return regex.hashCode();
    }

    public String toString() {
        return "CustomHttpHeadersOptions(urlRegexp=" + this.urlRegexp + ")";
    }

    public CustomHttpHeadersOptions(Regex regex) {
        this.urlRegexp = regex;
    }

    public final Regex getUrlRegexp() {
        return this.urlRegexp;
    }
}
