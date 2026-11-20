package com.rnmapbox.rnmbx.components.styles;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.joran.action.Action;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.bridge.WritableNativeMap;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.light.LightPosition;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.rnmapbox.rnmbx.utils.ExpressionParser;
import com.rnmapbox.rnmbx.utils.Logger;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 B2\u00020\u0001:\u0001BB\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u0003H\u0002J\u0010\u0010!\u001a\u00020\"2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0010\u0010#\u001a\u00020$2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0010\u0010%\u001a\u00020\u000f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0012\u0010&\u001a\u0004\u0018\u00010\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0006\u0010'\u001a\u00020\u0003J\u0010\u0010(\u001a\u00020\u00172\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0010\u0010)\u001a\u00020*2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0010\u0010+\u001a\u00020,2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0012\u0010-\u001a\u0004\u0018\u00010.2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0010\u0010/\u001a\u00020\r2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0016\u00100\u001a\b\u0012\u0004\u0012\u00020\u0017012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020\u0003012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0012\u00104\u001a\u0004\u0018\u00010\u00052\b\u00106\u001a\u0004\u0018\u00010\u0003J\b\u00107\u001a\u0004\u0018\u00010\u000fJ\u0006\u00108\u001a\u000209J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010:\u001a\u00020\rJ\b\u0010<\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010A\u001a\u00020,H\u0002R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0013\u00103\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b4\u00105R\u0011\u0010;\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b;\u0010 R\u0013\u0010=\u001a\u0004\u0018\u00010>8F¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006C"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleValue;", "", Action.KEY_ATTRIBUTE, "", "config", "Lcom/facebook/react/bridge/ReadableMap;", "<init>", "(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V", SVGParser.XML_STYLESHEET_ATTR_TYPE, "getType", "()Ljava/lang/String;", "getKey", "isExpression", "", "mExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "mPayload", "imageURI", "getImageURI", "setImageURI", "(Ljava/lang/String;)V", "isAddImage", "imageScale", "", "getImageScale", "()Ljava/lang/Double;", "setImageScale", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "isTokenizedValue", "value", "isFunction", "()Z", "getInt", "", "getLong", "", "getIntExpression", "getString", "getEnumName", "getDouble", "getFloat", "", "getDynamic", "Lcom/facebook/react/bridge/Dynamic;", "getArray", "Lcom/facebook/react/bridge/ReadableArray;", "getBoolean", "getFloatArray", "", "getStringArray", "map", "getMap", "()Lcom/facebook/react/bridge/ReadableMap;", "_key", "getExpression", "getLightPosition", "Lcom/mapbox/maps/extension/style/light/LightPosition;", RNMBXStyleFactory.SHOULD_ADD_IMAGE_KEY, "isImageStringValue", "getImageStringValue", "transition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "payload", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXStyleValue {
    public static final int InterpolationModeCategorical = 102;
    public static final int InterpolationModeExponential = 100;
    public static final int InterpolationModeIdentity = 103;
    public static final int InterpolationModeInterval = 101;
    private Double imageScale;
    private String imageURI;
    private boolean isAddImage;
    private boolean isExpression;
    private final String key;
    private Expression mExpression;
    private final ReadableMap mPayload;
    private final String type;

    public RNMBXStyleValue(String str, ReadableMap config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.imageURI = "";
        this.key = str;
        String string = config.getString("styletype");
        this.type = string;
        ReadableMap map = config.getMap("stylevalue");
        this.mPayload = map;
        this.isAddImage = false;
        if (Intrinsics.areEqual("image", string)) {
            this.imageScale = null;
            Intrinsics.checkNotNull(map);
            if (Intrinsics.areEqual("hashmap", map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE))) {
                ReadableMap map2 = getMap();
                Intrinsics.checkNotNull(map2);
                ReadableMap map3 = map2.getMap(ModelSourceWrapper.URL);
                Intrinsics.checkNotNull(map3);
                this.imageURI = map3.getString("value");
                if (map2.getMap("scale") != null) {
                    ReadableMap map4 = map2.getMap("scale");
                    Intrinsics.checkNotNull(map4);
                    this.imageScale = Double.valueOf(map4.getDouble("value"));
                }
            } else if (Intrinsics.areEqual(TypedValues.Custom.S_STRING, map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE))) {
                String string2 = map.getString("value");
                Intrinsics.checkNotNull(string2);
                if (StringsKt.contains$default((CharSequence) string2, (CharSequence) "://", false, 2, (Object) null)) {
                    this.imageURI = string2;
                } else {
                    this.imageURI = null;
                    this.isExpression = true;
                    this.mExpression = Expression.INSTANCE.literal(string2);
                }
            } else {
                this.imageURI = null;
            }
            this.isAddImage = this.imageURI != null;
        }
        if (this.isAddImage) {
            return;
        }
        Intrinsics.checkNotNull(map);
        if (isExpression(map.getDynamic("value"))) {
            this.isExpression = true;
            Logger.INSTANCE.logged(str + " ExpressionParser.fromTyped", new Function0() {
                @Override
                public final Object invoke() {
                    return RNMBXStyleValue._init_$lambda$1(this.f$0);
                }
            });
        }
    }

    public final String getType() {
        return this.type;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getImageURI() {
        return this.imageURI;
    }

    public final void setImageURI(String str) {
        this.imageURI = str;
    }

    public final Double getImageScale() {
        return this.imageScale;
    }

    public final void setImageScale(Double d) {
        this.imageScale = d;
    }

    private final boolean isTokenizedValue(String value) {
        return StringsKt.startsWith$default(value, "{", false, 2, (Object) null) && StringsKt.endsWith$default(value, "}", false, 2, (Object) null);
    }

    public final boolean isFunction() {
        return Intrinsics.areEqual(this.type, "function");
    }

    public final int getInt(String key) {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return readableMap.getInt(key);
    }

    public final long getLong(String key) {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return readableMap.getInt(key);
    }

    public final Expression getIntExpression(String key) {
        Expression.Companion companion = Expression.INSTANCE;
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return companion.literal(readableMap.getInt(key));
    }

    public final String getString(String key) {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return readableMap.getString(key);
    }

    public final String getEnumName() {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        String string = readableMap.getString("value");
        Intrinsics.checkNotNull(string);
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return StringsKt.replace$default(upperCase, "-", "_", false, 4, (Object) null);
    }

    public final double getDouble(String key) {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return readableMap.getDouble(key);
    }

    public final float getFloat(String key) {
        return (float) getDouble(key);
    }

    public final Dynamic getDynamic(String key) {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return readableMap.getDynamic(key);
    }

    public final ReadableArray getArray(String key) {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return readableMap.getArray(key);
    }

    public final boolean getBoolean(String key) {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        Intrinsics.checkNotNull(key);
        return readableMap.getBoolean(key);
    }

    public final List<Double> getFloatArray(String key) {
        ReadableArray array = getArray(key);
        Intrinsics.checkNotNull(array);
        ArrayList arrayList = new ArrayList(array.size());
        int size = array.size();
        for (int i = 0; i < size; i++) {
            ReadableMap map = array.getMap(i);
            if (map == null) {
                Logger.INSTANCE.e("RNMBXStyleValue", "getFloatArray: null value for item: " + i);
            } else if (!Intrinsics.areEqual(map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE), "number")) {
                Logger.INSTANCE.e("RNMBXStyleValue", "getFloatArray: invalid type for item: " + i + " " + map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE) + " expected to be number");
            } else {
                arrayList.add(Double.valueOf(map.getDouble("value")));
            }
        }
        return arrayList;
    }

    public final List<String> getStringArray(String key) {
        ReadableArray array = getArray(key);
        Intrinsics.checkNotNull(array);
        ArrayList arrayList = new ArrayList(array.size());
        int size = array.size();
        for (int i = 0; i < size; i++) {
            ReadableMap map = array.getMap(i);
            String string = map != null ? map.getString("value") : null;
            if (string == null) {
                Logger.INSTANCE.e("RNMBXStyleValue", "getStringArray: null value for item: " + i);
            } else if (!Intrinsics.areEqual(map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE), TypedValues.Custom.S_STRING)) {
                Logger.INSTANCE.e("RNMBXStyleValue", "getStringArray: invalid type for item: " + i + " " + map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE) + " expected to be string");
            } else {
                arrayList.add(string);
            }
        }
        return arrayList;
    }

    public final ReadableMap getMap() {
        ReadableMap map;
        ReadableMap map2;
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        if (!Intrinsics.areEqual("hashmap", readableMap.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE))) {
            return null;
        }
        ReadableArray array = this.mPayload.getArray("value");
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        Intrinsics.checkNotNull(array);
        int size = array.size();
        for (int i = 0; i < size; i++) {
            ReadableArray array2 = array.getArray(i);
            String string = (array2 == null || (map2 = array2.getMap(0)) == null) ? null : map2.getString("value");
            WritableNativeMap writableNativeMap2 = new WritableNativeMap();
            if (array2 != null && (map = array2.getMap(1)) != null) {
                writableNativeMap2.merge(map);
            }
            Intrinsics.checkNotNull(string);
            writableNativeMap.putMap(string, writableNativeMap2);
        }
        return writableNativeMap;
    }

    public final ReadableMap getMap(String _key) {
        return getMap();
    }

    public final Expression getMExpression() {
        return this.mExpression;
    }

    public final LightPosition getLightPosition() {
        return LightPosition.INSTANCE.fromList(getFloatArray("value"));
    }

    public final boolean getIsExpression() {
        return this.isExpression;
    }

    public final boolean getIsAddImage() {
        return this.isAddImage;
    }

    public final boolean isImageStringValue() {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        return Intrinsics.areEqual(TypedValues.Custom.S_STRING, readableMap.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE));
    }

    public final String getImageStringValue() {
        ReadableMap readableMap = this.mPayload;
        Intrinsics.checkNotNull(readableMap);
        return readableMap.getString("value");
    }

    public final StyleTransition getTransition() {
        int i;
        int i2;
        if (!Intrinsics.areEqual(this.type, "transition")) {
            return null;
        }
        ReadableMap map = getMap("value");
        Intrinsics.checkNotNull(map);
        if (map.hasKey("enablePlacementTransitions")) {
            ReadableMap map2 = map.getMap("enablePlacementTransitions");
            Intrinsics.checkNotNull(map2);
            map2.getBoolean("value");
        }
        if (map.hasKey(TypedValues.TransitionType.S_DURATION) && ReadableType.Map == map.getType(TypedValues.TransitionType.S_DURATION)) {
            ReadableMap map3 = map.getMap(TypedValues.TransitionType.S_DURATION);
            Intrinsics.checkNotNull(map3);
            i = map3.getInt("value");
        } else {
            i = 300;
        }
        if (map.hasKey(BackgroundFetchConfig.FIELD_DELAY) && ReadableType.Map == map.getType(BackgroundFetchConfig.FIELD_DELAY)) {
            ReadableMap map4 = map.getMap(BackgroundFetchConfig.FIELD_DELAY);
            Intrinsics.checkNotNull(map4);
            i2 = map4.getInt("value");
        } else {
            i2 = 0;
        }
        return new StyleTransition.Builder().duration(i).delay(i2).build();
    }

    public static final Unit _init_$lambda$1(RNMBXStyleValue rNMBXStyleValue) {
        rNMBXStyleValue.mExpression = ExpressionParser.fromTyped(rNMBXStyleValue.mPayload);
        return Unit.INSTANCE;
    }

    private final boolean isExpression(Dynamic payload) {
        ReadableArray readableArrayAsArray;
        ReadableMap map;
        if (payload.getType() != ReadableType.Array || (readableArrayAsArray = payload.asArray()) == null) {
            return false;
        }
        while (readableArrayAsArray.size() > 0 && readableArrayAsArray.getType(0) == ReadableType.Map) {
            ReadableMap map2 = readableArrayAsArray.getMap(0);
            if (map2 != null) {
                if (!Intrinsics.areEqual(map2.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE), "array")) {
                    break;
                }
                readableArrayAsArray = map2.getArray("value");
                if (readableArrayAsArray == null) {
                    return false;
                }
            } else {
                return false;
            }
        }
        if (readableArrayAsArray.size() == 0 || readableArrayAsArray.getType(0) != ReadableType.Map || (map = readableArrayAsArray.getMap(0)) == null) {
            return false;
        }
        return Intrinsics.areEqual(map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE), TypedValues.Custom.S_STRING);
    }
}
