package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXCameraGestureObserverManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setHasOnMapSteady(T t, Dynamic dynamic);

    void setMaxIntervalMs(T t, Dynamic dynamic);

    void setQuietPeriodMs(T t, Dynamic dynamic);
}
