package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface FastImageViewManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setBlurRadius(T t, int i);

    void setDefaultSource(T t, String str);

    void setResizeMode(T t, String str);

    void setSource(T t, ReadableMap readableMap);

    void setTintColor(T t, Integer num);

    void setTransition(T t, String str);
}
