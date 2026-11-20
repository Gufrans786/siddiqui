package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXFillExtrusionLayerManagerInterface;

public class RNMBXFillExtrusionLayerManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXFillExtrusionLayerManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXFillExtrusionLayerManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "aboveLayerID":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setAboveLayerID(t, new DynamicFromObject(obj));
                break;
            case "belowLayerID":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setBelowLayerID(t, new DynamicFromObject(obj));
                break;
            case "filter":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setFilter(t, new DynamicFromObject(obj));
                break;
            case "reactStyle":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setReactStyle(t, new DynamicFromObject(obj));
                break;
            case "layerIndex":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setLayerIndex(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "sourceLayerID":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setSourceLayerID(t, new DynamicFromObject(obj));
                break;
            case "maxZoomLevel":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "minZoomLevel":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "sourceID":
                ((RNMBXFillExtrusionLayerManagerInterface) this.mViewManager).setSourceID(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
