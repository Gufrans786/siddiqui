package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.VirtualViewManagerInterface;

public class VirtualViewManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & VirtualViewManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public VirtualViewManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals("renderState")) {
            ((VirtualViewManagerInterface) this.mViewManager).setRenderState(t, obj != null ? ((Double) obj).intValue() : 0);
        } else if (str.equals("initialHidden")) {
            ((VirtualViewManagerInterface) this.mViewManager).setInitialHidden(t, obj != null ? ((Boolean) obj).booleanValue() : false);
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
