package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXMarkerViewContentManagerInterface;

public class RNMBXMarkerViewContentManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXMarkerViewContentManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXMarkerViewContentManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        super.kotlinCompat$setProperty(t, str, obj);
    }
}
