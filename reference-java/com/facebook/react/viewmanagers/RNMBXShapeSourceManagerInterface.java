package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXShapeSourceManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setBuffer(T t, Dynamic dynamic);

    void setCluster(T t, Dynamic dynamic);

    void setClusterMaxZoomLevel(T t, Dynamic dynamic);

    void setClusterProperties(T t, Dynamic dynamic);

    void setClusterRadius(T t, Dynamic dynamic);

    void setExisting(T t, Dynamic dynamic);

    void setHasPressListener(T t, Dynamic dynamic);

    void setHitbox(T t, Dynamic dynamic);

    void setId(T t, Dynamic dynamic);

    void setLineMetrics(T t, Dynamic dynamic);

    void setMaxZoomLevel(T t, Dynamic dynamic);

    void setShape(T t, Dynamic dynamic);

    void setTolerance(T t, Dynamic dynamic);

    void setUrl(T t, Dynamic dynamic);
}
