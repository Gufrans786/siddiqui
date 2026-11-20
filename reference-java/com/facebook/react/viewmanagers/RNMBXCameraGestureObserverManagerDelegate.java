package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXCameraGestureObserverManagerInterface;

public class RNMBXCameraGestureObserverManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXCameraGestureObserverManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXCameraGestureObserverManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "quietPeriodMs":
                ((RNMBXCameraGestureObserverManagerInterface) this.mViewManager).setQuietPeriodMs(t, new DynamicFromObject(obj));
                break;
            case "hasOnMapSteady":
                ((RNMBXCameraGestureObserverManagerInterface) this.mViewManager).setHasOnMapSteady(t, new DynamicFromObject(obj));
                break;
            case "maxIntervalMs":
                ((RNMBXCameraGestureObserverManagerInterface) this.mViewManager).setMaxIntervalMs(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
