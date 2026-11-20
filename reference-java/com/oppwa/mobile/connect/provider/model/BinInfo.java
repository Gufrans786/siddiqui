package com.oppwa.mobile.connect.provider.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

public class BinInfo implements Parcelable {
    public static final Parcelable.Creator<BinInfo> CREATOR = new a();
    private final String[] a;
    private final String b;
    private final String c;

    class a implements Parcelable.Creator<BinInfo> {
        a() {
        }

        @Override
        public BinInfo createFromParcel(Parcel parcel) {
            return new BinInfo(parcel, null);
        }

        @Override
        public BinInfo[] newArray(int i) {
            return new BinInfo[i];
        }
    }

    BinInfo(Parcel parcel, a aVar) {
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
        if (obj != null && getClass() == obj.getClass()) {
            BinInfo binInfo = (BinInfo) obj;
            if (Arrays.equals(this.a, binInfo.a) && Objects.equals(this.b, binInfo.b) && Objects.equals(this.c, binInfo.c)) {
                return true;
            }
        }
        return false;
    }

    public String getBinType() {
        return this.b;
    }

    public String[] getBrands() {
        return this.a;
    }

    public String getType() {
        return this.c;
    }

    public int hashCode() {
        return (Objects.hash(this.b, this.c) * 31) + Arrays.hashCode(this.a);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }

    public BinInfo(String[] strArr, String str, String str2) {
        this.a = strArr;
        this.b = str;
        this.c = str2;
    }

    private BinInfo(Parcel parcel) {
        this.a = parcel.createStringArray();
        this.b = parcel.readString();
        this.c = parcel.readString();
    }
}
