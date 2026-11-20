package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXImagesManagerInterface;

public class RNMBXImagesManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXImagesManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXImagesManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "images":
                ((RNMBXImagesManagerInterface) this.mViewManager).setImages(t, new DynamicFromObject(obj));
                break;
            case "hasOnImageMissing":
                ((RNMBXImagesManagerInterface) this.mViewManager).setHasOnImageMissing(t, new DynamicFromObject(obj));
                break;
            case "nativeImages":
                ((RNMBXImagesManagerInterface) this.mViewManager).setNativeImages(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
