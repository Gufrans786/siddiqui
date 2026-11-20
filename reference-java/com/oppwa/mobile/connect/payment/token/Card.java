package com.oppwa.mobile.connect.payment.token;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.JsonUtils;
import com.oppwa.mobile.connect.utils.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public class Card implements Parcelable, Cloneable {
    public static final Parcelable.Creator<Card> CREATOR = new a();
    private final String a;
    private final String b;
    private final String c;
    private final String d;

    class a implements Parcelable.Creator<Card> {
        a() {
        }

        @Override
        public Card createFromParcel(Parcel parcel) {
            return new Card(parcel);
        }

        @Override
        public Card[] newArray(int i) {
            return new Card[i];
        }
    }

    public Card(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    static Card a(JSONObject jSONObject) throws JSONException {
        return new Card(JsonUtils.getStringForKey(jSONObject, "holder"), JsonUtils.getStringForKey(jSONObject, "last4Digits"), JsonUtils.getStringForKey(jSONObject, "expiryMonth"), JsonUtils.getStringForKey(jSONObject, "expiryYear"));
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
            Card card = (Card) obj;
            if (Utils.compare(this.a, card.a) && Utils.compare(this.b, card.b) && Utils.compare(this.c, card.c) && Utils.compare(this.d, card.d)) {
                return true;
            }
        }
        return false;
    }

    public String getExpiryMonth() {
        return this.c;
    }

    public String getExpiryYear() {
        return this.d;
    }

    public String getHolder() {
        return this.a;
    }

    public String getLast4Digits() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = ((((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31;
        String str = this.a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }

    protected Card(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
    }

    protected Card(Card card) {
        this.a = card.getHolder();
        this.b = card.getLast4Digits();
        this.c = card.getExpiryMonth();
        this.d = card.getExpiryYear();
    }
}
