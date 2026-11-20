package com.mapbox.maps.plugin.scalebar.generated;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.plugin.scalebar.LocaleUnitResolver;
import com.mapbox.maps.plugin.scalebar.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarAttributeParser;", "", "()V", "parseScaleBarSettings", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "plugin-scalebar_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ScaleBarAttributeParser {
    public static final ScaleBarAttributeParser INSTANCE = new ScaleBarAttributeParser();

    private ScaleBarAttributeParser() {
    }

    public static ScaleBarSettings parseScaleBarSettings$default(ScaleBarAttributeParser scaleBarAttributeParser, Context context, AttributeSet attributeSet, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = 1.0f;
        }
        return scaleBarAttributeParser.parseScaleBarSettings(context, attributeSet, f);
    }

    public final ScaleBarSettings parseScaleBarSettings(Context context, AttributeSet attrs, final float pixelRatio) {
        Intrinsics.checkNotNullParameter(context, "context");
        final TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.mapbox_MapView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ble.mapbox_MapView, 0, 0)");
        try {
            return ScaleBarSettingsKt.ScaleBarSettings(new Function1<ScaleBarSettings.Builder, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(ScaleBarSettings.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }

                public final void invoke2(ScaleBarSettings.Builder ScaleBarSettings) {
                    Intrinsics.checkNotNullParameter(ScaleBarSettings, "$this$ScaleBarSettings");
                    ScaleBarSettings.m1120setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_scaleBarEnabled, true));
                    ScaleBarSettings.m1126setPosition(typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_scaleBarGravity, 8388659));
                    ScaleBarSettings.m1123setMarginLeft(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarMarginLeft, pixelRatio * 4.0f));
                    ScaleBarSettings.m1125setMarginTop(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarMarginTop, pixelRatio * 4.0f));
                    ScaleBarSettings.m1124setMarginRight(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarMarginRight, pixelRatio * 4.0f));
                    ScaleBarSettings.m1122setMarginBottom(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarMarginBottom, pixelRatio * 4.0f));
                    ScaleBarSettings.m1134setTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_scaleBarTextColor, ViewCompat.MEASURED_STATE_MASK));
                    ScaleBarSettings.m1127setPrimaryColor(typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_scaleBarPrimaryColor, ViewCompat.MEASURED_STATE_MASK));
                    ScaleBarSettings.m1130setSecondaryColor(typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_scaleBarSecondaryColor, -1));
                    ScaleBarSettings.m1119setBorderWidth(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarBorderWidth, pixelRatio * 2.0f));
                    ScaleBarSettings.m1121setHeight(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarHeight, pixelRatio * 2.0f));
                    ScaleBarSettings.m1132setTextBarMargin(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarTextBarMargin, pixelRatio * 8.0f));
                    ScaleBarSettings.m1133setTextBorderWidth(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarTextBorderWidth, pixelRatio * 2.0f));
                    ScaleBarSettings.m1135setTextSize(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_scaleBarTextSize, pixelRatio * 8.0f));
                    ScaleBarSettings.setMetricUnits(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_scaleBarIsMetricUnits, LocaleUnitResolver.INSTANCE.isMetricSystem()));
                    ScaleBarSettings.m1129setRefreshInterval(typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_scaleBarRefreshInterval, 15));
                    ScaleBarSettings.m1131setShowTextBorder(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_scaleBarShowTextBorder, true));
                    ScaleBarSettings.m1128setRatio(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_scaleBarRatio, 0.5f));
                    ScaleBarSettings.m1136setUseContinuousRendering(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_scaleBarUseContinuousRendering, false));
                }
            });
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
