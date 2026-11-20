package com.oppwa.mobile.connect.payment.bankaccount;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import java.util.Map;

class c extends BankAccountPaymentParams {
    public static final Parcelable.Creator<c> CREATOR = new a();

    class a implements Parcelable.Creator<c> {
        a() {
        }

        @Override
        public c createFromParcel(Parcel parcel) {
            return new c(parcel, (a) null);
        }

        @Override
        public c[] newArray(int i) {
            return new c[i];
        }
    }

    c(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("bankAccount.bankName", getBankName());
        paramsForRequest.put("bankAccount.country", getCountry());
        return paramsForRequest;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    c(String str, String str2) throws PaymentException {
        super(str, "IDEAL", null, null, null, null, null, "NL", str2);
        if (!BankAccountPaymentParams.isBankNameValid(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsBankNameInvalidError());
        }
    }

    private c(Parcel parcel) {
        super(parcel);
    }
}
