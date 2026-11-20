package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXCameraManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setAnimationDuration(T t, Dynamic dynamic);

    void setAnimationMode(T t, Dynamic dynamic);

    void setDefaultStop(T t, Dynamic dynamic);

    void setFollowHeading(T t, Dynamic dynamic);

    void setFollowPadding(T t, Dynamic dynamic);

    void setFollowPitch(T t, Dynamic dynamic);

    void setFollowUserLocation(T t, Dynamic dynamic);

    void setFollowUserMode(T t, Dynamic dynamic);

    void setFollowZoomLevel(T t, Dynamic dynamic);

    void setMaxBounds(T t, Dynamic dynamic);

    void setMaxZoomLevel(T t, Dynamic dynamic);

    void setMinZoomLevel(T t, Dynamic dynamic);

    void setStop(T t, Dynamic dynamic);

    void setUserTrackingMode(T t, Dynamic dynamic);

    void setZoomLevel(T t, Dynamic dynamic);
}
