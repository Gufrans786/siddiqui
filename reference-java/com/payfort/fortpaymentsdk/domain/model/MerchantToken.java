package com.payfort.fortpaymentsdk.domain.model;

import java.io.Serializable;

public class MerchantToken implements Serializable {
    private String expDate;
    private String maskedCardNumber;
    private String paymentOptionName;
    private boolean rememberMe;

    public String getMaskedCardNumber() {
        return this.maskedCardNumber;
    }

    public void setMaskedCardNumber(String str) {
        this.maskedCardNumber = str;
    }

    public String getExpDate() {
        return this.expDate;
    }

    public void setExpDate(String str) {
        this.expDate = str;
    }

    public boolean isRememberMe() {
        return this.rememberMe;
    }

    public void setRememberMe(boolean z) {
        this.rememberMe = z;
    }

    public String getPaymentOptionName() {
        return this.paymentOptionName;
    }

    public void setPaymentOptionName(String str) {
        this.paymentOptionName = str;
    }
}
