package com.oppwa.mobile.connect.checkout.meta;

import android.os.Parcel;
import android.os.Parcelable;

public enum CheckoutStorePaymentDetailsMode implements Parcelable {
    ALWAYS,
    PROMPT,
    NEVER;

    public static final Parcelable.Creator<CheckoutStorePaymentDetailsMode> CREATOR = new Parcelable.Creator<CheckoutStorePaymentDetailsMode>() {
        @Override
        public CheckoutStorePaymentDetailsMode createFromParcel(Parcel parcel) {
            return CheckoutStorePaymentDetailsMode.values()[parcel.readInt()];
        }

        @Override
        public CheckoutStorePaymentDetailsMode[] newArray(int i) {
            return new CheckoutStorePaymentDetailsMode[i];
        }
    };

    public static CheckoutStorePaymentDetailsMode getByName(String str) {
        for (CheckoutStorePaymentDetailsMode checkoutStorePaymentDetailsMode : values()) {
            if (checkoutStorePaymentDetailsMode.name().equals(str)) {
                return checkoutStorePaymentDetailsMode;
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
