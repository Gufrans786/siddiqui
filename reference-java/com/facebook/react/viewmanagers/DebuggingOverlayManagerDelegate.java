package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.DebuggingOverlayManagerInterface;

public class DebuggingOverlayManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & DebuggingOverlayManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public DebuggingOverlayManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        super.kotlinCompat$setProperty(t, str, obj);
    }

    @Override
    public void kotlinCompat$receiveCommand(T t, String str, ReadableArray readableArray) {
        str.hashCode();
        switch (str) {
            case "clearElementsHighlights":
                ((DebuggingOverlayManagerInterface) this.mViewManager).clearElementsHighlights(t);
                break;
            case "highlightTraceUpdates":
                ((DebuggingOverlayManagerInterface) this.mViewManager).highlightTraceUpdates(t, readableArray.getArray(0));
                break;
            case "highlightElements":
                ((DebuggingOverlayManagerInterface) this.mViewManager).highlightElements(t, readableArray.getArray(0));
                break;
        }
    }
}
