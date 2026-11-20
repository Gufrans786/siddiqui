package com.rnmapbox.rnmbx.shapeAnimators;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u0002\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Bo\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00126\u0010\n\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010'\u001a\u00020\u0007J\u0006\u0010(\u001a\u00020\u0007J\u001b\u0010\u0018\u001a\u00020)2\u0006\u0010*\u001a\u00028\u00002\u0006\u0010+\u001a\u00020\u0007¢\u0006\u0002\u0010,J3\u0010-\u001a\u00020)2\u0006\u0010.\u001a\u00028\u00002\u0006\u0010/\u001a\u00028\u00002\u0006\u00100\u001a\u00028\u00002\u0006\u00101\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0007¢\u0006\u0002\u00102R\u001c\u0010\u0003\u001a\u00028\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00028\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001c\u0010\u0005\u001a\u00028\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0019\u0010\u0013\"\u0004\b\u001a\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001c\"\u0004\b \u0010\u001eR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eRJ\u0010\n\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00070\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u00063"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/AnimatableElement;", ExifInterface.GPS_DIRECTION_TRUE, "", "source", "progress", TypedValues.AttributesType.S_TARGET, "startedAtSec", "", "progressDurationSec", "totalDurationSec", "getDistanceRemaining", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "a", "b", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;DDDLkotlin/jvm/functions/Function2;)V", "getSource", "()Ljava/lang/Object;", "setSource", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "getProgress", "setProgress", "getTarget", "setTarget", "getStartedAtSec", "()D", "setStartedAtSec", "(D)V", "getProgressDurationSec", "setProgressDurationSec", "getTotalDurationSec", "setTotalDurationSec", "getGetDistanceRemaining", "()Lkotlin/jvm/functions/Function2;", "setGetDistanceRemaining", "(Lkotlin/jvm/functions/Function2;)V", "distanceRemaining", "durationRatio", "", "value", "animatorAgeSec", "(Ljava/lang/Object;D)V", "reset", "_source", "_progress", "_target", "durationSec", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;DD)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimatableElement<T> {
    private Function2<? super T, ? super T, Double> getDistanceRemaining;
    private T progress;
    private double progressDurationSec;
    private T source;
    private double startedAtSec;
    private T target;
    private double totalDurationSec;

    public AnimatableElement(T t, T t2, T t3, double d, double d2, double d3, Function2<? super T, ? super T, Double> getDistanceRemaining) {
        Intrinsics.checkNotNullParameter(getDistanceRemaining, "getDistanceRemaining");
        this.source = t;
        this.progress = t2;
        this.target = t3;
        this.startedAtSec = d;
        this.progressDurationSec = d2;
        this.totalDurationSec = d3;
        this.getDistanceRemaining = getDistanceRemaining;
    }

    public final T getSource() {
        return this.source;
    }

    public final void setSource(T t) {
        this.source = t;
    }

    public final T getProgress() {
        return this.progress;
    }

    public final void setProgress(T t) {
        this.progress = t;
    }

    public final T getTarget() {
        return this.target;
    }

    public final void setTarget(T t) {
        this.target = t;
    }

    public final double getStartedAtSec() {
        return this.startedAtSec;
    }

    public final void setStartedAtSec(double d) {
        this.startedAtSec = d;
    }

    public final double getProgressDurationSec() {
        return this.progressDurationSec;
    }

    public final void setProgressDurationSec(double d) {
        this.progressDurationSec = d;
    }

    public final double getTotalDurationSec() {
        return this.totalDurationSec;
    }

    public final void setTotalDurationSec(double d) {
        this.totalDurationSec = d;
    }

    public final Function2<T, T, Double> getGetDistanceRemaining() {
        return this.getDistanceRemaining;
    }

    public final void setGetDistanceRemaining(Function2<? super T, ? super T, Double> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.getDistanceRemaining = function2;
    }

    public final double distanceRemaining() {
        return this.getDistanceRemaining.invoke(this.source, this.target).doubleValue();
    }

    public final double durationRatio() {
        double d = this.totalDurationSec;
        if (d > 0.0d) {
            return this.progressDurationSec / d;
        }
        return 1.0d;
    }

    public final void setProgress(T value, double animatorAgeSec) {
        this.progress = value;
        this.progressDurationSec = animatorAgeSec - this.startedAtSec;
    }

    public final void reset(T _source, T _progress, T _target, double durationSec, double animatorAgeSec) {
        this.source = _source;
        this.progress = _progress;
        this.target = _target;
        this.startedAtSec = animatorAgeSec;
        this.progressDurationSec = 0.0d;
        this.totalDurationSec = durationSec;
    }
}
