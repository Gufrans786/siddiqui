package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.bridge.DynamicFromObject;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNMBXMapViewManagerInterface;
import com.google.common.base.Ascii;

public class RNMBXMapViewManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNMBXMapViewManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    public RNMBXMapViewManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -2121085800:
                if (str.equals("scaleBarEnabled")) {
                    b = 0;
                }
                break;
            case -1969960369:
                if (str.equals("projection")) {
                    b = 1;
                }
                break;
            case -1923676069:
                if (str.equals("compassPosition")) {
                    b = 2;
                }
                break;
            case -1895220877:
                if (str.equals("requestDisallowInterceptTouchEvent")) {
                    b = 3;
                }
                break;
            case -1886632150:
                if (str.equals("preferredFramesPerSecond")) {
                    b = 4;
                }
                break;
            case -1849628684:
                if (str.equals("logoPosition")) {
                    b = 5;
                }
                break;
            case -1833294708:
                if (str.equals("gestureSettings")) {
                    b = 6;
                }
                break;
            case -1734653664:
                if (str.equals("compassViewPosition")) {
                    b = 7;
                }
                break;
            case -1402831630:
                if (str.equals("surfaceView")) {
                    b = 8;
                }
                break;
            case -1375324191:
                if (str.equals("pitchEnabled")) {
                    b = 9;
                }
                break;
            case -1286103352:
                if (str.equals("attributionPosition")) {
                    b = 10;
                }
                break;
            case -1151046732:
                if (str.equals("scrollEnabled")) {
                    b = Ascii.VT;
                }
                break;
            case -1040869018:
                if (str.equals("rotateEnabled")) {
                    b = Ascii.FF;
                }
                break;
            case -551362712:
                if (str.equals("localizeLabels")) {
                    b = Ascii.CR;
                }
                break;
            case -342575395:
                if (str.equals("compassFadeWhenNorth")) {
                    b = Ascii.SO;
                }
                break;
            case 86584536:
                if (str.equals("deselectAnnotationOnTap")) {
                    b = Ascii.SI;
                }
                break;
            case 105344463:
                if (str.equals("compassEnabled")) {
                    b = 16;
                }
                break;
            case 107012365:
                if (str.equals("attributionViewPosition")) {
                    b = 17;
                }
                break;
            case 393931836:
                if (str.equals("maxPitch")) {
                    b = Ascii.DC2;
                }
                break;
            case 481961390:
                if (str.equals("compassViewMargins")) {
                    b = 19;
                }
                break;
            case 507585505:
                if (str.equals("mapViewImpl")) {
                    b = Ascii.DC4;
                }
                break;
            case 842463223:
                if (str.equals("scaleBarViewMargins")) {
                    b = Ascii.NAK;
                }
                break;
            case 1372837314:
                if (str.equals("attributionEnabled")) {
                    b = Ascii.SYN;
                }
                break;
            case 1380308841:
                if (str.equals("compassImage")) {
                    b = Ascii.ETB;
                }
                break;
            case 1755945966:
                if (str.equals("zoomEnabled")) {
                    b = Ascii.CAN;
                }
                break;
            case 1908848406:
                if (str.equals("logoEnabled")) {
                    b = Ascii.EM;
                }
                break;
            case 1997898238:
                if (str.equals("styleURL")) {
                    b = Ascii.SUB;
                }
                break;
            case 2065390625:
                if (str.equals("attributionViewMargins")) {
                    b = Ascii.ESC;
                }
                break;
            case 2071429810:
                if (str.equals("scaleBarPosition")) {
                    b = Ascii.FS;
                }
                break;
        }
        switch (b) {
            case 0:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setScaleBarEnabled(t, new DynamicFromObject(obj));
                break;
            case 1:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setProjection(t, new DynamicFromObject(obj));
                break;
            case 2:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setCompassPosition(t, new DynamicFromObject(obj));
                break;
            case 3:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setRequestDisallowInterceptTouchEvent(t, new DynamicFromObject(obj));
                break;
            case 4:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setPreferredFramesPerSecond(t, new DynamicFromObject(obj));
                break;
            case 5:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setLogoPosition(t, new DynamicFromObject(obj));
                break;
            case 6:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setGestureSettings(t, new DynamicFromObject(obj));
                break;
            case 7:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setCompassViewPosition(t, new DynamicFromObject(obj));
                break;
            case 8:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setSurfaceView(t, new DynamicFromObject(obj));
                break;
            case 9:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setPitchEnabled(t, new DynamicFromObject(obj));
                break;
            case 10:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setAttributionPosition(t, new DynamicFromObject(obj));
                break;
            case 11:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setScrollEnabled(t, new DynamicFromObject(obj));
                break;
            case 12:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setRotateEnabled(t, new DynamicFromObject(obj));
                break;
            case 13:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setLocalizeLabels(t, new DynamicFromObject(obj));
                break;
            case 14:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setCompassFadeWhenNorth(t, new DynamicFromObject(obj));
                break;
            case 15:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setDeselectAnnotationOnTap(t, new DynamicFromObject(obj));
                break;
            case 16:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setCompassEnabled(t, new DynamicFromObject(obj));
                break;
            case 17:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setAttributionViewPosition(t, new DynamicFromObject(obj));
                break;
            case 18:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setMaxPitch(t, new DynamicFromObject(obj));
                break;
            case 19:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setCompassViewMargins(t, new DynamicFromObject(obj));
                break;
            case 20:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setMapViewImpl(t, new DynamicFromObject(obj));
                break;
            case 21:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setScaleBarViewMargins(t, new DynamicFromObject(obj));
                break;
            case 22:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setAttributionEnabled(t, new DynamicFromObject(obj));
                break;
            case 23:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setCompassImage(t, new DynamicFromObject(obj));
                break;
            case 24:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setZoomEnabled(t, new DynamicFromObject(obj));
                break;
            case 25:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setLogoEnabled(t, new DynamicFromObject(obj));
                break;
            case 26:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setStyleURL(t, new DynamicFromObject(obj));
                break;
            case 27:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setAttributionViewMargins(t, new DynamicFromObject(obj));
                break;
            case 28:
                ((RNMBXMapViewManagerInterface) this.mViewManager).setScaleBarPosition(t, new DynamicFromObject(obj));
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
