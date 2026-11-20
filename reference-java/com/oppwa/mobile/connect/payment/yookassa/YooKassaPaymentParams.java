package com.oppwa.mobile.connect.payment.yookassa;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.VirtualAccountPaymentParams;

public class YooKassaPaymentParams extends VirtualAccountPaymentParams {
    public static final Parcelable.Creator<YooKassaPaymentParams> CREATOR = new a();

    class a implements Parcelable.Creator<YooKassaPaymentParams> {
        a() {
        }

        @Override
        public YooKassaPaymentParams createFromParcel(Parcel parcel) {
            return new YooKassaPaymentParams(parcel);
        }

        @Override
        public YooKassaPaymentParams[] newArray(int i) {
            return new YooKassaPaymentParams[i];
        }
    }

    public YooKassaPaymentParams(String str, String str2) throws PaymentException {
        super(str, "YANDEX_CHECKOUT", str2);
    }

    protected YooKassaPaymentParams(Parcel parcel) {
        super(parcel);
    }
}
