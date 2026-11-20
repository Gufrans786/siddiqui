package com.nsoftware.ipworks3ds.sdk;

public final class ChallengeParameters {

    public String f1;

    public String f2;

    public String f3;

    public String f4;

    public String f5;

    public String f6;

    public String get3DSServerTransactionID() {
        return this.f6;
    }

    public String getAcsRefNumber() {
        return this.f3;
    }

    public String getAcsSignedContent() {
        return this.f4;
    }

    public String getAcsTransactionID() {
        return this.f5;
    }

    public String getThreeDSRequestorAppURL() {
        return this.f1;
    }

    public String getThreeDSServerAuthResponse() {
        return this.f2;
    }

    public void set3DSServerTransactionID(String str) {
        this.f6 = str;
    }

    public void setAcsRefNumber(String str) {
        this.f3 = str;
    }

    public void setAcsSignedContent(String str) {
        this.f4 = str;
    }

    public void setAcsTransactionID(String str) {
        this.f5 = str;
    }

    public void setThreeDSRequestorAppURL(String str) {
        this.f1 = str;
    }

    public void setThreeDSServerAuthResponse(String str) {
        this.f2 = str;
    }
}
