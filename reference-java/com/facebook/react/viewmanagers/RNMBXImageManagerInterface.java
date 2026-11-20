package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXImageManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setContent(T t, Dynamic dynamic);

    void setName(T t, Dynamic dynamic);

    void setScale(T t, Dynamic dynamic);

    void setSdf(T t, Dynamic dynamic);

    void setStretchX(T t, Dynamic dynamic);

    void setStretchY(T t, Dynamic dynamic);
}
