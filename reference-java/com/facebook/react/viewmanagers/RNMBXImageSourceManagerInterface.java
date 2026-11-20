package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXImageSourceManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setCoordinates(T t, Dynamic dynamic);

    void setExisting(T t, Dynamic dynamic);

    void setId(T t, Dynamic dynamic);

    void setUrl(T t, Dynamic dynamic);
}
