package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXLightManagerInterface;

public class RNMBXLightManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXLightManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXLightManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals("reactStyle")) {
            ((RNMBXLightManagerInterface) this.mViewManager).setReactStyle(t, new DynamicFromObject(obj));
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
