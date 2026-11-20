package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXVectorSourceManagerInterface;

public class RNMBXVectorSourceManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXVectorSourceManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXVectorSourceManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setExisting(t, new DynamicFromObject(obj));
                break;
            case "hasPressListener":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setHasPressListener(t, new DynamicFromObject(obj));
                break;
            case "hitbox":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setHitbox(t, new DynamicFromObject(obj));
                break;
            case "attribution":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setAttribution(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setId(t, new DynamicFromObject(obj));
                break;
            case "tms":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setTms(t, new DynamicFromObject(obj));
                break;
            case "url":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setUrl(t, new DynamicFromObject(obj));
                break;
            case "maxZoomLevel":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setMaxZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "minZoomLevel":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setMinZoomLevel(t, new DynamicFromObject(obj));
                break;
            case "tileUrlTemplates":
                ((RNMBXVectorSourceManagerInterface) this.mViewManager).setTileUrlTemplates(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
