package com.oppwa.mobile.connect.provider.model.yookassa;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

public class YooKassaInfo implements Parcelable {
    public static final Parcelable.Creator<YooKassaInfo> CREATOR = new a();
    private final String a;
    private final String b;
    private final YooKassaStatus c;

    class a implements Parcelable.Creator<YooKassaInfo> {
        a() {
        }

        @Override
        public YooKassaInfo createFromParcel(Parcel parcel) {
            return new YooKassaInfo(parcel, null);
        }

        @Override
        public YooKassaInfo[] newArray(int i) {
            return new YooKassaInfo[i];
        }
    }

    YooKassaInfo(Parcel parcel, a aVar) {
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
            YooKassaInfo yooKassaInfo = (YooKassaInfo) obj;
            if (Objects.equals(this.a, yooKassaInfo.a) && Objects.equals(this.b, yooKassaInfo.b) && this.c == yooKassaInfo.c) {
                return true;
            }
        }
        return false;
    }

    public String getCallbackUrl() {
        return this.b;
    }

    public String getConfirmationUrl() {
        return this.a;
    }

    public YooKassaStatus getStatus() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b, this.c);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c.name());
    }

    public YooKassaInfo(String str, String str2, YooKassaStatus yooKassaStatus) {
        this.a = str;
        this.b = str2;
        this.c = yooKassaStatus == null ? YooKassaStatus.UNDEFINED : yooKassaStatus;
    }

    private YooKassaInfo(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = YooKassaStatus.valueOf(parcel.readString());
    }
}
