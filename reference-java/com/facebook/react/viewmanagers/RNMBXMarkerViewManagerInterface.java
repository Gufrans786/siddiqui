package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXMarkerViewManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setAllowOverlap(T t, Dynamic dynamic);

    void setAllowOverlapWithPuck(T t, Dynamic dynamic);

    void setAnchor(T t, Dynamic dynamic);

    void setCoordinate(T t, Dynamic dynamic);

    void setIsSelected(T t, Dynamic dynamic);
}
