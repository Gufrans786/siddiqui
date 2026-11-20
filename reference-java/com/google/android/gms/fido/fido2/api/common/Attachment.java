package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;

public enum Attachment implements Parcelable {
    PLATFORM("platform"),
    CROSS_PLATFORM("cross-platform");

    public static final Parcelable.Creator<Attachment> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            try {
                return Attachment.fromString(parcel.readString());
            } catch (Attachment.UnsupportedAttachmentException e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public final Object[] newArray(int i) {
            return new Attachment[i];
        }
    };
    private final String zzb;

    public static class UnsupportedAttachmentException extends Exception {
        public UnsupportedAttachmentException(String str) {
            super(String.format("Attachment %s not supported", str));
        }
    }

    Attachment(String str) {
        this.zzb = str;
    }

    public static Attachment fromString(String str) throws UnsupportedAttachmentException {
        for (Attachment attachment : values()) {
            if (str.equals(attachment.zzb)) {
                return attachment;
            }
        }
        throw new UnsupportedAttachmentException(str);
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
