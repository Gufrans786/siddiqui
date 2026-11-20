package com.oppwa.mobile.connect.provider;

import android.os.Parcel;
import android.os.Parcelable;

public enum TransactionType implements Parcelable {
    SYNC,
    ASYNC;

    public static final Parcelable.Creator<TransactionType> CREATOR = new Parcelable.Creator<TransactionType>() {
        @Override
        public TransactionType createFromParcel(Parcel parcel) {
            return TransactionType.values()[parcel.readInt()];
        }

        @Override
        public TransactionType[] newArray(int i) {
            return new TransactionType[i];
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
