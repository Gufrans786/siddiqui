package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXModelsManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setModels(T t, Dynamic dynamic);
}
