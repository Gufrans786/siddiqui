package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.checkout.meta.CheckoutThreeDS2Flow;
import com.oppwa.mobile.connect.payment.token.Token;
import com.oppwa.mobile.connect.utils.JsonUtils;
import com.oppwa.mobile.connect.utils.Utils;
import com.payfort.fortpaymentsdk.constants.Constants;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public class CheckoutInfo implements Parcelable {
    public static final Parcelable.Creator<CheckoutInfo> CREATOR = new a();
    private String a;
    private String b;
    private double c;
    private String d;
    private String[] e;
    private String[] f;
    private CheckoutThreeDS2Flow g;
    private boolean h;
    private boolean i;
    private Token[] j;
    private String[] k;
    private boolean l;
    private boolean m;

    class a implements Parcelable.Creator<CheckoutInfo> {
        a() {
        }

        @Override
        public CheckoutInfo createFromParcel(Parcel parcel) {
            return new CheckoutInfo(parcel, null);
        }

        @Override
        public CheckoutInfo[] newArray(int i) {
            return new CheckoutInfo[i];
        }
    }

    CheckoutInfo(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static CheckoutInfo createCheckoutInfoFromJSON(JSONObject jSONObject) throws JSONException {
        CheckoutInfo checkoutInfo = new CheckoutInfo();
        if (jSONObject.has(Constants.FORT_PARAMS.AMOUNT)) {
            checkoutInfo.c = Double.parseDouble(jSONObject.getString(Constants.FORT_PARAMS.AMOUNT));
        }
        checkoutInfo.a = JsonUtils.getStringForKey(jSONObject, "endpoint");
        checkoutInfo.b = JsonUtils.getStringForKey(jSONObject, "resourcePath");
        checkoutInfo.d = JsonUtils.getStringForKey(jSONObject, "currency");
        JSONObject jSONObject2 = jSONObject.getJSONObject("config");
        if (jSONObject2.has("brandConfig")) {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("brandConfig");
            checkoutInfo.h = JsonUtils.isTrueForKey(jSONObject3, "overrideShopBrands").booleanValue();
            checkoutInfo.i = JsonUtils.isTrueForKey(jSONObject3, "activateBrands").booleanValue();
            checkoutInfo.e = JsonUtils.getArrayForKey(jSONObject3, "brands");
        }
        if (jSONObject2.has("threeDSecureV2Config")) {
            JSONObject jSONObject4 = jSONObject2.getJSONObject("threeDSecureV2Config");
            checkoutInfo.f = b.a(jSONObject4);
            checkoutInfo.g = b.b(jSONObject4);
            checkoutInfo.m = JsonUtils.isTrueForKey(jSONObject4, "populateBrowserParams").booleanValue();
        }
        checkoutInfo.k = JsonUtils.getArrayForKey(jSONObject2, "klarnaMerchantIds");
        checkoutInfo.l = JsonUtils.isTrueForKey(jSONObject2, "redShieldDeviceIdInMsdkActive").booleanValue();
        checkoutInfo.j = b.a(jSONObject2, "registrations");
        return checkoutInfo;
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
            CheckoutInfo checkoutInfo = (CheckoutInfo) obj;
            if (Double.compare(checkoutInfo.c, this.c) == 0 && Arrays.equals(this.e, checkoutInfo.e) && Arrays.equals(this.f, checkoutInfo.f) && Arrays.equals(this.j, checkoutInfo.j) && Arrays.equals(this.k, checkoutInfo.k) && this.h == checkoutInfo.h && this.l == checkoutInfo.l && this.i == checkoutInfo.i && this.m == checkoutInfo.m && Utils.compare(this.a, checkoutInfo.a) && Utils.compare(this.g, checkoutInfo.g) && Utils.compare(this.b, checkoutInfo.b) && Utils.compare(this.d, checkoutInfo.d)) {
                return true;
            }
        }
        return false;
    }

    public double getAmount() {
        return this.c;
    }

    public String[] getBrands() {
        return this.e;
    }

    public String getCurrencyCode() {
        return this.d;
    }

    public String getEndpoint() {
        return this.a;
    }

    public String[] getKlarnaMerchantIds() {
        return this.k;
    }

    public String getResourcePath() {
        return this.b;
    }

    public String[] getThreeDS2Brands() {
        return this.f;
    }

    public CheckoutThreeDS2Flow getThreeDS2Flow() {
        return this.g;
    }

    public Token[] getTokens() {
        return b.a(this.j);
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = iHashCode + (str2 != null ? str2.hashCode() : 0);
        long jDoubleToLongBits = Double.doubleToLongBits(this.c);
        int i = ((iHashCode2 * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31;
        String str3 = this.d;
        int iHashCode3 = (i + (str3 != null ? str3.hashCode() : 0)) * 31;
        CheckoutThreeDS2Flow checkoutThreeDS2Flow = this.g;
        return ((((((((((((((((iHashCode3 + (checkoutThreeDS2Flow != null ? checkoutThreeDS2Flow.hashCode() : 0)) * 31) + Arrays.hashCode(this.e)) * 31) + Arrays.hashCode(this.f)) * 31) + (this.h ? 1 : 0)) * 31) + (this.i ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31) + Arrays.hashCode(this.j)) * 31) + Arrays.hashCode(this.k)) * 31) + (this.l ? 1 : 0);
    }

    public boolean isBrandsActivated() {
        return this.i;
    }

    public boolean isBrowserParamsRequired() {
        return this.m;
    }

    public boolean isCollectRedShieldDeviceId() {
        return this.l;
    }

    public boolean isShopBrandsOverridden() {
        return this.h;
    }

    public void setEndpoint(String str) {
        this.a = str;
    }

    public void setResourcePath(String str) {
        this.b = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.g, 0);
        parcel.writeDouble(this.c);
        parcel.writeString(this.d);
        parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.e);
        parcel.writeStringArray(this.f);
        parcel.writeTypedArray(this.j, i);
        parcel.writeStringArray(this.k);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
    }

    protected CheckoutInfo() {
        this.e = new String[0];
        this.f = new String[0];
        this.h = false;
        this.i = false;
        this.l = false;
        this.m = false;
    }

    private CheckoutInfo(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.g = (CheckoutThreeDS2Flow) parcel.readParcelable(CheckoutThreeDS2Flow.class.getClassLoader());
        this.c = parcel.readDouble();
        this.d = parcel.readString();
        this.h = parcel.readByte() != 0;
        this.i = parcel.readByte() != 0;
        this.e = parcel.createStringArray();
        this.f = parcel.createStringArray();
        this.j = (Token[]) parcel.createTypedArray(Token.CREATOR);
        this.k = parcel.createStringArray();
        this.l = parcel.readByte() != 0;
        this.m = parcel.readByte() != 0;
    }
}
