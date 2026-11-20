package com.oppwa.mobile.connect.payment.card;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.BillingAddress;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;

public class CardPaymentParams extends BaseCardPaymentParams {
    public static final Parcelable.Creator<CardPaymentParams> CREATOR = new a();
    private byte[] i;
    private final byte[] j;
    private final byte[] k;
    private final byte[] l;
    private byte[] m;

    private byte[] f3732n;
    private BillingAddress o;
    private boolean p;

    class a implements Parcelable.Creator<CardPaymentParams> {
        a() {
        }

        @Override
        public CardPaymentParams createFromParcel(Parcel parcel) {
            return new CardPaymentParams(parcel, null);
        }

        @Override
        public CardPaymentParams[] newArray(int i) {
            return new CardPaymentParams[i];
        }
    }

    CardPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    private void a(BillingAddress billingAddress, Map<String, String> map) {
        a("billing.country", billingAddress.getCountry(), map);
        a("billing.state", billingAddress.getState(), map);
        a("billing.city", billingAddress.getCity(), map);
        a("billing.postcode", billingAddress.getPostCode(), map);
        a("billing.street1", billingAddress.getStreet1(), map);
        a("billing.street2", billingAddress.getStreet2(), map);
    }

    @Deprecated
    public static boolean checkLuhn(String str) {
        return b.a(str);
    }

    public static boolean isCardExpired(String str, String str2) {
        if (!isExpiryMonthValid(str) || !isExpiryYearValid(str2)) {
            return false;
        }
        int i = Calendar.getInstance().get(1);
        int i2 = Calendar.getInstance().get(2) + 1;
        int i3 = Integer.parseInt(str);
        int i4 = Integer.parseInt(str2);
        return i4 < i || (i4 == i && i3 < i2);
    }

    public static boolean isCountryCodeValid(String str) {
        return str != null && com.oppwa.mobile.connect.payment.card.a.e().matcher(str).matches();
    }

    public static boolean isExpiryMonthValid(String str) {
        return str != null && com.oppwa.mobile.connect.payment.card.a.b().matcher(str).matches();
    }

    public static boolean isExpiryYearValid(String str) {
        return str != null && com.oppwa.mobile.connect.payment.card.a.c().matcher(str).matches();
    }

    public static boolean isHolderValid(String str) {
        if (str == null) {
            return false;
        }
        String strNormalizeHolder = Utils.normalizeHolder(str);
        if (strNormalizeHolder.isEmpty()) {
            return true;
        }
        return (!com.oppwa.mobile.connect.payment.card.a.d().matcher(strNormalizeHolder).matches() || Pattern.compile("^[0-9]{10,}$").matcher(Utils.normalizeCardNumber(str)).matches() || com.oppwa.mobile.connect.payment.card.a.a().matcher(str).matches()) ? false : true;
    }

    public static boolean isMobilePhoneNumberValid(String str) {
        return str != null && com.oppwa.mobile.connect.payment.card.a.e().matcher(str).matches();
    }

    public static boolean isNumberValid(String str, boolean z) {
        String strNormalizeCardNumber = Utils.normalizeCardNumber(str);
        if (strNormalizeCardNumber == null || !com.oppwa.mobile.connect.payment.card.a.f().matcher(strNormalizeCardNumber).matches()) {
            return false;
        }
        if (z) {
            return b.a(strNormalizeCardNumber);
        }
        return true;
    }

    @Override
    protected boolean a(String str) {
        return str != null;
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
        CardPaymentParams cardPaymentParams = (CardPaymentParams) obj;
        return this.p == cardPaymentParams.p && Arrays.equals(this.i, cardPaymentParams.i) && Arrays.equals(this.j, cardPaymentParams.j) && Arrays.equals(this.k, cardPaymentParams.k) && Arrays.equals(this.l, cardPaymentParams.l) && Arrays.equals(this.m, cardPaymentParams.m) && Arrays.equals(this.f3732n, cardPaymentParams.f3732n) && Objects.equals(this.o, cardPaymentParams.o);
    }

    public BillingAddress getBillingAddress() {
        return this.o;
    }

    public String getCountryCode() {
        return Utils.stringFromBytes(this.f3732n);
    }

    public String getExpiryMonth() {
        return Utils.stringFromBytes(this.k);
    }

    public String getExpiryYear() {
        return Utils.stringFromBytes(this.l);
    }

    public String getHolder() {
        return Utils.stringFromBytes(this.j);
    }

    public String getMobilePhone() {
        return Utils.stringFromBytes(this.m);
    }

