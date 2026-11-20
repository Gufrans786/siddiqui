package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.Utils;

public final class CardBrandInfo implements Parcelable {
    public static final Parcelable.Creator<CardBrandInfo> CREATOR = new a();
    private String a;
    private String b;
    private String c;
    private CVVMode d;
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;

    class a implements Parcelable.Creator<CardBrandInfo> {
        a() {
        }

        @Override
        public CardBrandInfo createFromParcel(Parcel parcel) {
            return new CardBrandInfo(parcel, null);
        }

        @Override
        public CardBrandInfo[] newArray(int i) {
            return new CardBrandInfo[i];
        }
    }

    CardBrandInfo(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CardBrandInfo.class == obj.getClass()) {
            CardBrandInfo cardBrandInfo = (CardBrandInfo) obj;
            if (Utils.compare(this.a, cardBrandInfo.a) && Utils.compare(this.b, cardBrandInfo.b) && Utils.compare(this.c, cardBrandInfo.c) && Utils.compare(this.d, cardBrandInfo.d) && this.e == cardBrandInfo.e && this.f == cardBrandInfo.f && this.g == cardBrandInfo.g && this.h == cardBrandInfo.h) {
                return true;
            }
        }
        return false;
    }

    public int getCvvLength() {
        return this.e;
    }

    public CVVMode getCvvMode() {
        return this.d;
    }

    public String getDetection() {
        return this.b;
    }

    public String getPattern() {
        return this.c;
    }

    public String getValidation() {
        return this.a;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return ((((((((((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0);
    }

    public boolean isExpiryDateOptional() {
        return this.g;
    }

    public boolean isLuhnCheckRequired() {
        return this.f;
    }

    public boolean isMobilePhoneRequired() {
        return this.h;
    }

    public CardBrandInfo setCvvLength(int i) {
        this.e = i;
        return this;
    }

    public CardBrandInfo setCvvMode(CVVMode cVVMode) {
        this.d = cVVMode;
        return this;
    }

    public CardBrandInfo setDetection(String str) {
        this.b = str;
        return this;
    }

    public CardBrandInfo setExpiryDateOptional(boolean z) {
        this.g = z;
        return this;
    }

    public CardBrandInfo setLuhnCheckRequired(boolean z) {
        this.f = z;
        return this;
    }

    public CardBrandInfo setMobilePhoneRequired(boolean z) {
        this.h = z;
        return this;
    }

    public CardBrandInfo setPattern(String str) {
        this.c = str;
        return this;
    }

    public CardBrandInfo setValidation(String str) {
        this.a = str;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeParcelable(this.d, 0);
        parcel.writeInt(this.e);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
    }

    public CardBrandInfo() {
        this.a = "[0-9]{10,19}";
        this.c = "#### #### #### #### ###";
        this.d = CVVMode.REQUIRED;
        this.e = 3;
        this.f = true;
        this.g = false;
        this.h = false;
    }

    private CardBrandInfo(Parcel parcel) {
        this.a = "[0-9]{10,19}";
        this.c = "#### #### #### #### ###";
        this.d = CVVMode.REQUIRED;
        this.e = 3;
        this.f = true;
        this.g = false;
        this.h = false;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = (CVVMode) parcel.readParcelable(CVVMode.class.getClassLoader());
        this.e = parcel.readInt();
        this.f = parcel.readByte() != 0;
        this.g = parcel.readByte() != 0;
        this.h = parcel.readByte() != 0;
    }
}
