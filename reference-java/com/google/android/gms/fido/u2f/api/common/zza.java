package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;

final class zza implements Parcelable.Creator {
    zza() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        try {
            return ChannelIdValue.toChannelIdValueType(parcel.readInt());
        } catch (ChannelIdValue.UnsupportedChannelIdValueTypeException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public final Object[] newArray(int i) {
        return new ChannelIdValue.ChannelIdValueType[i];
    }
}
