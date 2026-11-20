package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXCustomLocationProviderManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setCoordinate(T t, Dynamic dynamic);

    void setHeading(T t, Dynamic dynamic);
}
