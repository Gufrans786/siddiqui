package com.oppwa.mobile.connect.payment.bankaccount;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import java.util.Map;

class e extends BankAccountPaymentParams {
    public static final Parcelable.Creator<e> CREATOR = new a();

    class a implements Parcelable.Creator<e> {
        a() {
        }

        @Override
        public e createFromParcel(Parcel parcel) {
            return new e(parcel, (a) null);
        }

        @Override
        public e[] newArray(int i) {
            return new e[i];
        }
    }

    e(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("bankAccount.country", getCountry());
        return paramsForRequest;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    e(String str, String str2) throws PaymentException {
        super(str, "SOFORTUEBERWEISUNG", null, null, null, null, null, str2, null);
        if (!BankAccountPaymentParams.isCountryValid(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsSofortCountryInvalidError());
        }
    }

    private e(Parcel parcel) {
        super(parcel);
    }
}
