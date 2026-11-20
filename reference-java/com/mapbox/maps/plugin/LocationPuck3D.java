package com.mapbox.maps.plugin;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\bc\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u009d\u0002\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010 J\t\u0010f\u001a\u00020\u0003HÆ\u0003J\t\u0010g\u001a\u00020\u0010HÆ\u0003J\t\u0010h\u001a\u00020\u0006HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010l\u001a\u00020\u0016HÆ\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010n\u001a\u00020\u0006HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010p\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\u000f\u0010q\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\t\u0010s\u001a\u00020\u001dHÆ\u0003J\t\u0010t\u001a\u00020\u0003HÆ\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010v\u001a\u00020\u0006HÆ\u0003J\u000f\u0010w\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010y\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010z\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010{\u001a\u00020\rHÆ\u0003J\t\u0010|\u001a\u00020\rHÆ\u0003J¡\u0002\u0010}\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010~\u001a\u00020\u0016HÖ\u0001J\u0015\u0010\u007f\u001a\u00020\r2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001HÖ\u0003J\n\u0010\u0082\u0001\u001a\u00020\u0016HÖ\u0001J\n\u0010\u0083\u0001\u001a\u00020\u0003HÖ\u0001J\u001e\u0010\u0084\u0001\u001a\u00030\u0085\u00012\b\u0010\u0086\u0001\u001a\u00030\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020\u0016HÖ\u0001R*\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b'\u0010\"\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u0010\u0018\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00101\"\u0004\b9\u00103R$\u0010\u001e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b:\u0010\"\u001a\u0004\b;\u00101\"\u0004\b<\u00103R&\u0010\u001f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b=\u0010\"\u001a\u0004\b>\u00101\"\u0004\b?\u00103R$\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b@\u0010\"\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u00105\"\u0004\bF\u00107R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u00101\"\u0004\bH\u00103R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u00105\"\u0004\bJ\u00107R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u00101\"\u0004\bL\u00103R$\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bM\u0010\"\u001a\u0004\bN\u0010)\"\u0004\bO\u0010+R \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010$\"\u0004\bQ\u0010&R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u00101\"\u0004\bS\u00103R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010$\"\u0004\bU\u0010&R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u00101\"\u0004\bW\u00103R$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bX\u0010\"\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010$\"\u0004\b^\u0010&R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u00101\"\u0004\b`\u00103R*\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\ba\u0010\"\u001a\u0004\bb\u0010$\"\u0004\bc\u0010&R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010$\"\u0004\be\u0010&¨\u0006\u0089\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/LocationPuck3D;", "Lcom/mapbox/maps/plugin/LocationPuck;", "modelUri", "", "position", "", "", "modelOpacity", "modelScale", "modelScaleExpression", "modelTranslation", "modelRotation", "modelCastShadows", "", "modelReceiveShadows", "modelScaleMode", "Lcom/mapbox/maps/plugin/ModelScaleMode;", "modelEmissiveStrength", "modelEmissiveStrengthExpression", "modelOpacityExpression", "modelRotationExpression", "modelColor", "", "modelColorExpression", "modelColorMixIntensity", "modelColorMixIntensityExpression", ModelSourceWrapper.MATERIAL_OVERRIDES, ModelSourceWrapper.NODE_OVERRIDES, "modelElevationReference", "Lcom/mapbox/maps/plugin/ModelElevationReference;", "modelColorUseTheme", "modelColorUseThemeExpression", "(Ljava/lang/String;Ljava/util/List;FLjava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZLcom/mapbox/maps/plugin/ModelScaleMode;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mapbox/maps/plugin/ModelElevationReference;Ljava/lang/String;Ljava/lang/String;)V", "getMaterialOverrides$annotations", "()V", "getMaterialOverrides", "()Ljava/util/List;", "setMaterialOverrides", "(Ljava/util/List;)V", "getModelCastShadows$annotations", "getModelCastShadows", "()Z", "setModelCastShadows", "(Z)V", "getModelColor", "()I", "setModelColor", "(I)V", "getModelColorExpression", "()Ljava/lang/String;", "setModelColorExpression", "(Ljava/lang/String;)V", "getModelColorMixIntensity", "()F", "setModelColorMixIntensity", "(F)V", "getModelColorMixIntensityExpression", "setModelColorMixIntensityExpression", "getModelColorUseTheme$annotations", "getModelColorUseTheme", "setModelColorUseTheme", "getModelColorUseThemeExpression$annotations", "getModelColorUseThemeExpression", "setModelColorUseThemeExpression", "getModelElevationReference$annotations", "getModelElevationReference", "()Lcom/mapbox/maps/plugin/ModelElevationReference;", "setModelElevationReference", "(Lcom/mapbox/maps/plugin/ModelElevationReference;)V", "getModelEmissiveStrength", "setModelEmissiveStrength", "getModelEmissiveStrengthExpression", "setModelEmissiveStrengthExpression", "getModelOpacity", "setModelOpacity", "getModelOpacityExpression", "setModelOpacityExpression", "getModelReceiveShadows$annotations", "getModelReceiveShadows", "setModelReceiveShadows", "getModelRotation", "setModelRotation", "getModelRotationExpression", "setModelRotationExpression", "getModelScale", "setModelScale", "getModelScaleExpression", "setModelScaleExpression", "getModelScaleMode$annotations", "getModelScaleMode", "()Lcom/mapbox/maps/plugin/ModelScaleMode;", "setModelScaleMode", "(Lcom/mapbox/maps/plugin/ModelScaleMode;)V", "getModelTranslation", "setModelTranslation", "getModelUri", "setModelUri", "getNodeOverrides$annotations", "getNodeOverrides", "setNodeOverrides", "getPosition", "setPosition", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationPuck3D extends LocationPuck {
    public static final Parcelable.Creator<LocationPuck3D> CREATOR = new Creator();
    private List<String> materialOverrides;
    private boolean modelCastShadows;
    private int modelColor;
    private String modelColorExpression;
    private float modelColorMixIntensity;
    private String modelColorMixIntensityExpression;
    private String modelColorUseTheme;
    private String modelColorUseThemeExpression;
    private ModelElevationReference modelElevationReference;
    private float modelEmissiveStrength;
    private String modelEmissiveStrengthExpression;
    private float modelOpacity;
    private String modelOpacityExpression;
    private boolean modelReceiveShadows;
    private List<Float> modelRotation;
    private String modelRotationExpression;
    private List<Float> modelScale;
    private String modelScaleExpression;
    private ModelScaleMode modelScaleMode;
    private List<Float> modelTranslation;
    private String modelUri;
    private List<String> nodeOverrides;
    private List<Float> position;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<LocationPuck3D> {
        @Override
        public final LocationPuck3D createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            String string = parcel.readString();
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(Float.valueOf(parcel.readFloat()));
            }
            ArrayList arrayList2 = arrayList;
            float f = parcel.readFloat();
            int i3 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList(i3);
            for (int i4 = 0; i4 != i3; i4++) {
                arrayList3.add(Float.valueOf(parcel.readFloat()));
            }
            ArrayList arrayList4 = arrayList3;
            String string2 = parcel.readString();
            int i5 = parcel.readInt();
            ArrayList arrayList5 = new ArrayList(i5);
            for (int i6 = 0; i6 != i5; i6++) {
                arrayList5.add(Float.valueOf(parcel.readFloat()));
            }
            ArrayList arrayList6 = arrayList5;
            int i7 = parcel.readInt();
            ArrayList arrayList7 = new ArrayList(i7);
            for (int i8 = 0; i8 != i7; i8++) {
                arrayList7.add(Float.valueOf(parcel.readFloat()));
            }
            return new LocationPuck3D(string, arrayList2, f, arrayList4, string2, arrayList6, arrayList7, parcel.readInt() != 0, parcel.readInt() != 0, ModelScaleMode.valueOf(parcel.readString()), parcel.readFloat(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readFloat(), parcel.readString(), parcel.createStringArrayList(), parcel.createStringArrayList(), ModelElevationReference.valueOf(parcel.readString()), parcel.readString(), parcel.readString());
        }

        @Override
        public final LocationPuck3D[] newArray(int i) {
            return new LocationPuck3D[i];
        }
    }

    public LocationPuck3D(String modelUri) {
        this(modelUri, null, 0.0f, null, null, null, null, false, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388606, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
    }

    public LocationPuck3D(String modelUri, List<Float> position) {
        this(modelUri, position, 0.0f, null, null, null, null, false, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388604, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f) {
        this(modelUri, position, f, null, null, null, null, false, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388600, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale) {
        this(modelUri, position, f, modelScale, null, null, null, false, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388592, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str) {
        this(modelUri, position, f, modelScale, str, null, null, false, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388576, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation) {
        this(modelUri, position, f, modelScale, str, modelTranslation, null, false, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388544, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, false, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388480, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, false, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388352, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, null, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8388096, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, 0.0f, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8387584, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, null, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8386560, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, null, null, 0, null, 0.0f, null, null, null, null, null, null, 8384512, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, null, 0, null, 0.0f, null, null, null, null, null, null, 8380416, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, 0, null, 0.0f, null, null, null, null, null, null, 8372224, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, null, 0.0f, null, null, null, null, null, null, 8355840, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, str5, 0.0f, null, null, null, null, null, null, 8323072, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5, float f3) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, str5, f3, null, null, null, null, null, null, 8257536, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5, float f3, String str6) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, str5, f3, str6, null, null, null, null, null, 8126464, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5, float f3, String str6, List<String> materialOverrides) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, str5, f3, str6, materialOverrides, null, null, null, null, 7864320, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5, float f3, String str6, List<String> materialOverrides, List<String> nodeOverrides) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, str5, f3, str6, materialOverrides, nodeOverrides, null, null, null, 7340032, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
        Intrinsics.checkNotNullParameter(nodeOverrides, "nodeOverrides");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5, float f3, String str6, List<String> materialOverrides, List<String> nodeOverrides, ModelElevationReference modelElevationReference) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, str5, f3, str6, materialOverrides, nodeOverrides, modelElevationReference, null, null, 6291456, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
        Intrinsics.checkNotNullParameter(nodeOverrides, "nodeOverrides");
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5, float f3, String str6, List<String> materialOverrides, List<String> nodeOverrides, ModelElevationReference modelElevationReference, String modelColorUseTheme) {
        this(modelUri, position, f, modelScale, str, modelTranslation, modelRotation, z, z2, modelScaleMode, f2, str2, str3, str4, i, str5, f3, str6, materialOverrides, nodeOverrides, modelElevationReference, modelColorUseTheme, null, 4194304, null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
        Intrinsics.checkNotNullParameter(nodeOverrides, "nodeOverrides");
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
        Intrinsics.checkNotNullParameter(modelColorUseTheme, "modelColorUseTheme");
    }

    public static LocationPuck3D copy$default(LocationPuck3D locationPuck3D, String str, List list, float f, List list2, String str2, List list3, List list4, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str3, String str4, String str5, int i, String str6, float f3, String str7, List list5, List list6, ModelElevationReference modelElevationReference, String str8, String str9, int i2, Object obj) {
        String str10;
        String str11;
        String str12 = (i2 & 1) != 0 ? locationPuck3D.modelUri : str;
        List list7 = (i2 & 2) != 0 ? locationPuck3D.position : list;
        float f4 = (i2 & 4) != 0 ? locationPuck3D.modelOpacity : f;
        List list8 = (i2 & 8) != 0 ? locationPuck3D.modelScale : list2;
        String str13 = (i2 & 16) != 0 ? locationPuck3D.modelScaleExpression : str2;
        List list9 = (i2 & 32) != 0 ? locationPuck3D.modelTranslation : list3;
        List list10 = (i2 & 64) != 0 ? locationPuck3D.modelRotation : list4;
        boolean z3 = (i2 & 128) != 0 ? locationPuck3D.modelCastShadows : z;
        boolean z4 = (i2 & 256) != 0 ? locationPuck3D.modelReceiveShadows : z2;
        ModelScaleMode modelScaleMode2 = (i2 & 512) != 0 ? locationPuck3D.modelScaleMode : modelScaleMode;
        float f5 = (i2 & 1024) != 0 ? locationPuck3D.modelEmissiveStrength : f2;
        String str14 = (i2 & 2048) != 0 ? locationPuck3D.modelEmissiveStrengthExpression : str3;
        String str15 = (i2 & 4096) != 0 ? locationPuck3D.modelOpacityExpression : str4;
        String str16 = (i2 & 8192) != 0 ? locationPuck3D.modelRotationExpression : str5;
        String str17 = str12;
        int i3 = (i2 & 16384) != 0 ? locationPuck3D.modelColor : i;
        String str18 = (i2 & 32768) != 0 ? locationPuck3D.modelColorExpression : str6;
        float f6 = (i2 & 65536) != 0 ? locationPuck3D.modelColorMixIntensity : f3;
        String str19 = (i2 & 131072) != 0 ? locationPuck3D.modelColorMixIntensityExpression : str7;
        List list11 = (i2 & 262144) != 0 ? locationPuck3D.materialOverrides : list5;
        List list12 = (i2 & 524288) != 0 ? locationPuck3D.nodeOverrides : list6;
        ModelElevationReference modelElevationReference2 = (i2 & 1048576) != 0 ? locationPuck3D.modelElevationReference : modelElevationReference;
        String str20 = (i2 & 2097152) != 0 ? locationPuck3D.modelColorUseTheme : str8;
        if ((i2 & 4194304) != 0) {
            str11 = str20;
            str10 = locationPuck3D.modelColorUseThemeExpression;
        } else {
            str10 = str9;
            str11 = str20;
        }
        return locationPuck3D.copy(str17, list7, f4, list8, str13, list9, list10, z3, z4, modelScaleMode2, f5, str14, str15, str16, i3, str18, f6, str19, list11, list12, modelElevationReference2, str11, str10);
    }

    public static void getMaterialOverrides$annotations() {
    }

    public static void getModelCastShadows$annotations() {
    }

    public static void getModelColorUseTheme$annotations() {
    }

    public static void getModelColorUseThemeExpression$annotations() {
    }

    public static void getModelElevationReference$annotations() {
    }

    public static void getModelReceiveShadows$annotations() {
    }

    public static void getModelScaleMode$annotations() {
    }

    public static void getNodeOverrides$annotations() {
    }

    public final String getModelUri() {
        return this.modelUri;
    }

    public final ModelScaleMode getModelScaleMode() {
        return this.modelScaleMode;
    }

    public final float getModelEmissiveStrength() {
        return this.modelEmissiveStrength;
    }

    public final String getModelEmissiveStrengthExpression() {
        return this.modelEmissiveStrengthExpression;
    }

    public final String getModelOpacityExpression() {
        return this.modelOpacityExpression;
    }

    public final String getModelRotationExpression() {
        return this.modelRotationExpression;
    }

    public final int getModelColor() {
        return this.modelColor;
    }

    public final String getModelColorExpression() {
        return this.modelColorExpression;
    }

    public final float getModelColorMixIntensity() {
        return this.modelColorMixIntensity;
    }

    public final String getModelColorMixIntensityExpression() {
        return this.modelColorMixIntensityExpression;
    }

    public final List<String> component19() {
        return this.materialOverrides;
    }

    public final List<Float> component2() {
        return this.position;
    }

    public final List<String> component20() {
        return this.nodeOverrides;
    }

    public final ModelElevationReference getModelElevationReference() {
        return this.modelElevationReference;
    }

    public final String getModelColorUseTheme() {
        return this.modelColorUseTheme;
    }

    public final String getModelColorUseThemeExpression() {
        return this.modelColorUseThemeExpression;
    }

    public final float getModelOpacity() {
        return this.modelOpacity;
    }

    public final List<Float> component4() {
        return this.modelScale;
    }

    public final String getModelScaleExpression() {
        return this.modelScaleExpression;
    }

    public final List<Float> component6() {
        return this.modelTranslation;
    }

    public final List<Float> component7() {
        return this.modelRotation;
    }

    public final boolean getModelCastShadows() {
        return this.modelCastShadows;
    }

    public final boolean getModelReceiveShadows() {
        return this.modelReceiveShadows;
    }

    public final LocationPuck3D copy(String modelUri, List<Float> position, float modelOpacity, List<Float> modelScale, String modelScaleExpression, List<Float> modelTranslation, List<Float> modelRotation, boolean modelCastShadows, boolean modelReceiveShadows, ModelScaleMode modelScaleMode, float modelEmissiveStrength, String modelEmissiveStrengthExpression, String modelOpacityExpression, String modelRotationExpression, int modelColor, String modelColorExpression, float modelColorMixIntensity, String modelColorMixIntensityExpression, List<String> materialOverrides, List<String> nodeOverrides, ModelElevationReference modelElevationReference, String modelColorUseTheme, String modelColorUseThemeExpression) {
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
        Intrinsics.checkNotNullParameter(nodeOverrides, "nodeOverrides");
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
        Intrinsics.checkNotNullParameter(modelColorUseTheme, "modelColorUseTheme");
        return new LocationPuck3D(modelUri, position, modelOpacity, modelScale, modelScaleExpression, modelTranslation, modelRotation, modelCastShadows, modelReceiveShadows, modelScaleMode, modelEmissiveStrength, modelEmissiveStrengthExpression, modelOpacityExpression, modelRotationExpression, modelColor, modelColorExpression, modelColorMixIntensity, modelColorMixIntensityExpression, materialOverrides, nodeOverrides, modelElevationReference, modelColorUseTheme, modelColorUseThemeExpression);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationPuck3D)) {
            return false;
        }
        LocationPuck3D locationPuck3D = (LocationPuck3D) other;
        return Intrinsics.areEqual(this.modelUri, locationPuck3D.modelUri) && Intrinsics.areEqual(this.position, locationPuck3D.position) && Float.compare(this.modelOpacity, locationPuck3D.modelOpacity) == 0 && Intrinsics.areEqual(this.modelScale, locationPuck3D.modelScale) && Intrinsics.areEqual(this.modelScaleExpression, locationPuck3D.modelScaleExpression) && Intrinsics.areEqual(this.modelTranslation, locationPuck3D.modelTranslation) && Intrinsics.areEqual(this.modelRotation, locationPuck3D.modelRotation) && this.modelCastShadows == locationPuck3D.modelCastShadows && this.modelReceiveShadows == locationPuck3D.modelReceiveShadows && this.modelScaleMode == locationPuck3D.modelScaleMode && Float.compare(this.modelEmissiveStrength, locationPuck3D.modelEmissiveStrength) == 0 && Intrinsics.areEqual(this.modelEmissiveStrengthExpression, locationPuck3D.modelEmissiveStrengthExpression) && Intrinsics.areEqual(this.modelOpacityExpression, locationPuck3D.modelOpacityExpression) && Intrinsics.areEqual(this.modelRotationExpression, locationPuck3D.modelRotationExpression) && this.modelColor == locationPuck3D.modelColor && Intrinsics.areEqual(this.modelColorExpression, locationPuck3D.modelColorExpression) && Float.compare(this.modelColorMixIntensity, locationPuck3D.modelColorMixIntensity) == 0 && Intrinsics.areEqual(this.modelColorMixIntensityExpression, locationPuck3D.modelColorMixIntensityExpression) && Intrinsics.areEqual(this.materialOverrides, locationPuck3D.materialOverrides) && Intrinsics.areEqual(this.nodeOverrides, locationPuck3D.nodeOverrides) && this.modelElevationReference == locationPuck3D.modelElevationReference && Intrinsics.areEqual(this.modelColorUseTheme, locationPuck3D.modelColorUseTheme) && Intrinsics.areEqual(this.modelColorUseThemeExpression, locationPuck3D.modelColorUseThemeExpression);
    }

    public int hashCode() {
        int iHashCode = ((((((this.modelUri.hashCode() * 31) + this.position.hashCode()) * 31) + Float.hashCode(this.modelOpacity)) * 31) + this.modelScale.hashCode()) * 31;
        String str = this.modelScaleExpression;
        int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.modelTranslation.hashCode()) * 31) + this.modelRotation.hashCode()) * 31;
        boolean z = this.modelCastShadows;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode2 + r1) * 31;
        boolean z2 = this.modelReceiveShadows;
        int iHashCode3 = (((((i + (z2 ? 1 : z2)) * 31) + this.modelScaleMode.hashCode()) * 31) + Float.hashCode(this.modelEmissiveStrength)) * 31;
        String str2 = this.modelEmissiveStrengthExpression;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.modelOpacityExpression;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.modelRotationExpression;
        int iHashCode6 = (((iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31) + Integer.hashCode(this.modelColor)) * 31;
        String str5 = this.modelColorExpression;
        int iHashCode7 = (((iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31) + Float.hashCode(this.modelColorMixIntensity)) * 31;
        String str6 = this.modelColorMixIntensityExpression;
        int iHashCode8 = (((((((((iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31) + this.materialOverrides.hashCode()) * 31) + this.nodeOverrides.hashCode()) * 31) + this.modelElevationReference.hashCode()) * 31) + this.modelColorUseTheme.hashCode()) * 31;
        String str7 = this.modelColorUseThemeExpression;
        return iHashCode8 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LocationPuck3D(modelUri=");
        sb.append(this.modelUri).append(", position=").append(this.position).append(", modelOpacity=").append(this.modelOpacity).append(", modelScale=").append(this.modelScale).append(", modelScaleExpression=").append(this.modelScaleExpression).append(", modelTranslation=").append(this.modelTranslation).append(", modelRotation=").append(this.modelRotation).append(", modelCastShadows=").append(this.modelCastShadows).append(", modelReceiveShadows=").append(this.modelReceiveShadows).append(", modelScaleMode=").append(this.modelScaleMode).append(", modelEmissiveStrength=").append(this.modelEmissiveStrength).append(", modelEmissiveStrengthExpression=");
        sb.append(this.modelEmissiveStrengthExpression).append(", modelOpacityExpression=").append(this.modelOpacityExpression).append(", modelRotationExpression=").append(this.modelRotationExpression).append(", modelColor=").append(this.modelColor).append(", modelColorExpression=").append(this.modelColorExpression).append(", modelColorMixIntensity=").append(this.modelColorMixIntensity).append(", modelColorMixIntensityExpression=").append(this.modelColorMixIntensityExpression).append(", materialOverrides=").append(this.materialOverrides).append(", nodeOverrides=").append(this.nodeOverrides).append(", modelElevationReference=").append(this.modelElevationReference).append(", modelColorUseTheme=").append(this.modelColorUseTheme).append(", modelColorUseThemeExpression=").append(this.modelColorUseThemeExpression);
        sb.append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return sb.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeString(this.modelUri);
        List<Float> list = this.position;
        parcel.writeInt(list.size());
        Iterator<Float> it = list.iterator();
        while (it.hasNext()) {
            parcel.writeFloat(it.next().floatValue());
        }
        parcel.writeFloat(this.modelOpacity);
        List<Float> list2 = this.modelScale;
        parcel.writeInt(list2.size());
        Iterator<Float> it2 = list2.iterator();
        while (it2.hasNext()) {
            parcel.writeFloat(it2.next().floatValue());
        }
        parcel.writeString(this.modelScaleExpression);
        List<Float> list3 = this.modelTranslation;
        parcel.writeInt(list3.size());
        Iterator<Float> it3 = list3.iterator();
        while (it3.hasNext()) {
            parcel.writeFloat(it3.next().floatValue());
        }
        List<Float> list4 = this.modelRotation;
        parcel.writeInt(list4.size());
        Iterator<Float> it4 = list4.iterator();
        while (it4.hasNext()) {
            parcel.writeFloat(it4.next().floatValue());
        }
        parcel.writeInt(this.modelCastShadows ? 1 : 0);
        parcel.writeInt(this.modelReceiveShadows ? 1 : 0);
        parcel.writeString(this.modelScaleMode.name());
        parcel.writeFloat(this.modelEmissiveStrength);
        parcel.writeString(this.modelEmissiveStrengthExpression);
        parcel.writeString(this.modelOpacityExpression);
        parcel.writeString(this.modelRotationExpression);
        parcel.writeInt(this.modelColor);
        parcel.writeString(this.modelColorExpression);
        parcel.writeFloat(this.modelColorMixIntensity);
        parcel.writeString(this.modelColorMixIntensityExpression);
        parcel.writeStringList(this.materialOverrides);
        parcel.writeStringList(this.nodeOverrides);
        parcel.writeString(this.modelElevationReference.name());
        parcel.writeString(this.modelColorUseTheme);
        parcel.writeString(this.modelColorUseThemeExpression);
    }

    public final String getModelUri() {
        return this.modelUri;
    }

    public final void setModelUri(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.modelUri = str;
    }

    public LocationPuck3D(String str, List list, float f, List list2, String str2, List list3, List list4, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str3, String str4, String str5, int i, String str6, float f3, String str7, List list5, List list6, ModelElevationReference modelElevationReference, String str8, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        int i3 = i2 & 2;
        Float fValueOf = Float.valueOf(0.0f);
        this(str, i3 != 0 ? CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf}) : list, (i2 & 4) != 0 ? 1.0f : f, (i2 & 8) != 0 ? CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(1.0f)}) : list2, (i2 & 16) != 0 ? null : str2, (i2 & 32) != 0 ? CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf, fValueOf}) : list3, (i2 & 64) != 0 ? CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf, Float.valueOf(90.0f)}) : list4, (i2 & 128) != 0 ? true : z, (i2 & 256) == 0 ? z2 : true, (i2 & 512) != 0 ? ModelScaleMode.VIEWPORT : modelScaleMode, (i2 & 1024) == 0 ? f2 : 1.0f, (i2 & 2048) != 0 ? null : str3, (i2 & 4096) != 0 ? null : str4, (i2 & 8192) != 0 ? null : str5, (i2 & 16384) != 0 ? Color.parseColor(AnimatableModel.DEFAULT_COLOR) : i, (i2 & 32768) != 0 ? null : str6, (i2 & 65536) != 0 ? 0.0f : f3, (i2 & 131072) != 0 ? null : str7, (i2 & 262144) != 0 ? CollectionsKt.emptyList() : list5, (i2 & 524288) != 0 ? CollectionsKt.emptyList() : list6, (i2 & 1048576) != 0 ? ModelElevationReference.GROUND : modelElevationReference, (i2 & 2097152) != 0 ? "default" : str8, (i2 & 4194304) != 0 ? null : str9);
    }

    public final List<Float> getPosition() {
        return this.position;
    }

    public final void setPosition(List<Float> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.position = list;
    }

    public final float getModelOpacity() {
        return this.modelOpacity;
    }

    public final void setModelOpacity(float f) {
        this.modelOpacity = f;
    }

    public final List<Float> getModelScale() {
        return this.modelScale;
    }

    public final void setModelScale(List<Float> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.modelScale = list;
    }

    public final String getModelScaleExpression() {
        return this.modelScaleExpression;
    }

    public final void setModelScaleExpression(String str) {
        this.modelScaleExpression = str;
    }

    public final List<Float> getModelTranslation() {
        return this.modelTranslation;
    }

    public final void setModelTranslation(List<Float> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.modelTranslation = list;
    }

    public final List<Float> getModelRotation() {
        return this.modelRotation;
    }

    public final void setModelRotation(List<Float> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.modelRotation = list;
    }

    public final boolean getModelCastShadows() {
        return this.modelCastShadows;
    }

    public final void setModelCastShadows(boolean z) {
        this.modelCastShadows = z;
    }

    public final boolean getModelReceiveShadows() {
        return this.modelReceiveShadows;
    }

    public final void setModelReceiveShadows(boolean z) {
        this.modelReceiveShadows = z;
    }

    public final ModelScaleMode getModelScaleMode() {
        return this.modelScaleMode;
    }

    public final void setModelScaleMode(ModelScaleMode modelScaleMode) {
        Intrinsics.checkNotNullParameter(modelScaleMode, "<set-?>");
        this.modelScaleMode = modelScaleMode;
    }

    public final float getModelEmissiveStrength() {
        return this.modelEmissiveStrength;
    }

    public final void setModelEmissiveStrength(float f) {
        this.modelEmissiveStrength = f;
    }

    public final String getModelEmissiveStrengthExpression() {
        return this.modelEmissiveStrengthExpression;
    }

    public final void setModelEmissiveStrengthExpression(String str) {
        this.modelEmissiveStrengthExpression = str;
    }

    public final String getModelOpacityExpression() {
        return this.modelOpacityExpression;
    }

    public final void setModelOpacityExpression(String str) {
        this.modelOpacityExpression = str;
    }

    public final String getModelRotationExpression() {
        return this.modelRotationExpression;
    }

    public final void setModelRotationExpression(String str) {
        this.modelRotationExpression = str;
    }

    public final int getModelColor() {
        return this.modelColor;
    }

    public final void setModelColor(int i) {
        this.modelColor = i;
    }

    public final String getModelColorExpression() {
        return this.modelColorExpression;
    }

    public final void setModelColorExpression(String str) {
        this.modelColorExpression = str;
    }

    public final float getModelColorMixIntensity() {
        return this.modelColorMixIntensity;
    }

    public final void setModelColorMixIntensity(float f) {
        this.modelColorMixIntensity = f;
    }

    public final String getModelColorMixIntensityExpression() {
        return this.modelColorMixIntensityExpression;
    }

    public final void setModelColorMixIntensityExpression(String str) {
        this.modelColorMixIntensityExpression = str;
    }

    public final List<String> getMaterialOverrides() {
        return this.materialOverrides;
    }

    public final void setMaterialOverrides(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.materialOverrides = list;
    }

    public final List<String> getNodeOverrides() {
        return this.nodeOverrides;
    }

    public final void setNodeOverrides(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.nodeOverrides = list;
    }

    public final ModelElevationReference getModelElevationReference() {
        return this.modelElevationReference;
    }

    public final void setModelElevationReference(ModelElevationReference modelElevationReference) {
        Intrinsics.checkNotNullParameter(modelElevationReference, "<set-?>");
        this.modelElevationReference = modelElevationReference;
    }

    public final String getModelColorUseTheme() {
        return this.modelColorUseTheme;
    }

    public final void setModelColorUseTheme(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.modelColorUseTheme = str;
    }

    public final String getModelColorUseThemeExpression() {
        return this.modelColorUseThemeExpression;
    }

    public final void setModelColorUseThemeExpression(String str) {
        this.modelColorUseThemeExpression = str;
    }

    public LocationPuck3D(String modelUri, List<Float> position, float f, List<Float> modelScale, String str, List<Float> modelTranslation, List<Float> modelRotation, boolean z, boolean z2, ModelScaleMode modelScaleMode, float f2, String str2, String str3, String str4, int i, String str5, float f3, String str6, List<String> materialOverrides, List<String> nodeOverrides, ModelElevationReference modelElevationReference, String modelColorUseTheme, String str7) {
        super(null);
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(modelScale, "modelScale");
        Intrinsics.checkNotNullParameter(modelTranslation, "modelTranslation");
        Intrinsics.checkNotNullParameter(modelRotation, "modelRotation");
        Intrinsics.checkNotNullParameter(modelScaleMode, "modelScaleMode");
        Intrinsics.checkNotNullParameter(materialOverrides, "materialOverrides");
        Intrinsics.checkNotNullParameter(nodeOverrides, "nodeOverrides");
        Intrinsics.checkNotNullParameter(modelElevationReference, "modelElevationReference");
        Intrinsics.checkNotNullParameter(modelColorUseTheme, "modelColorUseTheme");
        this.modelUri = modelUri;
        this.position = position;
        this.modelOpacity = f;
        this.modelScale = modelScale;
        this.modelScaleExpression = str;
        this.modelTranslation = modelTranslation;
        this.modelRotation = modelRotation;
        this.modelCastShadows = z;
        this.modelReceiveShadows = z2;
        this.modelScaleMode = modelScaleMode;
        this.modelEmissiveStrength = f2;
        this.modelEmissiveStrengthExpression = str2;
        this.modelOpacityExpression = str3;
        this.modelRotationExpression = str4;
        this.modelColor = i;
        this.modelColorExpression = str5;
        this.modelColorMixIntensity = f3;
        this.modelColorMixIntensityExpression = str6;
        this.materialOverrides = materialOverrides;
        this.nodeOverrides = nodeOverrides;
        this.modelElevationReference = modelElevationReference;
        this.modelColorUseTheme = modelColorUseTheme;
        this.modelColorUseThemeExpression = str7;
    }
}
