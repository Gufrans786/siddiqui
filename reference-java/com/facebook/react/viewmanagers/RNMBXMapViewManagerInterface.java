package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

public interface RNMBXMapViewManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setAttributionEnabled(T t, Dynamic dynamic);

    void setAttributionPosition(T t, Dynamic dynamic);

    void setAttributionViewMargins(T t, Dynamic dynamic);

    void setAttributionViewPosition(T t, Dynamic dynamic);

    void setCompassEnabled(T t, Dynamic dynamic);

    void setCompassFadeWhenNorth(T t, Dynamic dynamic);

    void setCompassImage(T t, Dynamic dynamic);

    void setCompassPosition(T t, Dynamic dynamic);

    void setCompassViewMargins(T t, Dynamic dynamic);

    void setCompassViewPosition(T t, Dynamic dynamic);

    void setDeselectAnnotationOnTap(T t, Dynamic dynamic);

    void setGestureSettings(T t, Dynamic dynamic);

    void setLocalizeLabels(T t, Dynamic dynamic);

    void setLogoEnabled(T t, Dynamic dynamic);

    void setLogoPosition(T t, Dynamic dynamic);

    void setMapViewImpl(T t, Dynamic dynamic);

    void setMaxPitch(T t, Dynamic dynamic);

    void setPitchEnabled(T t, Dynamic dynamic);

    void setPreferredFramesPerSecond(T t, Dynamic dynamic);

    void setProjection(T t, Dynamic dynamic);

    void setRequestDisallowInterceptTouchEvent(T t, Dynamic dynamic);

    void setRotateEnabled(T t, Dynamic dynamic);

    void setScaleBarEnabled(T t, Dynamic dynamic);

    void setScaleBarPosition(T t, Dynamic dynamic);

    void setScaleBarViewMargins(T t, Dynamic dynamic);

    void setScrollEnabled(T t, Dynamic dynamic);

    void setStyleURL(T t, Dynamic dynamic);

    void setSurfaceView(T t, Dynamic dynamic);

    void setZoomEnabled(T t, Dynamic dynamic);
}
