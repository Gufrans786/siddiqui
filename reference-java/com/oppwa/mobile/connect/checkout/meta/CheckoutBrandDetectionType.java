package com.oppwa.mobile.connect.checkout.meta;

import android.os.Parcel;
import android.os.Parcelable;

public enum CheckoutBrandDetectionType implements Parcelable {
    REGEX,
    BINLIST;

    public static final Parcelable.Creator<CheckoutBrandDetectionType> CREATOR = new Parcelable.Creator<CheckoutBrandDetectionType>() {
        @Override
        public CheckoutBrandDetectionType createFromParcel(Parcel parcel) {
            return CheckoutBrandDetectionType.values()[parcel.readInt()];
        }

        @Override
        public CheckoutBrandDetectionType[] newArray(int i) {
            return new CheckoutBrandDetectionType[i];
        }
    };

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
