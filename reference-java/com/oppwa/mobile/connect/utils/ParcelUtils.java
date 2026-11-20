package com.oppwa.mobile.connect.utils;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.hermes.intl.UnicodeExtensionKeys;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class ParcelUtils {
    public static <T> HashMap<String, T> readMapFromParcel(Parcel parcel, Class<T> cls) {
        Object serializable;
        int i = parcel.readInt();
        if (i == -1) {
            return null;
        }
        UnicodeExtensionKeys.AnonymousClass3 anonymousClass3 = (HashMap<String, T>) new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            String string = parcel.readString();
            if (Parcelable.class.isAssignableFrom(cls)) {
                serializable = parcel.readParcelable(cls.getClassLoader());
            } else {
                if (!Serializable.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Value should be Parcelable or Serializable");
                }
                serializable = parcel.readSerializable();
            }
            anonymousClass3.put(string, serializable);
        }
        return anonymousClass3;
    }

    public static <T> void writeMapToParcel(Parcel parcel, Map<String, T> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        if (map.isEmpty()) {
            return;
        }
        for (String str : map.keySet()) {
            parcel.writeString(str);
            T t = map.get(str);
            if (t instanceof Parcelable) {
                parcel.writeParcelable((Parcelable) t, 0);
            } else {
                if (!(t instanceof Serializable)) {
                    throw new IllegalArgumentException("Value should be Parcelable or Serializable");
                }
                parcel.writeSerializable((Serializable) t);
            }
        }
    }
}
