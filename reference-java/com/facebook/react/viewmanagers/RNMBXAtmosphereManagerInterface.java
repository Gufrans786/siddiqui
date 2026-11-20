package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXAtmosphereManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setReactStyle(T t, Dynamic dynamic);
}
