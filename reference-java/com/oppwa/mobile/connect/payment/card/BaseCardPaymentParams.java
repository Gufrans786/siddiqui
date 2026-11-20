package com.oppwa.mobile.connect.payment.card;

import android.os.Parcel;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.Arrays;
import java.util.Map;

public abstract class BaseCardPaymentParams extends PaymentParams {
    private byte[] f;
    private Integer g;
    private String h;

    protected BaseCardPaymentParams(String str, String str2) throws PaymentException {
        super(str, str2);
    }

    public static boolean isCvvValid(String str) {
        return a.a().matcher(str).matches();
    }

    protected void b(String str) {
        this.f = Utils.bytesFromString(str);
    }

    @Override
    public int describeContents() {
        return super.describeContents();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        BaseCardPaymentParams baseCardPaymentParams = (BaseCardPaymentParams) obj;
        return Arrays.equals(this.f, baseCardPaymentParams.f) && Utils.compare(this.g, baseCardPaymentParams.g) && Utils.compare(this.h, baseCardPaymentParams.h);
    }

    public String getCvv() {
        return Utils.stringFromBytes(this.f);
    }

    public Integer getNumberOfInstallments() {
        return this.g;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        if (this.f != null) {
            paramsForRequest.put("card.cvv", getCvv());
        }
        Integer num = this.g;
        if (num != null) {
            paramsForRequest.put("recurring.numberOfInstallments", num.toString());
        }
        String str = this.h;
        if (str != null) {
            paramsForRequest.put("threeDSecure.deviceInfo", str);
        }
        return paramsForRequest;
    }

    public String getThreeDS2AuthParams() {
        return this.h;
    }

    @Override
    public int hashCode() {
        int iHashCode = ((super.hashCode() * 31) + Arrays.hashCode(this.f)) * 31;
        Integer num = this.g;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str = this.h;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    @Override
    public void mask() {
        super.mask();
        if (this.f != null) {
            this.f = Utils.bytesFromString(new String(new char[getCvv().length()]).replace((char) 0, '*'));
        }
    }

    public BaseCardPaymentParams setNumberOfInstallments(Integer num) {
        this.g = num;
        return this;
    }

    public BaseCardPaymentParams setThreeDS2AuthParams(String str) {
        this.h = str;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        Utils.writeByteArray(parcel, this.f);
        parcel.writeValue(this.g);
        parcel.writeString(this.h);
    }

    protected BaseCardPaymentParams(Parcel parcel) {
        super(parcel);
        this.f = Utils.readByteArray(parcel);
        this.g = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.h = parcel.readString();
    }
}
