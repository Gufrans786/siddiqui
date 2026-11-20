package com.mapbox.maps.plugin.locationcomponent.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.plugin.LocationPuck;
import com.mapbox.maps.plugin.PuckBearing;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010C\u001a\u00020DH$J\b\u0010E\u001a\u00020\u0014H\u0016J!\u0010F\u001a\u00020D2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020D0H¢\u0006\u0002\bJH\u0016R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u00020\u0014X¤\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0003\u001a\u0004\u0018\u00010\u00198V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010\u001f\u001a\u0004\u0018\u00010\u00192\b\u0010\u0003\u001a\u0004\u0018\u00010\u00198V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR$\u0010#\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\"8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010)\u001a\u00020(2\u0006\u0010\u0003\u001a\u00020(8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R$\u0010.\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b/\u0010\u0010\"\u0004\b0\u0010\u0012R$\u00101\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b2\u0010\u0007\"\u0004\b3\u0010\tR$\u00104\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b5\u0010\u0010\"\u0004\b6\u0010\u0012R$\u00108\u001a\u0002072\u0006\u0010\u0003\u001a\u0002078V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R$\u0010=\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b>\u0010\u0010\"\u0004\b?\u0010\u0012R(\u0010@\u001a\u0004\u0018\u00010\u00192\b\u0010\u0003\u001a\u0004\u0018\u00010\u00198V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bA\u0010\u001c\"\u0004\bB\u0010\u001e¨\u0006K"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettingsBase;", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettingsInterface;", "()V", "value", "", "accuracyRingBorderColor", "getAccuracyRingBorderColor", "()I", "setAccuracyRingBorderColor", "(I)V", "accuracyRingColor", "getAccuracyRingColor", "setAccuracyRingColor", "", ViewProps.ENABLED, "getEnabled", "()Z", "setEnabled", "(Z)V", "internalSettings", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "getInternalSettings", "()Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "setInternalSettings", "(Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;)V", "", "layerAbove", "getLayerAbove", "()Ljava/lang/String;", "setLayerAbove", "(Ljava/lang/String;)V", "layerBelow", "getLayerBelow", "setLayerBelow", "Lcom/mapbox/maps/plugin/LocationPuck;", "locationPuck", "getLocationPuck", "()Lcom/mapbox/maps/plugin/LocationPuck;", "setLocationPuck", "(Lcom/mapbox/maps/plugin/LocationPuck;)V", "Lcom/mapbox/maps/plugin/PuckBearing;", "puckBearing", "getPuckBearing", "()Lcom/mapbox/maps/plugin/PuckBearing;", "setPuckBearing", "(Lcom/mapbox/maps/plugin/PuckBearing;)V", "puckBearingEnabled", "getPuckBearingEnabled", "setPuckBearingEnabled", "pulsingColor", "getPulsingColor", "setPulsingColor", "pulsingEnabled", "getPulsingEnabled", "setPulsingEnabled", "", "pulsingMaxRadius", "getPulsingMaxRadius", "()F", "setPulsingMaxRadius", "(F)V", "showAccuracyRing", "getShowAccuracyRing", "setShowAccuracyRing", "slot", "getSlot", "setSlot", "applySettings", "", "getSettings", "updateSettings", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings$Builder;", "Lkotlin/ExtensionFunctionType;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class LocationComponentSettingsBase implements LocationComponentSettingsInterface {
    protected abstract void applySettings();

    protected abstract LocationComponentSettings getInternalSettings();

    protected abstract void setInternalSettings(LocationComponentSettings locationComponentSettings);

    @Override
    public LocationComponentSettings getSettings() {
        return getInternalSettings().toBuilder().build();
    }

    @Override
    public void updateSettings(Function1<? super LocationComponentSettings.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        LocationComponentSettings.Builder builder = getInternalSettings().toBuilder();
        block.invoke(builder);
        setInternalSettings(builder.build());
        applySettings();
    }

    @Override
    public boolean getEnabled() {
        return getInternalSettings().getEnabled();
    }

    @Override
    public void setEnabled(boolean z) {
        if (getInternalSettings().getEnabled() != z) {
            setInternalSettings(getInternalSettings().toBuilder().setEnabled(z).build());
            applySettings();
        }
    }

    @Override
    public boolean getPulsingEnabled() {
        return getInternalSettings().getPulsingEnabled();
    }

    @Override
    public void setPulsingEnabled(boolean z) {
        if (getInternalSettings().getPulsingEnabled() != z) {
            setInternalSettings(getInternalSettings().toBuilder().setPulsingEnabled(z).build());
            applySettings();
        }
    }

    @Override
    public int getPulsingColor() {
        return getInternalSettings().getPulsingColor();
    }

    @Override
    public void setPulsingColor(int i) {
        if (getInternalSettings().getPulsingColor() != i) {
            setInternalSettings(getInternalSettings().toBuilder().setPulsingColor(i).build());
            applySettings();
        }
    }

    @Override
    public float getPulsingMaxRadius() {
        return getInternalSettings().getPulsingMaxRadius();
    }

    @Override
    public void setPulsingMaxRadius(float f) {
        if (getInternalSettings().getPulsingMaxRadius() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setPulsingMaxRadius(f).build());
        applySettings();
    }

    @Override
    public boolean getShowAccuracyRing() {
        return getInternalSettings().getShowAccuracyRing();
    }

    @Override
    public void setShowAccuracyRing(boolean z) {
        if (getInternalSettings().getShowAccuracyRing() != z) {
            setInternalSettings(getInternalSettings().toBuilder().setShowAccuracyRing(z).build());
            applySettings();
        }
    }

    @Override
    public int getAccuracyRingColor() {
        return getInternalSettings().getAccuracyRingColor();
    }

    @Override
    public void setAccuracyRingColor(int i) {
        if (getInternalSettings().getAccuracyRingColor() != i) {
            setInternalSettings(getInternalSettings().toBuilder().setAccuracyRingColor(i).build());
            applySettings();
        }
    }

    @Override
    public int getAccuracyRingBorderColor() {
        return getInternalSettings().getAccuracyRingBorderColor();
    }

    @Override
    public void setAccuracyRingBorderColor(int i) {
        if (getInternalSettings().getAccuracyRingBorderColor() != i) {
            setInternalSettings(getInternalSettings().toBuilder().setAccuracyRingBorderColor(i).build());
            applySettings();
        }
    }

    @Override
    public String getLayerAbove() {
        return getInternalSettings().getLayerAbove();
    }

    @Override
    public void setLayerAbove(String str) {
        if (Intrinsics.areEqual(getInternalSettings().getLayerAbove(), str)) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setLayerAbove(str).build());
        applySettings();
    }

    @Override
    public String getLayerBelow() {
        return getInternalSettings().getLayerBelow();
    }

    @Override
    public void setLayerBelow(String str) {
        if (Intrinsics.areEqual(getInternalSettings().getLayerBelow(), str)) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setLayerBelow(str).build());
        applySettings();
    }

    @Override
    public boolean getPuckBearingEnabled() {
        return getInternalSettings().getPuckBearingEnabled();
    }

    @Override
    public void setPuckBearingEnabled(boolean z) {
        if (getInternalSettings().getPuckBearingEnabled() != z) {
            setInternalSettings(getInternalSettings().toBuilder().setPuckBearingEnabled(z).build());
            applySettings();
        }
    }

    @Override
    public PuckBearing getPuckBearing() {
        return getInternalSettings().getPuckBearing();
    }

    @Override
    public void setPuckBearing(PuckBearing value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (getInternalSettings().getPuckBearing() != value) {
            setInternalSettings(getInternalSettings().toBuilder().setPuckBearing(value).build());
            applySettings();
        }
    }

    @Override
    public String getSlot() {
        return getInternalSettings().getSlot();
    }

    @Override
    public void setSlot(String str) {
        if (Intrinsics.areEqual(getInternalSettings().getSlot(), str)) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setSlot(str).build());
        applySettings();
    }

    @Override
    public LocationPuck getLocationPuck() {
        return getInternalSettings().getLocationPuck();
    }

    @Override
    public void setLocationPuck(LocationPuck value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (Intrinsics.areEqual(getInternalSettings().getLocationPuck(), value)) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setLocationPuck(value).build());
        applySettings();
    }
}
