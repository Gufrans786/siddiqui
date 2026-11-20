package com.rnmapbox.rnmbx.v11compat.ornamentsettings;

import com.mapbox.maps.plugin.attribution.generated.AttributionSettings;
import com.mapbox.maps.plugin.compass.generated.CompassSettings;
import com.mapbox.maps.plugin.logo.generated.LogoSettings;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettings;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0005\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0006\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0007¨\u0006\b"}, d2 = {"getAttributionSettings", "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;", "toGenericOrnamentSettings", "Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;", "Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;", "Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;", "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class OrnamentSettingsKt {
    public static final AttributionSettings getAttributionSettings() {
        return new AttributionSettings.Builder().build();
    }

    public static final GenericOrnamentSettings toGenericOrnamentSettings(ScaleBarSettings.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return new GenericOrnamentSettings(builder) {
            private final ScaleBarSettings.Builder settings;

            {
                this.settings = builder;
            }

            @Override
            public void setHMargins(Float left, Float right) {
                if (left != null) {
                    this.settings.m1123setMarginLeft(left.floatValue());
                }
                if (right != null) {
                    this.settings.m1124setMarginRight(right.floatValue());
                }
            }

            @Override
            public void setVMargins(Float top, Float bottom) {
                if (top != null) {
                    this.settings.m1125setMarginTop(top.floatValue());
                }
                if (bottom != null) {
                    this.settings.m1122setMarginBottom(bottom.floatValue());
                }
            }

            @Override
            public boolean getEnabled() {
                return this.settings.getEnabled();
            }

            @Override
            public void setEnabled(boolean z) {
                this.settings.m1120setEnabled(z);
            }

            @Override
            public int getPosition() {
                return this.settings.getPosition();
            }

            @Override
            public void setPosition(int i) {
                this.settings.m1126setPosition(i);
            }
        };
    }

    public static final GenericOrnamentSettings toGenericOrnamentSettings(CompassSettings.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return new GenericOrnamentSettings(builder) {
            private CompassSettings.Builder settings;

            {
                this.settings = builder;
            }

            @Override
            public void setHMargins(Float left, Float right) {
                if (left != null) {
                    this.settings.m1072setMarginLeft(left.floatValue());
                }
                if (right != null) {
                    this.settings.m1073setMarginRight(right.floatValue());
                }
            }

            @Override
            public void setVMargins(Float top, Float bottom) {
                if (top != null) {
                    this.settings.m1074setMarginTop(top.floatValue());
                }
                if (bottom != null) {
                    this.settings.m1071setMarginBottom(bottom.floatValue());
                }
            }

            @Override
            public boolean getEnabled() {
                return this.settings.getEnabled();
            }

            @Override
            public void setEnabled(boolean z) {
                this.settings.m1068setEnabled(z);
            }

            @Override
            public int getPosition() {
                return this.settings.getPosition();
            }

            @Override
            public void setPosition(int i) {
                this.settings.m1076setPosition(i);
            }
        };
    }

    public static final GenericOrnamentSettings toGenericOrnamentSettings(LogoSettings.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return new GenericOrnamentSettings(builder) {
            private LogoSettings.Builder settings;

            {
                this.settings = builder;
            }

            @Override
            public void setHMargins(Float left, Float right) {
                if (left != null) {
                    this.settings.m1114setMarginLeft(left.floatValue());
                }
                if (right != null) {
                    this.settings.m1115setMarginRight(right.floatValue());
                }
            }

            @Override
            public void setVMargins(Float top, Float bottom) {
                if (top != null) {
                    this.settings.m1116setMarginTop(top.floatValue());
                }
                if (bottom != null) {
                    this.settings.m1113setMarginBottom(bottom.floatValue());
                }
            }

            @Override
            public boolean getEnabled() {
                return this.settings.getEnabled();
            }

            @Override
            public void setEnabled(boolean z) {
                this.settings.m1112setEnabled(z);
            }

            @Override
            public int getPosition() {
                return this.settings.getPosition();
            }

            @Override
            public void setPosition(int i) {
                this.settings.m1117setPosition(i);
            }
        };
    }

    public static final GenericOrnamentSettings toGenericOrnamentSettings(AttributionSettings.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return new GenericOrnamentSettings(builder) {
            private AttributionSettings.Builder settings;

            {
                this.settings = builder;
            }

            @Override
            public void setHMargins(Float left, Float right) {
                if (left != null) {
                    this.settings.m1063setMarginLeft(left.floatValue());
                }
                if (right != null) {
                    this.settings.m1064setMarginRight(right.floatValue());
                }
            }

            @Override
            public void setVMargins(Float top, Float bottom) {
                if (top != null) {
                    this.settings.m1065setMarginTop(top.floatValue());
                }
                if (bottom != null) {
                    this.settings.m1062setMarginBottom(bottom.floatValue());
                }
            }

            @Override
            public boolean getEnabled() {
                return this.settings.getEnabled();
            }

            @Override
            public void setEnabled(boolean z) {
                this.settings.m1060setEnabled(z);
            }

            @Override
            public int getPosition() {
                return this.settings.getPosition();
            }

            @Override
            public void setPosition(int i) {
                this.settings.m1066setPosition(i);
            }
        };
    }
}
