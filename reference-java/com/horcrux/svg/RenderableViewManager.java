package com.horcrux.svg;

import android.view.View;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.JavaOnlyMap;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNSVGCircleManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGCircleManagerInterface;
import com.facebook.react.viewmanagers.RNSVGClipPathManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGClipPathManagerInterface;
import com.facebook.react.viewmanagers.RNSVGDefsManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGDefsManagerInterface;
import com.facebook.react.viewmanagers.RNSVGEllipseManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGEllipseManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFeBlendManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFeBlendManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFeColorMatrixManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFeColorMatrixManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFeCompositeManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFeCompositeManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFeFloodManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFeFloodManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFeGaussianBlurManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFeGaussianBlurManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFeMergeManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFeMergeManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFeOffsetManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFeOffsetManagerInterface;
import com.facebook.react.viewmanagers.RNSVGFilterManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGFilterManagerInterface;
import com.facebook.react.viewmanagers.RNSVGForeignObjectManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGForeignObjectManagerInterface;
import com.facebook.react.viewmanagers.RNSVGGroupManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGGroupManagerInterface;
import com.facebook.react.viewmanagers.RNSVGImageManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGImageManagerInterface;
import com.facebook.react.viewmanagers.RNSVGLineManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGLineManagerInterface;
import com.facebook.react.viewmanagers.RNSVGLinearGradientManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGLinearGradientManagerInterface;
import com.facebook.react.viewmanagers.RNSVGMarkerManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGMarkerManagerInterface;
import com.facebook.react.viewmanagers.RNSVGMaskManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGMaskManagerInterface;
import com.facebook.react.viewmanagers.RNSVGPathManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGPathManagerInterface;
import com.facebook.react.viewmanagers.RNSVGPatternManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGPatternManagerInterface;
import com.facebook.react.viewmanagers.RNSVGRadialGradientManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGRadialGradientManagerInterface;
import com.facebook.react.viewmanagers.RNSVGRectManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGRectManagerInterface;
import com.facebook.react.viewmanagers.RNSVGSymbolManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGSymbolManagerInterface;
import com.facebook.react.viewmanagers.RNSVGTSpanManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGTSpanManagerInterface;
import com.facebook.react.viewmanagers.RNSVGTextManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGTextManagerInterface;
import com.facebook.react.viewmanagers.RNSVGTextPathManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGTextPathManagerInterface;
import com.facebook.react.viewmanagers.RNSVGUseManagerDelegate;
import com.facebook.react.viewmanagers.RNSVGUseManagerInterface;
import com.horcrux.svg.RenderableView;
import com.horcrux.svg.events.SvgLoadEvent;
import com.horcrux.svg.events.SvgOnLayoutEvent;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

class RenderableViewManager<T extends RenderableView> extends VirtualViewManager<T> {
    RenderableViewManager(VirtualViewManager.SVGClass sVGClass) {
        super(sVGClass);
    }

