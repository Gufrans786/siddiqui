package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNSVGFilterManagerInterface;

public class RNSVGFilterManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNSVGFilterManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNSVGFilterManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "primitiveUnits":
                ((RNSVGFilterManagerInterface) this.mViewManager).setPrimitiveUnits(t, (String) obj);
                break;
            case "height":
                ((RNSVGFilterManagerInterface) this.mViewManager).setHeight(t, new DynamicFromObject(obj));
                break;
            case "filterUnits":
                ((RNSVGFilterManagerInterface) this.mViewManager).setFilterUnits(t, (String) obj);
                break;
            case "x":
                ((RNSVGFilterManagerInterface) this.mViewManager).setX(t, new DynamicFromObject(obj));
                break;
            case "y":
                ((RNSVGFilterManagerInterface) this.mViewManager).setY(t, new DynamicFromObject(obj));
                break;
            case "name":
                ((RNSVGFilterManagerInterface) this.mViewManager).setName(t, obj == null ? null : (String) obj);
                break;
            case "width":
                ((RNSVGFilterManagerInterface) this.mViewManager).setWidth(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
