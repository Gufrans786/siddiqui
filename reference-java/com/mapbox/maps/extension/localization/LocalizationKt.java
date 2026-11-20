package com.mapbox.maps.extension.localization;

import com.facebook.hermes.intl.Constants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StyleObjectInfo;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.extension.style.expressions.dsl.generated.ExpressionDslKt;
import com.payfort.fortpaymentsdk.presentation.threeds.ThreeDsActivity;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u001a\"\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a0\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0002\u001a(\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001bH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"EXPRESSION_ABBR_REGEX", "Lkotlin/text/Regex;", "EXPRESSION_REGEX", "SOURCE", "", "STREET_V7", "STREET_V8", "SYMBOL", "TAG", "TEXT_FIELD", "TYPE", ThreeDsActivity.URL, "VECTOR", "adaptLocaleToV8orV7IfNeeded", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "sourceId", Constants.LOCALE, "Ljava/util/Locale;", "localizeTextFieldExpression", "", "layerId", "convertedLocale", "filterSymbolLayers", "", "setMapLanguage", "layerIds", "", "extension-localization_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class LocalizationKt {
    private static final String SOURCE = "source";
    private static final String STREET_V7 = "mapbox.mapbox-streets-v7";
    private static final String STREET_V8 = "mapbox.mapbox-streets-v8";
    private static final String SYMBOL = "symbol";
    private static final String TAG = "LocalizationPluginImpl";
    private static final String TEXT_FIELD = "text-field";
    private static final String TYPE = "type";
    private static final String URL = "url";
    private static final String VECTOR = "vector";
    private static final Regex EXPRESSION_REGEX = new Regex("\\[\"get\",\\s*\"(name_.{2,7})\"\\]");
    private static final Regex EXPRESSION_ABBR_REGEX = new Regex("\\[\"get\",\\s*\"abbr\"\\]");

    public static final void setMapLanguage(Locale locale, MapboxStyleManager style, List<String> list) {
        Unit unit;
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(style, "style");
        String str = "name_" + locale.getLanguage();
        if (!SupportedLanguagesKt.isSupportedLanguage(str)) {
            MapboxLogger.logE(TAG, "Locale: " + locale + " is not supported.");
            return;
        }
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                localizeTextFieldExpression(style, (String) it.next(), locale, str, true);
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            for (StyleObjectInfo styleObjectInfo : style.getStyleLayers()) {
                if (Intrinsics.areEqual(styleObjectInfo.getType(), SYMBOL)) {
                    String id = styleObjectInfo.getId();
                    Intrinsics.checkNotNullExpressionValue(id, "layer.id");
                    localizeTextFieldExpression(style, id, locale, str, false);
                }
            }
        }
    }

    private static final void localizeTextFieldExpression(MapboxStyleManager mapboxStyleManager, String str, Locale locale, String str2, boolean z) {
        if (z) {
            Object contents = mapboxStyleManager.getStyleLayerProperty(str, "type").getValue().getContents();
            if (!Intrinsics.areEqual(contents instanceof String ? (String) contents : null, SYMBOL)) {
                return;
            }
        }
        StylePropertyValue styleLayerProperty = mapboxStyleManager.getStyleLayerProperty(str, "text-field");
        if (styleLayerProperty.getKind() != StylePropertyValueKind.EXPRESSION) {
            return;
        }
        String json = styleLayerProperty.getValue().toJson();
        Intrinsics.checkNotNullExpressionValue(json, "textFieldProperty.value.toJson()");
        Object contents2 = mapboxStyleManager.getStyleLayerProperty(str, "source").getValue().getContents();
        String str3 = contents2 instanceof String ? (String) contents2 : null;
        if (str3 == null) {
            str3 = "";
        }
        String strAdaptLocaleToV8orV7IfNeeded = adaptLocaleToV8orV7IfNeeded(mapboxStyleManager, str3, locale);
        if (strAdaptLocaleToV8orV7IfNeeded != null) {
            str2 = strAdaptLocaleToV8orV7IfNeeded;
        }
        String json2 = ExpressionDslKt.get(str2).toJson();
        Intrinsics.checkNotNullExpressionValue(json2, "get(adaptedLocale).toJson()");
        String strReplace = EXPRESSION_ABBR_REGEX.replace(EXPRESSION_REGEX.replace(json, json2), json2);
        Expected<String, Value> expectedFromJson = Value.fromJson(strReplace);
        Intrinsics.checkNotNullExpressionValue(expectedFromJson, "fromJson(localizedTextFieldExpressionAsJson)");
        Value value = expectedFromJson.getValue();
        if (value == null || mapboxStyleManager.setStyleLayerProperty(str, "text-field", value) == null) {
            MapboxLogger.logE(TAG, "An error " + expectedFromJson.getError() + " occurred when converting " + strReplace + " to a Value!");
            Unit unit = Unit.INSTANCE;
        }
    }

    private static final String adaptLocaleToV8orV7IfNeeded(MapboxStyleManager mapboxStyleManager, String str, Locale locale) {
        Object contents = mapboxStyleManager.getStyleSourceProperty(str, "type").getValue().getContents();
        if (Intrinsics.areEqual(contents instanceof String ? (String) contents : null, VECTOR)) {
            Object contents2 = mapboxStyleManager.getStyleSourceProperty(str, "url").getValue().getContents();
            String str2 = contents2 instanceof String ? (String) contents2 : null;
            if (str2 != null) {
                String str3 = str2;
                if (StringsKt.contains$default((CharSequence) str3, (CharSequence) STREET_V8, false, 2, (Object) null)) {
                    return SupportedLanguagesKt.getLanguageNameV8(locale);
                }
                if (StringsKt.contains$default((CharSequence) str3, (CharSequence) STREET_V7, false, 2, (Object) null)) {
                    return SupportedLanguagesKt.getLanguageNameV7(locale);
                }
            }
        }
        return null;
    }
}
