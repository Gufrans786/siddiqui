package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.text.TextUtils;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import java.util.Map;
import java.util.Objects;

public abstract class VirtualAccountPaymentParams extends PaymentParams {
    private final String f;

    public VirtualAccountPaymentParams(String str, String str2, String str3) throws PaymentException {
        super(str, str2);
        this.f = str3;
        g();
    }

    private String e() {
        return f() ? "googlePay.paymentToken" : "virtualAccount.paymentToken";
    }

    private boolean f() {
        return TextUtils.equals(getPaymentBrand(), "GOOGLEPAY");
    }

    private void g() throws PaymentException {
        if (TextUtils.isEmpty(this.f)) {
            if (!f()) {
                throw new PaymentException(PaymentError.getPaymentParamsPaymentTokenMissingError());
            }
            throw new PaymentException(PaymentError.getPaymentParamsGooglePayTokenInvalidError());
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && super.equals(obj)) {
            return this.f.equals(((VirtualAccountPaymentParams) obj).f);
        }
        return false;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put(e(), getPaymentToken());
        return paramsForRequest;
    }

    public String getPaymentToken() {
        return this.f;
    }

    @Override
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f);
    }

    protected VirtualAccountPaymentParams(Parcel parcel) {
        super(parcel);
        this.f = parcel.readString();
    }
}
