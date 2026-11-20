package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXMarkerViewManagerInterface;

public class RNMBXMarkerViewManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXMarkerViewManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXMarkerViewManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "anchor":
                ((RNMBXMarkerViewManagerInterface) this.mViewManager).setAnchor(t, new DynamicFromObject(obj));
                break;
            case "allowOverlapWithPuck":
                ((RNMBXMarkerViewManagerInterface) this.mViewManager).setAllowOverlapWithPuck(t, new DynamicFromObject(obj));
                break;
            case "coordinate":
                ((RNMBXMarkerViewManagerInterface) this.mViewManager).setCoordinate(t, new DynamicFromObject(obj));
                break;
            case "isSelected":
                ((RNMBXMarkerViewManagerInterface) this.mViewManager).setIsSelected(t, new DynamicFromObject(obj));
                break;
            case "allowOverlap":
                ((RNMBXMarkerViewManagerInterface) this.mViewManager).setAllowOverlap(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
