package com.mapbox.maps.plugin.locationcomponent.model;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0017\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u001b\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0002\u0010\bJ\b\u0010!\u001a\u00020\"H\u0007J\u001c\u0010#\u001a\u00020\"2\b\b\u0001\u0010\n\u001a\u00020$2\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0007R,\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00038\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0004R,\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00108\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R,\u0010\u0017\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00108\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\f\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR,\u0010\u001d\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00108\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\f\u001a\u0004\b\u001f\u0010\u0014\"\u0004\b \u0010\u0016¨\u0006%"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/model/ModelMaterialPart;", "Lcom/mapbox/maps/plugin/locationcomponent/model/ModelPart;", "materialOverride", "", "(Ljava/lang/String;)V", "featureStateId", ModelSourceWrapper.MATERIAL_OVERRIDES, "", "(Ljava/lang/String;Ljava/util/List;)V", "value", "color", "getColor$annotations", "()V", "getColor", "()Ljava/lang/String;", "setColor", "", "colorMixIntensity", "getColorMixIntensity$annotations", "getColorMixIntensity", "()D", "setColorMixIntensity", "(D)V", "emissiveStrength", "getEmissiveStrength$annotations", "getEmissiveStrength", "setEmissiveStrength", "getMaterialOverrides", "()Ljava/util/List;", ViewProps.OPACITY, "getOpacity$annotations", "getOpacity", "setOpacity", "resetColor", "", "updateColor", "", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class ModelMaterialPart extends ModelPart {
    private String color;
    private double colorMixIntensity;
    private double emissiveStrength;
    private final List<String> materialOverrides;
    private double opacity;

    public static void getColor$annotations() {
    }

    public static void getColorMixIntensity$annotations() {
    }

    public static void getEmissiveStrength$annotations() {
    }

    public static void getOpacity$annotations() {
    }

    public final List<String> getMaterialOverrides() {
        return this.materialOverrides;
    }

    public ModelMaterialPart(String featureStateId, List<String> materialOverrides) {
        super(featureStateId);
        Intrinsics.checkNotNullParameter(featureStateId, "featureStateId");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
        this.materialOverrides = materialOverrides;
        this.color = AnimatableModel.DEFAULT_COLOR;
        this.opacity = 1.0d;
    }

    public ModelMaterialPart(String materialOverride) {
        this(materialOverride, CollectionsKt.listOf(materialOverride));
        Intrinsics.checkNotNullParameter(materialOverride, "materialOverride");
    }

    public final String getColor() {
        return this.color;
    }

    public final void setColor(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.color = value;
        getUpdateFeatureState().invoke(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(getFeatureStateId() + "-color", new Value(value)))));
    }

    public final double getColorMixIntensity() {
        return this.colorMixIntensity;
    }

    public final void setColorMixIntensity(double d) {
        this.colorMixIntensity = d;
        getUpdateFeatureState().invoke(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(getFeatureStateId() + "-color-mix-intensity", new Value(d)))));
    }

    public static void updateColor$default(ModelMaterialPart modelMaterialPart, int i, double d, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateColor");
        }
        if ((i2 & 2) != 0) {
            d = 1.0d;
        }
        modelMaterialPart.updateColor(i, d);
    }

    public final void updateColor(int color, double colorMixIntensity) {
        setColor(ColorUtils.INSTANCE.colorToRgbaString(color));
        setColorMixIntensity(colorMixIntensity);
    }

    public final void resetColor() {
        setColorMixIntensity(0.0d);
    }

    public final double getEmissiveStrength() {
        return this.emissiveStrength;
    }

    public final void setEmissiveStrength(double d) {
        this.emissiveStrength = d;
        getUpdateFeatureState().invoke(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(getFeatureStateId() + "-emission", new Value(d)))));
    }

    public final double getOpacity() {
        return this.opacity;
    }

    public final void setOpacity(double d) {
        this.opacity = d;
        getUpdateFeatureState().invoke(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(getFeatureStateId() + "-opacity", new Value(d)))));
    }
}
