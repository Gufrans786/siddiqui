package com.oppwa.mobile.connect.payment.stcpay;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;

public class STCPayPaymentParams extends PaymentParams {
    public static final Parcelable.Creator<STCPayPaymentParams> CREATOR = new a();
    private static SoftReference<Pattern> h;
    private STCPayVerificationOption f;
    private byte[] g;

    class a implements Parcelable.Creator<STCPayPaymentParams> {
        a() {
        }

        @Override
        public STCPayPaymentParams createFromParcel(Parcel parcel) {
            return new STCPayPaymentParams(parcel, (a) null);
        }

        @Override
        public STCPayPaymentParams[] newArray(int i) {
            return new STCPayPaymentParams[i];
        }
    }

    static class b {
        static final int[] a;

        static {
            int[] iArr = new int[STCPayVerificationOption.values().length];
            a = iArr;
            try {
                iArr[STCPayVerificationOption.MOBILE_PHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[STCPayVerificationOption.QR_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    STCPayPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    private static Pattern e() {
        if (h == null) {
            h = new SoftReference<>(Pattern.compile("^[0-9].*"));
        }
        return h.get();
    }

    public static boolean isMobilePhoneNumberValid(String str) {
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
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        STCPayPaymentParams sTCPayPaymentParams = (STCPayPaymentParams) obj;
        return Utils.compare(this.f, sTCPayPaymentParams.f) && Arrays.equals(this.g, sTCPayPaymentParams.g);
    }

    public String getMobilePhoneNumber() {
        return Utils.stringFromBytes(this.g);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        int i = b.a[this.f.ordinal()];
        if (i == 1) {
            paramsForRequest.put("customParameters[SHOPPER_payment_mode]", "mobile");
            if (this.g != null) {
                paramsForRequest.put("customer.mobile", getMobilePhoneNumber());
            }
        } else if (i == 2) {
            paramsForRequest.put("customParameters[SHOPPER_payment_mode]", "qr_code");
            return paramsForRequest;
        }
        return paramsForRequest;
    }

    public STCPayVerificationOption getVerificationOption() {
        return this.f;
    }

    @Override
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        STCPayVerificationOption sTCPayVerificationOption = this.f;
        return ((iHashCode + (sTCPayVerificationOption != null ? sTCPayVerificationOption.hashCode() : 0)) * 31) + Arrays.hashCode(this.g);
    }

    public void setMobilePhoneNumber(String str) {
        this.g = Utils.bytesFromString(str);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f, 0);
        Utils.writeByteArray(parcel, this.g);
    }

    public STCPayPaymentParams(String str, STCPayVerificationOption sTCPayVerificationOption) throws PaymentException {
        super(str, "STC_PAY");
        int i = b.a[sTCPayVerificationOption.ordinal()];
        if (i == 1) {
            this.f = STCPayVerificationOption.MOBILE_PHONE;
        } else {
            if (i != 2) {
                return;
            }
            this.f = STCPayVerificationOption.QR_CODE;
        }
    }

    private STCPayPaymentParams(Parcel parcel) {
        super(parcel);
        this.f = (STCPayVerificationOption) parcel.readParcelable(STCPayVerificationOption.class.getClassLoader());
        this.g = Utils.readByteArray(parcel);
    }
}
