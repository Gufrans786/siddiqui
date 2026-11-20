package com.mapbox.maps.extension.style.types;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationOptions;
import com.reactcommunity.rndatetimepicker.Common;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@LayersDsl
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003JB\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0019HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\r\u0010*\u001a\u00020+H\u0000¢\u0006\u0002\b,R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0014\"\u0004\b\u0016\u0010\u0017R&\u0010\u001a\u001a\u00020\u00192\b\b\u0001\u0010\u0018\u001a\u00020\u00198G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006-"}, d2 = {"Lcom/mapbox/maps/extension/style/types/FormattedSection;", "", "text", "", "fontScale", "", "fontStack", "", Common.TEXT_COLOR, "(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;Ljava/lang/String;)V", "getFontScale", "()Ljava/lang/Double;", "setFontScale", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getFontStack", "()Ljava/util/List;", "setFontStack", "(Ljava/util/List;)V", "getText", "()Ljava/lang/String;", "getTextColor", "setTextColor", "(Ljava/lang/String;)V", "value", "", "textColorAsInt", "getTextColorAsInt", "()I", "setTextColorAsInt", "(I)V", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;Ljava/lang/String;)Lcom/mapbox/maps/extension/style/types/FormattedSection;", "equals", "", "other", "hashCode", "toString", "toValue", "Lcom/mapbox/bindgen/Value;", "toValue$extension_style_release", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FormattedSection {
    private Double fontScale;
    private List<String> fontStack;
    private final String text;
    private String textColor;

    public FormattedSection(String text) {
        this(text, null, null, null, 14, null);
        Intrinsics.checkNotNullParameter(text, "text");
    }

    public FormattedSection(String text, Double d) {
        this(text, d, null, null, 12, null);
        Intrinsics.checkNotNullParameter(text, "text");
    }

    public FormattedSection(String text, Double d, List<String> list) {
        this(text, d, list, null, 8, null);
        Intrinsics.checkNotNullParameter(text, "text");
    }

    public static FormattedSection copy$default(FormattedSection formattedSection, String str, Double d, List list, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = formattedSection.text;
        }
        if ((i & 2) != 0) {
            d = formattedSection.fontScale;
        }
        if ((i & 4) != 0) {
            list = formattedSection.fontStack;
        }
        if ((i & 8) != 0) {
            str2 = formattedSection.textColor;
        }
        return formattedSection.copy(str, d, list, str2);
    }

    public final String getText() {
        return this.text;
    }

    public final Double getFontScale() {
        return this.fontScale;
    }

    public final List<String> component3() {
        return this.fontStack;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public final FormattedSection copy(String text, Double fontScale, List<String> fontStack, String textColor) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new FormattedSection(text, fontScale, fontStack, textColor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FormattedSection)) {
            return false;
        }
        FormattedSection formattedSection = (FormattedSection) other;
        return Intrinsics.areEqual(this.text, formattedSection.text) && Intrinsics.areEqual((Object) this.fontScale, (Object) formattedSection.fontScale) && Intrinsics.areEqual(this.fontStack, formattedSection.fontStack) && Intrinsics.areEqual(this.textColor, formattedSection.textColor);
    }

    public int hashCode() {
        int iHashCode = this.text.hashCode() * 31;
        Double d = this.fontScale;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        List<String> list = this.fontStack;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.textColor;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "FormattedSection(text=" + this.text + ", fontScale=" + this.fontScale + ", fontStack=" + this.fontStack + ", textColor=" + this.textColor + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public FormattedSection(String text, Double d, List<String> list, String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
        this.fontScale = d;
        this.fontStack = list;
        this.textColor = str;
    }

    public FormattedSection(String str, Double d, List list, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : d, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : str2);
    }

    public final String getText() {
        return this.text;
    }

    public final Double getFontScale() {
        return this.fontScale;
    }

    public final void setFontScale(Double d) {
        this.fontScale = d;
    }

    public final List<String> getFontStack() {
        return this.fontStack;
    }

    public final void setFontStack(List<String> list) {
        this.fontStack = list;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(String str) {
        this.textColor = str;
    }

    public final int getTextColorAsInt() {
        String str = this.textColor;
        if (str != null) {
            Integer numRgbaToColor = ColorUtils.INSTANCE.rgbaToColor(str);
            if (numRgbaToColor != null) {
                return numRgbaToColor.intValue();
            }
        }
        throw new IllegalStateException("Property textColor is not set.");
    }

    public final void setTextColorAsInt(int i) {
        this.textColor = ColorUtils.INSTANCE.colorToRgbaString(i);
    }

    public final Value toValue$extension_style_release() {
        HashMap map = new HashMap();
        Double d = this.fontScale;
        if (d != null) {
            map.put("font-scale", new Value(d.doubleValue()));
        }
        List<String> list = this.fontStack;
        if (list != null) {
            HashMap map2 = map;
            List<String> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new Value((String) it.next()));
            }
            map2.put("text-font", new Value((List<Value>) arrayList));
        }
        String str = this.textColor;
        if (str != null) {
            map.put(PointAnnotationOptions.PROPERTY_TEXT_COLOR, new Value(str));
        }
        return new Value((List<Value>) CollectionsKt.listOf((Object[]) new Value[]{new Value(this.text), new Value((HashMap<String, Value>) map)}));
    }
}
