package com.mapbox.maps.plugin.gestures.generated;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.ScrollMode;
import com.mapbox.maps.plugin.gestures.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/gestures/generated/GesturesAttributeParser;", "", "()V", "parseGesturesSettings", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "plugin-gestures_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GesturesAttributeParser {
    public static final GesturesAttributeParser INSTANCE = new GesturesAttributeParser();

    private GesturesAttributeParser() {
    }

    public final GesturesSettings parseGesturesSettings(Context context, AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        final TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.mapbox_MapView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ble.mapbox_MapView, 0, 0)");
        try {
            return GesturesSettingsKt.GesturesSettings(new Function1<GesturesSettings.Builder, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(GesturesSettings.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }

                public final void invoke2(GesturesSettings.Builder GesturesSettings) {
                    ScreenCoordinate screenCoordinate;
                    Intrinsics.checkNotNullParameter(GesturesSettings, "$this$GesturesSettings");
                    GesturesSettings.m1090setRotateEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesRotateEnabled, true));
                    GesturesSettings.m1086setPinchToZoomEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesPinchToZoomEnabled, true));
                    GesturesSettings.m1092setScrollEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesScrollEnabled, true));
                    GesturesSettings.m1094setSimultaneousRotateAndPinchToZoomEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesSimultaneousRotateAndPinchToZoomEnabled, true));
                    GesturesSettings.m1087setPitchEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesPitchEnabled, true));
                    GesturesSettings.m1093setScrollMode(ScrollMode.values()[typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_gesturesScrollMode, ScrollMode.HORIZONTAL_AND_VERTICAL.ordinal())]);
                    GesturesSettings.m1079setDoubleTapToZoomInEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesDoubleTapToZoomInEnabled, true));
                    GesturesSettings.m1080setDoubleTouchToZoomOutEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesDoubleTouchToZoomOutEnabled, true));
                    GesturesSettings.m1088setQuickZoomEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesQuickZoomEnabled, true));
                    if (typedArrayObtainStyledAttributes.hasValue(R.styleable.mapbox_MapView_mapbox_gesturesFocalPointX) && typedArrayObtainStyledAttributes.hasValue(R.styleable.mapbox_MapView_mapbox_gesturesFocalPointY)) {
                        screenCoordinate = new ScreenCoordinate(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_gesturesFocalPointX, 0.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_gesturesFocalPointY, 0.0f));
                    } else {
                        screenCoordinate = null;
                    }
                    GesturesSettings.m1081setFocalPoint(screenCoordinate);
                    GesturesSettings.m1085setPinchToZoomDecelerationEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesPinchToZoomDecelerationEnabled, true));
                    GesturesSettings.m1089setRotateDecelerationEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesRotateDecelerationEnabled, true));
                    GesturesSettings.m1091setScrollDecelerationEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesScrollDecelerationEnabled, true));
                    GesturesSettings.m1083setIncreaseRotateThresholdWhenPinchingToZoom(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesIncreaseRotateThresholdWhenPinchingToZoom, true));
                    GesturesSettings.m1082setIncreasePinchToZoomThresholdWhenRotating(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesIncreasePinchToZoomThresholdWhenRotating, true));
                    GesturesSettings.m1095setZoomAnimationAmount(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_gesturesZoomAnimationAmount, 1.0f));
                    GesturesSettings.m1084setPinchScrollEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_gesturesPinchScrollEnabled, true));
                }
            });
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
