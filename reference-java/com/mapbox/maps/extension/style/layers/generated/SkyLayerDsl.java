package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.SkyType;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0004H&J\u0012\u0010\b\u001a\u00020\u00032\b\b\u0001\u0010\b\u001a\u00020\tH&J\u0012\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0004H'J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH'J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0004H&J\u0012\u0010\f\u001a\u00020\u00032\b\b\u0001\u0010\f\u001a\u00020\tH&J\u0012\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\nH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0004H'J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\nH'J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0004H&J\u0016\u0010\u000e\u001a\u00020\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0004H&J\u0012\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0006H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0004H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0018\u0010\u0012\u001a\u00020\u00032\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fH&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0004H&J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0006H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0004H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\nH'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H&J\u0012\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0006H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J!\u0010\u0016\u001a\u00020\u00032\u0017\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a¢\u0006\u0002\b\u001dH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0004H&J\u0012\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u001fH&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\nH&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0004H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"H&¨\u0006#"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/SkyLayerDsl;", "", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/layers/generated/SkyLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "maxZoom", "", "minZoom", "skyAtmosphereColor", "", "", "skyAtmosphereColorUseTheme", "skyAtmosphereHaloColor", "skyAtmosphereHaloColorUseTheme", "skyAtmosphereSun", "", "skyAtmosphereSunIntensity", "skyGradient", "skyGradientCenter", "skyGradientRadius", "skyGradientUseTheme", "skyOpacity", "skyOpacityTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "skyType", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SkyType;", "slot", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface SkyLayerDsl {
    SkyLayer filter(Expression filter);

    SkyLayer maxZoom(double maxZoom);

    SkyLayer minZoom(double minZoom);

    SkyLayer skyAtmosphereColor(int skyAtmosphereColor);

    SkyLayer skyAtmosphereColor(Expression skyAtmosphereColor);

    SkyLayer skyAtmosphereColor(String skyAtmosphereColor);

    SkyLayer skyAtmosphereColorUseTheme(Expression skyAtmosphereColorUseTheme);

    SkyLayer skyAtmosphereColorUseTheme(String skyAtmosphereColorUseTheme);

    SkyLayer skyAtmosphereHaloColor(int skyAtmosphereHaloColor);

    SkyLayer skyAtmosphereHaloColor(Expression skyAtmosphereHaloColor);

    SkyLayer skyAtmosphereHaloColor(String skyAtmosphereHaloColor);

    SkyLayer skyAtmosphereHaloColorUseTheme(Expression skyAtmosphereHaloColorUseTheme);

    SkyLayer skyAtmosphereHaloColorUseTheme(String skyAtmosphereHaloColorUseTheme);

    SkyLayer skyAtmosphereSun(Expression skyAtmosphereSun);

    SkyLayer skyAtmosphereSun(List<Double> skyAtmosphereSun);

    SkyLayer skyAtmosphereSunIntensity(double skyAtmosphereSunIntensity);

    SkyLayer skyAtmosphereSunIntensity(Expression skyAtmosphereSunIntensity);

    SkyLayer skyGradient(Expression skyGradient);

    SkyLayer skyGradientCenter(Expression skyGradientCenter);

    SkyLayer skyGradientCenter(List<Double> skyGradientCenter);

    SkyLayer skyGradientRadius(double skyGradientRadius);

    SkyLayer skyGradientRadius(Expression skyGradientRadius);

    SkyLayer skyGradientUseTheme(Expression skyGradientUseTheme);

    SkyLayer skyGradientUseTheme(String skyGradientUseTheme);

    SkyLayer skyOpacity(double skyOpacity);

    SkyLayer skyOpacity(Expression skyOpacity);

    SkyLayer skyOpacityTransition(StyleTransition options);

    SkyLayer skyOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SkyLayer skyType(Expression skyType);

    SkyLayer skyType(SkyType skyType);

    SkyLayer slot(String slot);

    SkyLayer visibility(Expression visibility);

    SkyLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static SkyLayer skyAtmosphereColor$default(SkyLayerDsl skyLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: skyAtmosphereColor");
            }
            if ((i & 1) != 0) {
                str = "white";
            }
            return skyLayerDsl.skyAtmosphereColor(str);
        }

        public static SkyLayer skyAtmosphereHaloColor$default(SkyLayerDsl skyLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: skyAtmosphereHaloColor");
            }
            if ((i & 1) != 0) {
                str = "white";
            }
            return skyLayerDsl.skyAtmosphereHaloColor(str);
        }

        public static SkyLayer skyAtmosphereSunIntensity$default(SkyLayerDsl skyLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: skyAtmosphereSunIntensity");
            }
            if ((i & 1) != 0) {
                d = 10.0d;
            }
            return skyLayerDsl.skyAtmosphereSunIntensity(d);
        }

        public static SkyLayer skyGradientCenter$default(SkyLayerDsl skyLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: skyGradientCenter");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return skyLayerDsl.skyGradientCenter((List<Double>) list);
        }

        public static SkyLayer skyGradientRadius$default(SkyLayerDsl skyLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: skyGradientRadius");
            }
            if ((i & 1) != 0) {
                d = 90.0d;
            }
            return skyLayerDsl.skyGradientRadius(d);
        }

        public static SkyLayer skyOpacity$default(SkyLayerDsl skyLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: skyOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return skyLayerDsl.skyOpacity(d);
        }

        public static SkyLayer skyType$default(SkyLayerDsl skyLayerDsl, SkyType skyType, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: skyType");
            }
            if ((i & 1) != 0) {
                skyType = SkyType.ATMOSPHERE;
            }
            return skyLayerDsl.skyType(skyType);
        }
    }
}
