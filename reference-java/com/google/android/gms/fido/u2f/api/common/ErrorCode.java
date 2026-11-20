package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
public enum ErrorCode implements Parcelable {
    OK(0),
    OTHER_ERROR(1),
    BAD_REQUEST(2),
    CONFIGURATION_UNSUPPORTED(3),
    DEVICE_INELIGIBLE(4),
    TIMEOUT(5);

    private final int zzc;
    private static final String zza = "ErrorCode";
    public static final Parcelable.Creator<ErrorCode> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            return ErrorCode.toErrorCode(parcel.readInt());
        }

        @Override
        public final Object[] newArray(int i) {
            return new ErrorCode[i];
        }
    };

    ErrorCode(int i) {
        this.zzc = i;
    }

    public static ErrorCode toErrorCode(int i) {
        for (ErrorCode errorCode : values()) {
            if (i == errorCode.zzc) {
                return errorCode;
            }
        }
        return OTHER_ERROR;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.zzc;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzc);
    }
}
