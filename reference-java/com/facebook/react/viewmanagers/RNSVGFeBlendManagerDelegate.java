package com.facebook.react.viewmanagers;

import android.view.View;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNSVGFeBlendManagerInterface;
import com.nimbusds.jose.jwk.JWKParameterNames;

public class RNSVGFeBlendManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNSVGFeBlendManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNSVGFeBlendManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1221029593:
                if (str.equals("height")) {
                    b = 0;
                }
                break;
            case -934426595:
                if (str.equals("result")) {
                    b = 1;
                }
                break;
            case SyslogConstants.LOG_CLOCK:
                if (str.equals("x")) {
                    b = 2;
                }
                break;
            case 121:
                if (str.equals(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)) {
                    b = 3;
                }
                break;
            case 104364:
                if (str.equals("in1")) {
                    b = 4;
                }
                break;
            case 104365:
                if (str.equals("in2")) {
                    b = 5;
                }
                break;
            case 3357091:
                if (str.equals("mode")) {
                    b = 6;
                }
                break;
            case 113126854:
                if (str.equals("width")) {
                    b = 7;
                }
                break;
        }
        switch (b) {
            case 0:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setHeight(t, new DynamicFromObject(obj));
                break;
            case 1:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setResult(t, obj != null ? (String) obj : null);
                break;
            case 2:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setX(t, new DynamicFromObject(obj));
                break;
            case 3:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setY(t, new DynamicFromObject(obj));
                break;
            case 4:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setIn1(t, obj != null ? (String) obj : null);
                break;
            case 5:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setIn2(t, obj != null ? (String) obj : null);
                break;
            case 6:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setMode(t, (String) obj);
                break;
            case 7:
                ((RNSVGFeBlendManagerInterface) this.mViewManager).setWidth(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
