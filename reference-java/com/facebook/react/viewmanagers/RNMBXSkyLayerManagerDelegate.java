package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXSkyLayerManagerInterface;

public class RNMBXSkyLayerManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXSkyLayerManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXSkyLayerManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "aboveLayerID":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setAboveLayerID(t, new DynamicFromObject(obj));
                break;
            case "belowLayerID":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setBelowLayerID(t, new DynamicFromObject(obj));
                break;
            case "filter":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setFilter(t, new DynamicFromObject(obj));
                break;
            case "reactStyle":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setReactStyle(t, new DynamicFromObject(obj));
                break;
            case "layerIndex":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setLayerIndex(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "maxZoomLevel":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "minZoomLevel":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "sourceID":
                ((RNMBXSkyLayerManagerInterface) this.mViewManager).setSourceID(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
