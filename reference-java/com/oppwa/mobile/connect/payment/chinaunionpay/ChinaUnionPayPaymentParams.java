package com.oppwa.mobile.connect.payment.chinaunionpay;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;

public class ChinaUnionPayPaymentParams extends PaymentParams {
    public static final Parcelable.Creator<ChinaUnionPayPaymentParams> CREATOR = new a();
    private static SoftReference<Pattern> g;
    private final byte[] f;

    class a implements Parcelable.Creator<ChinaUnionPayPaymentParams> {
        a() {
        }

        @Override
        public ChinaUnionPayPaymentParams createFromParcel(Parcel parcel) {
            return new ChinaUnionPayPaymentParams(parcel, (a) null);
        }

        @Override
        public ChinaUnionPayPaymentParams[] newArray(int i) {
            return new ChinaUnionPayPaymentParams[i];
        }
    }

    ChinaUnionPayPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    private static Pattern e() {
        SoftReference<Pattern> softReference = g;
        if (softReference == null || softReference.get() == null) {
            g = new SoftReference<>(Pattern.compile(".{3,128}"));
        }
        return g.get();
    }

    public static boolean isHolderValid(String str) {
        if (str == null) {
            return false;
        }
        return str.isEmpty() || e().matcher(Utils.normalizeHolder(str)).matches();
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
            return Arrays.equals(this.f, ((ChinaUnionPayPaymentParams) obj).f);
        }
        return false;
    }

    public String getHolder() {
        return Utils.stringFromBytes(this.f);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        if (this.f != null) {
            paramsForRequest.put("virtualAccount.holder", getHolder());
        }
        return paramsForRequest;
    }

    @Override
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(this.f);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        Utils.writeByteArray(parcel, this.f);
    }

    public ChinaUnionPayPaymentParams(String str, String str2) throws PaymentException {
        super(str, "CHINAUNIONPAY");
        if (str2 != null && !isHolderValid(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardHolderInvalidError());
        }
        this.f = Utils.bytesFromString(Utils.normalizeHolder(str2));
    }

    private ChinaUnionPayPaymentParams(Parcel parcel) {
        super(parcel);
        this.f = Utils.readByteArray(parcel);
    }
}
