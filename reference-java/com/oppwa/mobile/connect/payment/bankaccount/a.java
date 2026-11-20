package com.oppwa.mobile.connect.payment.bankaccount;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import java.util.Map;

class a extends BankAccountPaymentParams {
    public static final Parcelable.Creator<a> CREATOR = new C0065a();

    class C0065a implements Parcelable.Creator<a> {
        C0065a() {
        }

        @Override
        public a createFromParcel(Parcel parcel) {
            return new a(parcel, null);
        }

        @Override
        public a[] newArray(int i) {
            return new a[i];
        }
    }

    a(Parcel parcel, C0065a c0065a) {
        this(parcel);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("bankAccount.holder", getHolder());
        paramsForRequest.put("bankAccount.iban", getIban());
        if (this.m) {
            paramsForRequest.put("createRegistration", "true");
        }
        return paramsForRequest;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    a(String str, String str2, String str3, boolean z) throws PaymentException {
        super(str, "DIRECTDEBIT_SEPA", str2, str3, null, null, null, null, null);
        if (!BankAccountPaymentParams.isHolderValid(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsBankAccountHolderInvalidError());
        }
        if (!BankAccountPaymentParams.isIbanValid(str3)) {
            throw new PaymentException(PaymentError.getPaymentParamsBankAccountIbanInvalidError());
        }
        this.m = z;
    }

    private a(Parcel parcel) {
        super(parcel);
    }
}
