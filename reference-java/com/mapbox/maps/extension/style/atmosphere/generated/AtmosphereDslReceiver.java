package com.mapbox.maps.extension.style.atmosphere.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.AtmosphereDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0002\u001a\u00020\u0005H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0007\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0004H'J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0006H'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0004H&J\u0012\u0010\u0010\u001a\u00020\u00032\b\b\u0001\u0010\u0010\u001a\u00020\u0005H&J\u0012\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0006H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0011\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0006H'J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0004H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0015\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H&J\u0018\u0010\u0016\u001a\u00020\u00032\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00140\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0018\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0012\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0004H&J\u0012\u0010\u0019\u001a\u00020\u00032\b\b\u0001\u0010\u0019\u001a\u00020\u0005H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0006H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u001a\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0006H'J\u0012\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u0004H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0014H&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u001d\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0004H&J\u0018\u0010\u001e\u001a\u00020\u00032\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00140\u0017H&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u001f\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&¨\u0006 "}, d2 = {"Lcom/mapbox/maps/extension/style/atmosphere/generated/AtmosphereDslReceiver;", "", "color", "Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "", "colorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "colorUseTheme", "highColor", "highColorTransition", "highColorUseTheme", "horizonBlend", "", "horizonBlendTransition", "range", "", "rangeTransition", "spaceColor", "spaceColorTransition", "spaceColorUseTheme", "starIntensity", "starIntensityTransition", "verticalRange", "verticalRangeTransition", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@AtmosphereDsl
public interface AtmosphereDslReceiver {
    Atmosphere color(int color);

    Atmosphere color(Expression color);

    Atmosphere color(String color);

    Atmosphere colorTransition(StyleTransition options);

    Atmosphere colorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Atmosphere colorUseTheme(Expression colorUseTheme);

    Atmosphere colorUseTheme(String colorUseTheme);

    Atmosphere highColor(int highColor);

    Atmosphere highColor(Expression highColor);

    Atmosphere highColor(String highColor);

    Atmosphere highColorTransition(StyleTransition options);

    Atmosphere highColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Atmosphere highColorUseTheme(Expression highColorUseTheme);

    Atmosphere highColorUseTheme(String highColorUseTheme);

    Atmosphere horizonBlend(double horizonBlend);

    Atmosphere horizonBlend(Expression horizonBlend);

    Atmosphere horizonBlendTransition(StyleTransition options);

    Atmosphere horizonBlendTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Atmosphere range(Expression range);

    Atmosphere range(List<Double> range);

    Atmosphere rangeTransition(StyleTransition options);

    Atmosphere rangeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Atmosphere spaceColor(int spaceColor);

    Atmosphere spaceColor(Expression spaceColor);

    Atmosphere spaceColor(String spaceColor);

    Atmosphere spaceColorTransition(StyleTransition options);

    Atmosphere spaceColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Atmosphere spaceColorUseTheme(Expression spaceColorUseTheme);

    Atmosphere spaceColorUseTheme(String spaceColorUseTheme);

    Atmosphere starIntensity(double starIntensity);

    Atmosphere starIntensity(Expression starIntensity);

    Atmosphere starIntensityTransition(StyleTransition options);

    Atmosphere starIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Atmosphere verticalRange(Expression verticalRange);

    Atmosphere verticalRange(List<Double> verticalRange);

    Atmosphere verticalRangeTransition(StyleTransition options);

    Atmosphere verticalRangeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static Atmosphere color$default(AtmosphereDslReceiver atmosphereDslReceiver, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: color");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return atmosphereDslReceiver.color(str);
        }

        public static Atmosphere highColor$default(AtmosphereDslReceiver atmosphereDslReceiver, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: highColor");
            }
            if ((i & 1) != 0) {
                str = "#245cdf";
            }
            return atmosphereDslReceiver.highColor(str);
        }

        public static Atmosphere horizonBlend$default(AtmosphereDslReceiver atmosphereDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: horizonBlend");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"zoom\"],4,0.2,7,0.1]");
            }
            return atmosphereDslReceiver.horizonBlend(expression);
        }

        public static Atmosphere range$default(AtmosphereDslReceiver atmosphereDslReceiver, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: range");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.5d), Double.valueOf(10.0d)});
            }
            return atmosphereDslReceiver.range((List<Double>) list);
        }

        public static Atmosphere spaceColor$default(AtmosphereDslReceiver atmosphereDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: spaceColor");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"zoom\"],4,\"#010b19\",7,\"#367ab9\"]");
            }
            return atmosphereDslReceiver.spaceColor(expression);
        }

        public static Atmosphere starIntensity$default(AtmosphereDslReceiver atmosphereDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: starIntensity");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"zoom\"],5,0.35,6,0]");
            }
            return atmosphereDslReceiver.starIntensity(expression);
        }

        public static Atmosphere verticalRange$default(AtmosphereDslReceiver atmosphereDslReceiver, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: verticalRange");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return atmosphereDslReceiver.verticalRange((List<Double>) list);
        }
    }
}
