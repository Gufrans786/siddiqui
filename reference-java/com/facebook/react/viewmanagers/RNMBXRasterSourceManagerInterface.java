package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXRasterSourceManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setAttribution(T t, Dynamic dynamic);

    void setExisting(T t, Dynamic dynamic);

    void setId(T t, Dynamic dynamic);

    void setMaxZoomLevel(T t, Dynamic dynamic);

    void setMinZoomLevel(T t, Dynamic dynamic);

    void setSourceBounds(T t, Dynamic dynamic);

    void setTileSize(T t, Dynamic dynamic);

    void setTileUrlTemplates(T t, Dynamic dynamic);

    void setTms(T t, Dynamic dynamic);

    void setUrl(T t, Dynamic dynamic);
}
