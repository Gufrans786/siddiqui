package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNSBottomTabsAccessoryContentManagerInterface;
import com.payfort.fortpaymentsdk.constants.Constants;

public class RNSBottomTabsAccessoryContentManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNSBottomTabsAccessoryContentManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNSBottomTabsAccessoryContentManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            ((RNSBottomTabsAccessoryContentManagerInterface) this.mViewManager).setEnvironment(t, (String) obj);
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
