package com.mapbox.maps.plugin.locationcomponent.generated;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.plugin.LocationPuck2D;
import com.mapbox.maps.plugin.LocationPuck3D;
import com.mapbox.maps.plugin.ModelElevationReference;
import com.mapbox.maps.plugin.ModelScaleMode;
import com.mapbox.maps.plugin.PuckBearing;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentUtils;
import com.mapbox.maps.plugin.locationcomponent.R;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentAttributeParser;", "", "()V", "parseLocationComponentSettings", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationComponentAttributeParser {
    public static final LocationComponentAttributeParser INSTANCE = new LocationComponentAttributeParser();

    private LocationComponentAttributeParser() {
    }

    public static LocationComponentSettings parseLocationComponentSettings$default(LocationComponentAttributeParser locationComponentAttributeParser, Context context, AttributeSet attributeSet, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = 1.0f;
        }
        return locationComponentAttributeParser.parseLocationComponentSettings(context, attributeSet, f);
    }

    public final LocationComponentSettings parseLocationComponentSettings(Context context, AttributeSet attrs, final float pixelRatio) {
        LocationPuck2D locationPuck2D;
        List listEmptyList;
        List listEmptyList2;
        Intrinsics.checkNotNullParameter(context, "context");
        final TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.mapbox_MapView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ble.mapbox_MapView, 0, 0)");
        try {
            final boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_locationComponentPuckBearingEnabled, false);
            int i = typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuck, -1);
            if (i == 0) {
                Integer numValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getResourceId(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck2DTopImage, -1));
                if (numValueOf.intValue() == -1) {
                    numValueOf = null;
                }
                ImageHolder imageHolderFrom = numValueOf != null ? ImageHolder.INSTANCE.from(numValueOf.intValue()) : null;
                Integer numValueOf2 = Integer.valueOf(typedArrayObtainStyledAttributes.getResourceId(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck2DBearingImage, -1));
                if (numValueOf2.intValue() == -1) {
                    numValueOf2 = null;
                }
                ImageHolder imageHolderFrom2 = numValueOf2 != null ? ImageHolder.INSTANCE.from(numValueOf2.intValue()) : null;
                Integer numValueOf3 = Integer.valueOf(typedArrayObtainStyledAttributes.getResourceId(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck2DShadowImage, -1));
                if (numValueOf3.intValue() == -1) {
                    numValueOf3 = null;
                }
                locationPuck2D = new LocationPuck2D(imageHolderFrom, imageHolderFrom2, numValueOf3 != null ? ImageHolder.INSTANCE.from(numValueOf3.intValue()) : null, typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck2DScaleExpression), typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck2DOpacity, 1.0f));
            } else if (i == 1) {
                String string = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelUri);
                if (string == null) {
                    throw new IllegalArgumentException("model-uri must be specified in order to use 3d location puck.");
                }
                List listListOf = CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DPosition_lon, 0.0f)), Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DPosition_lat, 0.0f))});
                float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelOpacity, 1.0f);
                List listListOf2 = CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelScale_x, 1.0f)), Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelScale_y, 1.0f)), Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelScale_z, 1.0f))});
                String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelScaleExpression);
                List listListOf3 = CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelTranslation_lon, 0.0f)), Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelTranslation_lat, 0.0f)), Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelTranslation_z, 0.0f))});
                List listListOf4 = CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelRotation_x, 0.0f)), Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelRotation_y, 0.0f)), Float.valueOf(typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelRotation_z, 90.0f))});
                boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelCastShadows, true);
                boolean z3 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelReceiveShadows, true);
                ModelScaleMode modelScaleMode = ModelScaleMode.values()[typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelScaleMode, ModelScaleMode.VIEWPORT.ordinal())];
                float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelEmissiveStrength, 1.0f);
                String string3 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelEmissiveStrengthExpression);
                String string4 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelOpacityExpression);
                String string5 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelRotationExpression);
                int color = typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelColor, Color.parseColor(AnimatableModel.DEFAULT_COLOR));
                String string6 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelColorExpression);
                float f3 = typedArrayObtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelColorMixIntensity, 0.0f);
                String string7 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelColorMixIntensityExpression);
                try {
                    String[] stringArray = typedArrayObtainStyledAttributes.getResources().getStringArray(typedArrayObtainStyledAttributes.getResourceId(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DMaterialOverrides, 0));
                    Intrinsics.checkNotNullExpressionValue(stringArray, "typedArray.resources.get…k3DMaterialOverrides, 0))");
                    listEmptyList = ArraysKt.toList(stringArray);
                } catch (Exception unused) {
                    listEmptyList = CollectionsKt.emptyList();
                }
                List list = listEmptyList;
                try {
                    String[] stringArray2 = typedArrayObtainStyledAttributes.getResources().getStringArray(typedArrayObtainStyledAttributes.getResourceId(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DNodeOverrides, 0));
                    Intrinsics.checkNotNullExpressionValue(stringArray2, "typedArray.resources.get…nPuck3DNodeOverrides, 0))");
                    listEmptyList2 = ArraysKt.toList(stringArray2);
                } catch (Exception unused2) {
                    listEmptyList2 = CollectionsKt.emptyList();
                }
                List list2 = listEmptyList2;
                ModelElevationReference modelElevationReference = ModelElevationReference.values()[typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelElevationReference, ModelElevationReference.GROUND.ordinal())];
                String string8 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelColorUseTheme);
                if (string8 == null) {
                    string8 = "default";
                }
                locationPuck2D = new LocationPuck3D(string, listListOf, f, listListOf2, string2, listListOf3, listListOf4, z2, z3, modelScaleMode, f2, string3, string4, string5, color, string6, f3, string7, list, list2, modelElevationReference, string8, typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLocationPuckLocationPuck3DModelColorUseThemeExpression));
            } else {
                locationPuck2D = LocationComponentUtils.createDefault2DPuck(z);
            }
            LocationComponentSettings LocationComponentSettings = LocationComponentSettingsKt.LocationComponentSettings(locationPuck2D, new Function1<LocationComponentSettings.Builder, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(LocationComponentSettings.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }

                public final void invoke2(LocationComponentSettings.Builder LocationComponentSettings2) {
                    Intrinsics.checkNotNullParameter(LocationComponentSettings2, "$this$LocationComponentSettings");
                    LocationComponentSettings2.m1100setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_locationComponentEnabled, false));
                    LocationComponentSettings2.m1107setPulsingEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_locationComponentPulsingEnabled, false));
                    LocationComponentSettings2.m1106setPulsingColor(typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_locationComponentPulsingColor, Color.parseColor("#4A90E2")));
                    LocationComponentSettings2.m1108setPulsingMaxRadius(typedArrayObtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_locationComponentPulsingMaxRadius, pixelRatio * 10.0f));
                    LocationComponentSettings2.m1109setShowAccuracyRing(typedArrayObtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_locationComponentShowAccuracyRing, false));
                    LocationComponentSettings2.m1099setAccuracyRingColor(typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_locationComponentAccuracyRingColor, Color.parseColor("#4d89cff0")));
                    LocationComponentSettings2.m1098setAccuracyRingBorderColor(typedArrayObtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_locationComponentAccuracyRingBorderColor, Color.parseColor("#4d89cff0")));
                    LocationComponentSettings2.m1101setLayerAbove(typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLayerAbove));
                    LocationComponentSettings2.m1102setLayerBelow(typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentLayerBelow));
                    LocationComponentSettings2.m1105setPuckBearingEnabled(z);
                    LocationComponentSettings2.m1104setPuckBearing(PuckBearing.values()[typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_locationComponentPuckBearing, 0)]);
                    LocationComponentSettings2.m1110setSlot(typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_locationComponentSlot));
                }
            });
            typedArrayObtainStyledAttributes.recycle();
            return LocationComponentSettings;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