    public String getNumber() {
        return Utils.stringFromBytes(this.i);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        if (this.j != null) {
            paramsForRequest.put("card.holder", getHolder());
        }
        paramsForRequest.put("card.number", getNumber());
        if (this.k != null) {
            paramsForRequest.put("card.expiryMonth", getExpiryMonth());
        }
        if (this.l != null) {
            paramsForRequest.put("card.expiryYear", getExpiryYear());
        }
        if (this.p) {
            paramsForRequest.put("createRegistration", "true");
        }
        if (this.m != null) {
            paramsForRequest.put("customer.mobile", getMobilePhone());
        }
        if (this.f3732n != null) {
            paramsForRequest.put("customParameters[MOBILE_COUNTRY_CODE]", getCountryCode());
        }
        BillingAddress billingAddress = this.o;
        if (billingAddress != null) {
            a(billingAddress, paramsForRequest);
        }
        return paramsForRequest;
    }

    @Override
    public int hashCode() {
        return (((((((((((Objects.hash(Integer.valueOf(super.hashCode()), this.o, Boolean.valueOf(this.p)) * 31) + Arrays.hashCode(this.i)) * 31) + Arrays.hashCode(this.j)) * 31) + Arrays.hashCode(this.k)) * 31) + Arrays.hashCode(this.l)) * 31) + Arrays.hashCode(this.m)) * 31) + Arrays.hashCode(this.f3732n);
    }

    public boolean isTokenizationEnabled() {
        return this.p;
    }

    @Override
    public void mask() {
        super.mask();
        String number = getNumber();
        if (number.length() > 4) {
            this.i = number.substring(number.length() - 4).getBytes();
        }
    }

    public PaymentParams setBillingAddress(BillingAddress billingAddress) {
        this.o = billingAddress;
        return this;
    }

    public void setCountryCode(String str) {
        this.f3732n = Utils.bytesFromString(str);
    }

    public void setMobilePhone(String str) {
        this.m = Utils.bytesFromString(str);
    }

    public CardPaymentParams setTokenizationEnabled(boolean z) {
        this.p = z;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        Utils.writeByteArray(parcel, this.j);
        Utils.writeByteArray(parcel, this.i);
        Utils.writeByteArray(parcel, this.k);
        Utils.writeByteArray(parcel, this.l);
        Utils.writeByteArray(parcel, this.m);
        Utils.writeByteArray(parcel, this.f3732n);
        parcel.writeParcelable(this.o, 0);
        parcel.writeByte(this.p ? (byte) 1 : (byte) 0);
    }

    public CardPaymentParams(String str, String str2, String str3, String str4, String str5, String str6, String str7) throws PaymentException {
        super(str, str2);
        if (str4 != null && !isHolderValid(str4)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardHolderInvalidError());
        }
        if (!isNumberValid(str3)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardNumberInvalidError());
        }
        if (str5 != null && !isExpiryMonthValid(str5)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardMonthInvalidError());
        }
        if (str6 != null && !isExpiryYearValid(str6)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardYearInvalidError());
        }
        if (str5 != null && str6 != null && isCardExpired(str5, str6)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardExpiredError());
        }
        if (str7 != null && !BaseCardPaymentParams.isCvvValid(str7)) {
            throw new PaymentException(PaymentError.getPaymentParamsCardCvvInvalidError());
        }
        this.j = Utils.bytesFromString(Utils.normalizeHolder(str4));
        this.i = Utils.normalizeCardNumber(str3).getBytes();
        this.k = Utils.bytesFromString(str5);
        this.l = Utils.bytesFromString(str6);
        b(str7);
        this.p = false;
    }

    @Deprecated
    public static boolean isNumberValid(String str) {
        String strNormalizeCardNumber = Utils.normalizeCardNumber(str);
        return strNormalizeCardNumber != null && com.oppwa.mobile.connect.payment.card.a.f().matcher(strNormalizeCardNumber).matches();
    }

    public CardPaymentParams(String str, String str2, String str3, String str4, String str5, String str6) throws PaymentException {
        this(str, "", str2, str3, str4, str5, str6);
    }

    private CardPaymentParams(Parcel parcel) {
        super(parcel);
        this.j = Utils.readByteArray(parcel);
        this.i = Utils.readByteArray(parcel);
        this.k = Utils.readByteArray(parcel);
        this.l = Utils.readByteArray(parcel);
        this.m = Utils.readByteArray(parcel);
        this.f3732n = Utils.readByteArray(parcel);
        this.o = (BillingAddress) parcel.readParcelable(BillingAddress.class.getClassLoader());
        this.p = parcel.readByte() != 0;
    }
}
