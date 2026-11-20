package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXRasterArraySourceManagerInterface;

public class RNMBXRasterArraySourceManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXRasterArraySourceManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXRasterArraySourceManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "tileSize":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setTileSize(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "url":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setUrl(t, new DynamicFromObject(obj));
                break;
            case "maxZoomLevel":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "minZoomLevel":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "sourceBounds":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setSourceBounds(t, new DynamicFromObject(obj));
                break;
            case "tileUrlTemplates":
                ((RNMBXRasterArraySourceManagerInterface) this.mViewManager).setTileUrlTemplates(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
