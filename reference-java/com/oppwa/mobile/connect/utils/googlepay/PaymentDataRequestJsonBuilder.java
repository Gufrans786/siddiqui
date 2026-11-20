package com.oppwa.mobile.connect.utils.googlepay;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PaymentDataRequestJsonBuilder {
    private String a;
    private JSONArray b;
    private JSONObject c;
    private Boolean d;
    private Boolean e;
    private JSONArray f;
    private Boolean g;

    private JSONObject a() throws JSONException {
        if (this.f == null && this.g == null) {
            return null;
        }
        return new JSONObject().putOpt("allowedCountryCodes", this.f).putOpt("phoneNumberRequired", this.g);
    }

    public PaymentDataRequestJsonBuilder setAllowedPaymentMethods(JSONArray jSONArray) {
        this.b = jSONArray;
        return this;
    }

    public PaymentDataRequestJsonBuilder setEmailRequired(boolean z) {
        this.d = Boolean.valueOf(z);
        return this;
    }

    public PaymentDataRequestJsonBuilder setMerchantInfo(String str) {
        this.a = str;
        return this;
    }

    public PaymentDataRequestJsonBuilder setShippingAddressParameters(JSONArray jSONArray, Boolean bool) {
        this.f = jSONArray;
        this.g = bool;
        return this;
    }

    public PaymentDataRequestJsonBuilder setShippingAddressRequired(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }

    public PaymentDataRequestJsonBuilder setTransactionInfo(JSONObject jSONObject) {
        this.c = jSONObject;
        return this;
    }

    public JSONObject toJson() throws JSONException {
        return new JSONObject().put("apiVersion", 2).put("apiVersionMinor", 0).putOpt("merchantName", this.a).putOpt("allowedPaymentMethods", this.b).putOpt("transactionInfo", this.c).putOpt("emailRequired", this.d).putOpt("shippingAddressRequired", this.e).putOpt("shippingAddressParameters", a());
    }
}
