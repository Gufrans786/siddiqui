package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXNativeUserLocationManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setAndroidRenderMode(T t, Dynamic dynamic);

    void setBearingImage(T t, Dynamic dynamic);

    void setPuckBearing(T t, Dynamic dynamic);

    void setPuckBearingEnabled(T t, Dynamic dynamic);

    void setPulsing(T t, Dynamic dynamic);

    void setScale(T t, Dynamic dynamic);

    void setShadowImage(T t, Dynamic dynamic);

    void setTopImage(T t, Dynamic dynamic);

    void setVisible(T t, boolean z);
}
