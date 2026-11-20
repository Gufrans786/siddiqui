package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXCameraManagerInterface;
import com.google.common.base.Ascii;

public class RNMBXCameraManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXCameraManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXCameraManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1862242624:
                if (str.equals("followZoomLevel")) {
                    b = 0;
                }
                break;
            case -1614280392:
                if (str.equals("animationDuration")) {
                    b = 1;
                }
                break;
            case -1068241607:
                if (str.equals("maxBounds")) {
                    b = 2;
                }
                break;
            case -436975133:
                if (str.equals("defaultStop")) {
                    b = 3;
                }
                break;
            case 3540994:
                if (str.equals("stop")) {
                    b = 4;
                }
                break;
            case 70467360:
                if (str.equals("followPadding")) {
                    b = 5;
                }
                break;
            case 211566189:
                if (str.equals("maxZoomLevel")) {
                    b = 6;
                }
                break;
            case 685992255:
                if (str.equals("minZoomLevel")) {
                    b = 7;
                }
                break;
            case 1144527583:
                if (str.equals("followUserMode")) {
                    b = 8;
                }
                break;
            case 1582448143:
                if (str.equals("followPitch")) {
                    b = 9;
                }
                break;
            case 1634857841:
                if (str.equals("zoomLevel")) {
                    b = 10;
                }
                break;
            case 1636991077:
                if (str.equals("userTrackingMode")) {
                    b = Ascii.VT;
                }
                break;
            case 1672118545:
                if (str.equals("followHeading")) {
                    b = Ascii.FF;
                }
                break;
            case 2030987079:
                if (str.equals("animationMode")) {
                    b = Ascii.CR;
                }
                break;
            case 2034860785:
                if (str.equals("followUserLocation")) {
                    b = Ascii.SO;
                }
                break;
        }
        switch (b) {
            case 0:
                ((RNMBXCameraManagerInterface) this.mViewManager).setFollowZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 1:
                ((RNMBXCameraManagerInterface) this.mViewManager).setAnimationDuration(t, new DynamicFromObject(obj));
                break;
            case 2:
                ((RNMBXCameraManagerInterface) this.mViewManager).setMaxBounds(t, new DynamicFromObject(obj));
                break;
            case 3:
                ((RNMBXCameraManagerInterface) this.mViewManager).setDefaultStop(t, new DynamicFromObject(obj));
                break;
            case 4:
                ((RNMBXCameraManagerInterface) this.mViewManager).setStop(t, new DynamicFromObject(obj));
                break;
            case 5:
                ((RNMBXCameraManagerInterface) this.mViewManager).setFollowPadding(t, new DynamicFromObject(obj));
                break;
            case 6:
                ((RNMBXCameraManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 7:
                ((RNMBXCameraManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 8:
                ((RNMBXCameraManagerInterface) this.mViewManager).setFollowUserMode(t, new DynamicFromObject(obj));
                break;
            case 9:
                ((RNMBXCameraManagerInterface) this.mViewManager).setFollowPitch(t, new DynamicFromObject(obj));
                break;
            case 10:
                ((RNMBXCameraManagerInterface) this.mViewManager).setZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 11:
                ((RNMBXCameraManagerInterface) this.mViewManager).setUserTrackingMode(t, new DynamicFromObject(obj));
                break;
            case 12:
                ((RNMBXCameraManagerInterface) this.mViewManager).setFollowHeading(t, new DynamicFromObject(obj));
                break;
            case 13:
                ((RNMBXCameraManagerInterface) this.mViewManager).setAnimationMode(t, new DynamicFromObject(obj));
                break;
            case 14:
                ((RNMBXCameraManagerInterface) this.mViewManager).setFollowUserLocation(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
