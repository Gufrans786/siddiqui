package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;

final class zzat implements Parcelable.Creator {
    zzat() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        try {
            return TokenBinding.TokenBindingStatus.fromString(parcel.readString());
        } catch (TokenBinding.UnsupportedTokenBindingStatusException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public final Object[] newArray(int i) {
        return new TokenBinding.TokenBindingStatus[i];
    }
}
