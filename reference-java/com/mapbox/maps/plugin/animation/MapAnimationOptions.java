package com.mapbox.maps.plugin.animation;

import android.animation.TimeInterpolator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018B/\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u0011\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "", "owner", "", TypedValues.TransitionType.S_DURATION, "", "startDelay", "interpolator", "Landroid/animation/TimeInterpolator;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/animation/TimeInterpolator;)V", "getDuration", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getInterpolator", "()Landroid/animation/TimeInterpolator;", "getOwner", "()Ljava/lang/String;", "getStartDelay", "equals", "", "other", "hashCode", "", "Builder", "Companion", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapAnimationOptions {

    public static final Companion INSTANCE = new Companion(null);
    private final Long duration;
    private final TimeInterpolator interpolator;
    private final String owner;
    private final Long startDelay;

    public MapAnimationOptions(String str, Long l, Long l2, TimeInterpolator timeInterpolator, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, l, l2, timeInterpolator);
    }

    private MapAnimationOptions(String str, Long l, Long l2, TimeInterpolator timeInterpolator) {
        this.owner = str;
        this.duration = l;
        this.startDelay = l2;
        this.interpolator = timeInterpolator;
    }

    public final String getOwner() {
        return this.owner;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Long getStartDelay() {
        return this.startDelay;
    }

    public final TimeInterpolator getInterpolator() {
        return this.interpolator;
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\r"}, d2 = {"Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;", "", "()V", TypedValues.TransitionType.S_DURATION, "", "Ljava/lang/Long;", "interpolator", "Landroid/animation/TimeInterpolator;", "owner", "", "startDelay", "build", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private Long duration;
        private TimeInterpolator interpolator;
        private String owner;
        private Long startDelay;

        public final Builder owner(String owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            this.owner = owner;
            return this;
        }

        public final Builder duration(long duration) {
            this.duration = Long.valueOf(duration);
            return this;
        }

        public final Builder startDelay(long startDelay) {
            this.startDelay = Long.valueOf(startDelay);
            return this;
        }

        public final Builder interpolator(TimeInterpolator interpolator) {
            Intrinsics.checkNotNullParameter(interpolator, "interpolator");
            this.interpolator = interpolator;
            return this;
        }

        public final MapAnimationOptions build() {
            return new MapAnimationOptions(this.owner, this.duration, this.startDelay, this.interpolator, null);
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.plugin.animation.MapAnimationOptions");
        MapAnimationOptions mapAnimationOptions = (MapAnimationOptions) other;
        return Intrinsics.areEqual(this.owner, mapAnimationOptions.owner) && Intrinsics.areEqual(this.duration, mapAnimationOptions.duration) && Intrinsics.areEqual(this.startDelay, mapAnimationOptions.startDelay) && Intrinsics.areEqual(this.interpolator, mapAnimationOptions.interpolator);
    }

    public int hashCode() {
        String str = this.owner;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Long l = this.duration;
        int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 31;
        Long l2 = this.startDelay;
        int iHashCode3 = (iHashCode2 + (l2 != null ? l2.hashCode() : 0)) * 31;
        TimeInterpolator timeInterpolator = this.interpolator;
        return iHashCode3 + (timeInterpolator != null ? timeInterpolator.hashCode() : 0);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Companion;", "", "()V", "mapAnimationOptions", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MapAnimationOptions mapAnimationOptions(Function1<? super Builder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            Builder builder = new Builder();
            block.invoke(builder);
            return builder.build();
        }
    }
}
