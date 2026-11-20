package com.mapbox.common.location;

public interface LocationServiceObserver {
    void onAccuracyAuthorizationChanged(AccuracyAuthorization accuracyAuthorization);

    void onAvailabilityChanged(boolean z);

    void onPermissionStatusChanged(PermissionStatus permissionStatus);
}
