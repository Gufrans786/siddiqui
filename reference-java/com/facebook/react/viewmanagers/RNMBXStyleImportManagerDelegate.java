package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXStyleImportManagerInterface;

public class RNMBXStyleImportManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXStyleImportManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXStyleImportManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "existing":
                ((RNMBXStyleImportManagerInterface) this.mViewManager).setExisting(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case "config":
                ((RNMBXStyleImportManagerInterface) this.mViewManager).setConfig(t, new DynamicFromObject(obj));
                break;
            case "id":
                ((RNMBXStyleImportManagerInterface) this.mViewManager).setId(t, obj == null ? null : (String) obj);
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
