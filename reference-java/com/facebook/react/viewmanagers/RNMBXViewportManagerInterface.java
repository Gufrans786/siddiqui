package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXViewportManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setHasStatusChanged(T t, boolean z);

    void setTransitionsToIdleUponUserInteraction(T t, Dynamic dynamic);
}
