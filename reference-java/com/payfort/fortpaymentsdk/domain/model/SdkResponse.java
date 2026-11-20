package com.payfort.fortpaymentsdk.domain.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class SdkResponse implements Serializable {
    private String checker3DsURL;
    private int currencyDecimalPoints;
    private boolean isSuccess;
    private MerchantToken merchantToken;
    private Map<String, Object> responseMap;

    public Map<String, Object> getResponseMap() {
        Map<String, Object> map = this.responseMap;
        return map == null ? new HashMap() : map;
    }

    public void setResponseMap(Map<String, Object> map) {
        this.responseMap = map;
    }

    public boolean isSuccess() {
        return this.isSuccess;
    }

    public void setSuccess(boolean z) {
        this.isSuccess = z;
    }

    public String getChecker3DsURL() {
        return this.checker3DsURL;
    }

    public void setChecker3DsURL(String str) {
        this.checker3DsURL = str;
    }

    public int getCurrencyDecimalPoints() {
        return this.currencyDecimalPoints;
    }

    public void setCurrencyDecimalPoints(int i) {
        this.currencyDecimalPoints = i;
    }

    public MerchantToken getMerchantToken() {
        return this.merchantToken;
    }

    public void setMerchantToken(MerchantToken merchantToken) {
        this.merchantToken = merchantToken;
    }
}
