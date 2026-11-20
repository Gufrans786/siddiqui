package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXImageSourceManagerInterface;

public class RNMBXImageSourceManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXImageSourceManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXImageSourceManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXImageSourceManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXImageSourceManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "url":
                ((RNMBXImageSourceManagerInterface) this.mViewManager).setUrl(t, new DynamicFromObject(obj));
                break;
            case "coordinates":
                ((RNMBXImageSourceManagerInterface) this.mViewManager).setCoordinates(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
