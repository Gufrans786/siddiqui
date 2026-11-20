package org.parceler.converter;

import android.os.Parcel;
import org.parceler.ParcelConverter;

public class BooleanArrayParcelConverter implements ParcelConverter<boolean[]> {
    private static final int NULL = -1;

    @Override
    public void toParcel(boolean[] zArr, Parcel parcel) {
        if (zArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(zArr.length);
            parcel.writeBooleanArray(zArr);
        }
    }

    @Override
    public boolean[] fromParcel(Parcel parcel) {
        int i = parcel.readInt();
        if (i == -1) {
            return null;
        }
        boolean[] zArr = new boolean[i];
        parcel.readBooleanArray(zArr);
        return zArr;
    }
}
