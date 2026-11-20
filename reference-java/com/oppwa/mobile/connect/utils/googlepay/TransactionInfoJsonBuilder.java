package com.oppwa.mobile.connect.utils.googlepay;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import org.json.JSONException;
import org.json.JSONObject;

public class TransactionInfoJsonBuilder {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    public TransactionInfoJsonBuilder setCheckoutOption(String str) {
        this.g = str;
        return this;
    }

    public TransactionInfoJsonBuilder setCountryCode(String str) {
        this.b = str;
        return this;
    }

    public TransactionInfoJsonBuilder setCurrencyCode(String str) {
        this.a = str;
        return this;
    }

    public TransactionInfoJsonBuilder setTotalPrice(String str) {
        this.e = str;
        return this;
    }

    public TransactionInfoJsonBuilder setTotalPriceLabel(String str) {
        this.f = str;
        return this;
    }

    public TransactionInfoJsonBuilder setTotalPriceStatus(String str) {
        this.d = str;
        return this;
    }

    public TransactionInfoJsonBuilder setTransactionId(String str) {
        this.c = str;
        return this;
    }

    public JSONObject toJson() throws JSONException {
        return new JSONObject().putOpt("currencyCode", this.a).putOpt(RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, this.b).putOpt("transactionId", this.c).putOpt("totalPriceStatus", this.d).putOpt("totalPrice", this.e).putOpt("totalPriceLabel", this.f).putOpt("checkoutOption", this.g);
    }
}
