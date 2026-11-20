package com.facebook.react.views.text;

import android.content.Context;
import androidx.autofill.HintConstants;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.common.annotations.UnstableReactNativeAPI;
import com.facebook.react.uimanager.BackgroundStyleApplicator;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.LengthPercentage;
import com.facebook.react.uimanager.LengthPercentageType;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.annotations.ReactPropGroup;
import com.facebook.react.uimanager.style.BorderRadiusProp;
import com.facebook.react.uimanager.style.BorderStyle;
import com.facebook.react.uimanager.style.LogicalEdge;
import com.facebook.react.views.text.ReactBaseTextShadowNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b(\b'\u0018\u0000*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\fJ\u001d\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0001¢\u0006\u0002\b\u0010J\u001f\u0010\u0011\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0001¢\u0006\u0002\b\u0014J\u001d\u0010\u0015\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\u0017J\u001d\u0010\u0018\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0001¢\u0006\u0002\b\u001bJ\u001d\u0010\u001c\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001aH\u0001¢\u0006\u0002\b\u001eJ\u001f\u0010\u001f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010\u0013H\u0001¢\u0006\u0002\b!J\u001d\u0010\"\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000bH\u0001¢\u0006\u0002\b$J!\u0010%\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\b\u0010&\u001a\u0004\u0018\u00010\u000fH\u0001¢\u0006\u0004\b'\u0010(J\u001f\u0010)\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0013H\u0001¢\u0006\u0002\b+J%\u0010,\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u001aH\u0001¢\u0006\u0002\b/J\u001f\u00100\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\b\u00101\u001a\u0004\u0018\u00010\u0013H\u0001¢\u0006\u0002\b2J%\u00103\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u000f2\u0006\u00104\u001a\u00020\u001aH\u0001¢\u0006\u0002\b5J)\u00106\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u000f2\b\u0010&\u001a\u0004\u0018\u00010\u000fH\u0001¢\u0006\u0004\b7\u00108J\u001d\u00109\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u000bH\u0001¢\u0006\u0002\b;J\u001d\u0010<\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u000bH\u0001¢\u0006\u0002\b>J\u001f\u0010?\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\b\u0010@\u001a\u0004\u0018\u00010\u0013H\u0001¢\u0006\u0002\bA¨\u0006B"}, d2 = {"Lcom/facebook/react/views/text/ReactTextAnchorViewManager;", "C", "Lcom/facebook/react/views/text/ReactBaseTextShadowNode;", "Lcom/facebook/react/uimanager/BaseViewManager;", "Lcom/facebook/react/views/text/ReactTextView;", "<init>", "()V", "setAccessible", "", "view", "accessible", "", "setAccessible$ReactAndroid_release", "setNumberOfLines", ViewProps.NUMBER_OF_LINES, "", "setNumberOfLines$ReactAndroid_release", "setEllipsizeMode", ViewProps.ELLIPSIZE_MODE, "", "setEllipsizeMode$ReactAndroid_release", "setAdjustFontSizeToFit", ViewProps.ADJUSTS_FONT_SIZE_TO_FIT, "setAdjustFontSizeToFit$ReactAndroid_release", "setFontSize", ViewProps.FONT_SIZE, "", "setFontSize$ReactAndroid_release", "setLetterSpacing", ViewProps.LETTER_SPACING, "setLetterSpacing$ReactAndroid_release", "setTextAlignVertical", ViewProps.TEXT_ALIGN_VERTICAL, "setTextAlignVertical$ReactAndroid_release", "setSelectable", "isSelectable", "setSelectable$ReactAndroid_release", "setSelectionColor", "color", "setSelectionColor$ReactAndroid_release", "(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Integer;)V", "setAndroidHyphenationFrequency", "frequency", "setAndroidHyphenationFrequency$ReactAndroid_release", "setBorderRadius", FirebaseAnalytics.Param.INDEX, ViewProps.BORDER_RADIUS, "setBorderRadius$ReactAndroid_release", "setBorderStyle", "borderStyle", "setBorderStyle$ReactAndroid_release", "setBorderWidth", "width", "setBorderWidth$ReactAndroid_release", "setBorderColor", "setBorderColor$ReactAndroid_release", "(Lcom/facebook/react/views/text/ReactTextView;ILjava/lang/Integer;)V", "setIncludeFontPadding", "includepad", "setIncludeFontPadding$ReactAndroid_release", "setDisabled", "disabled", "setDisabled$ReactAndroid_release", "setDataDetectorType", SVGParser.XML_STYLESHEET_ATTR_TYPE, "setDataDetectorType$ReactAndroid_release", "ReactAndroid_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@UnstableReactNativeAPI
public abstract class ReactTextAnchorViewManager<C extends ReactBaseTextShadowNode> extends BaseViewManager<ReactTextView, C> {
    @ReactProp(name = "accessible")
    public final void setAccessible$ReactAndroid_release(ReactTextView view, boolean accessible) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setFocusable(accessible);
    }

    @ReactProp(defaultInt = Integer.MAX_VALUE, name = ViewProps.NUMBER_OF_LINES)
    public final void setNumberOfLines$ReactAndroid_release(ReactTextView view, int numberOfLines) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setNumberOfLines(numberOfLines);
    }

    @com.facebook.react.uimanager.annotations.ReactProp(name = com.facebook.react.uimanager.ViewProps.ELLIPSIZE_MODE)
    public final void setEllipsizeMode$ReactAndroid_release(com.facebook.react.views.text.ReactTextView r3, java.lang.String r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.text.ReactTextAnchorViewManager.setEllipsizeMode$ReactAndroid_release(com.facebook.react.views.text.ReactTextView, java.lang.String):void");
    }

    @ReactProp(name = ViewProps.ADJUSTS_FONT_SIZE_TO_FIT)
    public final void setAdjustFontSizeToFit$ReactAndroid_release(ReactTextView view, boolean adjustsFontSizeToFit) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setAdjustFontSizeToFit(adjustsFontSizeToFit);
    }

    @ReactProp(name = ViewProps.FONT_SIZE)
    public final void setFontSize$ReactAndroid_release(ReactTextView view, float fontSize) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setFontSize(fontSize);
    }

    @ReactProp(defaultFloat = 0.0f, name = ViewProps.LETTER_SPACING)
    public final void setLetterSpacing$ReactAndroid_release(ReactTextView view, float letterSpacing) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setLetterSpacing(letterSpacing);
    }

    @com.facebook.react.uimanager.annotations.ReactProp(name = com.facebook.react.uimanager.ViewProps.TEXT_ALIGN_VERTICAL)
    public final void setTextAlignVertical$ReactAndroid_release(com.facebook.react.views.text.ReactTextView r4, java.lang.String r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.text.ReactTextAnchorViewManager.setTextAlignVertical$ReactAndroid_release(com.facebook.react.views.text.ReactTextView, java.lang.String):void");
    }

    @ReactProp(name = "selectable")
    public final void setSelectable$ReactAndroid_release(ReactTextView view, boolean isSelectable) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTextIsSelectable(isSelectable);
    }

    @ReactProp(customType = "Color", name = "selectionColor")
    public final void setSelectionColor$ReactAndroid_release(ReactTextView view, Integer color) {
        int defaultTextColorHighlight;
        Intrinsics.checkNotNullParameter(view, "view");
        if (color != null) {
            defaultTextColorHighlight = color.intValue();
        } else {
            Context context = view.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            defaultTextColorHighlight = DefaultStyleValuesUtil.getDefaultTextColorHighlight(context);
        }
        view.setHighlightColor(defaultTextColorHighlight);
    }

    @com.facebook.react.uimanager.annotations.ReactProp(name = "android_hyphenationFrequency")
    public final void setAndroidHyphenationFrequency$ReactAndroid_release(com.facebook.react.views.text.ReactTextView r4, java.lang.String r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.text.ReactTextAnchorViewManager.setAndroidHyphenationFrequency$ReactAndroid_release(com.facebook.react.views.text.ReactTextView, java.lang.String):void");
    }

    @ReactPropGroup(defaultFloat = Float.NaN, names = {ViewProps.BORDER_RADIUS, ViewProps.BORDER_TOP_LEFT_RADIUS, ViewProps.BORDER_TOP_RIGHT_RADIUS, ViewProps.BORDER_BOTTOM_RIGHT_RADIUS, ViewProps.BORDER_BOTTOM_LEFT_RADIUS})
    public final void setBorderRadius$ReactAndroid_release(ReactTextView view, int index, float borderRadius) {
        Intrinsics.checkNotNullParameter(view, "view");
        BackgroundStyleApplicator.setBorderRadius(view, BorderRadiusProp.values()[index], Float.isNaN(borderRadius) ? null : new LengthPercentage(borderRadius, LengthPercentageType.POINT));
    }

    @ReactProp(name = "borderStyle")
    public final void setBorderStyle$ReactAndroid_release(ReactTextView view, String borderStyle) {
        Intrinsics.checkNotNullParameter(view, "view");
        BackgroundStyleApplicator.setBorderStyle(view, borderStyle == null ? null : BorderStyle.INSTANCE.fromString(borderStyle));
    }

    @ReactPropGroup(defaultFloat = Float.NaN, names = {ViewProps.BORDER_WIDTH, ViewProps.BORDER_LEFT_WIDTH, ViewProps.BORDER_RIGHT_WIDTH, ViewProps.BORDER_TOP_WIDTH, ViewProps.BORDER_BOTTOM_WIDTH, ViewProps.BORDER_START_WIDTH, ViewProps.BORDER_END_WIDTH})
    public final void setBorderWidth$ReactAndroid_release(ReactTextView view, int index, float width) {
        Intrinsics.checkNotNullParameter(view, "view");
        BackgroundStyleApplicator.setBorderWidth(view, LogicalEdge.values()[index], Float.valueOf(width));
    }

    @ReactPropGroup(customType = "Color", names = {ViewProps.BORDER_COLOR, ViewProps.BORDER_LEFT_COLOR, ViewProps.BORDER_RIGHT_COLOR, ViewProps.BORDER_TOP_COLOR, ViewProps.BORDER_BOTTOM_COLOR})
    public final void setBorderColor$ReactAndroid_release(ReactTextView view, int index, Integer color) {
        Intrinsics.checkNotNullParameter(view, "view");
        BackgroundStyleApplicator.setBorderColor(view, LogicalEdge.values()[index], color);
    }

    @ReactProp(defaultBoolean = true, name = ViewProps.INCLUDE_FONT_PADDING)
    public final void setIncludeFontPadding$ReactAndroid_release(ReactTextView view, boolean includepad) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setIncludeFontPadding(includepad);
    }

    @ReactProp(defaultBoolean = false, name = "disabled")
    public final void setDisabled$ReactAndroid_release(ReactTextView view, boolean disabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setEnabled(!disabled);
    }

    @ReactProp(name = "dataDetectorType")
    public final void setDataDetectorType$ReactAndroid_release(ReactTextView view, String type) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (type != null) {
            switch (type.hashCode()) {
                case -1192969641:
                    if (type.equals(HintConstants.AUTOFILL_HINT_PHONE_NUMBER)) {
                        view.setLinkifyMask(4);
                        return;
                    }
                    break;
                case 96673:
                    if (type.equals(SVGParser.XML_STYLESHEET_ATTR_MEDIA_ALL)) {
                        view.setLinkifyMask(15);
                        return;
                    }
                    break;
                case 3321850:
                    if (type.equals("link")) {
                        view.setLinkifyMask(1);
                        return;
                    }
                    break;
                case 96619420:
                    if (type.equals("email")) {
                        view.setLinkifyMask(2);
                        return;
                    }
                    break;
            }
        }
        view.setLinkifyMask(0);
    }
}
