package com.oppwa.mobile.connect.utils.googlepay;

import com.caverock.androidsvg.SVGParser;
import com.oppwa.mobile.connect.checkout.dialog.GooglePayHelper;
import com.oppwa.mobile.connect.checkout.dialog.PaymentButtonFragment;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CardPaymentMethodJsonBuilder {
    private JSONArray a;
    private JSONArray b;
    private Boolean c;
    private Boolean d;
    private Boolean e;
    private Boolean f;
    private String g;
    private Boolean h;
    private String i;

    private JSONObject a() throws JSONException {
        if (this.g == null && this.h == null) {
            return null;
        }
        return new JSONObject().putOpt("format", this.g).putOpt("phoneNumberRequired", this.h);
    }

    private JSONObject b() throws JSONException {
        return new JSONObject().putOpt("allowedAuthMethods", this.a).putOpt("allowedCardNetworks", this.b).putOpt("allowPrepaidCards", this.c).putOpt("allowCreditCards", this.d).putOpt("assuranceDetailsRequired", this.e).putOpt("billingAddressRequired", this.f).putOpt("billingAddressParameters", a());
    }

    private JSONObject c() throws JSONException {
        return new JSONObject().put(SVGParser.XML_STYLESHEET_ATTR_TYPE, "PAYMENT_GATEWAY").put("parameters", new JSONObject().put("gateway", GooglePayHelper.GATEWAY).putOpt("gatewayMerchantId", this.i));
    }

    public CardPaymentMethodJsonBuilder setAllowCreditCards(boolean z) {
        this.d = Boolean.valueOf(z);
        return this;
    }

    public CardPaymentMethodJsonBuilder setAllowPrepaidCards(boolean z) {
        this.c = Boolean.valueOf(z);
        return this;
    }

    public CardPaymentMethodJsonBuilder setAllowedAuthMethods(JSONArray jSONArray) {
        this.a = jSONArray;
        return this;
    }

    public CardPaymentMethodJsonBuilder setAllowedCardNetworks(JSONArray jSONArray) {
        this.b = jSONArray;
        return this;
    }

    public CardPaymentMethodJsonBuilder setAssuranceDetailsRequired(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }

    public CardPaymentMethodJsonBuilder setBillingAddressParameters(String str, boolean z) {
        this.g = str;
        this.h = Boolean.valueOf(z);
        return this;
    }

    public CardPaymentMethodJsonBuilder setBillingAddressRequired(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    public CardPaymentMethodJsonBuilder setGatewayMerchantId(String str) {
        this.i = str;
        return this;
    }

    public JSONObject toJson() throws JSONException {
        return new JSONObject().put(SVGParser.XML_STYLESHEET_ATTR_TYPE, PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD).put("parameters", b()).put("tokenizationSpecification", c());
    }
}
