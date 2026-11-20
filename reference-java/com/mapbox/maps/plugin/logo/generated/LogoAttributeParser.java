package com.mapbox.maps.plugin.logo.generated;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.plugin.logo.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/logo/generated/LogoAttributeParser;", "", "()V", "parseLogoSettings", "Lcom/mapbox/maps/plugin/logo/generated/LogoSettings;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "plugin-logo_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LogoAttributeParser {
    public static final LogoAttributeParser INSTANCE = new LogoAttributeParser();

    private LogoAttributeParser() {
    }

    public static LogoSettings parseLogoSettings$default(LogoAttributeParser logoAttributeParser, Context context, AttributeSet attributeSet, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = 1.0f;
        }
        return logoAttributeParser.parseLogoSettings(context, attributeSet, f);
    }

    public final LogoSettings parseLogoSettings(Context context, AttributeSet attrs, final float pixelRatio) {
        Intrinsics.checkNotNullParameter(context, "context");
        final TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.mapbox_MapView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ble.mapbox_MapView, 0, 0)");
        try {
            return LogoSettingsKt.LogoSettings(new Function1<LogoSettings.Builder, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(LogoSettings.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }

                public final void invoke2(LogoSettings.Builder LogoSettings) {
                    Intrinsics.checkNotNullParameter(LogoSettings, "$this$LogoSettings");
                    LogoSettings.m1112setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_logoEnabled, true));
                    LogoSettings.m1117setPosition(typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_logoGravity, 8388691));
                    LogoSettings.m1114setMarginLeft(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_logoMarginLeft, pixelRatio * 4.0f));
                    LogoSettings.m1116setMarginTop(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_logoMarginTop, pixelRatio * 4.0f));
                    LogoSettings.m1115setMarginRight(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_logoMarginRight, pixelRatio * 4.0f));
                    LogoSettings.m1113setMarginBottom(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_logoMarginBottom, pixelRatio * 4.0f));
                }
            });
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
