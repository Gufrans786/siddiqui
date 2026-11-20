package com.oppwa.mobile.connect.checkout.meta;

import android.os.Parcel;
import android.os.Parcelable;

public enum CheckoutSecurityPolicyMode implements Parcelable {
    DEVICE_AUTH_REQUIRED,
    DEVICE_AUTH_REQUIRED_IF_AVAILABLE,
    DEVICE_AUTH_NOT_REQUIRED;

    public static final Parcelable.Creator<CheckoutSecurityPolicyMode> CREATOR = new Parcelable.Creator<CheckoutSecurityPolicyMode>() {
        @Override
        public CheckoutSecurityPolicyMode createFromParcel(Parcel parcel) {
            return CheckoutSecurityPolicyMode.values()[parcel.readInt()];
        }

        @Override
        public CheckoutSecurityPolicyMode[] newArray(int i) {
            return new CheckoutSecurityPolicyMode[i];
        }
    };

    public static CheckoutSecurityPolicyMode getByName(String str) {
        for (CheckoutSecurityPolicyMode checkoutSecurityPolicyMode : values()) {
            if (checkoutSecurityPolicyMode.name().equalsIgnoreCase(str)) {
                return checkoutSecurityPolicyMode;
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
