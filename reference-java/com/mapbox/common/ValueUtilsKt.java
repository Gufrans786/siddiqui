package com.mapbox.common;

import android.os.BaseBundle;
import android.os.Bundle;
import com.mapbox.bindgen.Value;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\u001a\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0007\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0003*\u00020\u0005H\u0002\u001a\u0011\u0010\u0006\u001a\u00020\u0003*\u0004\u0018\u00010\b¢\u0006\u0002\u0010\t\u001a\u001b\u0010\u0006\u001a\u00020\u0003*\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\b¢\u0006\u0002\u0010\f\u001a\u001b\u0010\u0006\u001a\u00020\u0003*\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000b\u001a\u00020\b¢\u0006\u0002\u0010\u000e\u001a\u0011\u0010\u0006\u001a\u00020\u0003*\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010\u001a\u0011\u0010\u0006\u001a\u00020\u0003*\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012\u001a\f\u0010\u0006\u001a\u00020\u0003*\u0004\u0018\u00010\u0001\u001a*\u0010\u0006\u001a\u00020\u0003*\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0014\u001a\u0012\u0010\u0006\u001a\u00020\u0003*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"TAG", "", "arrayToValue", "Lcom/mapbox/bindgen/Value;", "array", "", "toValue", "Landroid/os/BaseBundle;", "", "(Ljava/lang/Boolean;)Lcom/mapbox/bindgen/Value;", "", "requireIsFinite", "(Ljava/lang/Double;Z)Lcom/mapbox/bindgen/Value;", "", "(Ljava/lang/Float;Z)Lcom/mapbox/bindgen/Value;", "", "(Ljava/lang/Integer;)Lcom/mapbox/bindgen/Value;", "", "(Ljava/lang/Long;)Lcom/mapbox/bindgen/Value;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "", "common_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ValueUtilsKt {
    private static final String TAG = "ValueUtils";

    public static final Value toValue(BaseBundle baseBundle) {
        Intrinsics.checkNotNullParameter(baseBundle, "<this>");
        HashMap map = new HashMap();
        if (baseBundle.isEmpty()) {
            Value valueValueOf = Value.valueOf((HashMap<String, Value>) map);
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(map)");
            return valueValueOf;
        }
        for (String str : baseBundle.keySet()) {
            Object obj = baseBundle.get(str);
            if (obj != null) {
                if ((obj instanceof Bundle) && Intrinsics.areEqual(obj, baseBundle)) {
                    Log.warning(TAG, "This bundle contains reference to itself");
                } else {
                    Value value = toValue(obj);
                    if (value != null) {
                    }
                }
            }
        }
        Value valueValueOf2 = Value.valueOf((HashMap<String, Value>) map);
        Intrinsics.checkNotNullExpressionValue(valueValueOf2, "valueOf(map)");
        return valueValueOf2;
    }

    public static final Value toValue(String str) {
        if (str != null) {
            Value valueValueOf = Value.valueOf(str);
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(this)");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    public static final Value toValue(Boolean bool) {
        if (bool != null) {
            Value valueValueOf = Value.valueOf(bool.booleanValue());
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(it)");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    public static final Value toValue(Integer num) {
        if (num != null) {
            Value valueValueOf = Value.valueOf(num.intValue());
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(it.toLong())");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    public static final Value toValue(Long l) {
        if (l != null) {
            Value valueValueOf = Value.valueOf(l.longValue());
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(it)");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    public static Value toValue$default(Float f, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return toValue(f, z);
    }

    public static final Value toValue(Float f, boolean z) {
        if (f != null) {
            float fFloatValue = f.floatValue();
            if (z) {
                float fFloatValue2 = f.floatValue();
                if (Float.isInfinite(fFloatValue2) || Float.isNaN(fFloatValue2)) {
                    throw new IllegalArgumentException("Value can not be Double.NaN, Double.POSITIVE_INFINITY or Double.NEGATIVE_INFINITY".toString());
                }
            }
            Value valueValueOf = Value.valueOf(fFloatValue);
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(it.toDouble())");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    public static Value toValue$default(Double d, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return toValue(d, z);
    }

    public static final Value toValue(Double d, boolean z) {
        if (d != null) {
            double dDoubleValue = d.doubleValue();
            if (z) {
                double dDoubleValue2 = d.doubleValue();
                if (Double.isInfinite(dDoubleValue2) || Double.isNaN(dDoubleValue2)) {
                    throw new IllegalArgumentException("Value can not be Float.NaN, Float.POSITIVE_INFINITY or Float.NEGATIVE_INFINITY".toString());
                }
            }
            Value valueValueOf = Value.valueOf(dDoubleValue);
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(it)");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    public static final Value toValue(List<? extends Value> list) {
        if (list != null) {
            Value valueValueOf = Value.valueOf((List<Value>) list);
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(this)");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    public static final Value toValue(HashMap<String, Value> map) {
        if (map != null) {
            Value valueValueOf = Value.valueOf(map);
            Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(this)");
            return valueValueOf;
        }
        Value valueNullValue = Value.nullValue();
        Intrinsics.checkNotNullExpressionValue(valueNullValue, "nullValue()");
        return valueNullValue;
    }

    private static final Value toValue(Object obj) {
        if (obj instanceof Byte) {
            return Value.valueOf(((Number) obj).byteValue());
        }
        if (obj instanceof Integer) {
            return Value.valueOf(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return Value.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof Float) {
            return Value.valueOf(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return Value.valueOf(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return Value.valueOf(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return Value.valueOf((String) obj);
        }
        if (obj instanceof boolean[] ? true : obj instanceof byte[] ? true : obj instanceof int[] ? true : obj instanceof long[] ? true : obj instanceof float[] ? true : obj instanceof double[]) {
            return arrayToValue(obj);
        }
        if (obj instanceof Bundle) {
            return toValue((BaseBundle) obj);
        }
        Log.warning(TAG, "Type is not supported: " + obj.getClass().getCanonicalName());
        return null;
    }

    private static final Value arrayToValue(Object obj) {
        ArrayList arrayList;
        int i = 0;
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            arrayList = new ArrayList(zArr.length);
            int length = zArr.length;
            while (i < length) {
                arrayList.add(Value.valueOf(zArr[i]));
                i++;
            }
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            arrayList = new ArrayList(bArr.length);
            int length2 = bArr.length;
            while (i < length2) {
                arrayList.add(Value.valueOf(bArr[i]));
                i++;
            }
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            arrayList = new ArrayList(iArr.length);
            int length3 = iArr.length;
            while (i < length3) {
                arrayList.add(Value.valueOf(iArr[i]));
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            arrayList = new ArrayList(jArr.length);
            int length4 = jArr.length;
            while (i < length4) {
                arrayList.add(Value.valueOf(jArr[i]));
                i++;
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            arrayList = new ArrayList(fArr.length);
            int length5 = fArr.length;
            while (i < length5) {
                arrayList.add(Value.valueOf(fArr[i]));
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            arrayList = new ArrayList(dArr.length);
            int length6 = dArr.length;
            while (i < length6) {
                arrayList.add(Value.valueOf(dArr[i]));
                i++;
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        return Value.valueOf(arrayList);
    }
}
