package com.oppwa.mobile.connect.payment.stcpay;

import android.os.Parcel;
import android.os.Parcelable;

public enum STCPayVerificationOption implements Parcelable {
    MOBILE_PHONE,
    QR_CODE;

    public static final Parcelable.Creator<STCPayVerificationOption> CREATOR = new Parcelable.Creator<STCPayVerificationOption>() {
        @Override
        public STCPayVerificationOption createFromParcel(Parcel parcel) {
            return STCPayVerificationOption.values()[parcel.readInt()];
        }

        @Override
        public STCPayVerificationOption[] newArray(int i) {
            return new STCPayVerificationOption[i];
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
