package com.mapbox.maps.plugin.attribution.generated;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.plugin.attribution.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/attribution/generated/AttributionAttributeParser;", "", "()V", "parseAttributionSettings", "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "plugin-attribution_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AttributionAttributeParser {
    public static final AttributionAttributeParser INSTANCE = new AttributionAttributeParser();

    private AttributionAttributeParser() {
    }

    public static AttributionSettings parseAttributionSettings$default(AttributionAttributeParser attributionAttributeParser, Context context, AttributeSet attributeSet, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = 1.0f;
        }
        return attributionAttributeParser.parseAttributionSettings(context, attributeSet, f);
    }

    public final AttributionSettings parseAttributionSettings(Context context, AttributeSet attrs, final float pixelRatio) {
        Intrinsics.checkNotNullParameter(context, "context");
        final TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.mapbox_MapView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ble.mapbox_MapView, 0, 0)");
        try {
            return AttributionSettingsKt.AttributionSettings(new Function1<AttributionSettings.Builder, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(AttributionSettings.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }

                public final void invoke2(AttributionSettings.Builder AttributionSettings) {
                    Intrinsics.checkNotNullParameter(AttributionSettings, "$this$AttributionSettings");
                    AttributionSettings.m1060setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_attributionEnabled, true));
                    AttributionSettings.m1061setIconColor(typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_attributionIconColor, Color.parseColor("#FF1E8CAB")));
                    AttributionSettings.m1066setPosition(typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_attributionGravity, 8388691));
                    AttributionSettings.m1063setMarginLeft(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_attributionMarginLeft, pixelRatio * 92.0f));
                    AttributionSettings.m1065setMarginTop(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_attributionMarginTop, pixelRatio * 4.0f));
                    AttributionSettings.m1064setMarginRight(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_attributionMarginRight, pixelRatio * 4.0f));
                    AttributionSettings.m1062setMarginBottom(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_attributionMarginBottom, pixelRatio * 4.0f));
                    AttributionSettings.m1059setClickable(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_attributionClickable, true));
                }
            });
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
