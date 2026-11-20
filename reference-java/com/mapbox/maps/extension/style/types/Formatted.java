package com.mapbox.maps.extension.style.types;

import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.expressions.dsl.generated.ExpressionDslKt;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationOptions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002J'\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\n¢\u0006\u0002\b\u000bJ\u0006\u0010\f\u001a\u00020\bJ\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u0010"}, d2 = {"Lcom/mapbox/maps/extension/style/types/Formatted;", "Ljava/util/ArrayList;", "Lcom/mapbox/maps/extension/style/types/FormattedSection;", "()V", "formattedSection", "", "section", "text", "", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "getTextAsString", "toValue", "Lcom/mapbox/bindgen/Value;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@LayersDsl
public final class Formatted extends ArrayList<FormattedSection> {

    public static final Companion INSTANCE = new Companion(null);

    public boolean contains(FormattedSection formattedSection) {
        return super.contains((Object) formattedSection);
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof FormattedSection) {
            return contains((FormattedSection) obj);
        }
        return false;
    }

    public int getSize() {
        return super.size();
    }

    public int indexOf(FormattedSection formattedSection) {
        return super.indexOf((Object) formattedSection);
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof FormattedSection) {
            return indexOf((FormattedSection) obj);
        }
        return -1;
    }

    public int lastIndexOf(FormattedSection formattedSection) {
        return super.lastIndexOf((Object) formattedSection);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof FormattedSection) {
            return lastIndexOf((FormattedSection) obj);
        }
        return -1;
    }

    @Override
    public final FormattedSection remove(int i) {
        return removeAt(i);
    }

    public boolean remove(FormattedSection formattedSection) {
        return super.remove((Object) formattedSection);
    }

    @Override
    public final boolean remove(Object obj) {
        if (obj instanceof FormattedSection) {
            return remove((FormattedSection) obj);
        }
        return false;
    }

    public FormattedSection removeAt(int i) {
        return (FormattedSection) super.remove(i);
    }

    @Override
    public final int size() {
        return getSize();
    }

    public final Value toValue() {
        Formatted formatted = this;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(formatted, 10));
        Iterator<FormattedSection> it = formatted.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toValue$extension_style_release());
        }
        return new Value((List<Value>) arrayList);
    }

    public final String getTextAsString() {
        StringBuilder sb = new StringBuilder();
        Iterator<FormattedSection> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().getText());
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "stringBuilder.toString()");
        return string;
    }

    public final void formattedSection(String text, Function1<? super FormattedSection, Unit> block) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(block, "block");
        FormattedSection formattedSection = new FormattedSection(text, null, null, null, 14, null);
        block.invoke(formattedSection);
        add(formattedSection);
    }

    public final void formattedSection(FormattedSection section) {
        Intrinsics.checkNotNullParameter(section, "section");
        add(section);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u00042\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/extension/style/types/Formatted$Companion;", "", "()V", "fromExpression", "Lcom/mapbox/maps/extension/style/types/Formatted;", "expression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "fromProperty", "list", "Ljava/util/ArrayList;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Formatted fromExpression(Expression expression) {
            Intrinsics.checkNotNullParameter(expression, "expression");
            return fromProperty((ArrayList) TypeUtilsKt.unwrapToTyped(expression, ArrayList.class));
        }

        public final Formatted fromProperty(ArrayList<?> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            Formatted formatted = new Formatted();
            if (Intrinsics.areEqual(list.remove(0), "format")) {
                int i = 0;
                for (Object element : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    if (element instanceof String) {
                        Intrinsics.checkNotNullExpressionValue(element, "element");
                        FormattedSection formattedSection = new FormattedSection((String) element, null, null, null, 14, null);
                        Object obj = list.get(i2);
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.HashMap<*, *>{ kotlin.collections.TypeAliasesKt.HashMap<*, *> }");
                        HashMap map = (HashMap) obj;
                        Set setKeySet = map.keySet();
                        Intrinsics.checkNotNullExpressionValue(setKeySet, "optionsMap.keys");
                        for (Object key : setKeySet) {
                            if (Intrinsics.areEqual(key, PointAnnotationOptions.PROPERTY_TEXT_COLOR)) {
                                Intrinsics.checkNotNullExpressionValue(key, "key");
                                Object obj2 = map.get(key);
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type java.util.ArrayList<*>");
                                final ArrayList arrayList = (ArrayList) obj2;
                                if (Intrinsics.areEqual(arrayList.remove(0), "rgba")) {
                                    formattedSection.setTextColor(ColorUtils.INSTANCE.rgbaExpressionToColorString(ExpressionDslKt.rgba(new Function1<Expression.ExpressionBuilder, Unit>() {
                                        {
                                            super(1);
                                        }

                                        @Override
                                        public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                            invoke2(expressionBuilder);
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke2(Expression.ExpressionBuilder rgba) {
                                            Intrinsics.checkNotNullParameter(rgba, "$this$rgba");
                                            Object obj3 = arrayList.get(0);
                                            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Double");
                                            rgba.literal(((Double) obj3).doubleValue());
                                            Object obj4 = arrayList.get(1);
                                            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Double");
                                            rgba.literal(((Double) obj4).doubleValue());
                                            Object obj5 = arrayList.get(2);
                                            Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.Double");
                                            rgba.literal(((Double) obj5).doubleValue());
                                            Object obj6 = arrayList.get(3);
                                            Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Double");
                                            rgba.literal(((Double) obj6).doubleValue());
                                        }
                                    })));
                                }
                            } else if (Intrinsics.areEqual(key, "font-scale")) {
                                Intrinsics.checkNotNullExpressionValue(key, "key");
                                Object obj3 = map.get(key);
                                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Double");
                                formattedSection.setFontScale((Double) obj3);
                            } else if (Intrinsics.areEqual(key, "text-font")) {
                                Intrinsics.checkNotNullExpressionValue(key, "key");
                                Object obj4 = map.get(key);
                                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type java.util.ArrayList<*>");
                                ArrayList arrayList2 = (ArrayList) obj4;
                                if (Intrinsics.areEqual(arrayList2.remove(0), "literal")) {
                                    Object objLast = CollectionsKt.last((List<? extends Object>) arrayList2);
                                    Intrinsics.checkNotNull(objLast, "null cannot be cast to non-null type java.util.ArrayList<kotlin.String>");
                                    formattedSection.setFontStack((ArrayList) objLast);
                                }
                            }
                        }
                        formatted.add(formattedSection);
                    }
                    i = i2;
                }
            }
            return formatted;
        }
    }
}