    @Override
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        HashMap map = new HashMap();
        map.put(SvgOnLayoutEvent.EVENT_NAME, MapBuilder.of("registrationName", "onSvgLayout"));
        return map;
    }

    static class GroupViewManagerAbstract<U extends GroupView> extends RenderableViewManager<U> {
        GroupViewManagerAbstract(VirtualViewManager.SVGClass sVGClass) {
            super(sVGClass);
        }

        @ReactProp(name = "font")
        public void setFont(U u, Dynamic dynamic) {
            u.setFont(dynamic);
        }

        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(U u, Dynamic dynamic) {
            JavaOnlyMap javaOnlyMap = new JavaOnlyMap();
            int i = AnonymousClass1.$SwitchMap$com$facebook$react$bridge$ReadableType[dynamic.getType().ordinal()];
            if (i == 1) {
                javaOnlyMap.putDouble(ViewProps.FONT_SIZE, dynamic.asDouble());
            } else if (i != 2) {
                return;
            } else {
                javaOnlyMap.putString(ViewProps.FONT_SIZE, dynamic.asString());
            }
            u.setFont(javaOnlyMap);
        }

        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(U u, Dynamic dynamic) {
            JavaOnlyMap javaOnlyMap = new JavaOnlyMap();
            int i = AnonymousClass1.$SwitchMap$com$facebook$react$bridge$ReadableType[dynamic.getType().ordinal()];
            if (i == 1) {
                javaOnlyMap.putDouble(ViewProps.FONT_WEIGHT, dynamic.asDouble());
            } else if (i != 2) {
                return;
            } else {
                javaOnlyMap.putString(ViewProps.FONT_WEIGHT, dynamic.asString());
            }
            u.setFont(javaOnlyMap);
        }
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$com$facebook$react$bridge$ReadableType;

        static {
            int[] iArr = new int[ReadableType.values().length];
            $SwitchMap$com$facebook$react$bridge$ReadableType = iArr;
            try {
                iArr[ReadableType.Number.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$facebook$react$bridge$ReadableType[ReadableType.String.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static class GroupViewManager extends GroupViewManagerAbstract<GroupView> implements RNSVGGroupManagerInterface<GroupView> {
        public static final String REACT_CLASS = "RNSVGGroup";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        GroupViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGGroup);
            this.mDelegate = new RNSVGGroupManagerDelegate(this);
        }
    }

    static class PathViewManager extends RenderableViewManager<PathView> implements RNSVGPathManagerInterface<PathView> {
        public static final String REACT_CLASS = "RNSVGPath";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        PathViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGPath);
            this.mDelegate = new RNSVGPathManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "d")
        public void setD(PathView pathView, String str) {
            pathView.setD(str);
        }
    }

    static class TextViewManagerAbstract<K extends TextView> extends GroupViewManagerAbstract<K> {
        TextViewManagerAbstract(VirtualViewManager.SVGClass sVGClass) {
            super(sVGClass);
        }

        @ReactProp(name = "inlineSize")
        public void setInlineSize(K k, Dynamic dynamic) {
            k.setInlineSize(dynamic);
        }

        @ReactProp(name = "textLength")
        public void setTextLength(K k, Dynamic dynamic) {
            k.setTextLength(dynamic);
        }

        @ReactProp(name = "lengthAdjust")
        public void setLengthAdjust(K k, @Nullable String str) {
            k.setLengthAdjust(str);
        }

        @ReactProp(name = "alignmentBaseline")
        public void setMethod(K k, @Nullable String str) {
            k.setMethod(str);
        }

        @ReactProp(name = "baselineShift")
        public void setBaselineShift(K k, Dynamic dynamic) {
            k.setBaselineShift(dynamic);
        }

        @ReactProp(name = "verticalAlign")
        public void setVerticalAlign(K k, @Nullable Dynamic dynamic) {
            k.setVerticalAlign(dynamic);
        }

        @ReactProp(name = "rotate")
        public void setRotate(K k, Dynamic dynamic) {
            k.setRotate(dynamic);
        }

        @ReactProp(name = "dx")
        public void setDx(K k, Dynamic dynamic) {
            k.setDeltaX(dynamic);
        }

        @ReactProp(name = "dy")
        public void setDy(K k, Dynamic dynamic) {
            k.setDeltaY(dynamic);
        }

        @ReactProp(name = "x")
        public void setX(K k, Dynamic dynamic) {
            k.setPositionX(dynamic);
        }

        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(K k, Dynamic dynamic) {
            k.setPositionY(dynamic);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(K k, Dynamic dynamic) {
            k.setFont(dynamic);
        }

        public void setAlignmentBaseline(K k, @Nullable String str) {
            k.setMethod(str);
        }
    }

    static class TextViewManager extends TextViewManagerAbstract<TextView> implements RNSVGTextManagerInterface<TextView> {
        public static final String REACT_CLASS = "RNSVGText";

        @Override
        public void setAlignmentBaseline(View view, @Nullable String str) {
            super.setAlignmentBaseline((TextView) view, str);
        }

        @Override
        @ReactProp(name = "baselineShift")
        public void setBaselineShift(View view, Dynamic dynamic) {
            super.setBaselineShift((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "dx")
        public void setDx(View view, Dynamic dynamic) {
            super.setDx((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "dy")
        public void setDy(View view, Dynamic dynamic) {
            super.setDy((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "inlineSize")
        public void setInlineSize(View view, Dynamic dynamic) {
            super.setInlineSize((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "lengthAdjust")
        public void setLengthAdjust(View view, @Nullable String str) {
            super.setLengthAdjust((TextView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "rotate")
        public void setRotate(View view, Dynamic dynamic) {
            super.setRotate((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "textLength")
        public void setTextLength(View view, Dynamic dynamic) {
            super.setTextLength((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = "verticalAlign")
        public void setVerticalAlign(View view, @Nullable Dynamic dynamic) {
            super.setVerticalAlign((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((TextView) view, dynamic);
        }

        TextViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGText);
            this.mDelegate = new RNSVGTextManagerDelegate(this);
        }

        TextViewManager(VirtualViewManager.SVGClass sVGClass) {
            super(sVGClass);
            this.mDelegate = new RNSVGTextManagerDelegate(this);
        }
    }

    static class TSpanViewManager extends TextViewManagerAbstract<TSpanView> implements RNSVGTSpanManagerInterface<TSpanView> {
        public static final String REACT_CLASS = "RNSVGTSpan";

        @Override
        public void setAlignmentBaseline(View view, @Nullable String str) {
            super.setAlignmentBaseline((TextView) view, str);
        }

        @Override
        @ReactProp(name = "baselineShift")
        public void setBaselineShift(View view, Dynamic dynamic) {
            super.setBaselineShift((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "dx")
        public void setDx(View view, Dynamic dynamic) {
            super.setDx((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "dy")
        public void setDy(View view, Dynamic dynamic) {
            super.setDy((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "inlineSize")
        public void setInlineSize(View view, Dynamic dynamic) {
            super.setInlineSize((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "lengthAdjust")
        public void setLengthAdjust(View view, @Nullable String str) {
            super.setLengthAdjust((TextView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "rotate")
        public void setRotate(View view, Dynamic dynamic) {
            super.setRotate((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "textLength")
        public void setTextLength(View view, Dynamic dynamic) {
            super.setTextLength((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = "verticalAlign")
        public void setVerticalAlign(View view, @Nullable Dynamic dynamic) {
            super.setVerticalAlign((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((TextView) view, dynamic);
        }

        TSpanViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGTSpan);
            this.mDelegate = new RNSVGTSpanManagerDelegate(this);
        }

        TSpanViewManager(VirtualViewManager.SVGClass sVGClass) {
            super(sVGClass);
            this.mDelegate = new RNSVGTSpanManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "content")
        public void setContent(TSpanView tSpanView, @Nullable String str) {
            tSpanView.setContent(str);
        }
    }

    static class TextPathViewManager extends TextViewManagerAbstract<TextPathView> implements RNSVGTextPathManagerInterface<TextPathView> {
        public static final String REACT_CLASS = "RNSVGTextPath";

        @Override
        public void setAlignmentBaseline(View view, @Nullable String str) {
            super.setAlignmentBaseline((TextView) view, str);
        }

        @Override
        @ReactProp(name = "baselineShift")
        public void setBaselineShift(View view, Dynamic dynamic) {
            super.setBaselineShift((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "dx")
        public void setDx(View view, Dynamic dynamic) {
            super.setDx((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "dy")
        public void setDy(View view, Dynamic dynamic) {
            super.setDy((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "inlineSize")
        public void setInlineSize(View view, Dynamic dynamic) {
            super.setInlineSize((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "lengthAdjust")
        public void setLengthAdjust(View view, @Nullable String str) {
            super.setLengthAdjust((TextView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "rotate")
        public void setRotate(View view, Dynamic dynamic) {
            super.setRotate((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "textLength")
        public void setTextLength(View view, Dynamic dynamic) {
            super.setTextLength((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = "verticalAlign")
        public void setVerticalAlign(View view, @Nullable Dynamic dynamic) {
            super.setVerticalAlign((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((TextView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((TextView) view, dynamic);
        }

        TextPathViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGTextPath);
            this.mDelegate = new RNSVGTextPathManagerDelegate(this);
        }

        TextPathViewManager(VirtualViewManager.SVGClass sVGClass) {
            super(sVGClass);
            this.mDelegate = new RNSVGTextPathManagerDelegate(this);
        }

        @Override
        @ReactProp(name = SVGParser.XML_STYLESHEET_ATTR_HREF)
        public void setHref(TextPathView textPathView, String str) {
            textPathView.setHref(str);
        }

        @Override
        @ReactProp(name = "startOffset")
        public void setStartOffset(TextPathView textPathView, Dynamic dynamic) {
            textPathView.setStartOffset(dynamic);
        }

        @Override
        @ReactProp(name = "method")
        public void setMethod(TextPathView textPathView, @Nullable String str) {
            textPathView.setMethod(str);
        }

        @Override
        public void setMidLine(TextPathView textPathView, @Nullable String str) {
            textPathView.setSharp(str);
        }

        @Override
        @ReactProp(name = "spacing")
        public void setSpacing(TextPathView textPathView, @Nullable String str) {
            textPathView.setSpacing(str);
        }

        @Override
        @ReactProp(name = "side")
        public void setSide(TextPathView textPathView, @Nullable String str) {
            textPathView.setSide(str);
        }

        @ReactProp(name = "midLine")
        public void setSharp(TextPathView textPathView, @Nullable String str) {
            textPathView.setSharp(str);
        }
    }

    static class ImageViewManager extends RenderableViewManager<ImageView> implements RNSVGImageManagerInterface<ImageView> {
        public static final String REACT_CLASS = "RNSVGImage";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        ImageViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGImage);
            this.mDelegate = new RNSVGImageManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(ImageView imageView, Dynamic dynamic) {
            imageView.setX(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(ImageView imageView, Dynamic dynamic) {
            imageView.setY(dynamic);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(ImageView imageView, Dynamic dynamic) {
            imageView.setWidth(dynamic);
        }

        @Override
        @ReactProp(name = "height")
        public void setHeight(ImageView imageView, Dynamic dynamic) {
            imageView.setHeight(dynamic);
        }

        @Override
        @ReactProp(customType = "ImageSource", name = "src")
        public void setSrc(ImageView imageView, @Nullable ReadableMap readableMap) {
            imageView.setSrc(readableMap);
        }

        @Override
        @ReactProp(name = "align")
        public void setAlign(ImageView imageView, String str) {
            imageView.setAlign(str);
        }

        @Override
        @ReactProp(name = "meetOrSlice")
        public void setMeetOrSlice(ImageView imageView, int i) {
            imageView.setMeetOrSlice(i);
        }

        @Override
        public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
            HashMap map = new HashMap();
            map.put(SvgLoadEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoad"));
            return map;
        }
    }

    static class CircleViewManager extends RenderableViewManager<CircleView> implements RNSVGCircleManagerInterface<CircleView> {
        public static final String REACT_CLASS = "RNSVGCircle";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        CircleViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGCircle);
            this.mDelegate = new RNSVGCircleManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "cx")
        public void setCx(CircleView circleView, Dynamic dynamic) {
            circleView.setCx(dynamic);
        }

        @Override
        @ReactProp(name = "cy")
        public void setCy(CircleView circleView, Dynamic dynamic) {
            circleView.setCy(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR)
        public void setR(CircleView circleView, Dynamic dynamic) {
            circleView.setR(dynamic);
        }
    }

    static class EllipseViewManager extends RenderableViewManager<EllipseView> implements RNSVGEllipseManagerInterface<EllipseView> {
        public static final String REACT_CLASS = "RNSVGEllipse";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        EllipseViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGEllipse);
            this.mDelegate = new RNSVGEllipseManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "cx")
        public void setCx(EllipseView ellipseView, Dynamic dynamic) {
            ellipseView.setCx(dynamic);
        }

        @Override
        @ReactProp(name = "cy")
        public void setCy(EllipseView ellipseView, Dynamic dynamic) {
            ellipseView.setCy(dynamic);
        }

        @Override
        @ReactProp(name = "rx")
        public void setRx(EllipseView ellipseView, Dynamic dynamic) {
            ellipseView.setRx(dynamic);
        }

        @Override
        @ReactProp(name = "ry")
        public void setRy(EllipseView ellipseView, Dynamic dynamic) {
            ellipseView.setRy(dynamic);
        }
    }

    static class LineViewManager extends RenderableViewManager<LineView> implements RNSVGLineManagerInterface<LineView> {
        public static final String REACT_CLASS = "RNSVGLine";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        LineViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGLine);
            this.mDelegate = new RNSVGLineManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x1")
        public void setX1(LineView lineView, Dynamic dynamic) {
            lineView.setX1(dynamic);
        }

        @Override
        @ReactProp(name = "y1")
        public void setY1(LineView lineView, Dynamic dynamic) {
            lineView.setY1(dynamic);
        }

        @Override
        @ReactProp(name = "x2")
        public void setX2(LineView lineView, Dynamic dynamic) {
            lineView.setX2(dynamic);
        }

        @Override
        @ReactProp(name = "y2")
        public void setY2(LineView lineView, Dynamic dynamic) {
            lineView.setY2(dynamic);
        }
    }

    static class RectViewManager extends RenderableViewManager<RectView> implements RNSVGRectManagerInterface<RectView> {
        public static final String REACT_CLASS = "RNSVGRect";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        RectViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGRect);
            this.mDelegate = new RNSVGRectManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(RectView rectView, Dynamic dynamic) {
            rectView.setX(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(RectView rectView, Dynamic dynamic) {
            rectView.setY(dynamic);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(RectView rectView, Dynamic dynamic) {
            rectView.setWidth(dynamic);
        }

        @Override
        @ReactProp(name = "height")
        public void setHeight(RectView rectView, Dynamic dynamic) {
            rectView.setHeight(dynamic);
        }

        @Override
        @ReactProp(name = "rx")
        public void setRx(RectView rectView, Dynamic dynamic) {
            rectView.setRx(dynamic);
        }

        @Override
        @ReactProp(name = "ry")
        public void setRy(RectView rectView, Dynamic dynamic) {
            rectView.setRy(dynamic);
        }
    }

    static class ClipPathViewManager extends GroupViewManagerAbstract<ClipPathView> implements RNSVGClipPathManagerInterface<ClipPathView> {
        public static final String REACT_CLASS = "RNSVGClipPath";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        ClipPathViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGClipPath);
            this.mDelegate = new RNSVGClipPathManagerDelegate(this);
        }
    }

    static class DefsViewManager extends VirtualViewManager<DefsView> implements RNSVGDefsManagerInterface<DefsView> {
        public static final String REACT_CLASS = "RNSVGDefs";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        DefsViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGDefs);
            this.mDelegate = new RNSVGDefsManagerDelegate(this);
        }
    }

    static class UseViewManager extends RenderableViewManager<UseView> implements RNSVGUseManagerInterface<UseView> {
        public static final String REACT_CLASS = "RNSVGUse";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        UseViewManager() {
            super(VirtualViewManager.SVGClass.RNSVGUse);
            this.mDelegate = new RNSVGUseManagerDelegate(this);
        }

        @Override
        @ReactProp(name = SVGParser.XML_STYLESHEET_ATTR_HREF)
        public void setHref(UseView useView, String str) {
            useView.setHref(str);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(UseView useView, Dynamic dynamic) {
            useView.setX(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(UseView useView, Dynamic dynamic) {
            useView.setY(dynamic);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(UseView useView, Dynamic dynamic) {
            useView.setWidth(dynamic);
        }

        @Override
        @ReactProp(name = "height")
        public void setHeight(UseView useView, Dynamic dynamic) {
            useView.setHeight(dynamic);
        }
    }

    static class SymbolManager extends GroupViewManagerAbstract<SymbolView> implements RNSVGSymbolManagerInterface<SymbolView> {
        public static final String REACT_CLASS = "RNSVGSymbol";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        SymbolManager() {
            super(VirtualViewManager.SVGClass.RNSVGSymbol);
            this.mDelegate = new RNSVGSymbolManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "minX")
        public void setMinX(SymbolView symbolView, float f) {
            symbolView.setMinX(f);
        }

        @Override
        @ReactProp(name = "minY")
        public void setMinY(SymbolView symbolView, float f) {
            symbolView.setMinY(f);
        }

        @Override
        @ReactProp(name = "vbWidth")
        public void setVbWidth(SymbolView symbolView, float f) {
            symbolView.setVbWidth(f);
        }

        @Override
        @ReactProp(name = "vbHeight")
        public void setVbHeight(SymbolView symbolView, float f) {
            symbolView.setVbHeight(f);
        }

        @Override
        @ReactProp(name = "align")
        public void setAlign(SymbolView symbolView, String str) {
            symbolView.setAlign(str);
        }

        @Override
        @ReactProp(name = "meetOrSlice")
        public void setMeetOrSlice(SymbolView symbolView, int i) {
            symbolView.setMeetOrSlice(i);
        }
    }

    static class PatternManager extends GroupViewManagerAbstract<PatternView> implements RNSVGPatternManagerInterface<PatternView> {
        public static final String REACT_CLASS = "RNSVGPattern";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        PatternManager() {
            super(VirtualViewManager.SVGClass.RNSVGPattern);
            this.mDelegate = new RNSVGPatternManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(PatternView patternView, Dynamic dynamic) {
            patternView.setX(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(PatternView patternView, Dynamic dynamic) {
            patternView.setY(dynamic);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(PatternView patternView, Dynamic dynamic) {
            patternView.setWidth(dynamic);
        }

        @Override
        @ReactProp(name = "height")
        public void setHeight(PatternView patternView, Dynamic dynamic) {
            patternView.setHeight(dynamic);
        }

        @Override
        @ReactProp(name = "patternUnits")
        public void setPatternUnits(PatternView patternView, int i) {
            patternView.setPatternUnits(i);
        }

        @Override
        @ReactProp(name = "patternContentUnits")
        public void setPatternContentUnits(PatternView patternView, int i) {
            patternView.setPatternContentUnits(i);
        }

        @Override
        @ReactProp(name = "patternTransform")
        public void setPatternTransform(PatternView patternView, @Nullable ReadableArray readableArray) {
            patternView.setPatternTransform(readableArray);
        }

        @Override
        @ReactProp(name = "minX")
        public void setMinX(PatternView patternView, float f) {
            patternView.setMinX(f);
        }

        @Override
        @ReactProp(name = "minY")
        public void setMinY(PatternView patternView, float f) {
            patternView.setMinY(f);
        }

        @Override
        @ReactProp(name = "vbWidth")
        public void setVbWidth(PatternView patternView, float f) {
            patternView.setVbWidth(f);
        }

        @Override
        @ReactProp(name = "vbHeight")
        public void setVbHeight(PatternView patternView, float f) {
            patternView.setVbHeight(f);
        }

        @Override
        @ReactProp(name = "align")
        public void setAlign(PatternView patternView, String str) {
            patternView.setAlign(str);
        }

        @Override
        @ReactProp(name = "meetOrSlice")
        public void setMeetOrSlice(PatternView patternView, int i) {
            patternView.setMeetOrSlice(i);
        }
    }

    static class MaskManager extends GroupViewManagerAbstract<MaskView> implements RNSVGMaskManagerInterface<MaskView> {
        public static final String REACT_CLASS = "RNSVGMask";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        MaskManager() {
            super(VirtualViewManager.SVGClass.RNSVGMask);
            this.mDelegate = new RNSVGMaskManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(MaskView maskView, Dynamic dynamic) {
            maskView.setX(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(MaskView maskView, Dynamic dynamic) {
            maskView.setY(dynamic);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(MaskView maskView, Dynamic dynamic) {
            maskView.setWidth(dynamic);
        }

        @Override
        @ReactProp(name = "height")
        public void setHeight(MaskView maskView, Dynamic dynamic) {
            maskView.setHeight(dynamic);
        }

        @Override
        @ReactProp(name = "maskUnits")
        public void setMaskUnits(MaskView maskView, int i) {
            maskView.setMaskUnits(i);
        }

        @Override
        @ReactProp(name = "maskContentUnits")
        public void setMaskContentUnits(MaskView maskView, int i) {
            maskView.setMaskContentUnits(i);
        }

        @Override
        @ReactProp(name = "maskType")
        public void setMaskType(MaskView maskView, int i) {
            maskView.setMaskType(i);
        }
    }

    static class ForeignObjectManager extends GroupViewManagerAbstract<ForeignObjectView> implements RNSVGForeignObjectManagerInterface<ForeignObjectView> {
        public static final String REACT_CLASS = "RNSVGForeignObject";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        ForeignObjectManager() {
            super(VirtualViewManager.SVGClass.RNSVGForeignObject);
            this.mDelegate = new RNSVGForeignObjectManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(ForeignObjectView foreignObjectView, Dynamic dynamic) {
            foreignObjectView.setX(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(ForeignObjectView foreignObjectView, Dynamic dynamic) {
            foreignObjectView.setY(dynamic);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(ForeignObjectView foreignObjectView, Dynamic dynamic) {
            foreignObjectView.setWidth(dynamic);
        }

        @Override
        @ReactProp(name = "height")
        public void setHeight(ForeignObjectView foreignObjectView, Dynamic dynamic) {
            foreignObjectView.setHeight(dynamic);
        }
    }

    static class MarkerManager extends GroupViewManagerAbstract<MarkerView> implements RNSVGMarkerManagerInterface<MarkerView> {
        public static final String REACT_CLASS = "RNSVGMarker";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(customType = "Color", name = "color")
        public void setColor(View view, Integer num) {
            super.setColor((RenderableView) view, num);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "fill")
        public void setFill(View view, @Nullable Dynamic dynamic) {
            super.setFill((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
        public void setFillOpacity(View view, float f) {
            super.setFillOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "fillRule")
        public void setFillRule(View view, int i) {
            super.setFillRule((RenderableView) view, i);
        }

        @Override
        @ReactProp(name = ViewProps.FILTER)
        public void setFilter(View view, String str) {
            super.setFilter((RenderableView) view, str);
        }

        @Override
        @ReactProp(name = "font")
        public void setFont(View view, Dynamic dynamic) {
            super.setFont((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_SIZE)
        public void setFontSize(View view, Dynamic dynamic) {
            super.setFontSize((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = ViewProps.FONT_WEIGHT)
        public void setFontWeight(View view, Dynamic dynamic) {
            super.setFontWeight((GroupView) view, dynamic);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "propList")
        public void setPropList(View view, @Nullable ReadableArray readableArray) {
            super.setPropList((RenderableView) view, readableArray);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        @Override
        @ReactProp(name = "stroke")
        public void setStroke(View view, @Nullable Dynamic dynamic) {
            super.setStroke((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDasharray")
        public void setStrokeDasharray(View view, Dynamic dynamic) {
            super.setStrokeDasharray((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "strokeDashoffset")
        public void setStrokeDashoffset(View view, float f) {
            super.setStrokeDashoffset((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinecap")
        public void setStrokeLinecap(View view, int i) {
            super.setStrokeLinecap((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultInt = 1, name = "strokeLinejoin")
        public void setStrokeLinejoin(View view, int i) {
            super.setStrokeLinejoin((RenderableView) view, i);
        }

        @Override
        @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
        public void setStrokeMiterlimit(View view, float f) {
            super.setStrokeMiterlimit((RenderableView) view, f);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
        public void setStrokeOpacity(View view, float f) {
            super.setStrokeOpacity((RenderableView) view, f);
        }

        @Override
        @ReactProp(name = "strokeWidth")
        public void setStrokeWidth(View view, Dynamic dynamic) {
            super.setStrokeWidth((RenderableView) view, dynamic);
        }

        @Override
        @ReactProp(name = "vectorEffect")
        public void setVectorEffect(View view, int i) {
            super.setVectorEffect((RenderableView) view, i);
        }

        MarkerManager() {
            super(VirtualViewManager.SVGClass.RNSVGMarker);
            this.mDelegate = new RNSVGMarkerManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "refX")
        public void setRefX(MarkerView markerView, Dynamic dynamic) {
            markerView.setRefX(dynamic);
        }

        @Override
        @ReactProp(name = "refY")
        public void setRefY(MarkerView markerView, Dynamic dynamic) {
            markerView.setRefY(dynamic);
        }

        @Override
        @ReactProp(name = "markerWidth")
        public void setMarkerWidth(MarkerView markerView, Dynamic dynamic) {
            markerView.setMarkerWidth(dynamic);
        }

        @Override
        @ReactProp(name = "markerHeight")
        public void setMarkerHeight(MarkerView markerView, Dynamic dynamic) {
            markerView.setMarkerHeight(dynamic);
        }

        @Override
        @ReactProp(name = "markerUnits")
        public void setMarkerUnits(MarkerView markerView, String str) {
            markerView.setMarkerUnits(str);
        }

        @Override
        @ReactProp(name = "orient")
        public void setOrient(MarkerView markerView, String str) {
            markerView.setOrient(str);
        }

        @Override
        @ReactProp(name = "minX")
        public void setMinX(MarkerView markerView, float f) {
            markerView.setMinX(f);
        }

        @Override
        @ReactProp(name = "minY")
        public void setMinY(MarkerView markerView, float f) {
            markerView.setMinY(f);
        }

        @Override
        @ReactProp(name = "vbWidth")
        public void setVbWidth(MarkerView markerView, float f) {
            markerView.setVbWidth(f);
        }

        @Override
        @ReactProp(name = "vbHeight")
        public void setVbHeight(MarkerView markerView, float f) {
            markerView.setVbHeight(f);
        }

        @Override
        @ReactProp(name = "align")
        public void setAlign(MarkerView markerView, String str) {
            markerView.setAlign(str);
        }

        @Override
        @ReactProp(name = "meetOrSlice")
        public void setMeetOrSlice(MarkerView markerView, int i) {
            markerView.setMeetOrSlice(i);
        }
    }

    static class LinearGradientManager extends VirtualViewManager<LinearGradientView> implements RNSVGLinearGradientManagerInterface<LinearGradientView> {
        public static final String REACT_CLASS = "RNSVGLinearGradient";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        LinearGradientManager() {
            super(VirtualViewManager.SVGClass.RNSVGLinearGradient);
            this.mDelegate = new RNSVGLinearGradientManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x1")
        public void setX1(LinearGradientView linearGradientView, Dynamic dynamic) {
            linearGradientView.setX1(dynamic);
        }

        @Override
        @ReactProp(name = "y1")
        public void setY1(LinearGradientView linearGradientView, Dynamic dynamic) {
            linearGradientView.setY1(dynamic);
        }

        @Override
        @ReactProp(name = "x2")
        public void setX2(LinearGradientView linearGradientView, Dynamic dynamic) {
            linearGradientView.setX2(dynamic);
        }

        @Override
        @ReactProp(name = "y2")
        public void setY2(LinearGradientView linearGradientView, Dynamic dynamic) {
            linearGradientView.setY2(dynamic);
        }

        @Override
        @ReactProp(name = "gradient")
        public void setGradient(LinearGradientView linearGradientView, ReadableArray readableArray) {
            linearGradientView.setGradient(readableArray);
        }

        @Override
        @ReactProp(name = "gradientUnits")
        public void setGradientUnits(LinearGradientView linearGradientView, int i) {
            linearGradientView.setGradientUnits(i);
        }

        @Override
        @ReactProp(name = "gradientTransform")
        public void setGradientTransform(LinearGradientView linearGradientView, @Nullable ReadableArray readableArray) {
            linearGradientView.setGradientTransform(readableArray);
        }
    }

    static class RadialGradientManager extends VirtualViewManager<RadialGradientView> implements RNSVGRadialGradientManagerInterface<RadialGradientView> {
        public static final String REACT_CLASS = "RNSVGRadialGradient";

        @Override
        @ReactProp(name = "clipPath")
        public void setClipPath(View view, String str) {
            super.setClipPath((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "clipRule")
        public void setClipRule(View view, int i) {
            super.setClipRule((VirtualView) view, i);
        }

        @Override
        @ReactProp(name = "display")
        public void setDisplay(View view, String str) {
            super.setDisplay((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerEnd")
        public void setMarkerEnd(View view, String str) {
            super.setMarkerEnd((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerMid")
        public void setMarkerMid(View view, String str) {
            super.setMarkerMid((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "markerStart")
        public void setMarkerStart(View view, String str) {
            super.setMarkerStart((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "mask")
        public void setMask(View view, String str) {
            super.setMask((VirtualView) view, str);
        }

        @Override
        public void setMatrix(View view, @Nullable ReadableArray readableArray) {
            super.setMatrix((VirtualView) view, readableArray);
        }

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = ViewProps.OPACITY)
        public void setOpacity(@Nonnull View view, float f) {
            super.setOpacity((VirtualView) view, f);
        }

        @Override
        @ReactProp(name = ViewProps.POINTER_EVENTS)
        public void setPointerEvents(View view, @Nullable String str) {
            super.setPointerEvents((VirtualView) view, str);
        }

        @Override
        @ReactProp(name = "responsible")
        public void setResponsible(View view, boolean z) {
            super.setResponsible((VirtualView) view, z);
        }

        RadialGradientManager() {
            super(VirtualViewManager.SVGClass.RNSVGRadialGradient);
            this.mDelegate = new RNSVGRadialGradientManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "fx")
        public void setFx(RadialGradientView radialGradientView, Dynamic dynamic) {
            radialGradientView.setFx(dynamic);
        }

        @Override
        @ReactProp(name = "fy")
        public void setFy(RadialGradientView radialGradientView, Dynamic dynamic) {
            radialGradientView.setFy(dynamic);
        }

        @Override
        @ReactProp(name = "rx")
        public void setRx(RadialGradientView radialGradientView, Dynamic dynamic) {
            radialGradientView.setRx(dynamic);
        }

        @Override
        @ReactProp(name = "ry")
        public void setRy(RadialGradientView radialGradientView, Dynamic dynamic) {
            radialGradientView.setRy(dynamic);
        }

        @Override
        @ReactProp(name = "cx")
        public void setCx(RadialGradientView radialGradientView, Dynamic dynamic) {
            radialGradientView.setCx(dynamic);
        }

        @Override
        @ReactProp(name = "cy")
        public void setCy(RadialGradientView radialGradientView, Dynamic dynamic) {
            radialGradientView.setCy(dynamic);
        }

        @Override
        @ReactProp(name = "gradient")
        public void setGradient(RadialGradientView radialGradientView, ReadableArray readableArray) {
            radialGradientView.setGradient(readableArray);
        }

        @Override
        @ReactProp(name = "gradientUnits")
        public void setGradientUnits(RadialGradientView radialGradientView, int i) {
            radialGradientView.setGradientUnits(i);
        }

        @Override
        @ReactProp(name = "gradientTransform")
        public void setGradientTransform(RadialGradientView radialGradientView, @Nullable ReadableArray readableArray) {
            radialGradientView.setGradientTransform(readableArray);
        }
    }

    static class FilterManager extends VirtualViewManager<FilterView> implements RNSVGFilterManagerInterface<FilterView> {
        public static final String REACT_CLASS = "RNSVGFilter";

        @Override
        @ReactProp(name = "name")
        public void setName(View view, String str) {
            super.setName((VirtualView) view, str);
        }

        FilterManager() {
            super(VirtualViewManager.SVGClass.RNSVGFilter);
            this.mDelegate = new RNSVGFilterManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(FilterView filterView, Dynamic dynamic) {
            filterView.setX(dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(FilterView filterView, Dynamic dynamic) {
            filterView.setY(dynamic);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(FilterView filterView, Dynamic dynamic) {
            filterView.setWidth(dynamic);
        }

        @Override
        @ReactProp(name = "height")
        public void setHeight(FilterView filterView, Dynamic dynamic) {
            filterView.setHeight(dynamic);
        }

        @Override
        @ReactProp(name = "filterUnits")
        public void setFilterUnits(FilterView filterView, String str) {
            filterView.setFilterUnits(str);
        }

        @Override
        @ReactProp(name = "primitiveUnits")
        public void setPrimitiveUnits(FilterView filterView, String str) {
            filterView.setPrimitiveUnits(str);
        }
    }

    static class FilterPrimitiveManager<T extends FilterPrimitiveView> extends VirtualViewManager<T> {
        protected FilterPrimitiveManager(VirtualViewManager.SVGClass sVGClass) {
            super(sVGClass);
        }

        @ReactProp(name = "x")
        public void setX(T t, Dynamic dynamic) {
            t.setX(dynamic);
        }

        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(T t, Dynamic dynamic) {
            t.setY(dynamic);
        }

        @ReactProp(name = "width")
        public void setWidth(T t, Dynamic dynamic) {
            t.setWidth(dynamic);
        }

        @ReactProp(name = "height")
        public void setHeight(T t, Dynamic dynamic) {
            t.setHeight(dynamic);
        }

        @ReactProp(name = "result")
        public void setResult(T t, String str) {
            t.setResult(str);
        }
    }

    static class FeBlendManager extends FilterPrimitiveManager<FeBlendView> implements RNSVGFeBlendManagerInterface<FeBlendView> {
        public static final String REACT_CLASS = "RNSVGFeBlend";

        @Override
        @ReactProp(name = "height")
        public void setHeight(View view, Dynamic dynamic) {
            super.setHeight((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "result")
        public void setResult(View view, String str) {
            super.setResult((FilterPrimitiveView) view, str);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(View view, Dynamic dynamic) {
            super.setWidth((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((FilterPrimitiveView) view, dynamic);
        }

        FeBlendManager() {
            super(VirtualViewManager.SVGClass.RNSVGFeBlend);
            this.mDelegate = new RNSVGFeBlendManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "in1")
        public void setIn1(FeBlendView feBlendView, String str) {
            feBlendView.setIn1(str);
        }

        @Override
        @ReactProp(name = "in2")
        public void setIn2(FeBlendView feBlendView, String str) {
            feBlendView.setIn2(str);
        }

        @Override
        @ReactProp(name = "mode")
        public void setMode(FeBlendView feBlendView, String str) {
            feBlendView.setMode(str);
        }
    }

    static class FeColorMatrixManager extends FilterPrimitiveManager<FeColorMatrixView> implements RNSVGFeColorMatrixManagerInterface<FeColorMatrixView> {
        public static final String REACT_CLASS = "RNSVGFeColorMatrix";

        @Override
        @ReactProp(name = "height")
        public void setHeight(View view, Dynamic dynamic) {
            super.setHeight((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "result")
        public void setResult(View view, String str) {
            super.setResult((FilterPrimitiveView) view, str);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(View view, Dynamic dynamic) {
            super.setWidth((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((FilterPrimitiveView) view, dynamic);
        }

        FeColorMatrixManager() {
            super(VirtualViewManager.SVGClass.RNSVGFeColorMatrix);
            this.mDelegate = new RNSVGFeColorMatrixManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "in1")
        public void setIn1(FeColorMatrixView feColorMatrixView, String str) {
            feColorMatrixView.setIn1(str);
        }

        @Override
        @ReactProp(name = SVGParser.XML_STYLESHEET_ATTR_TYPE)
        public void setType(FeColorMatrixView feColorMatrixView, String str) {
            feColorMatrixView.setType(str);
        }

        @Override
        @ReactProp(name = "values")
        public void setValues(FeColorMatrixView feColorMatrixView, @Nullable ReadableArray readableArray) {
            feColorMatrixView.setValues(readableArray);
        }
    }

    static class FeCompositeManager extends FilterPrimitiveManager<FeCompositeView> implements RNSVGFeCompositeManagerInterface<FeCompositeView> {
        public static final String REACT_CLASS = "RNSVGFeComposite";

        @Override
        @ReactProp(name = "height")
        public void setHeight(View view, Dynamic dynamic) {
            super.setHeight((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "result")
        public void setResult(View view, String str) {
            super.setResult((FilterPrimitiveView) view, str);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(View view, Dynamic dynamic) {
            super.setWidth((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((FilterPrimitiveView) view, dynamic);
        }

        FeCompositeManager() {
            super(VirtualViewManager.SVGClass.RNSVGFeComposite);
            this.mDelegate = new RNSVGFeCompositeManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "in1")
        public void setIn1(FeCompositeView feCompositeView, String str) {
            feCompositeView.setIn1(str);
        }

        @Override
        @ReactProp(name = "in2")
        public void setIn2(FeCompositeView feCompositeView, String str) {
            feCompositeView.setIn2(str);
        }

        @Override
        @ReactProp(name = "operator1")
        public void setOperator1(FeCompositeView feCompositeView, String str) {
            feCompositeView.setOperator(str);
        }

        @Override
        @ReactProp(name = "k1")
        public void setK1(FeCompositeView feCompositeView, float f) {
            feCompositeView.setK1(Float.valueOf(f));
        }

        @Override
        @ReactProp(name = "k2")
        public void setK2(FeCompositeView feCompositeView, float f) {
            feCompositeView.setK2(Float.valueOf(f));
        }

        @Override
        @ReactProp(name = "k3")
        public void setK3(FeCompositeView feCompositeView, float f) {
            feCompositeView.setK3(Float.valueOf(f));
        }

        @Override
        @ReactProp(name = "k4")
        public void setK4(FeCompositeView feCompositeView, float f) {
            feCompositeView.setK4(Float.valueOf(f));
        }
    }

    static class FeFloodManager extends FilterPrimitiveManager<FeFloodView> implements RNSVGFeFloodManagerInterface<FeFloodView> {
        public static final String REACT_CLASS = "RNSVGFeFlood";

        @Override
        @ReactProp(name = "height")
        public void setHeight(View view, Dynamic dynamic) {
            super.setHeight((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "result")
        public void setResult(View view, String str) {
            super.setResult((FilterPrimitiveView) view, str);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(View view, Dynamic dynamic) {
            super.setWidth((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((FilterPrimitiveView) view, dynamic);
        }

        FeFloodManager() {
            super(VirtualViewManager.SVGClass.RNSVGFeFlood);
            this.mDelegate = new RNSVGFeFloodManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "floodColor")
        public void setFloodColor(FeFloodView feFloodView, @Nullable Dynamic dynamic) {
            feFloodView.setFloodColor(dynamic);
        }

        public void setFloodColor(FeFloodView feFloodView, @Nullable ReadableMap readableMap) {
            feFloodView.setFloodColor(readableMap);
        }

        @Override
        @ReactProp(defaultFloat = 1.0f, name = "floodOpacity")
        public void setFloodOpacity(FeFloodView feFloodView, float f) {
            feFloodView.setFloodOpacity(f);
        }
    }

    static class FeGaussianBlurManager extends FilterPrimitiveManager<FeGaussianBlurView> implements RNSVGFeGaussianBlurManagerInterface<FeGaussianBlurView> {
        public static final String REACT_CLASS = "RNSVGFeGaussianBlur";

        @Override
        @ReactProp(name = "height")
        public void setHeight(View view, Dynamic dynamic) {
            super.setHeight((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "result")
        public void setResult(View view, String str) {
            super.setResult((FilterPrimitiveView) view, str);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(View view, Dynamic dynamic) {
            super.setWidth((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((FilterPrimitiveView) view, dynamic);
        }

        FeGaussianBlurManager() {
            super(VirtualViewManager.SVGClass.RNSVGFeGaussianBlur);
            this.mDelegate = new RNSVGFeGaussianBlurManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "in1")
        public void setIn1(FeGaussianBlurView feGaussianBlurView, String str) {
            feGaussianBlurView.setIn1(str);
        }

        @Override
        @ReactProp(name = "stdDeviationX")
        public void setStdDeviationX(FeGaussianBlurView feGaussianBlurView, float f) {
            feGaussianBlurView.setStdDeviationX(f);
        }

        @Override
        @ReactProp(name = "stdDeviationY")
        public void setStdDeviationY(FeGaussianBlurView feGaussianBlurView, float f) {
            feGaussianBlurView.setStdDeviationY(f);
        }

        @Override
        @ReactProp(name = "values")
        public void setEdgeMode(FeGaussianBlurView feGaussianBlurView, String str) {
            feGaussianBlurView.setEdgeMode(str);
        }
    }

    static class FeMergeManager extends FilterPrimitiveManager<FeMergeView> implements RNSVGFeMergeManagerInterface<FeMergeView> {
        public static final String REACT_CLASS = "RNSVGFeMerge";

        @Override
        @ReactProp(name = "height")
        public void setHeight(View view, Dynamic dynamic) {
            super.setHeight((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "result")
        public void setResult(View view, String str) {
            super.setResult((FilterPrimitiveView) view, str);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(View view, Dynamic dynamic) {
            super.setWidth((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((FilterPrimitiveView) view, dynamic);
        }

        FeMergeManager() {
            super(VirtualViewManager.SVGClass.RNSVGFeMerge);
            this.mDelegate = new RNSVGFeMergeManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "nodes")
        public void setNodes(FeMergeView feMergeView, ReadableArray readableArray) {
            feMergeView.setNodes(readableArray);
        }
    }

    static class FeOffsetManager extends FilterPrimitiveManager<FeOffsetView> implements RNSVGFeOffsetManagerInterface<FeOffsetView> {
        public static final String REACT_CLASS = "RNSVGFeOffset";

        @Override
        @ReactProp(name = "height")
        public void setHeight(View view, Dynamic dynamic) {
            super.setHeight((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "result")
        public void setResult(View view, String str) {
            super.setResult((FilterPrimitiveView) view, str);
        }

        @Override
        @ReactProp(name = "width")
        public void setWidth(View view, Dynamic dynamic) {
            super.setWidth((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = "x")
        public void setX(View view, Dynamic dynamic) {
            super.setX((FilterPrimitiveView) view, dynamic);
        }

        @Override
        @ReactProp(name = JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
        public void setY(View view, Dynamic dynamic) {
            super.setY((FilterPrimitiveView) view, dynamic);
        }

        FeOffsetManager() {
            super(VirtualViewManager.SVGClass.RNSVGFeOffset);
            this.mDelegate = new RNSVGFeOffsetManagerDelegate(this);
        }

        @Override
        @ReactProp(name = "in1")
        public void setIn1(FeOffsetView feOffsetView, String str) {
            feOffsetView.setIn1(str);
        }

        @Override
        @ReactProp(name = "dx")
        public void setDx(FeOffsetView feOffsetView, Dynamic dynamic) {
            feOffsetView.setDx(dynamic);
        }

        @Override
        @ReactProp(name = "dy")
        public void setDy(FeOffsetView feOffsetView, Dynamic dynamic) {
            feOffsetView.setDy(dynamic);
        }
    }

    @ReactProp(name = ViewProps.FILTER)
    public void setFilter(T t, String str) {
        t.setFilter(str);
    }

    @ReactProp(customType = "Color", name = "color")
    public void setColor(T t, Integer num) {
        t.setCurrentColor(num);
    }

    @ReactProp(name = "fill")
    public void setFill(T t, @Nullable Dynamic dynamic) {
        t.setFill(dynamic);
    }

    public void setFill(T t, @Nullable ReadableMap readableMap) {
        t.setFill(readableMap);
    }

    @ReactProp(defaultFloat = 1.0f, name = "fillOpacity")
    public void setFillOpacity(T t, float f) {
        t.setFillOpacity(f);
    }

    @ReactProp(defaultInt = 1, name = "fillRule")
    public void setFillRule(T t, int i) {
        t.setFillRule(i);
    }

    @ReactProp(name = "stroke")
    public void setStroke(T t, @Nullable Dynamic dynamic) {
        t.setStroke(dynamic);
    }

    public void setStroke(T t, @Nullable ReadableMap readableMap) {
        t.setStroke(readableMap);
    }

    @ReactProp(defaultFloat = 1.0f, name = "strokeOpacity")
    public void setStrokeOpacity(T t, float f) {
        t.setStrokeOpacity(f);
    }

    @ReactProp(name = "strokeDasharray")
    public void setStrokeDasharray(T t, Dynamic dynamic) {
        t.setStrokeDasharray(dynamic);
    }

    @ReactProp(name = "strokeDashoffset")
    public void setStrokeDashoffset(T t, float f) {
        t.setStrokeDashoffset(f);
    }

    @ReactProp(name = "strokeWidth")
    public void setStrokeWidth(T t, Dynamic dynamic) {
        t.setStrokeWidth(dynamic);
    }

    @ReactProp(defaultFloat = 4.0f, name = "strokeMiterlimit")
    public void setStrokeMiterlimit(T t, float f) {
        t.setStrokeMiterlimit(f);
    }

    @ReactProp(defaultInt = 1, name = "strokeLinecap")
    public void setStrokeLinecap(T t, int i) {
        t.setStrokeLinecap(i);
    }

    @ReactProp(defaultInt = 1, name = "strokeLinejoin")
    public void setStrokeLinejoin(T t, int i) {
        t.setStrokeLinejoin(i);
    }

    @ReactProp(name = "vectorEffect")
    public void setVectorEffect(T t, int i) {
        t.setVectorEffect(i);
    }

    @ReactProp(name = "propList")
    public void setPropList(T t, @Nullable ReadableArray readableArray) {
        t.setPropList(readableArray);
    }
}
