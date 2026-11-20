package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXNativeUserLocationManagerInterface;

public class RNMBXNativeUserLocationManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXNativeUserLocationManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXNativeUserLocationManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "shadowImage":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setShadowImage(t, new DynamicFromObject(obj));
                break;
            case "androidRenderMode":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setAndroidRenderMode(t, new DynamicFromObject(obj));
                break;
            case "topImage":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setTopImage(t, new DynamicFromObject(obj));
                break;
            case "puckBearing":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setPuckBearing(t, new DynamicFromObject(obj));
                break;
            case "puckBearingEnabled":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setPuckBearingEnabled(t, new DynamicFromObject(obj));
                break;
            case "pulsing":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setPulsing(t, new DynamicFromObject(obj));
                break;
            case "scale":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setScale(t, new DynamicFromObject(obj));
                break;
            case "visible":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setVisible(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case "bearingImage":
                ((RNMBXNativeUserLocationManagerInterface) this.mViewManager).setBearingImage(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
