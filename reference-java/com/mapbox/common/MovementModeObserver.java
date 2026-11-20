package com.mapbox.common;

public interface MovementModeObserver {
    void onMovementModeChanged(MovementInfo movementInfo);

    void onMovementModeError(String str);
}
