package com.mapbox.maps.plugin.viewport.data;

import ch.qos.logback.core.CoreConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/data/ViewportOptions;", "", "transitionsToIdleUponUserInteraction", "", "(Z)V", "getTransitionsToIdleUponUserInteraction", "()Z", "equals", "other", "hashCode", "", "toBuilder", "Lcom/mapbox/maps/plugin/viewport/data/ViewportOptions$Builder;", "toString", "", "Builder", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ViewportOptions {
    private final boolean transitionsToIdleUponUserInteraction;

    public ViewportOptions(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }

    private ViewportOptions(boolean z) {
        this.transitionsToIdleUponUserInteraction = z;
    }

    public final boolean getTransitionsToIdleUponUserInteraction() {
        return this.transitionsToIdleUponUserInteraction;
    }

    public final Builder toBuilder() {
        return new Builder().transitionsToIdleUponUserInteraction(this.transitionsToIdleUponUserInteraction);
    }

    public boolean equals(Object other) {
        return (other instanceof ViewportOptions) && this.transitionsToIdleUponUserInteraction == ((ViewportOptions) other).transitionsToIdleUponUserInteraction;
    }

    public int hashCode() {
        return Boolean.hashCode(this.transitionsToIdleUponUserInteraction);
    }

    public String toString() {
        return "ViewportPluginOptions(transitionsToIdleUponUserInteraction=" + this.transitionsToIdleUponUserInteraction + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/data/ViewportOptions$Builder;", "", "()V", "transitionsToIdleUponUserInteraction", "", "build", "Lcom/mapbox/maps/plugin/viewport/data/ViewportOptions;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private boolean transitionsToIdleUponUserInteraction = true;

        public final Builder transitionsToIdleUponUserInteraction(boolean transitionsToIdleUponUserInteraction) {
            this.transitionsToIdleUponUserInteraction = transitionsToIdleUponUserInteraction;
            return this;
        }

        public final ViewportOptions build() {
            return new ViewportOptions(this.transitionsToIdleUponUserInteraction, null);
        }
    }
}
