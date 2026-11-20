package com.mapbox.maps.plugin.animation;

import android.animation.AnimatorSet;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.threading.AnimationThreadController;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/mapbox/maps/plugin/animation/HighLevelAnimatorSet;", "Lcom/mapbox/common/Cancelable;", "owner", "", "animatorSet", "Landroid/animation/AnimatorSet;", "(Ljava/lang/String;Landroid/animation/AnimatorSet;)V", "getAnimatorSet", "()Landroid/animation/AnimatorSet;", "getOwner", "()Ljava/lang/String;", "cancel", "", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "plugin-animation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HighLevelAnimatorSet implements Cancelable {
    private final AnimatorSet animatorSet;
    private final String owner;

    public static HighLevelAnimatorSet copy$default(HighLevelAnimatorSet highLevelAnimatorSet, String str, AnimatorSet animatorSet, int i, Object obj) {
        if ((i & 1) != 0) {
            str = highLevelAnimatorSet.owner;
        }
        if ((i & 2) != 0) {
            animatorSet = highLevelAnimatorSet.animatorSet;
        }
        return highLevelAnimatorSet.copy(str, animatorSet);
    }

    public final String getOwner() {
        return this.owner;
    }

    public final AnimatorSet getAnimatorSet() {
        return this.animatorSet;
    }

    public final HighLevelAnimatorSet copy(String owner, AnimatorSet animatorSet) {
        Intrinsics.checkNotNullParameter(animatorSet, "animatorSet");
        return new HighLevelAnimatorSet(owner, animatorSet);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HighLevelAnimatorSet)) {
            return false;
        }
        HighLevelAnimatorSet highLevelAnimatorSet = (HighLevelAnimatorSet) other;
        return Intrinsics.areEqual(this.owner, highLevelAnimatorSet.owner) && Intrinsics.areEqual(this.animatorSet, highLevelAnimatorSet.animatorSet);
    }

    public int hashCode() {
        String str = this.owner;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.animatorSet.hashCode();
    }

    public String toString() {
        return "HighLevelAnimatorSet(owner=" + this.owner + ", animatorSet=" + this.animatorSet + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public HighLevelAnimatorSet(String str, AnimatorSet animatorSet) {
        Intrinsics.checkNotNullParameter(animatorSet, "animatorSet");
        this.owner = str;
        this.animatorSet = animatorSet;
    }

    public final String getOwner() {
        return this.owner;
    }

    public final AnimatorSet getAnimatorSet() {
        return this.animatorSet;
    }

    @Override
    public void cancel() {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                HighLevelAnimatorSet.this.getAnimatorSet().cancel();
            }
        });
    }
}
