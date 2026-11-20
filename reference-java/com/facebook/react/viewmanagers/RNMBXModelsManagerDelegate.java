package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXModelsManagerInterface;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;

public class RNMBXModelsManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXModelsManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXModelsManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals(ModelSourceWrapper.MODELS)) {
            ((RNMBXModelsManagerInterface) this.mViewManager).setModels(t, new DynamicFromObject(obj));
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
