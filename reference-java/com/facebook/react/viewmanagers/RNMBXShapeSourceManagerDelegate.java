package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXShapeSourceManagerInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.common.base.Ascii;

public class RNMBXShapeSourceManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXShapeSourceManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXShapeSourceManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -2122697333:
                if (str.equals("existing")) {
                    b = 0;
                }
                break;
            case -2044591715:
                if (str.equals("hasPressListener")) {
                    b = 1;
                }
                break;
            case -1928344883:
                if (str.equals("clusterProperties")) {
                    b = 2;
                }
                break;
            case -1879865556:
                if (str.equals("clusterRadius")) {
                    b = 3;
                }
                break;
            case -1378118592:
                if (str.equals("buffer")) {
                    b = 4;
                }
                break;
            case -1217012392:
                if (str.equals("hitbox")) {
                    b = 5;
                }
                break;
            case -918192761:
                if (str.equals("clusterMaxZoomLevel")) {
                    b = 6;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    b = 7;
                }
                break;
            case 116079:
                if (str.equals(ImagesContract.URL)) {
                    b = 8;
                }
                break;
            case 109399969:
                if (str.equals("shape")) {
                    b = 9;
                }
                break;
            case 211566189:
                if (str.equals("maxZoomLevel")) {
                    b = 10;
                }
                break;
            case 872092154:
                if (str.equals("cluster")) {
                    b = Ascii.VT;
                }
                break;
            case 1033072653:
                if (str.equals("tolerance")) {
                    b = Ascii.FF;
                }
                break;
            case 1342869039:
                if (str.equals("lineMetrics")) {
                    b = Ascii.CR;
                }
                break;
        }
        switch (b) {
            case 0:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case 1:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setHasPressListener(t, new DynamicFromObject(obj));
                break;
            case 2:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setClusterProperties(t, new DynamicFromObject(obj));
                break;
            case 3:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setClusterRadius(t, new DynamicFromObject(obj));
                break;
            case 4:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setBuffer(t, new DynamicFromObject(obj));
                break;
            case 5:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setHitbox(t, new DynamicFromObject(obj));
                break;
            case 6:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setClusterMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 7:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case 8:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setUrl(t, new DynamicFromObject(obj));
                break;
            case 9:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setShape(t, new DynamicFromObject(obj));
                break;
            case 10:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 11:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setCluster(t, new DynamicFromObject(obj));
                break;
            case 12:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setTolerance(t, new DynamicFromObject(obj));
                break;
            case 13:
                ((RNMBXShapeSourceManagerInterface) this.mViewManager).setLineMetrics(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
