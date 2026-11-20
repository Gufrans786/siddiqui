package com.mapbox.common;

public interface MovementMonitorInterface {
    void getMovementInfo(MovementInfoCallback movementInfoCallback);

    void registerObserver(MovementModeObserver movementModeObserver);

    void setMovementInfo(MovementInfo movementInfo);

    void unregisterObserver(MovementModeObserver movementModeObserver);
}
