package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXPointAnnotationManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setAnchor(T t, Dynamic dynamic);

    void setCoordinate(T t, Dynamic dynamic);

    void setDraggable(T t, Dynamic dynamic);

    void setId(T t, Dynamic dynamic);
}
