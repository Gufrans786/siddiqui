package com.mapbox.maps.plugin.viewport;

import ch.qos.logback.core.CoreConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.maps.plugin.viewport.state.ViewportState;
import com.mapbox.maps.plugin.viewport.transition.ViewportTransition;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", "", "()V", "Idle", "State", "Transition", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus$Idle;", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus$State;", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus$Transition;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class ViewportStatus {
    public ViewportStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ViewportStatus() {
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/ViewportStatus$State;", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "(Lcom/mapbox/maps/plugin/viewport/state/ViewportState;)V", "getState", "()Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "equals", "", "other", "", "hashCode", "", "toString", "", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class State extends ViewportStatus {
        private final ViewportState state;

        public final ViewportState getState() {
            return this.state;
        }

        public State(ViewportState state) {
            super(null);
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
        }

        public boolean equals(Object other) {
            return (other instanceof State) && ((State) other).state == this.state;
        }

        public int hashCode() {
            return Objects.hash(this.state);
        }

        public String toString() {
            return "ViewportStatus#State(state=" + this.state + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/ViewportStatus$Transition;", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", "transition", "Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;", "toState", "Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "(Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;Lcom/mapbox/maps/plugin/viewport/state/ViewportState;)V", "getToState", "()Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "getTransition", "()Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;", "equals", "", "other", "", "hashCode", "", "toString", "", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Transition extends ViewportStatus {
        private final ViewportState toState;
        private final ViewportTransition transition;

        public final ViewportTransition getTransition() {
            return this.transition;
        }

        public final ViewportState getToState() {
            return this.toState;
        }

        public Transition(ViewportTransition transition, ViewportState toState) {
            super(null);
            Intrinsics.checkNotNullParameter(transition, "transition");
            Intrinsics.checkNotNullParameter(toState, "toState");
            this.transition = transition;
            this.toState = toState;
        }

        public boolean equals(Object other) {
            if (!(other instanceof Transition)) {
                return false;
            }
            Transition transition = (Transition) other;
            return transition.transition == this.transition && transition.toState == this.toState;
        }

        public int hashCode() {
            return Objects.hash(this.transition, this.toState);
        }

        public String toString() {
            return "ViewportStatus#Transition(transition=" + this.transition + ", toState=" + this.toState + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/ViewportStatus$Idle;", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", "()V", "toString", "", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Idle extends ViewportStatus {
        public static final Idle INSTANCE = new Idle();

        private Idle() {
            super(null);
        }

        public String toString() {
            return "ViewportStatus#Idle";
        }
    }
}
