package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXImagesManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setHasOnImageMissing(T t, Dynamic dynamic);

    void setImages(T t, Dynamic dynamic);

    void setNativeImages(T t, Dynamic dynamic);
}
