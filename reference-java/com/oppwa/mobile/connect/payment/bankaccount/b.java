package com.oppwa.mobile.connect.payment.bankaccount;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import java.util.Map;

class b extends BankAccountPaymentParams {
    public static final Parcelable.Creator<b> CREATOR = new a();

    class a implements Parcelable.Creator<b> {
        a() {
        }

        @Override
        public b createFromParcel(Parcel parcel) {
            return new b(parcel, null);
        }

        @Override
        public b[] newArray(int i) {
            return new b[i];
        }
    }

    b(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("bankAccount.country", "DE");
        if (this.g != null) {
            paramsForRequest.put("bankAccount.iban", getIban());
        }
        if (this.h != null) {
            paramsForRequest.put("bankAccount.number", getAccountNumber());
        }
        if (this.i != null) {
            paramsForRequest.put("bankAccount.bic", getBic());
        }
        if (this.j != null) {
            paramsForRequest.put("bankAccount.bankCode", getBankCode());
        }
        return paramsForRequest;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    b(String str, String str2, String str3, String str4, String str5) throws PaymentException {
        super(str, "GIROPAY", null, str2, str3, str4, str5, null, null);
        if (str2 != null && !BankAccountPaymentParams.isIbanValid(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsBankAccountIbanInvalidError());
        }
        if (str3 != null && !BankAccountPaymentParams.isAccountNumberValid(str3)) {
            throw new PaymentException(PaymentError.getPaymentParamsBankAccountNumberInvalidError());
        }
        if (str4 != null && !BankAccountPaymentParams.isBicValid(str4)) {
            throw new PaymentException(PaymentError.getPaymentParamsBankAccountBicInvalidError());
        }
        if (str5 != null && !BankAccountPaymentParams.isBankCodeValid(str5)) {
            throw new PaymentException(PaymentError.getPaymentParamsBankAccountBankCodeInvalidError());
        }
    }

    private b(Parcel parcel) {
        super(parcel);
    }
}
