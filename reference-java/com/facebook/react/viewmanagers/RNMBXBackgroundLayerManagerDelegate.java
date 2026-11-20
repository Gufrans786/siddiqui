package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXBackgroundLayerManagerInterface;

public class RNMBXBackgroundLayerManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXBackgroundLayerManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXBackgroundLayerManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "aboveLayerID":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setAboveLayerID(t, new DynamicFromObject(obj));
                break;
            case "belowLayerID":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setBelowLayerID(t, new DynamicFromObject(obj));
                break;
            case "filter":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setFilter(t, new DynamicFromObject(obj));
                break;
            case "reactStyle":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setReactStyle(t, new DynamicFromObject(obj));
                break;
            case "layerIndex":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setLayerIndex(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "maxZoomLevel":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "minZoomLevel":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "sourceID":
                ((RNMBXBackgroundLayerManagerInterface) this.mViewManager).setSourceID(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
