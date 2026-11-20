package com.mapbox.maps.plugin.scalebar.generated;

import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.Common;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010N\u001a\u00020OH$J\b\u0010P\u001a\u00020\u0014H\u0016J!\u0010Q\u001a\u00020O2\u0017\u0010R\u001a\u0013\u0012\u0004\u0012\u00020T\u0012\u0004\u0012\u00020O0S¢\u0006\u0002\bUH\u0016R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u0018\u0010\u0013\u001a\u00020\u0014X¤\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u000fR$\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0007\"\u0004\b\u001d\u0010\tR$\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\u0007\"\u0004\b \u0010\tR$\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u0007\"\u0004\b#\u0010\tR$\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b%\u0010\u0007\"\u0004\b&\u0010\tR$\u0010(\u001a\u00020'2\u0006\u0010\u0003\u001a\u00020'8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R$\u0010-\u001a\u00020'2\u0006\u0010\u0003\u001a\u00020'8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b.\u0010*\"\u0004\b/\u0010,R$\u00100\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b1\u0010\u0007\"\u0004\b2\u0010\tR$\u00104\u001a\u0002032\u0006\u0010\u0003\u001a\u0002038V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u00109\u001a\u00020'2\u0006\u0010\u0003\u001a\u00020'8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b:\u0010*\"\u0004\b;\u0010,R$\u0010<\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b=\u0010\r\"\u0004\b>\u0010\u000fR$\u0010?\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b@\u0010\u0007\"\u0004\bA\u0010\tR$\u0010B\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bC\u0010\u0007\"\u0004\bD\u0010\tR$\u0010E\u001a\u00020'2\u0006\u0010\u0003\u001a\u00020'8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bF\u0010*\"\u0004\bG\u0010,R$\u0010H\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bI\u0010\u0007\"\u0004\bJ\u0010\tR$\u0010K\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bL\u0010\r\"\u0004\bM\u0010\u000f¨\u0006V"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettingsBase;", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettingsInterface;", "()V", "value", "", ViewProps.BORDER_WIDTH, "getBorderWidth", "()F", "setBorderWidth", "(F)V", "", ViewProps.ENABLED, "getEnabled", "()Z", "setEnabled", "(Z)V", "height", "getHeight", "setHeight", "internalSettings", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "getInternalSettings", "()Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "setInternalSettings", "(Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;)V", "isMetricUnits", "setMetricUnits", ViewProps.MARGIN_BOTTOM, "getMarginBottom", "setMarginBottom", ViewProps.MARGIN_LEFT, "getMarginLeft", "setMarginLeft", ViewProps.MARGIN_RIGHT, "getMarginRight", "setMarginRight", ViewProps.MARGIN_TOP, "getMarginTop", "setMarginTop", "", "position", "getPosition", "()I", "setPosition", "(I)V", "primaryColor", "getPrimaryColor", "setPrimaryColor", "ratio", "getRatio", "setRatio", "", "refreshInterval", "getRefreshInterval", "()J", "setRefreshInterval", "(J)V", "secondaryColor", "getSecondaryColor", "setSecondaryColor", "showTextBorder", "getShowTextBorder", "setShowTextBorder", "textBarMargin", "getTextBarMargin", "setTextBarMargin", "textBorderWidth", "getTextBorderWidth", "setTextBorderWidth", Common.TEXT_COLOR, "getTextColor", "setTextColor", "textSize", "getTextSize", "setTextSize", "useContinuousRendering", "getUseContinuousRendering", "setUseContinuousRendering", "applySettings", "", "getSettings", "updateSettings", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;", "Lkotlin/ExtensionFunctionType;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class ScaleBarSettingsBase implements ScaleBarSettingsInterface {
    protected abstract void applySettings();

    protected abstract ScaleBarSettings getInternalSettings();

    protected abstract void setInternalSettings(ScaleBarSettings scaleBarSettings);

    @Override
    public ScaleBarSettings getSettings() {
        return getInternalSettings().toBuilder().build();
    }

    @Override
    public void updateSettings(Function1<? super ScaleBarSettings.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ScaleBarSettings.Builder builder = getInternalSettings().toBuilder();
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
    public int getPosition() {
        return getInternalSettings().getPosition();
    }

    @Override
    public void setPosition(int i) {
        if (getInternalSettings().getPosition() != i) {
            setInternalSettings(getInternalSettings().toBuilder().setPosition(i).build());
            applySettings();
        }
    }

    @Override
    public float getMarginLeft() {
        return getInternalSettings().getMarginLeft();
    }

    @Override
    public void setMarginLeft(float f) {
        if (getInternalSettings().getMarginLeft() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setMarginLeft(f).build());
        applySettings();
    }

    @Override
    public float getMarginTop() {
        return getInternalSettings().getMarginTop();
    }

    @Override
    public void setMarginTop(float f) {
        if (getInternalSettings().getMarginTop() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setMarginTop(f).build());
        applySettings();
    }

    @Override
    public float getMarginRight() {
        return getInternalSettings().getMarginRight();
    }

    @Override
    public void setMarginRight(float f) {
        if (getInternalSettings().getMarginRight() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setMarginRight(f).build());
        applySettings();
    }

    @Override
    public float getMarginBottom() {
        return getInternalSettings().getMarginBottom();
    }

    @Override
    public void setMarginBottom(float f) {
        if (getInternalSettings().getMarginBottom() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setMarginBottom(f).build());
        applySettings();
    }

    @Override
    public int getTextColor() {
        return getInternalSettings().getTextColor();
    }

    @Override
    public void setTextColor(int i) {
        if (getInternalSettings().getTextColor() != i) {
            setInternalSettings(getInternalSettings().toBuilder().setTextColor(i).build());
            applySettings();
        }
    }

    @Override
    public int getPrimaryColor() {
        return getInternalSettings().getPrimaryColor();
    }

    @Override
    public void setPrimaryColor(int i) {
        if (getInternalSettings().getPrimaryColor() != i) {
            setInternalSettings(getInternalSettings().toBuilder().setPrimaryColor(i).build());
            applySettings();
        }
    }

    @Override
    public int getSecondaryColor() {
        return getInternalSettings().getSecondaryColor();
    }

    @Override
    public void setSecondaryColor(int i) {
        if (getInternalSettings().getSecondaryColor() != i) {
            setInternalSettings(getInternalSettings().toBuilder().setSecondaryColor(i).build());
            applySettings();
        }
    }

    @Override
    public float getBorderWidth() {
        return getInternalSettings().getBorderWidth();
    }

    @Override
    public void setBorderWidth(float f) {
        if (getInternalSettings().getBorderWidth() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setBorderWidth(f).build());
        applySettings();
    }

    @Override
    public float getHeight() {
        return getInternalSettings().getHeight();
    }

    @Override
    public void setHeight(float f) {
        if (getInternalSettings().getHeight() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setHeight(f).build());
        applySettings();
    }

    @Override
    public float getTextBarMargin() {
        return getInternalSettings().getTextBarMargin();
    }

    @Override
    public void setTextBarMargin(float f) {
        if (getInternalSettings().getTextBarMargin() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setTextBarMargin(f).build());
        applySettings();
    }

    @Override
    public float getTextBorderWidth() {
        return getInternalSettings().getTextBorderWidth();
    }

    @Override
    public void setTextBorderWidth(float f) {
        if (getInternalSettings().getTextBorderWidth() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setTextBorderWidth(f).build());
        applySettings();
    }

    @Override
    public float getTextSize() {
        return getInternalSettings().getTextSize();
    }

    @Override
    public void setTextSize(float f) {
        if (getInternalSettings().getTextSize() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setTextSize(f).build());
        applySettings();
    }

    @Override
    public boolean isMetricUnits() {
        return getInternalSettings().getIsMetricUnits();
    }

    @Override
    public void setMetricUnits(boolean z) {
        if (getInternalSettings().getIsMetricUnits() != z) {
            setInternalSettings(getInternalSettings().toBuilder().setIsMetricUnits(z).build());
            applySettings();
        }
    }

    @Override
    public long getRefreshInterval() {
        return getInternalSettings().getRefreshInterval();
    }

    @Override
    public void setRefreshInterval(long j) {
        if (getInternalSettings().getRefreshInterval() != j) {
            setInternalSettings(getInternalSettings().toBuilder().setRefreshInterval(j).build());
            applySettings();
        }
    }

    @Override
    public boolean getShowTextBorder() {
        return getInternalSettings().getShowTextBorder();
    }

    @Override
    public void setShowTextBorder(boolean z) {
        if (getInternalSettings().getShowTextBorder() != z) {
            setInternalSettings(getInternalSettings().toBuilder().setShowTextBorder(z).build());
            applySettings();
        }
    }

    @Override
    public float getRatio() {
        return getInternalSettings().getRatio();
    }

    @Override
    public void setRatio(float f) {
        if (getInternalSettings().getRatio() == f) {
            return;
        }
        setInternalSettings(getInternalSettings().toBuilder().setRatio(f).build());
        applySettings();
    }

    @Override
    public boolean getUseContinuousRendering() {
        return getInternalSettings().getUseContinuousRendering();
    }

    @Override
    public void setUseContinuousRendering(boolean z) {
        if (getInternalSettings().getUseContinuousRendering() != z) {
            setInternalSettings(getInternalSettings().toBuilder().setUseContinuousRendering(z).build());
            applySettings();
        }
    }
}
