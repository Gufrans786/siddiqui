package com.oppwa.mobile.connect.checkout.meta;

import android.os.Parcel;
import android.os.Parcelable;

public enum CheckoutSkipCVVMode implements Parcelable {
    NEVER,
    ALWAYS,
    FOR_STORED_CARDS;

    public static final Parcelable.Creator<CheckoutSkipCVVMode> CREATOR = new Parcelable.Creator<CheckoutSkipCVVMode>() {
        @Override
        public CheckoutSkipCVVMode createFromParcel(Parcel parcel) {
            return CheckoutSkipCVVMode.values()[parcel.readInt()];
        }

        @Override
        public CheckoutSkipCVVMode[] newArray(int i) {
            return new CheckoutSkipCVVMode[i];
        }
    };

    public static CheckoutSkipCVVMode getByName(String str) {
        for (CheckoutSkipCVVMode checkoutSkipCVVMode : values()) {
            if (checkoutSkipCVVMode.name().equalsIgnoreCase(str)) {
                return checkoutSkipCVVMode;
            }
        }
        return null;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
