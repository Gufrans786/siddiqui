package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXRasterSourceManagerInterface;

public class RNMBXRasterSourceManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXRasterSourceManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXRasterSourceManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "tileSize":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setTileSize(t, new DynamicFromObject(obj));
                break;
            case "attribution":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setAttribution(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "tms":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setTms(t, new DynamicFromObject(obj));
                break;
            case "url":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setUrl(t, new DynamicFromObject(obj));
                break;
            case "maxZoomLevel":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "minZoomLevel":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "sourceBounds":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setSourceBounds(t, new DynamicFromObject(obj));
                break;
            case "tileUrlTemplates":
                ((RNMBXRasterSourceManagerInterface) this.mViewManager).setTileUrlTemplates(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
