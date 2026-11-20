package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXCustomLocationProviderManagerInterface;

public class RNMBXCustomLocationProviderManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXCustomLocationProviderManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXCustomLocationProviderManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals("coordinate")) {
            ((RNMBXCustomLocationProviderManagerInterface) this.mViewManager).setCoordinate(t, new DynamicFromObject(obj));
        } else if (str.equals("heading")) {
            ((RNMBXCustomLocationProviderManagerInterface) this.mViewManager).setHeading(t, new DynamicFromObject(obj));
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
