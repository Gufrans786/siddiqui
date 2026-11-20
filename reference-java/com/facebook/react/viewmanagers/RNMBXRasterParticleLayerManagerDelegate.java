package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.viewmanagers.RNMBXRasterParticleLayerManagerInterface;
import com.google.common.base.Ascii;

public class RNMBXRasterParticleLayerManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXRasterParticleLayerManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXRasterParticleLayerManagerDelegate(BaseViewManager baseViewManager) {
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
            case -1982961713:
                if (str.equals("aboveLayerID")) {
                    b = 1;
                }
                break;
            case -1287130949:
                if (str.equals("belowLayerID")) {
                    b = 2;
                }
                break;
            case -1274492040:
                if (str.equals(ViewProps.FILTER)) {
                    b = 3;
                }
                break;
            case -473339022:
                if (str.equals("reactStyle")) {
                    b = 4;
                }
                break;
            case -68284927:
                if (str.equals("layerIndex")) {
                    b = 5;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    b = 6;
                }
                break;
            case 3533310:
                if (str.equals("slot")) {
                    b = 7;
                }
                break;
            case 52607377:
                if (str.equals("sourceLayerID")) {
                    b = 8;
                }
                break;
            case 211566189:
                if (str.equals("maxZoomLevel")) {
                    b = 9;
                }
                break;
            case 685992255:
                if (str.equals("minZoomLevel")) {
                    b = 10;
                }
                break;
            case 1746327158:
                if (str.equals("sourceID")) {
                    b = Ascii.VT;
                }
                break;
        }
        switch (b) {
            case 0:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case 1:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setAboveLayerID(t, new DynamicFromObject(obj));
                break;
            case 2:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setBelowLayerID(t, new DynamicFromObject(obj));
                break;
            case 3:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setFilter(t, new DynamicFromObject(obj));
                break;
            case 4:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setReactStyle(t, new DynamicFromObject(obj));
                break;
            case 5:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setLayerIndex(t, new DynamicFromObject(obj));
                break;
            case 6:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case 7:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setSlot(t, new DynamicFromObject(obj));
                break;
            case 8:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setSourceLayerID(t, new DynamicFromObject(obj));
                break;
            case 9:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 10:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case 11:
                ((RNMBXRasterParticleLayerManagerInterface) this.mViewManager).setSourceID(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
