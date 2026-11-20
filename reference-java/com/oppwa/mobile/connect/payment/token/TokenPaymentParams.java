package com.oppwa.mobile.connect.payment.token;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.card.BaseCardPaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.regex.Pattern;

public class TokenPaymentParams extends BaseCardPaymentParams {
    public static final Parcelable.Creator<TokenPaymentParams> CREATOR = new a();
    private static SoftReference<Pattern> j;
    private final String i;

    class a implements Parcelable.Creator<TokenPaymentParams> {
        a() {
        }

        @Override
        public TokenPaymentParams createFromParcel(Parcel parcel) {
            return new TokenPaymentParams(parcel, null);
        }

        @Override
        public TokenPaymentParams[] newArray(int i) {
            return new TokenPaymentParams[i];
        }
    }

    TokenPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    private static Pattern e() {
        SoftReference<Pattern> softReference = j;
        if (softReference == null || softReference.get() == null) {
            j = new SoftReference<>(Pattern.compile("[a-zA-Z0-9]{32}"));
        }
        return j.get();
    }

    public static boolean isTokenIdValid(String str) {
        return str != null && e().matcher(str).matches();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && super.equals(obj)) {
            return Utils.compare(this.i, ((TokenPaymentParams) obj).i);
        }
        return false;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("registrationId", this.i);
        return paramsForRequest;
    }

    public String getTokenId() {
        return this.i;
    }

    @Override
    public int hashCode() {
        return (super.hashCode() * 31) + this.i.hashCode();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.i);
    }

    public TokenPaymentParams(String str, String str2, String str3) throws PaymentException {
        super(str, str3);
        if (!isTokenIdValid(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsTokenInvalidError());
        }
        this.i = str2;
    }

    public TokenPaymentParams(String str, String str2, String str3, String str4) throws PaymentException {
        this(str, str2, str3);
        if (str4 != null && !BaseCardPaymentParams.isCvvValid(str4)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardCvvInvalidError());
        }
        b(str4);
    }

    private TokenPaymentParams(Parcel parcel) {
        super(parcel);
        this.i = parcel.readString();
    }
}
