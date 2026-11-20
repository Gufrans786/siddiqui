package com.rnmapbox.rnmbx.components.location;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J\u0010\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/UserTrackingMode;", "", "<init>", "()V", "NONE", "", "FOLLOW", "FollowWithCourse", "FollowWithHeading", "getCameraMode", "mode", "isUserGesture", "", "reason", "toString", "", "value", "fromString", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UserTrackingMode {
    public static final int FOLLOW = 1;
    public static final int FollowWithCourse = 2;
    public static final int FollowWithHeading = 3;
    public static final UserTrackingMode INSTANCE = new UserTrackingMode();
    public static final int NONE = 0;

    public final int getCameraMode(int mode) {
        if (mode == 1) {
            return 24;
        }
        if (mode != 2) {
            return mode != 3 ? 8 : 32;
        }
        return 34;
    }

    public final boolean isUserGesture(int reason) {
        return reason == 1 || reason == 2;
    }

    private UserTrackingMode() {
    }

    public final String toString(int value) {
        if (value == 1) {
            return "normal";
        }
        if (value == 2) {
            return "course";
        }
        if (value != 3) {
            return null;
        }
        return "compass";
    }

    public final int fromString(String value) {
        if (value == null) {
            value = "";
        }
        int iHashCode = value.hashCode();
        if (iHashCode == -1354571749) {
            return value.equals("course") ? 2 : 1;
        }
        if (iHashCode != -1039745817) {
            return (iHashCode == 950484242 && value.equals("compass")) ? 3 : 1;
        }
        value.equals("normal");
        return 1;
    }
}
