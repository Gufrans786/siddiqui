package com.oppwa.mobile.connect.payment.inicis;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import java.util.Map;

public class InicisPaymentParams extends PaymentParams {
    public static final Parcelable.Creator<InicisPaymentParams> CREATOR = new a();

    class a implements Parcelable.Creator<InicisPaymentParams> {
        a() {
        }

        @Override
        public InicisPaymentParams createFromParcel(Parcel parcel) {
            return new InicisPaymentParams(parcel, (a) null);
        }

        @Override
        public InicisPaymentParams[] newArray(int i) {
            return new InicisPaymentParams[i];
        }
    }

    InicisPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("customParameters[SHOPPER_isMobile]", "true");
        return paramsForRequest;
    }

    public InicisPaymentParams(String str, String str2) throws PaymentException {
        super(str, str2);
    }

    private InicisPaymentParams(Parcel parcel) {
        super(parcel);
    }
}
