package com.mapbox.maps.plugin.locationcomponent.model;

import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.FeatureStateOperationCallback;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.extension.style.expressions.dsl.generated.ExpressionDslKt;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.plugin.LocationPuck3D;
import com.mapbox.maps.plugin.delegates.MapFeatureStateDelegate;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentConstants;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 12\u00020\u0001:\u00011B\u001d\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0015\u0010(\u001a\u00020)2\u0006\u0010\u001b\u001a\u00020\u001cH\u0000¢\u0006\u0002\b*J\b\u0010+\u001a\u00020,H\u0007J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0002R,\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00038\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR,\u0010\u0011\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00108\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u000b\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R,\u0010\u0017\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00108\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u000b\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\rR,\u0010\u001e\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00108\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001f\u0010\u000b\u001a\u0004\b \u0010\u0014\"\u0004\b!\u0010\u0016R8\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00100\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00100\u00058\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u00062"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/model/AnimatableModel;", "", "modelUri", "", "modelParts", "", "Lcom/mapbox/maps/plugin/locationcomponent/model/ModelPart;", "(Ljava/lang/String;Ljava/util/List;)V", "value", "color", "getColor$annotations", "()V", "getColor", "()Ljava/lang/String;", "setColor", "(Ljava/lang/String;)V", "", "colorMixIntensity", "getColorMixIntensity$annotations", "getColorMixIntensity", "()D", "setColorMixIntensity", "(D)V", "emissiveStrength", "getEmissiveStrength$annotations", "getEmissiveStrength", "setEmissiveStrength", "mapFeatureStateDelegate", "Lcom/mapbox/maps/plugin/delegates/MapFeatureStateDelegate;", "getModelUri", ViewProps.OPACITY, "getOpacity$annotations", "getOpacity", "setOpacity", "rotation", "getRotation$annotations", "getRotation", "()Ljava/util/List;", "setRotation", "(Ljava/util/List;)V", "bindTo", "", "bindTo$plugin_locationcomponent_release", "getLocationPuck3D", "Lcom/mapbox/maps/plugin/LocationPuck3D;", "updateFeatureState", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/bindgen/Value;", "Companion", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AnimatableModel {

    public static final Companion INSTANCE = new Companion(null);
    public static final String DEFAULT_COLOR = "#ffffff";
    private static final String DEFAULT_COLOR_FEATURE_STATE_KEY = "MBX_default_color";
    public static final double DEFAULT_COLOR_MIX_INTENSITY = 0.0d;
    private static final String DEFAULT_COLOR_MIX_INTENSITY_FEATURE_STATE_KEY = "MBX_default_color_mix_intensity";
    public static final double DEFAULT_EMISSIVE_STRENGTH = 0.0d;
    private static final String DEFAULT_EMISSIVE_STRENGTH_FEATURE_STATE_KEY = "MBX_default_emissive_strength";
    public static final double DEFAULT_OPACITY = 1.0d;
    private static final String DEFAULT_OPACITY_FEATURE_STATE_KEY = "MBX_default_opacity";
    private static final List<Double> DEFAULT_ROTATION;
    private static final String DEFAULT_ROTATION_FEATURE_STATE_KEY = "MBX_default_rotation";
    private static final String PART_KEY = "part";
    private static final String TAG = "AnimatableModel";
    private String color;
    private double colorMixIntensity;
    private double emissiveStrength;
    private MapFeatureStateDelegate mapFeatureStateDelegate;
    private final List<ModelPart> modelParts;
    private final String modelUri;
    private double opacity;
    private List<Double> rotation;

    public static void getColor$annotations() {
    }

    public static void getColorMixIntensity$annotations() {
    }

    public static void getEmissiveStrength$annotations() {
    }

    public static void getOpacity$annotations() {
    }

    public static void getRotation$annotations() {
    }

    public AnimatableModel(String modelUri, List<? extends ModelPart> modelParts) {
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(modelParts, "modelParts");
        this.modelUri = modelUri;
        this.modelParts = modelParts;
        this.rotation = DEFAULT_ROTATION;
        this.opacity = 1.0d;
        this.color = DEFAULT_COLOR;
    }

    public final String getModelUri() {
        return this.modelUri;
    }

    public final boolean updateFeatureState(Value state) {
        MapFeatureStateDelegate mapFeatureStateDelegate = this.mapFeatureStateDelegate;
        return (mapFeatureStateDelegate == null || MapFeatureStateDelegate.DefaultImpls.setFeatureState$default(mapFeatureStateDelegate, LocationComponentConstants.MODEL_SOURCE, null, ModelSourceWrapper.DEFAULT_MODEL_NAME, state, new FeatureStateOperationCallback() {
            @Override
            public final void run(Expected expected) {
                AnimatableModel.updateFeatureState$lambda$1(expected);
            }
        }, 2, null) == null) ? false : true;
    }

    public static final void updateFeatureState$lambda$1(Expected it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.onError(new Expected.Action() {
            @Override
            public final void run(Object obj) {
                AnimatableModel.updateFeatureState$lambda$1$lambda$0((String) obj);
            }
        });
    }

    public static final void updateFeatureState$lambda$1$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MapboxLogger.logE(TAG, "Update feature state error: " + it);
    }

    public final void bindTo$plugin_locationcomponent_release(MapFeatureStateDelegate mapFeatureStateDelegate) {
        Intrinsics.checkNotNullParameter(mapFeatureStateDelegate, "mapFeatureStateDelegate");
        this.mapFeatureStateDelegate = mapFeatureStateDelegate;
        Iterator<T> it = this.modelParts.iterator();
        while (it.hasNext()) {
            ((ModelPart) it.next()).bindTo$plugin_locationcomponent_release(new AnimatableModel$bindTo$1$1(this));
        }
    }

    public final List<Double> getRotation() {
        return this.rotation;
    }

    public final void setRotation(List<Double> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.rotation = value;
        updateFeatureState(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(DEFAULT_ROTATION_FEATURE_STATE_KEY, ExpressionDslKt.literal(value)))));
    }

    public final double getOpacity() {
        return this.opacity;
    }

    public final void setOpacity(double d) {
        this.opacity = d;
        updateFeatureState(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(DEFAULT_OPACITY_FEATURE_STATE_KEY, new Value(d)))));
    }

    public final double getEmissiveStrength() {
        return this.emissiveStrength;
    }

    public final void setEmissiveStrength(double d) {
        this.emissiveStrength = d;
        updateFeatureState(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(DEFAULT_EMISSIVE_STRENGTH_FEATURE_STATE_KEY, new Value(d)))));
    }

    public final double getColorMixIntensity() {
        return this.colorMixIntensity;
    }

    public final void setColorMixIntensity(double d) {
        this.colorMixIntensity = d;
        updateFeatureState(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(DEFAULT_COLOR_MIX_INTENSITY_FEATURE_STATE_KEY, new Value(d)))));
    }

    public final String getColor() {
        return this.color;
    }

    public final void setColor(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.color = value;
        updateFeatureState(new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(DEFAULT_COLOR_FEATURE_STATE_KEY, new Value(value)))));
    }

    public final LocationPuck3D getLocationPuck3D() {
        String str = this.modelUri;
        String json = Expression.INSTANCE.match(new Function1<Expression.ExpressionBuilder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                invoke2(expressionBuilder);
                return Unit.INSTANCE;
            }

            public final void invoke2(Expression.ExpressionBuilder match) {
                Intrinsics.checkNotNullParameter(match, "$this$match");
                match.get(AnimatableModel.PART_KEY);
                List list = AnimatableModel.this.modelParts;
                ArrayList<ModelNodePart> arrayList = new ArrayList();
                for (Object obj : list) {
                    if (obj instanceof ModelNodePart) {
                        arrayList.add(obj);
                    }
                }
                for (final ModelNodePart modelNodePart : arrayList) {
                    Iterator<T> it = modelNodePart.getNodeOverrides().iterator();
                    while (it.hasNext()) {
                        match.literal((String) it.next());
                        match.switchCase(new Function1<Expression.ExpressionBuilder, Unit>() {
                            {
                                super(1);
                            }

                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder switchCase) {
                                Intrinsics.checkNotNullParameter(switchCase, "$this$switchCase");
                                final ModelNodePart modelNodePart2 = modelNodePart;
                                switchCase.eq(new Function1<Expression.ExpressionBuilder, Unit>() {
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                        invoke2(expressionBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2(Expression.ExpressionBuilder eq) {
                                        Intrinsics.checkNotNullParameter(eq, "$this$eq");
                                        final ModelNodePart modelNodePart3 = modelNodePart2;
                                        eq.typeofExpression(new Function1<Expression.ExpressionBuilder, Unit>() {
                                            {
                                                super(1);
                                            }

                                            @Override
                                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                                invoke2(expressionBuilder);
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke2(Expression.ExpressionBuilder typeofExpression) {
                                                Intrinsics.checkNotNullParameter(typeofExpression, "$this$typeofExpression");
                                                final ModelNodePart modelNodePart4 = modelNodePart3;
                                                typeofExpression.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                                                    {
                                                        super(1);
                                                    }

                                                    @Override
                                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                                        invoke2(expressionBuilder);
                                                        return Unit.INSTANCE;
                                                    }

                                                    public final void invoke2(Expression.ExpressionBuilder featureState) {
                                                        Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                                        featureState.literal(modelNodePart4.getFeatureStateId() + "-rotation");
                                                    }
                                                });
                                            }
                                        });
                                        eq.literal("array<number, 3>");
                                    }
                                });
                                final ModelNodePart modelNodePart3 = modelNodePart;
                                switchCase.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                        invoke2(expressionBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2(Expression.ExpressionBuilder featureState) {
                                        Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                        featureState.literal(modelNodePart3.getFeatureStateId() + "-rotation");
                                    }
                                });
                                switchCase.literal(modelNodePart.getRotation());
                            }
                        });
                    }
                }
                final AnimatableModel animatableModel = AnimatableModel.this;
                match.switchCase(new Function1<Expression.ExpressionBuilder, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                        invoke2(expressionBuilder);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(Expression.ExpressionBuilder switchCase) {
                        Intrinsics.checkNotNullParameter(switchCase, "$this$switchCase");
                        switchCase.eq(new Function1<Expression.ExpressionBuilder, Unit>() {
                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder eq) {
                                Intrinsics.checkNotNullParameter(eq, "$this$eq");
                                eq.typeofExpression(new Function1<Expression.ExpressionBuilder, Unit>() {
                                    @Override
                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                        invoke2(expressionBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2(Expression.ExpressionBuilder typeofExpression) {
                                        Intrinsics.checkNotNullParameter(typeofExpression, "$this$typeofExpression");
                                        typeofExpression.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                                            @Override
                                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                                invoke2(expressionBuilder);
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke2(Expression.ExpressionBuilder featureState) {
                                                Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                                featureState.literal(AnimatableModel.DEFAULT_ROTATION_FEATURE_STATE_KEY);
                                            }
                                        });
                                    }
                                });
                                eq.literal("array<number, 3>");
                            }
                        });
                        switchCase.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder featureState) {
                                Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                featureState.literal(AnimatableModel.DEFAULT_ROTATION_FEATURE_STATE_KEY);
                            }
                        });
                        switchCase.literal(animatableModel.getRotation());
                    }
                });
            }
        }).toJson();
        String json2 = Expression.INSTANCE.match(new Function1<Expression.ExpressionBuilder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                invoke2(expressionBuilder);
                return Unit.INSTANCE;
            }

            public final void invoke2(Expression.ExpressionBuilder match) {
                Intrinsics.checkNotNullParameter(match, "$this$match");
                match.get(AnimatableModel.PART_KEY);
                List list = AnimatableModel.this.modelParts;
                ArrayList<ModelMaterialPart> arrayList = new ArrayList();
                for (Object obj : list) {
                    if (obj instanceof ModelMaterialPart) {
                        arrayList.add(obj);
                    }
                }
                for (final ModelMaterialPart modelMaterialPart : arrayList) {
                    Iterator<T> it = modelMaterialPart.getMaterialOverrides().iterator();
                    while (it.hasNext()) {
                        match.literal((String) it.next());
                        match.toColor(new Function1<Expression.ExpressionBuilder, Unit>() {
                            {
                                super(1);
                            }

                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder toColor) {
                                Intrinsics.checkNotNullParameter(toColor, "$this$toColor");
                                final ModelMaterialPart modelMaterialPart2 = modelMaterialPart;
                                toColor.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                        invoke2(expressionBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2(Expression.ExpressionBuilder featureState) {
                                        Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                        featureState.literal(modelMaterialPart2.getFeatureStateId() + "-color");
                                    }
                                });
                                toColor.literal(modelMaterialPart.getColor());
                            }
                        });
                    }
                }
                final AnimatableModel animatableModel = AnimatableModel.this;
                match.toColor(new Function1<Expression.ExpressionBuilder, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                        invoke2(expressionBuilder);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(Expression.ExpressionBuilder toColor) {
                        Intrinsics.checkNotNullParameter(toColor, "$this$toColor");
                        toColor.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder featureState) {
                                Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                featureState.literal(AnimatableModel.DEFAULT_COLOR_FEATURE_STATE_KEY);
                            }
                        });
                        toColor.literal(animatableModel.getColor());
                    }
                });
            }
        }).toJson();
        String json3 = Expression.INSTANCE.match(new Function1<Expression.ExpressionBuilder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                invoke2(expressionBuilder);
                return Unit.INSTANCE;
            }

            public final void invoke2(Expression.ExpressionBuilder match) {
                Intrinsics.checkNotNullParameter(match, "$this$match");
                match.get(AnimatableModel.PART_KEY);
                List list = AnimatableModel.this.modelParts;
                ArrayList<ModelMaterialPart> arrayList = new ArrayList();
                for (Object obj : list) {
                    if (obj instanceof ModelMaterialPart) {
                        arrayList.add(obj);
                    }
                }
                for (final ModelMaterialPart modelMaterialPart : arrayList) {
                    Iterator<T> it = modelMaterialPart.getMaterialOverrides().iterator();
                    while (it.hasNext()) {
                        match.literal((String) it.next());
                        match.number(new Function1<Expression.ExpressionBuilder, Unit>() {
                            {
                                super(1);
                            }

                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder number) {
                                Intrinsics.checkNotNullParameter(number, "$this$number");
                                final ModelMaterialPart modelMaterialPart2 = modelMaterialPart;
                                number.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                        invoke2(expressionBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2(Expression.ExpressionBuilder featureState) {
                                        Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                        featureState.literal(modelMaterialPart2.getFeatureStateId() + "-color-mix-intensity");
                                    }
                                });
                                number.literal(modelMaterialPart.getColorMixIntensity());
                            }
                        });
                    }
                }
                final AnimatableModel animatableModel = AnimatableModel.this;
                match.number(new Function1<Expression.ExpressionBuilder, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                        invoke2(expressionBuilder);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(Expression.ExpressionBuilder number) {
                        Intrinsics.checkNotNullParameter(number, "$this$number");
                        number.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder featureState) {
                                Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                featureState.literal(AnimatableModel.DEFAULT_COLOR_MIX_INTENSITY_FEATURE_STATE_KEY);
                            }
                        });
                        number.literal(animatableModel.getColorMixIntensity());
                    }
                });
            }
        }).toJson();
        String json4 = Expression.INSTANCE.match(new Function1<Expression.ExpressionBuilder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                invoke2(expressionBuilder);
                return Unit.INSTANCE;
            }

            public final void invoke2(Expression.ExpressionBuilder match) {
                Intrinsics.checkNotNullParameter(match, "$this$match");
                match.get(AnimatableModel.PART_KEY);
                List list = AnimatableModel.this.modelParts;
                ArrayList<ModelMaterialPart> arrayList = new ArrayList();
                for (Object obj : list) {
                    if (obj instanceof ModelMaterialPart) {
                        arrayList.add(obj);
                    }
                }
                for (final ModelMaterialPart modelMaterialPart : arrayList) {
                    Iterator<T> it = modelMaterialPart.getMaterialOverrides().iterator();
                    while (it.hasNext()) {
                        match.literal((String) it.next());
                        match.number(new Function1<Expression.ExpressionBuilder, Unit>() {
                            {
                                super(1);
                            }

                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder number) {
                                Intrinsics.checkNotNullParameter(number, "$this$number");
                                final ModelMaterialPart modelMaterialPart2 = modelMaterialPart;
                                number.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                        invoke2(expressionBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2(Expression.ExpressionBuilder featureState) {
                                        Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                        featureState.literal(modelMaterialPart2.getFeatureStateId() + "-emission");
                                    }
                                });
                                number.literal(modelMaterialPart.getEmissiveStrength());
                            }
                        });
                    }
                }
                final AnimatableModel animatableModel = AnimatableModel.this;
                match.number(new Function1<Expression.ExpressionBuilder, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                        invoke2(expressionBuilder);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(Expression.ExpressionBuilder number) {
                        Intrinsics.checkNotNullParameter(number, "$this$number");
                        number.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder featureState) {
                                Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                featureState.literal(AnimatableModel.DEFAULT_EMISSIVE_STRENGTH_FEATURE_STATE_KEY);
                            }
                        });
                        number.literal(animatableModel.getEmissiveStrength());
                    }
                });
            }
        }).toJson();
        String json5 = Expression.INSTANCE.match(new Function1<Expression.ExpressionBuilder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                invoke2(expressionBuilder);
                return Unit.INSTANCE;
            }

            public final void invoke2(Expression.ExpressionBuilder match) {
                Intrinsics.checkNotNullParameter(match, "$this$match");
                match.get(AnimatableModel.PART_KEY);
                List list = AnimatableModel.this.modelParts;
                ArrayList<ModelMaterialPart> arrayList = new ArrayList();
                for (Object obj : list) {
                    if (obj instanceof ModelMaterialPart) {
                        arrayList.add(obj);
                    }
                }
                for (final ModelMaterialPart modelMaterialPart : arrayList) {
                    Iterator<T> it = modelMaterialPart.getMaterialOverrides().iterator();
                    while (it.hasNext()) {
                        match.literal((String) it.next());
                        match.number(new Function1<Expression.ExpressionBuilder, Unit>() {
                            {
                                super(1);
                            }

                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder number) {
                                Intrinsics.checkNotNullParameter(number, "$this$number");
                                final ModelMaterialPart modelMaterialPart2 = modelMaterialPart;
                                number.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                        invoke2(expressionBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke2(Expression.ExpressionBuilder featureState) {
                                        Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                        featureState.literal(modelMaterialPart2.getFeatureStateId() + "-opacity");
                                    }
                                });
                                number.literal(modelMaterialPart.getOpacity());
                            }
                        });
                    }
                }
                final AnimatableModel animatableModel = AnimatableModel.this;
                match.number(new Function1<Expression.ExpressionBuilder, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                        invoke2(expressionBuilder);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(Expression.ExpressionBuilder number) {
                        Intrinsics.checkNotNullParameter(number, "$this$number");
                        number.featureState(new Function1<Expression.ExpressionBuilder, Unit>() {
                            @Override
                            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                                invoke2(expressionBuilder);
                                return Unit.INSTANCE;
                            }

                            public final void invoke2(Expression.ExpressionBuilder featureState) {
                                Intrinsics.checkNotNullParameter(featureState, "$this$featureState");
                                featureState.literal(AnimatableModel.DEFAULT_OPACITY_FEATURE_STATE_KEY);
                            }
                        });
                        number.literal(animatableModel.getOpacity());
                    }
                });
            }
        }).toJson();
        List<ModelPart> list = this.modelParts;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof ModelMaterialPart) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList2, ((ModelMaterialPart) it.next()).getMaterialOverrides());
        }
        ArrayList arrayList3 = arrayList2;
        List<ModelPart> list2 = this.modelParts;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list2) {
            if (obj2 instanceof ModelNodePart) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator it2 = arrayList4.iterator();
        while (it2.hasNext()) {
            CollectionsKt.addAll(arrayList5, ((ModelNodePart) it2.next()).getNodeOverrides());
        }
        return new LocationPuck3D(str, null, 0.0f, null, null, null, null, false, false, null, 0.0f, json4, json5, json, 0, json2, 0.0f, json3, arrayList3, arrayList5, null, null, null, 7423998, null);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/model/AnimatableModel$Companion;", "", "()V", "DEFAULT_COLOR", "", "DEFAULT_COLOR_FEATURE_STATE_KEY", "DEFAULT_COLOR_MIX_INTENSITY", "", "DEFAULT_COLOR_MIX_INTENSITY_FEATURE_STATE_KEY", "DEFAULT_EMISSIVE_STRENGTH", "DEFAULT_EMISSIVE_STRENGTH_FEATURE_STATE_KEY", "DEFAULT_OPACITY", "DEFAULT_OPACITY_FEATURE_STATE_KEY", "DEFAULT_ROTATION", "", "getDEFAULT_ROTATION$plugin_locationcomponent_release", "()Ljava/util/List;", "DEFAULT_ROTATION_FEATURE_STATE_KEY", "PART_KEY", "TAG", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<Double> getDEFAULT_ROTATION$plugin_locationcomponent_release() {
            return AnimatableModel.DEFAULT_ROTATION;
        }
    }

    static {
        Double dValueOf = Double.valueOf(0.0d);
        DEFAULT_ROTATION = CollectionsKt.listOf((Object[]) new Double[]{dValueOf, dValueOf, dValueOf});
    }
}
