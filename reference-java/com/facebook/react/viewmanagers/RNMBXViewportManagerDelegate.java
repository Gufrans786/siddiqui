package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXViewportManagerInterface;

public class RNMBXViewportManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXViewportManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXViewportManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals("hasStatusChanged")) {
            ((RNMBXViewportManagerInterface) this.mViewManager).setHasStatusChanged(t, obj == null ? false : ((Boolean) obj).booleanValue());
        } else if (str.equals("transitionsToIdleUponUserInteraction")) {
            ((RNMBXViewportManagerInterface) this.mViewManager).setTransitionsToIdleUponUserInteraction(t, new DynamicFromObject(obj));
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
