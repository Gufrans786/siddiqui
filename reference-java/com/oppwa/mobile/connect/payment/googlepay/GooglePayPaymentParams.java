package com.oppwa.mobile.connect.payment.googlepay;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.VirtualAccountPaymentParams;
import java.util.Map;
import java.util.Objects;

public class GooglePayPaymentParams extends VirtualAccountPaymentParams {
    public static final Parcelable.Creator<GooglePayPaymentParams> CREATOR = new a();
    private final String g;

    class a implements Parcelable.Creator<GooglePayPaymentParams> {
        a() {
        }

        @Override
        public GooglePayPaymentParams createFromParcel(Parcel parcel) {
            return new GooglePayPaymentParams(parcel, null);
        }

        @Override
        public GooglePayPaymentParams[] newArray(int i) {
            return new GooglePayPaymentParams[i];
        }
    }

    GooglePayPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && super.equals(obj)) {
            return Objects.equals(this.g, ((GooglePayPaymentParams) obj).g);
        }
        return false;
    }

    public String getCardBrand() {
        return this.g;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("customParameters[tokenSource]", "GOOGLEPAY");
        return paramsForRequest;
    }

    @Override
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.g);
    }

    public GooglePayPaymentParams(String str, String str2, String str3) throws PaymentException {
        super(str, "GOOGLEPAY", str2);
        if (TextUtils.isEmpty(str3)) {
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_INVALID, "Google Pay card brand is missing."));
        }
        this.g = str3;
    }

    private GooglePayPaymentParams(Parcel parcel) {
        super(parcel);
        this.g = parcel.readString();
    }
}
