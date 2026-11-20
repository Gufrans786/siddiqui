package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXLineLayerManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setAboveLayerID(T t, Dynamic dynamic);

    void setBelowLayerID(T t, Dynamic dynamic);

    void setExisting(T t, Dynamic dynamic);

    void setFilter(T t, Dynamic dynamic);

    void setId(T t, Dynamic dynamic);

    void setLayerIndex(T t, Dynamic dynamic);

    void setMaxZoomLevel(T t, Dynamic dynamic);

    void setMinZoomLevel(T t, Dynamic dynamic);

    void setReactStyle(T t, Dynamic dynamic);

    void setSlot(T t, Dynamic dynamic);

    void setSourceID(T t, Dynamic dynamic);

    void setSourceLayerID(T t, Dynamic dynamic);
}
