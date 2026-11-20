package com.oppwa.mobile.connect.payment.bankaccount;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentException;
import java.util.Map;

class d extends BankAccountPaymentParams {
    public static final Parcelable.Creator<d> CREATOR = new a();

    class a implements Parcelable.Creator<d> {
        a() {
        }

        @Override
        public d createFromParcel(Parcel parcel) {
            return new d(parcel, null);
        }

        @Override
        public d[] newArray(int i) {
            return new d[i];
        }
    }

    d(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("bankAccount.country", getCountry());
        return paramsForRequest;
    }

    d(String str) throws PaymentException {
        super(str, "PAYTRAIL", null, null, null, null, null, "FI", null);
    }

    private d(Parcel parcel) {
        super(parcel);
    }
}
