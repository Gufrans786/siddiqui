package com.mapbox.maps.extension.style.layers;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.CustomLayerHost;
import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import io.reactivex.annotations.SchedulerSupport;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J.\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J&\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\r\u0010$\u001a\u00020\u0004H\u0010¢\u0006\u0002\b%J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0017H\u0016J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\tR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/CustomLayer;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "Lcom/mapbox/maps/extension/style/layers/CustomLayerDsl;", "layerId", "", "host", "Lcom/mapbox/maps/CustomLayerHost;", "(Ljava/lang/String;Lcom/mapbox/maps/CustomLayerHost;)V", "getLayerId", "()Ljava/lang/String;", "maxZoom", "", "getMaxZoom", "()Ljava/lang/Double;", "minZoom", "getMinZoom", "slot", "getSlot", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getVisibilityAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "addLayer", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/None;", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "propertiesValue", "Lcom/mapbox/bindgen/Value;", "position", "Lcom/mapbox/maps/LayerPosition;", "addPersistentLayer", "getType", "getType$extension_style_release", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CustomLayer extends Layer implements CustomLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final CustomLayerHost host;
    private final String layerId;

    @Override
    public String getLayerId() {
        return this.layerId;
    }

    public CustomLayer(String layerId, CustomLayerHost host) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(host, "host");
        this.layerId = layerId;
        this.host = host;
    }

    @Override
    public String getType$extension_style_release() {
        return SchedulerSupport.CUSTOM;
    }

    @Override
    public Visibility getVisibility() {
        String str = (String) getPropertyValueWithType("visibility", String.class);
        if (str == null) {
            return null;
        }
        Visibility.Companion companion = Visibility.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public Expression getVisibilityAsExpression() {
        return (Expression) getPropertyValueWithType("visibility", Expression.class);
    }

    @Override
    public CustomLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public CustomLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public CustomLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public CustomLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    @Override
    public CustomLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    protected Expected<String, None> addPersistentLayer(MapboxStyleManager delegate, LayerPosition position) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Expected<String, None> expectedAddPersistentStyleCustomLayer = delegate.addPersistentStyleCustomLayer(getLayerId(), this.host, position);
        delegate.setStyleLayerProperties(getLayerId(), getCachedLayerProperties());
        return expectedAddPersistentStyleCustomLayer;
    }

    @Override
    protected Expected<String, None> addLayer(MapboxStyleManager delegate, Value propertiesValue, LayerPosition position) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(propertiesValue, "propertiesValue");
        Expected<String, None> expectedAddStyleCustomLayer = delegate.addStyleCustomLayer(getLayerId(), this.host, position);
        delegate.setStyleLayerProperties(getLayerId(), propertiesValue);
        return expectedAddStyleCustomLayer;
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/CustomLayer$Companion;", "", "()V", "defaultMaxZoom", "", "getDefaultMaxZoom", "()Ljava/lang/Double;", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(SchedulerSupport.CUSTOM, "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"custom\", \"visibility\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            Visibility.Companion companion = Visibility.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Double getDefaultMinZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(SchedulerSupport.CUSTOM, "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"custom\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(SchedulerSupport.CUSTOM, "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"custom\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }
    }
}
