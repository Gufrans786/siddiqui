package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.os.Parcelable;

public enum CVVMode implements Parcelable {
    NONE,
    REQUIRED,
    OPTIONAL;

    public static final Parcelable.Creator<CVVMode> CREATOR = new Parcelable.Creator<CVVMode>() {
        @Override
        public CVVMode createFromParcel(Parcel parcel) {
            return CVVMode.values()[parcel.readInt()];
        }

        @Override
        public CVVMode[] newArray(int i) {
            return new CVVMode[i];
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
