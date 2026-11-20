package com.oppwa.mobile.connect.payment.token;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.JsonUtils;
import com.oppwa.mobile.connect.utils.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public class VirtualAccount implements Parcelable, Cloneable {
    public static final Parcelable.Creator<VirtualAccount> CREATOR = new a();
    private final String a;
    private final String b;

    class a implements Parcelable.Creator<VirtualAccount> {
        a() {
        }

        @Override
        public VirtualAccount createFromParcel(Parcel parcel) {
            return new VirtualAccount(parcel);
        }

        @Override
        public VirtualAccount[] newArray(int i) {
            return new VirtualAccount[i];
        }
    }

    public VirtualAccount(String str, String str2) {
        this.b = str;
        this.a = str2;
    }

    static VirtualAccount a(JSONObject jSONObject) throws JSONException {
        return new VirtualAccount(JsonUtils.getStringForKey(jSONObject, "holder"), JsonUtils.getStringForKey(jSONObject, "accountId"));
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
            VirtualAccount virtualAccount = (VirtualAccount) obj;
            if (Utils.compare(this.a, virtualAccount.a) && Utils.compare(this.b, virtualAccount.b)) {
                return true;
            }
        }
        return false;
    }

    public String getAccountId() {
        return this.a;
    }

    public String getHolder() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.a);
    }

    public VirtualAccount(Parcel parcel) {
        this.b = parcel.readString();
        this.a = parcel.readString();
    }

    public VirtualAccount(VirtualAccount virtualAccount) {
        this.b = virtualAccount.b;
        this.a = virtualAccount.a;
    }
}
