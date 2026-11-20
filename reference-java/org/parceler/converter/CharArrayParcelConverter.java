package org.parceler.converter;

import android.os.Parcel;
import org.parceler.ParcelConverter;

public class CharArrayParcelConverter implements ParcelConverter<char[]> {
    private static final int NULL = -1;

    @Override
    public void toParcel(char[] cArr, Parcel parcel) {
        if (cArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(cArr.length);
            parcel.writeCharArray(cArr);
        }
    }

    @Override
    public char[] fromParcel(Parcel parcel) {
        int i = parcel.readInt();
        if (i == -1) {
            return null;
        }
        char[] cArr = new char[i];
        parcel.readCharArray(cArr);
        return cArr;
    }
}
