package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.Utils;

public class ImageDetail implements Parcelable {
    public static final Parcelable.Creator<ImageDetail> CREATOR = new a();
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;

    class a implements Parcelable.Creator<ImageDetail> {
        a() {
        }

        @Override
        public ImageDetail createFromParcel(Parcel parcel) {
            return new ImageDetail(parcel, null);
        }

        @Override
        public ImageDetail[] newArray(int i) {
            return new ImageDetail[i];
        }
    }

    ImageDetail(Parcel parcel, a aVar) {
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
            ImageDetail imageDetail = (ImageDetail) obj;
            if (Utils.compare(this.a, imageDetail.a) && Utils.compare(this.b, imageDetail.b) && Utils.compare(this.c, imageDetail.c) && Utils.compare(this.d, imageDetail.d) && Utils.compare(this.e, imageDetail.e)) {
                return true;
            }
        }
        return false;
    }

    public String getContent() {
        return this.e;
    }

    public String getHeight() {
        return this.c;
    }

    public String getType() {
        return this.a;
    }

    public String getUrl() {
        return this.d;
    }

    public String getWidth() {
        return this.b;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public void setContent(String str) {
        this.e = str;
    }

    public void setHeight(String str) {
        this.c = str;
    }

    public void setType(String str) {
        this.a = str;
    }

    public void setUrl(String str) {
        this.d = str;
    }

    public void setWidth(String str) {
        this.b = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
    }

    public ImageDetail() {
    }

    public ImageDetail(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    private ImageDetail(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
    }
}
