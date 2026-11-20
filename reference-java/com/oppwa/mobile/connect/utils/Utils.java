package com.oppwa.mobile.connect.utils;

import android.os.Parcel;
import android.text.TextUtils;
import java.util.Objects;

public class Utils {
    public static byte[] bytesFromString(String str) {
        if (str != null) {
            return str.getBytes();
        }
        return null;
    }

    public static boolean compare(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public static String normalizeCardNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        StringUtils.replaceAll(sb, "-", "");
        StringUtils.replaceAll(sb, " ", "");
        return sb.toString();
    }

    public static String normalizeHolder(String str) {
        return TextUtils.isEmpty(str) ? str : str.trim();
    }

    public static byte[] readByteArray(Parcel parcel) {
        int i = parcel.readInt();
        if (i == -1) {
            return null;
        }
        byte[] bArr = new byte[i];
        parcel.readByteArray(bArr);
        return bArr;
    }

    public static String stringFromBytes(byte[] bArr) {
        if (bArr != null) {
            return new String(bArr);
        }
        return null;
    }

    public static void writeByteArray(Parcel parcel, byte[] bArr) {
        if (bArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
    }
}
