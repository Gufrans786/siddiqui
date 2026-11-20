package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;

public enum PublicKeyCredentialType implements Parcelable {
    PUBLIC_KEY("public-key");

    public static final Parcelable.Creator<PublicKeyCredentialType> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            try {
                return PublicKeyCredentialType.fromString(parcel.readString());
            } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public final Object[] newArray(int i) {
            return new PublicKeyCredentialType[i];
        }
    };
    private final String zzb = "public-key";

    public static class UnsupportedPublicKeyCredTypeException extends Exception {
        public UnsupportedPublicKeyCredTypeException(String str) {
            super(str);
        }
    }

    PublicKeyCredentialType(String str) {
    }

    public static PublicKeyCredentialType fromString(String str) throws UnsupportedPublicKeyCredTypeException {
        for (PublicKeyCredentialType publicKeyCredentialType : values()) {
            if (str.equals(publicKeyCredentialType.zzb)) {
                return publicKeyCredentialType;
            }
        }
        throw new UnsupportedPublicKeyCredTypeException(String.format("PublicKeyCredentialType %s not supported", str));
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public String toString() {
        return this.zzb;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzb);
    }
}
