package com.facebook.react.viewmanagers;

import android.view.View;
import ch.qos.logback.core.net.SyslogConstants;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNSVGFeColorMatrixManagerInterface;
import com.nimbusds.jose.jwk.JWKParameterNames;

public class RNSVGFeColorMatrixManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNSVGFeColorMatrixManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNSVGFeColorMatrixManagerDelegate(BaseViewManager baseViewManager) {
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
            case -823812830:
                if (str.equals("values")) {
                    b = 2;
                }
                break;
            case SyslogConstants.LOG_CLOCK:
                if (str.equals("x")) {
                    b = 3;
                }
                break;
            case 121:
                if (str.equals(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)) {
                    b = 4;
                }
                break;
            case 104364:
                if (str.equals("in1")) {
                    b = 5;
                }
                break;
            case 3575610:
                if (str.equals(SVGParser.XML_STYLESHEET_ATTR_TYPE)) {
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
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setHeight(t, new DynamicFromObject(obj));
                break;
            case 1:
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setResult(t, obj != null ? (String) obj : null);
                break;
            case 2:
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setValues(t, (ReadableArray) obj);
                break;
            case 3:
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setX(t, new DynamicFromObject(obj));
                break;
            case 4:
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setY(t, new DynamicFromObject(obj));
                break;
            case 5:
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setIn1(t, obj != null ? (String) obj : null);
                break;
            case 6:
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setType(t, (String) obj);
                break;
            case 7:
                ((RNSVGFeColorMatrixManagerInterface) this.mViewManager).setWidth(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
