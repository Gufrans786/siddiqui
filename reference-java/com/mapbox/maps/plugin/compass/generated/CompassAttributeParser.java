package com.mapbox.maps.plugin.compass.generated;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.plugin.compass.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/compass/generated/CompassAttributeParser;", "", "()V", "parseCompassSettings", "Lcom/mapbox/maps/plugin/compass/generated/CompassSettings;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "plugin-compass_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CompassAttributeParser {
    public static final CompassAttributeParser INSTANCE = new CompassAttributeParser();

    private CompassAttributeParser() {
    }

    public static CompassSettings parseCompassSettings$default(CompassAttributeParser compassAttributeParser, Context context, AttributeSet attributeSet, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = 1.0f;
        }
        return compassAttributeParser.parseCompassSettings(context, attributeSet, f);
    }

    public final CompassSettings parseCompassSettings(Context context, AttributeSet attrs, final float pixelRatio) {
        Intrinsics.checkNotNullParameter(context, "context");
        final TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.mapbox_MapView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ble.mapbox_MapView, 0, 0)");
        try {
            return CompassSettingsKt.CompassSettings(new Function1<CompassSettings.Builder, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(CompassSettings.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }

                public final void invoke2(CompassSettings.Builder CompassSettings) {
                    Intrinsics.checkNotNullParameter(CompassSettings, "$this$CompassSettings");
                    CompassSettings.m1068setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_compassEnabled, true));
                    CompassSettings.m1076setPosition(typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_compassGravity, 8388661));
                    CompassSettings.m1072setMarginLeft(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_compassMarginLeft, pixelRatio * 4.0f));
                    CompassSettings.m1074setMarginTop(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_compassMarginTop, pixelRatio * 4.0f));
                    CompassSettings.m1073setMarginRight(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_compassMarginRight, pixelRatio * 4.0f));
                    CompassSettings.m1071setMarginBottom(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_compassMarginBottom, pixelRatio * 4.0f));
                    CompassSettings.m1075setOpacity(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_compassOpacity, 1.0f));
                    CompassSettings.m1077setRotation(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_compassRotation, 0.0f));
                    CompassSettings.m1078setVisibility(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_compassVisibility, true));
                    CompassSettings.m1069setFadeWhenFacingNorth(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_compassFadeWhenFacingNorth, true));
                    CompassSettings.m1067setClickable(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_compassClickable, true));
                    CompassSettings.m1070setImage(ImageHolder.INSTANCE.from(typedArrayObtainStyledAttributes.getResourceId(R.styleable.mapbox_MapView_mapbox_compassImage, -1)));
                }
            });
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
