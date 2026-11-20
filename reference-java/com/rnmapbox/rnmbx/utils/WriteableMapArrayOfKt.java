package com.rnmapbox.rnmbx.utils;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.mapbox.bindgen.Value;
import com.rnmapbox.rnmbx.utils.extensions.MapKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a3\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\u0014\u0012\u0010\b\u0001\u0012\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u00040\u0003\"\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0006\u001a\u001f\u0010\u0007\u001a\u00020\b2\u0012\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\u0003\"\u00020\t¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"writableMapOf", "Lcom/facebook/react/bridge/WritableMap;", "values", "", "Lkotlin/Pair;", "", "([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;", "writableArrayOf", "Lcom/facebook/react/bridge/WritableArray;", "", "([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class WriteableMapArrayOfKt {
    public static final WritableMap writableMapOf(Pair<String, ?>... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        for (Pair<String, ?> pair : values) {
            String strComponent1 = pair.component1();
            Object objComponent2 = pair.component2();
            if (objComponent2 == null) {
                writableMapCreateMap.putNull(strComponent1);
            } else if (objComponent2 instanceof Boolean) {
                writableMapCreateMap.putBoolean(strComponent1, ((Boolean) objComponent2).booleanValue());
            } else if (objComponent2 instanceof Double) {
                writableMapCreateMap.putDouble(strComponent1, ((Number) objComponent2).doubleValue());
            } else if (objComponent2 instanceof Integer) {
                writableMapCreateMap.putInt(strComponent1, ((Number) objComponent2).intValue());
            } else if (objComponent2 instanceof Long) {
                writableMapCreateMap.putInt(strComponent1, (int) ((Number) objComponent2).longValue());
            } else if (objComponent2 instanceof String) {
                writableMapCreateMap.putString(strComponent1, (String) objComponent2);
            } else if (objComponent2 instanceof Map) {
                Pair<String, ?>[] stringKeyPairs = MapKt.toStringKeyPairs((Map) objComponent2);
                writableMapCreateMap.putMap(strComponent1, writableMapOf((Pair[]) Arrays.copyOf(stringKeyPairs, stringKeyPairs.length)));
            } else if (!(objComponent2 instanceof Object[])) {
                if (objComponent2 instanceof WritableMap) {
                    writableMapCreateMap.putMap(strComponent1, (ReadableMap) objComponent2);
                } else if (objComponent2 instanceof WritableArray) {
                    writableMapCreateMap.putArray(strComponent1, (ReadableArray) objComponent2);
                } else if (objComponent2 instanceof Value) {
                    Object contents = ((Value) objComponent2).getContents();
                    if (contents == null) {
                        writableMapCreateMap.putNull(strComponent1);
                    } else if (contents instanceof Boolean) {
                        writableMapCreateMap.putBoolean(strComponent1, ((Boolean) contents).booleanValue());
                    } else if (contents instanceof Double) {
                        writableMapCreateMap.putDouble(strComponent1, ((Number) contents).doubleValue());
                    } else if (contents instanceof Integer) {
                        writableMapCreateMap.putInt(strComponent1, ((Number) contents).intValue());
                    } else if (contents instanceof Long) {
                        writableMapCreateMap.putInt(strComponent1, (int) ((Number) contents).longValue());
                    } else if (contents instanceof String) {
                        writableMapCreateMap.putString(strComponent1, (String) contents);
                    } else if (contents instanceof WritableMap) {
                        writableMapCreateMap.putMap(strComponent1, (ReadableMap) contents);
                    } else if (contents instanceof WritableArray) {
                        writableMapCreateMap.putArray(strComponent1, (ReadableArray) contents);
                    }
                } else {
                    throw new IllegalArgumentException("Unsupported value type " + objComponent2.getClass().getName() + " for key [" + strComponent1 + "]");
                }
            } else {
                Object[] objArr = (Object[]) objComponent2;
                ArrayList arrayList = new ArrayList(objArr.length);
                for (Object obj : objArr) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Any");
                    arrayList.add(obj);
                }
                Object[] array = arrayList.toArray(new Object[0]);
                writableMapCreateMap.putArray(strComponent1, writableArrayOf(Arrays.copyOf(array, array.length)));
            }
        }
        return writableMapCreateMap;
    }

    public static final WritableArray writableArrayOf(Object... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Intrinsics.checkNotNullExpressionValue(writableArrayCreateArray, "createArray(...)");
        for (Object obj : values) {
            if (obj == null) {
                writableArrayCreateArray.pushNull();
            } else if (obj instanceof Boolean) {
                writableArrayCreateArray.pushBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Double) {
                writableArrayCreateArray.pushDouble(((Number) obj).doubleValue());
            } else if (obj instanceof Integer) {
                writableArrayCreateArray.pushInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                writableArrayCreateArray.pushInt((int) ((Number) obj).longValue());
            } else if (obj instanceof String) {
                writableArrayCreateArray.pushString((String) obj);
            } else if (obj instanceof Map) {
                Pair<String, ?>[] stringKeyPairs = MapKt.toStringKeyPairs((Map) obj);
                writableArrayCreateArray.pushMap(writableMapOf((Pair[]) Arrays.copyOf(stringKeyPairs, stringKeyPairs.length)));
            } else if (!(obj instanceof Object[])) {
                if (obj instanceof WritableMap) {
                    writableArrayCreateArray.pushMap((ReadableMap) obj);
                } else if (obj instanceof WritableArray) {
                    writableArrayCreateArray.pushArray((ReadableArray) obj);
                } else if (obj instanceof Value) {
                    Object contents = ((Value) obj).getContents();
                    if (contents == null) {
                        writableArrayCreateArray.pushNull();
                    } else if (contents instanceof Boolean) {
                        writableArrayCreateArray.pushBoolean(((Boolean) contents).booleanValue());
                    } else if (contents instanceof Double) {
                        writableArrayCreateArray.pushDouble(((Number) contents).doubleValue());
                    } else if (contents instanceof Integer) {
                        writableArrayCreateArray.pushInt(((Number) contents).intValue());
                    } else if (contents instanceof Long) {
                        writableArrayCreateArray.pushInt((int) ((Number) contents).longValue());
                    } else if (contents instanceof String) {
                        writableArrayCreateArray.pushString((String) contents);
                    } else if (contents instanceof Map) {
                        Pair<String, ?>[] stringKeyPairs2 = MapKt.toStringKeyPairs((Map) contents);
                        writableArrayCreateArray.pushMap(writableMapOf((Pair[]) Arrays.copyOf(stringKeyPairs2, stringKeyPairs2.length)));
                    } else if (!(contents instanceof Object[])) {
                        if (contents instanceof WritableMap) {
                            writableArrayCreateArray.pushMap((ReadableMap) contents);
                        } else if (contents instanceof WritableArray) {
                            writableArrayCreateArray.pushArray((ReadableArray) contents);
                        }
                    } else {
                        Object[] objArr = (Object[]) contents;
                        ArrayList arrayList = new ArrayList(objArr.length);
                        for (Object obj2 : objArr) {
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Any");
                            arrayList.add(obj2);
                        }
                        Object[] array = arrayList.toArray(new Object[0]);
                        writableArrayCreateArray.pushArray(writableArrayOf(Arrays.copyOf(array, array.length)));
                    }
                } else {
                    throw new IllegalArgumentException("Unsupported value type " + obj.getClass().getName());
                }
            } else {
                Object[] objArr2 = (Object[]) obj;
                ArrayList arrayList2 = new ArrayList(objArr2.length);
                for (Object obj3 : objArr2) {
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Any");
                    arrayList2.add(obj3);
                }
                Object[] array2 = arrayList2.toArray(new Object[0]);
                writableArrayCreateArray.pushArray(writableArrayOf(Arrays.copyOf(array2, array2.length)));
            }
        }
        return writableArrayCreateArray;
    }
}
