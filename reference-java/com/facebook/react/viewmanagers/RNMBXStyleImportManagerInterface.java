package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXStyleImportManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setConfig(T t, Dynamic dynamic);

    void setExisting(T t, boolean z);

    void setId(T t, String str);
}
