package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

public class BillingAddress implements Parcelable {
    public static final Parcelable.Creator<BillingAddress> CREATOR = new a();
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;

    public static class Builder {
        private String a;
        private String b;
        private String c;
        private String d;
        private String e;
        private String f;
        private Boolean g;
        private Boolean h;
        private Boolean i;
        private Boolean j;
        private Boolean k;
        private Boolean l;

        public BillingAddress build() {
            return new BillingAddress(this, (a) null);
        }

        public Builder setCity(String str) {
            this.c = str;
            return this;
        }

        public Builder setCityRequired(Boolean bool) {
            this.i = bool;
            return this;
        }

        public Builder setCountry(String str) {
            this.a = str;
            return this;
        }

        public Builder setCountryRequired(Boolean bool) {
            this.g = bool;
            return this;
        }

        public Builder setPostCode(String str) {
            this.d = str;
            return this;
        }

        public Builder setPostCodeRequired(Boolean bool) {
            this.j = bool;
            return this;
        }

        public Builder setState(String str) {
            this.b = str;
            return this;
        }

        public Builder setStateRequired(Boolean bool) {
            this.h = bool;
            return this;
        }

        public Builder setStreet1(String str) {
            this.e = str;
            return this;
        }

        public Builder setStreet1Required(Boolean bool) {
            this.k = bool;
            return this;
        }

        public Builder setStreet2(String str) {
            this.f = str;
            return this;
        }

        public Builder setStreet2Required(Boolean bool) {
            this.l = bool;
            return this;
        }
    }

    class a implements Parcelable.Creator<BillingAddress> {
        a() {
        }

        @Override
        public BillingAddress createFromParcel(Parcel parcel) {
            return new BillingAddress(parcel, (a) null);
        }

        @Override
        public BillingAddress[] newArray(int i) {
            return new BillingAddress[i];
        }
    }

    BillingAddress(Parcel parcel, a aVar) {
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
            BillingAddress billingAddress = (BillingAddress) obj;
            if (this.g == billingAddress.g && this.h == billingAddress.h && this.i == billingAddress.i && this.j == billingAddress.j && this.k == billingAddress.k && this.l == billingAddress.l && Objects.equals(this.a, billingAddress.a) && Objects.equals(this.b, billingAddress.b) && Objects.equals(this.c, billingAddress.c) && Objects.equals(this.d, billingAddress.d) && Objects.equals(this.e, billingAddress.e) && Objects.equals(this.f, billingAddress.f)) {
                return true;
            }
        }
        return false;
    }

    public String getCity() {
        return this.c;
    }

    public String getCountry() {
        return this.a;
    }

    public String getPostCode() {
        return this.d;
    }

    public String getState() {
        return this.b;
    }

    public String getStreet1() {
        return this.e;
    }

    public String getStreet2() {
        return this.f;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, this.e, this.f, Boolean.valueOf(this.g), Boolean.valueOf(this.h), Boolean.valueOf(this.i), Boolean.valueOf(this.j), Boolean.valueOf(this.k), Boolean.valueOf(this.l));
    }

    public boolean isCityRequired() {
        return this.i;
    }

    public boolean isCountryRequired() {
        return this.g;
    }

    public boolean isPostCodeRequired() {
        return this.j;
    }

    public boolean isStateRequired() {
        return this.h;
    }

    public boolean isStreet1Required() {
        return this.k;
    }

    public boolean isStreet2Required() {
        return this.l;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
    }

    BillingAddress(Builder builder, a aVar) {
        this(builder);
    }

    private BillingAddress(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        boolean z = false;
        this.g = builder.g == null || builder.g.booleanValue();
        this.h = builder.h == null || builder.h.booleanValue();
        this.i = builder.i == null || builder.i.booleanValue();
        this.j = builder.j == null || builder.j.booleanValue();
        this.k = builder.k == null || builder.k.booleanValue();
        if (builder.l != null && builder.l.booleanValue()) {
            z = true;
        }
        this.l = z;
    }

    private BillingAddress(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readByte() != 0;
        this.h = parcel.readByte() != 0;
        this.i = parcel.readByte() != 0;
        this.j = parcel.readByte() != 0;
        this.k = parcel.readByte() != 0;
        this.l = parcel.readByte() != 0;
    }
}
