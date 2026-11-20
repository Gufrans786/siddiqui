package com.oppwa.mobile.connect.utils.googlepay;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class IsReadyToPayRequestJsonBuilder {
    private JSONArray a;
    private Boolean b;

    public IsReadyToPayRequestJsonBuilder setAllowedPaymentMethods(JSONArray jSONArray) {
        this.a = jSONArray;
        return this;
    }

    public IsReadyToPayRequestJsonBuilder setExistingPaymentMethodRequired(boolean z) {
        this.b = Boolean.valueOf(z);
        return this;
    }

    public JSONObject toJson() throws JSONException {
        return new JSONObject().put("apiVersion", 2).put("apiVersionMinor", 0).putOpt("allowedPaymentMethods", this.a).putOpt("existingPaymentMethodRequired", this.b);
    }
}
