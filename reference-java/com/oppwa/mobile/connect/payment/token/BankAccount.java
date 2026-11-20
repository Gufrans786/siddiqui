package com.oppwa.mobile.connect.payment.token;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.JsonUtils;
import com.oppwa.mobile.connect.utils.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public class BankAccount implements Parcelable, Cloneable {
    public static final Parcelable.Creator<BankAccount> CREATOR = new a();
    private final String a;
    private final String b;

    class a implements Parcelable.Creator<BankAccount> {
        a() {
        }

        @Override
        public BankAccount createFromParcel(Parcel parcel) {
            return new BankAccount(parcel, (a) null);
        }

        @Override
        public BankAccount[] newArray(int i) {
            return new BankAccount[i];
        }
    }

    BankAccount(Parcel parcel, a aVar) {
        this(parcel);
    }

    static BankAccount a(JSONObject jSONObject) throws JSONException {
        return new BankAccount(JsonUtils.getStringForKey(jSONObject, "holder"), JsonUtils.getStringForKey(jSONObject, "iban"));
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
            BankAccount bankAccount = (BankAccount) obj;
            if (Utils.compare(this.a, bankAccount.a) && Utils.compare(this.b, bankAccount.b)) {
                return true;
            }
        }
        return false;
    }

    public String getHolder() {
        return this.a;
    }

    public String getIban() {
        return this.b;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    public BankAccount(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    private BankAccount(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }

    BankAccount(BankAccount bankAccount) {
        this.a = bankAccount.getHolder();
        this.b = bankAccount.getIban();
    }
}
