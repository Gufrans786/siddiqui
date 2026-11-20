package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXImageManagerInterface;

public class RNMBXImageManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXImageManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXImageManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "sdf":
                ((RNMBXImageManagerInterface) this.mViewManager).setSdf(t, new DynamicFromObject(obj));
                break;
            case "name":
                ((RNMBXImageManagerInterface) this.mViewManager).setName(t, new DynamicFromObject(obj));
                break;
            case "scale":
                ((RNMBXImageManagerInterface) this.mViewManager).setScale(t, new DynamicFromObject(obj));
                break;
            case "content":
                ((RNMBXImageManagerInterface) this.mViewManager).setContent(t, new DynamicFromObject(obj));
                break;
            case "stretchX":
                ((RNMBXImageManagerInterface) this.mViewManager).setStretchX(t, new DynamicFromObject(obj));
                break;
            case "stretchY":
                ((RNMBXImageManagerInterface) this.mViewManager).setStretchY(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
