package com.oppwa.mobile.connect.payment.klarna;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import java.util.Map;
import java.util.Objects;

public class KlarnaInlinePaymentParams extends PaymentParams {
    public static final Parcelable.Creator<KlarnaInlinePaymentParams> CREATOR = new a();
    private String f;

    class a implements Parcelable.Creator<KlarnaInlinePaymentParams> {
        a() {
        }

        @Override
        public KlarnaInlinePaymentParams createFromParcel(Parcel parcel) {
            return new KlarnaInlinePaymentParams(parcel, (a) null);
        }

        @Override
        public KlarnaInlinePaymentParams[] newArray(int i) {
            return new KlarnaInlinePaymentParams[i];
        }
    }

    KlarnaInlinePaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    private boolean b(String str) {
        return str.equals("KLARNA_PAYMENTS_PAYLATER") || str.equals("KLARNA_PAYMENTS_PAYNOW") || str.equals("KLARNA_PAYMENTS_SLICEIT");
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && super.equals(obj)) {
            return Objects.equals(this.f, ((KlarnaInlinePaymentParams) obj).f);
        }
        return false;
    }

    public String getInitialTransactionId() {
        return this.f;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("customParameters[inlineFlow]", "true");
        String str = this.f;
        if (str != null) {
            paramsForRequest.put("customParameters[SHOPPER_submit_payment]", str);
        }
        return paramsForRequest;
    }

    @Override
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.f;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public KlarnaInlinePaymentParams setInitialTransactionId(String str) {
        this.f = str;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f);
    }

    public KlarnaInlinePaymentParams(String str, String str2) throws PaymentException {
        super(str, str2);
        if (!b(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsPaymentSchemeInvalidError());
        }
    }

    private KlarnaInlinePaymentParams(Parcel parcel) {
        super(parcel);
        this.f = parcel.readString();
    }
}
