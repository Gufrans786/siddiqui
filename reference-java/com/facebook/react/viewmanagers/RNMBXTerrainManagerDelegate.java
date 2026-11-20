package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXTerrainManagerInterface;

public class RNMBXTerrainManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXTerrainManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXTerrainManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals("reactStyle")) {
            ((RNMBXTerrainManagerInterface) this.mViewManager).setReactStyle(t, new DynamicFromObject(obj));
        } else if (str.equals("sourceID")) {
            ((RNMBXTerrainManagerInterface) this.mViewManager).setSourceID(t, new DynamicFromObject(obj));
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
