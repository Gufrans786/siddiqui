package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXPointAnnotationManagerInterface;

public class RNMBXPointAnnotationManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXPointAnnotationManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXPointAnnotationManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "anchor":
                ((RNMBXPointAnnotationManagerInterface) this.mViewManager).setAnchor(t, new DynamicFromObject(obj));
                break;
            case "draggable":
                ((RNMBXPointAnnotationManagerInterface) this.mViewManager).setDraggable(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXPointAnnotationManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "coordinate":
                ((RNMBXPointAnnotationManagerInterface) this.mViewManager).setCoordinate(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
