package com.mapbox.maps.interactions.standard.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.maps.ClickInteraction;
import com.mapbox.maps.FeaturesetDescriptor;
import com.mapbox.maps.FeaturesetFeatureId;
import com.mapbox.maps.InteractionContext;
import com.mapbox.maps.LongClickInteraction;
import com.mapbox.maps.MapInteraction;
import com.mapbox.maps.interactions.TypedFeaturesetDescriptor;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aO\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u000e\u001aO\u0010\u0000\u001a\u00020\u0001*\u00020\u000f2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u0011\u001aO\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u000e\u001aO\u0010\u0012\u001a\u00020\u0001*\u00020\u000f2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u0011\u001aO\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u000e\u001aO\u0010\u0014\u001a\u00020\u0001*\u00020\u000f2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u0011\u001aO\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u000e\u001aO\u0010\u0016\u001a\u00020\u0001*\u00020\u000f2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\nH\u0007¢\u0006\u0002\u0010\u0011¨\u0006\u0018"}, d2 = {"standardBuildings", "Lcom/mapbox/maps/MapInteraction;", "Lcom/mapbox/maps/ClickInteraction$Companion;", "importId", "", ViewProps.FILTER, "Lcom/mapbox/bindgen/Value;", TSGeofence.FIELD_RADIUS, "", ViewProps.ON_CLICK, "Lkotlin/Function2;", "Lcom/mapbox/maps/interactions/standard/generated/StandardBuildingsFeature;", "Lcom/mapbox/maps/InteractionContext;", "", "(Lcom/mapbox/maps/ClickInteraction$Companion;Ljava/lang/String;Lcom/mapbox/bindgen/Value;Ljava/lang/Double;Lkotlin/jvm/functions/Function2;)Lcom/mapbox/maps/MapInteraction;", "Lcom/mapbox/maps/LongClickInteraction$Companion;", "onLongClick", "(Lcom/mapbox/maps/LongClickInteraction$Companion;Ljava/lang/String;Lcom/mapbox/bindgen/Value;Ljava/lang/Double;Lkotlin/jvm/functions/Function2;)Lcom/mapbox/maps/MapInteraction;", "standardLandmarkIcons", "Lcom/mapbox/maps/interactions/standard/generated/StandardLandmarkIconsFeature;", "standardPlaceLabels", "Lcom/mapbox/maps/interactions/standard/generated/StandardPlaceLabelsFeature;", "standardPoi", "Lcom/mapbox/maps/interactions/standard/generated/StandardPoiFeature;", "sdk-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class StandardInteractions {
    public static final MapInteraction standardBuildings(ClickInteraction.Companion companion, String str, Value value, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardBuildings$default(companion, str, value, (Double) null, onClick, 4, (Object) null);
    }

    public static final MapInteraction standardBuildings(ClickInteraction.Companion companion, String str, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardBuildings$default(companion, str, (Value) null, (Double) null, onClick, 6, (Object) null);
    }

    public static final MapInteraction standardBuildings(ClickInteraction.Companion companion, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardBuildings$default(companion, (String) null, (Value) null, (Double) null, onClick, 7, (Object) null);
    }

    public static final MapInteraction standardBuildings(LongClickInteraction.Companion companion, String str, Value value, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardBuildings$default(companion, str, value, (Double) null, onLongClick, 4, (Object) null);
    }

    public static final MapInteraction standardBuildings(LongClickInteraction.Companion companion, String str, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardBuildings$default(companion, str, (Value) null, (Double) null, onLongClick, 6, (Object) null);
    }

    public static final MapInteraction standardBuildings(LongClickInteraction.Companion companion, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardBuildings$default(companion, (String) null, (Value) null, (Double) null, onLongClick, 7, (Object) null);
    }

    public static final MapInteraction standardLandmarkIcons(ClickInteraction.Companion companion, String str, Value value, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardLandmarkIcons$default(companion, str, value, (Double) null, onClick, 4, (Object) null);
    }

    public static final MapInteraction standardLandmarkIcons(ClickInteraction.Companion companion, String str, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardLandmarkIcons$default(companion, str, (Value) null, (Double) null, onClick, 6, (Object) null);
    }

    public static final MapInteraction standardLandmarkIcons(ClickInteraction.Companion companion, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardLandmarkIcons$default(companion, (String) null, (Value) null, (Double) null, onClick, 7, (Object) null);
    }

    public static final MapInteraction standardLandmarkIcons(LongClickInteraction.Companion companion, String str, Value value, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardLandmarkIcons$default(companion, str, value, (Double) null, onLongClick, 4, (Object) null);
    }

    public static final MapInteraction standardLandmarkIcons(LongClickInteraction.Companion companion, String str, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardLandmarkIcons$default(companion, str, (Value) null, (Double) null, onLongClick, 6, (Object) null);
    }

    public static final MapInteraction standardLandmarkIcons(LongClickInteraction.Companion companion, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardLandmarkIcons$default(companion, (String) null, (Value) null, (Double) null, onLongClick, 7, (Object) null);
    }

    public static final MapInteraction standardPlaceLabels(ClickInteraction.Companion companion, String str, Value value, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardPlaceLabels$default(companion, str, value, (Double) null, onClick, 4, (Object) null);
    }

    public static final MapInteraction standardPlaceLabels(ClickInteraction.Companion companion, String str, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardPlaceLabels$default(companion, str, (Value) null, (Double) null, onClick, 6, (Object) null);
    }

    public static final MapInteraction standardPlaceLabels(ClickInteraction.Companion companion, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardPlaceLabels$default(companion, (String) null, (Value) null, (Double) null, onClick, 7, (Object) null);
    }

    public static final MapInteraction standardPlaceLabels(LongClickInteraction.Companion companion, String str, Value value, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardPlaceLabels$default(companion, str, value, (Double) null, onLongClick, 4, (Object) null);
    }

    public static final MapInteraction standardPlaceLabels(LongClickInteraction.Companion companion, String str, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardPlaceLabels$default(companion, str, (Value) null, (Double) null, onLongClick, 6, (Object) null);
    }

    public static final MapInteraction standardPlaceLabels(LongClickInteraction.Companion companion, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardPlaceLabels$default(companion, (String) null, (Value) null, (Double) null, onLongClick, 7, (Object) null);
    }

    public static final MapInteraction standardPoi(ClickInteraction.Companion companion, String str, Value value, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardPoi$default(companion, str, value, (Double) null, onClick, 4, (Object) null);
    }

    public static final MapInteraction standardPoi(ClickInteraction.Companion companion, String str, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardPoi$default(companion, str, (Value) null, (Double) null, onClick, 6, (Object) null);
    }

    public static final MapInteraction standardPoi(ClickInteraction.Companion companion, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return standardPoi$default(companion, (String) null, (Value) null, (Double) null, onClick, 7, (Object) null);
    }

    public static final MapInteraction standardPoi(LongClickInteraction.Companion companion, String str, Value value, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardPoi$default(companion, str, value, (Double) null, onLongClick, 4, (Object) null);
    }

    public static final MapInteraction standardPoi(LongClickInteraction.Companion companion, String str, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardPoi$default(companion, str, (Value) null, (Double) null, onLongClick, 6, (Object) null);
    }

    public static final MapInteraction standardPoi(LongClickInteraction.Companion companion, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return standardPoi$default(companion, (String) null, (Value) null, (Double) null, onLongClick, 7, (Object) null);
    }

    public static MapInteraction standardPoi$default(ClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardPoi(companion, str, value, d, (Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardPoi(ClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return new ClickInteraction(new FeaturesetDescriptor(StandardPoi.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardPoiFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardPoiFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardPoiFeature(featuresetFeatureId, str, feature, new StandardPoiState(state));
            }
        });
    }

    public static MapInteraction standardPoi$default(LongClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardPoi(companion, str, value, d, (Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardPoi(LongClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardPoiFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return new LongClickInteraction(new FeaturesetDescriptor(StandardPoi.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onLongClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardPoiFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardPoiFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardPoiFeature(featuresetFeatureId, str, feature, new StandardPoiState(state));
            }
        });
    }

    public static MapInteraction standardPlaceLabels$default(ClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardPlaceLabels(companion, str, value, d, (Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardPlaceLabels(ClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return new ClickInteraction(new FeaturesetDescriptor(StandardPlaceLabels.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardPlaceLabelsFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardPlaceLabelsFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardPlaceLabelsFeature(featuresetFeatureId, str, feature, new StandardPlaceLabelsState(state));
            }
        });
    }

    public static MapInteraction standardPlaceLabels$default(LongClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardPlaceLabels(companion, str, value, d, (Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardPlaceLabels(LongClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardPlaceLabelsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return new LongClickInteraction(new FeaturesetDescriptor(StandardPlaceLabels.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onLongClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardPlaceLabelsFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardPlaceLabelsFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardPlaceLabelsFeature(featuresetFeatureId, str, feature, new StandardPlaceLabelsState(state));
            }
        });
    }

    public static MapInteraction standardBuildings$default(ClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardBuildings(companion, str, value, d, (Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardBuildings(ClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return new ClickInteraction(new FeaturesetDescriptor(StandardBuildings.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardBuildingsFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardBuildingsFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardBuildingsFeature(featuresetFeatureId, str, feature, new StandardBuildingsState(state));
            }
        });
    }

    public static MapInteraction standardBuildings$default(LongClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardBuildings(companion, str, value, d, (Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardBuildings(LongClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardBuildingsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return new LongClickInteraction(new FeaturesetDescriptor(StandardBuildings.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onLongClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardBuildingsFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardBuildingsFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardBuildingsFeature(featuresetFeatureId, str, feature, new StandardBuildingsState(state));
            }
        });
    }

    public static MapInteraction standardLandmarkIcons$default(ClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardLandmarkIcons(companion, str, value, d, (Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardLandmarkIcons(ClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return new ClickInteraction(new FeaturesetDescriptor(StandardLandmarkIcons.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardLandmarkIconsFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardLandmarkIconsFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardLandmarkIconsFeature(featuresetFeatureId, str, feature, new StandardLandmarkIconsState(state));
            }
        });
    }

    public static MapInteraction standardLandmarkIcons$default(LongClickInteraction.Companion companion, String str, Value value, Double d, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            value = null;
        }
        if ((i & 4) != 0) {
            d = null;
        }
        return standardLandmarkIcons(companion, str, value, d, (Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean>) function2);
    }

    public static final MapInteraction standardLandmarkIcons(LongClickInteraction.Companion companion, final String str, Value value, Double d, Function2<? super StandardLandmarkIconsFeature, ? super InteractionContext, Boolean> onLongClick) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(onLongClick, "onLongClick");
        return new LongClickInteraction(new FeaturesetDescriptor(StandardLandmarkIcons.FEATURESET_ID, str == null ? TypedFeaturesetDescriptor.DEFAULT_IMPORT_ID : str, null), value, d, onLongClick, new Function3<Feature, FeaturesetFeatureId, Value, StandardLandmarkIconsFeature>() {
            {
                super(3);
            }

            @Override
            public final StandardLandmarkIconsFeature invoke(Feature feature, FeaturesetFeatureId featuresetFeatureId, Value state) {
                Intrinsics.checkNotNullParameter(feature, "feature");
                Intrinsics.checkNotNullParameter(state, "state");
                return new StandardLandmarkIconsFeature(featuresetFeatureId, str, feature, new StandardLandmarkIconsState(state));
            }
        });
    }
}
