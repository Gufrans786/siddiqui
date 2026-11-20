package com.oppwa.mobile.connect.payment.card;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.Arrays;
import java.util.Map;

public class IkanoPrivateLabelVAPaymentParams extends PaymentParams {
    public static final Parcelable.Creator<IkanoPrivateLabelVAPaymentParams> CREATOR = new a();
    private final byte[] f;
    private final byte[] g;
    private final byte[] h;
    private final byte[] i;

    class a implements Parcelable.Creator<IkanoPrivateLabelVAPaymentParams> {
        a() {
        }

        @Override
        public IkanoPrivateLabelVAPaymentParams createFromParcel(Parcel parcel) {
            return new IkanoPrivateLabelVAPaymentParams(parcel, null);
        }

        @Override
        public IkanoPrivateLabelVAPaymentParams[] newArray(int i) {
            return new IkanoPrivateLabelVAPaymentParams[i];
        }
    }

    IkanoPrivateLabelVAPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static boolean isAccountExpired(String str, String str2) {
        return CardPaymentParams.isCardExpired(str, str2);
    }

    public static boolean isAccountNumberValid(String str) {
        return CardPaymentParams.isNumberValid(str);
    }

    public static boolean isAccountVerificationValid(String str) {
        return str != null && com.oppwa.mobile.connect.payment.card.a.g().matcher(str).matches();
    }

    public static boolean isExpiryMonthValid(String str) {
        return CardPaymentParams.isExpiryMonthValid(str);
    }

    public static boolean isExpiryYearValid(String str) {
        return CardPaymentParams.isExpiryYearValid(str);
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
        IkanoPrivateLabelVAPaymentParams ikanoPrivateLabelVAPaymentParams = (IkanoPrivateLabelVAPaymentParams) obj;
        return Arrays.equals(this.f, ikanoPrivateLabelVAPaymentParams.f) && Arrays.equals(this.g, ikanoPrivateLabelVAPaymentParams.g) && Arrays.equals(this.h, ikanoPrivateLabelVAPaymentParams.h) && Arrays.equals(this.i, ikanoPrivateLabelVAPaymentParams.i);
    }

    public String getAccountNumber() {
        return Utils.stringFromBytes(this.f);
    }

    public String getAccountVerification() {
        return Utils.stringFromBytes(this.i);
    }

    public String getExpiryMonth() {
        return Utils.stringFromBytes(this.g);
    }

    public String getExpiryYear() {
        return Utils.stringFromBytes(this.h);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("customParameters[GIFT_CARD_NUMBER]", getAccountNumber());
        paramsForRequest.put("customParameters[GIFT_CARD_EXPIRY_DATE]", getExpiryMonth() + "/" + getExpiryYear());
        String accountVerification = getAccountVerification();
        if (!TextUtils.isEmpty(accountVerification)) {
            paramsForRequest.put("customParameters[GIFT_CARD_CODE]", accountVerification);
        }
        return paramsForRequest;
    }

    @Override
    public int hashCode() {
        return (((((((super.hashCode() * 31) + Arrays.hashCode(this.f)) * 31) + Arrays.hashCode(this.g)) * 31) + Arrays.hashCode(this.h)) * 31) + Arrays.hashCode(this.i);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        Utils.writeByteArray(parcel, this.f);
        Utils.writeByteArray(parcel, this.g);
        Utils.writeByteArray(parcel, this.h);
        Utils.writeByteArray(parcel, this.i);
    }

    public IkanoPrivateLabelVAPaymentParams(String str, String str2, String str3, String str4, String str5) throws PaymentException {
        super(str, "IK_PRIVATE_LABEL_VA");
        if (!isAccountNumberValid(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardNumberInvalidError());
        }
        if (!isExpiryMonthValid(str3)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardMonthInvalidError());
        }
        if (!isExpiryYearValid(str4)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardYearInvalidError());
        }
        if (isAccountExpired(str3, str4)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardExpiredError());
        }
        if (!TextUtils.isEmpty(str5) && !isAccountVerificationValid(str5)) {
            throw new PaymentException(PaymentError.getPaymentParamsAccountVerificationInvalidError());
        }
        this.f = Utils.bytesFromString(str2);
        this.g = Utils.bytesFromString(str3);
        this.h = Utils.bytesFromString(str4);
        this.i = Utils.bytesFromString(str5);
    }

    private IkanoPrivateLabelVAPaymentParams(Parcel parcel) {
        super(parcel);
        this.f = Utils.readByteArray(parcel);
        this.g = Utils.readByteArray(parcel);
        this.h = Utils.readByteArray(parcel);
        this.i = Utils.readByteArray(parcel);
    }
}
