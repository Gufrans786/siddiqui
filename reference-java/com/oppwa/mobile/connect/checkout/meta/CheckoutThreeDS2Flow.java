package com.oppwa.mobile.connect.checkout.meta;

import android.os.Parcel;
import android.os.Parcelable;

public enum CheckoutThreeDS2Flow implements Parcelable {
    APP,
    WEB,
    DISABLED;

    public static final Parcelable.Creator<CheckoutThreeDS2Flow> CREATOR = new Parcelable.Creator<CheckoutThreeDS2Flow>() {
        @Override
        public CheckoutThreeDS2Flow createFromParcel(Parcel parcel) {
            return CheckoutThreeDS2Flow.values()[parcel.readInt()];
        }

        @Override
        public CheckoutThreeDS2Flow[] newArray(int i) {
            return new CheckoutThreeDS2Flow[i];
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
