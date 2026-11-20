package com.oppwa.mobile.connect.checkout.meta;

import android.os.Parcel;
import android.os.Parcelable;

public enum CheckoutCardBrandsDisplayMode implements Parcelable {
    SEPARATE,
    GROUPED;

    public static final Parcelable.Creator<CheckoutCardBrandsDisplayMode> CREATOR = new Parcelable.Creator<CheckoutCardBrandsDisplayMode>() {
        @Override
        public CheckoutCardBrandsDisplayMode createFromParcel(Parcel parcel) {
            return CheckoutCardBrandsDisplayMode.values()[parcel.readInt()];
        }

        @Override
        public CheckoutCardBrandsDisplayMode[] newArray(int i) {
            return new CheckoutCardBrandsDisplayMode[i];
        }
    };

    public static CheckoutCardBrandsDisplayMode getByName(String str) {
        for (CheckoutCardBrandsDisplayMode checkoutCardBrandsDisplayMode : values()) {
            if (checkoutCardBrandsDisplayMode.name().equalsIgnoreCase(str)) {
                return checkoutCardBrandsDisplayMode;
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
