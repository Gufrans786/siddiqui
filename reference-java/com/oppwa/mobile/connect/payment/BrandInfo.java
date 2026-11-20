package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.Utils;

public final class BrandInfo implements Parcelable {
    public static final Parcelable.Creator<BrandInfo> CREATOR = new a();
    private final String a;
    private String b;
    private final String c;
    private CardBrandInfo d;
    private boolean e;

    class a implements Parcelable.Creator<BrandInfo> {
        a() {
        }

        @Override
        public BrandInfo createFromParcel(Parcel parcel) {
            return new BrandInfo(parcel, (a) null);
        }

        @Override
        public BrandInfo[] newArray(int i) {
            return new BrandInfo[i];
        }
    }

    BrandInfo(Parcel parcel, a aVar) {
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
        if (obj != null && BrandInfo.class == obj.getClass()) {
            BrandInfo brandInfo = (BrandInfo) obj;
            if (Utils.compare(this.a, brandInfo.a) && Utils.compare(this.b, brandInfo.b) && Utils.compare(this.c, brandInfo.c) && Utils.compare(this.d, brandInfo.d) && this.e == brandInfo.e) {
                return true;
            }
        }
        return false;
    }

    public String getBrand() {
        return this.a;
    }

    public CardBrandInfo getCardBrandInfo() {
        return this.d;
    }

    public String getLabel() {
        return this.b;
    }

    public String getRenderType() {
        return this.c;
    }

    public int hashCode() {
        int iHashCode = ((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
        CardBrandInfo cardBrandInfo = this.d;
        return ((iHashCode + (cardBrandInfo != null ? cardBrandInfo.hashCode() : 0)) * 31) + (this.e ? 1 : 0);
    }

    public boolean isCardBrand() {
        return this.c.equals("CC");
    }

    public boolean isCustomUiRequired() {
        return this.e;
    }

    public BrandInfo setCardBrandInfo(CardBrandInfo cardBrandInfo) {
        this.d = cardBrandInfo;
        return this;
    }

    public BrandInfo setCustomUiRequired(boolean z) {
        this.e = z;
        return this;
    }

    public BrandInfo setLabel(String str) {
        this.b = str;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeParcelable(this.d, i);
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
    }

    public BrandInfo(String str, String str2, String str3) {
        this.e = false;
        this.a = str;
        this.b = str3;
        this.c = str2;
    }

    public BrandInfo(String str, String str2) {
        this(str, str2, "");
    }

    private BrandInfo(Parcel parcel) {
        this.e = false;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = (CardBrandInfo) parcel.readParcelable(CardBrandInfo.class.getClassLoader());
        this.e = parcel.readByte() != 0;
    }
}
