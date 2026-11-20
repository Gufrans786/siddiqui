package com.oppwa.mobile.connect.checkout.meta;

import android.os.Parcel;
import android.os.Parcelable;

public enum CheckoutBrandDetectionAppearanceStyle implements Parcelable {
    ACTIVE,
    INACTIVE,
    NONE;

    public static final Parcelable.Creator<CheckoutBrandDetectionAppearanceStyle> CREATOR = new Parcelable.Creator<CheckoutBrandDetectionAppearanceStyle>() {
        @Override
        public CheckoutBrandDetectionAppearanceStyle createFromParcel(Parcel parcel) {
            return CheckoutBrandDetectionAppearanceStyle.values()[parcel.readInt()];
        }

        @Override
        public CheckoutBrandDetectionAppearanceStyle[] newArray(int i) {
            return new CheckoutBrandDetectionAppearanceStyle[i];
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
