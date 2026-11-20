package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXRasterDemSourceManagerInterface;

public class RNMBXRasterDemSourceManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXRasterDemSourceManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXRasterDemSourceManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXRasterDemSourceManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "tileSize":
                ((RNMBXRasterDemSourceManagerInterface) this.mViewManager).setTileSize(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXRasterDemSourceManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "url":
                ((RNMBXRasterDemSourceManagerInterface) this.mViewManager).setUrl(t, new DynamicFromObject(obj));
                break;
            case "maxZoomLevel":
                ((RNMBXRasterDemSourceManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "minZoomLevel":
                ((RNMBXRasterDemSourceManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "tileUrlTemplates":
                ((RNMBXRasterDemSourceManagerInterface) this.mViewManager).setTileUrlTemplates(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
