package com.oppwa.mobile.connect.payment.bankaccount;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;

public class BankAccountPaymentParams extends PaymentParams {
    public static final Parcelable.Creator<BankAccountPaymentParams> CREATOR = new a();

    private static SoftReference<Pattern> f3731n;
    private static SoftReference<Pattern> o;
    private static SoftReference<Pattern> p;
    private static SoftReference<Pattern> q;
    private static SoftReference<Pattern> r;
    private static SoftReference<Pattern> s;
    private static SoftReference<Pattern> t;
    protected byte[] f;
    protected byte[] g;
    protected byte[] h;
    protected byte[] i;
    protected byte[] j;
    protected byte[] k;
    protected byte[] l;
    protected boolean m;

    class a implements Parcelable.Creator<BankAccountPaymentParams> {
        a() {
        }

        @Override
        public BankAccountPaymentParams createFromParcel(Parcel parcel) {
            return new BankAccountPaymentParams(parcel);
        }

        @Override
        public BankAccountPaymentParams[] newArray(int i) {
            return new BankAccountPaymentParams[i];
        }
    }

    BankAccountPaymentParams(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws PaymentException {
        super(str, str2);
        this.m = false;
        this.f = Utils.bytesFromString(Utils.normalizeHolder(str3));
        this.g = Utils.bytesFromString(str4);
        this.h = Utils.bytesFromString(str5);
        this.i = Utils.bytesFromString(str6);
        this.j = Utils.bytesFromString(str7);
        this.k = Utils.bytesFromString(str8);
        this.l = Utils.bytesFromString(str9);
    }

    public static BankAccountPaymentParams createDirectDebitSepaPaymentParams(String str, String str2, String str3, boolean z) throws PaymentException {
        return new com.oppwa.mobile.connect.payment.bankaccount.a(str, str2, str3, z);
    }

    public static BankAccountPaymentParams createGiroPayPaymentParams(String str, String str2, String str3, String str4, String str5) throws PaymentException {
        return new b(str, str2, str3, str4, str5);
    }

    public static BankAccountPaymentParams createIdealPaymentParams(String str, String str2) throws PaymentException {
        return new c(str, str2);
    }

    public static BankAccountPaymentParams createPaytrailPaymentParams(String str) throws PaymentException {
        return new d(str);
    }

    public static BankAccountPaymentParams createSofortPaymentParams(String str, String str2) throws PaymentException {
        return new e(str, str2);
    }

    private static Pattern e() {
        SoftReference<Pattern> softReference = r;
        if (softReference == null || softReference.get() == null) {
            r = new SoftReference<>(Pattern.compile("[0-9]{3,27}"));
        }
        return r.get();
    }

    private static Pattern f() {
        SoftReference<Pattern> softReference = t;
        if (softReference == null || softReference.get() == null) {
            t = new SoftReference<>(Pattern.compile("[0-9]{1,12}"));
        }
        return t.get();
    }

    private static Pattern g() {
        SoftReference<Pattern> softReference = q;
        if (softReference == null || softReference.get() == null) {
            q = new SoftReference<>(Pattern.compile("[\\s\\S]{1,255}"));
        }
        return q.get();
    }

    private static Pattern h() {
        SoftReference<Pattern> softReference = s;
        if (softReference == null || softReference.get() == null) {
            s = new SoftReference<>(Pattern.compile("[a-zA-Z0-9]{8}$|^[a-zA-Z0-9]{11}"));
        }
        return s.get();
    }

    private static Pattern i() {
        SoftReference<Pattern> softReference = p;
        if (softReference == null || softReference.get() == null) {
            p = new SoftReference<>(Pattern.compile("[A-Z]{2}"));
        }
        return p.get();
    }

    public static boolean isAccountNumberValid(String str) {
        return str != null && e().matcher(str).matches();
    }

    public static boolean isBankCodeValid(String str) {
        return str != null && f().matcher(str).matches();
    }

    public static boolean isBankNameValid(String str) {
        return str != null && g().matcher(str).matches();
    }

    public static boolean isBicValid(String str) {
        return str != null && h().matcher(str).matches();
    }

    public static boolean isCountryValid(String str) {
        return str != null && i().matcher(str).matches();
    }

    public static boolean isHolderValid(String str) {
        return str != null && j().matcher(Utils.normalizeHolder(str)).matches();
    }

    public static boolean isIbanValid(String str) {
        return str != null && k().matcher(str).matches();
    }

    private static Pattern j() {
        SoftReference<Pattern> softReference = f3731n;
        if (softReference == null || softReference.get() == null) {
            f3731n = new SoftReference<>(Pattern.compile(".{3,128}"));
        }
        return f3731n.get();
    }

    private static Pattern k() {
        SoftReference<Pattern> softReference = o;
        if (softReference == null || softReference.get() == null) {
            o = new SoftReference<>(Pattern.compile("[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{11,27}"));
        }
        return o.get();
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
        BankAccountPaymentParams bankAccountPaymentParams = (BankAccountPaymentParams) obj;
        return this.m == bankAccountPaymentParams.m && Arrays.equals(this.f, bankAccountPaymentParams.f) && Arrays.equals(this.g, bankAccountPaymentParams.g) && Arrays.equals(this.h, bankAccountPaymentParams.h) && Arrays.equals(this.i, bankAccountPaymentParams.i) && Arrays.equals(this.j, bankAccountPaymentParams.j) && Arrays.equals(this.k, bankAccountPaymentParams.k) && Arrays.equals(this.l, bankAccountPaymentParams.l);
    }

    public String getAccountNumber() {
        return Utils.stringFromBytes(this.h);
    }

    public String getBankCode() {
        return Utils.stringFromBytes(this.j);
    }

    public String getBankName() {
        return Utils.stringFromBytes(this.l);
    }

    public String getBic() {
        return Utils.stringFromBytes(this.i);
    }

    public String getCountry() {
        return Utils.stringFromBytes(this.k);
    }

    @Override
    public Parcelable.Creator<?> getCreator() {
        return CREATOR;
    }

    public String getHolder() {
        return Utils.stringFromBytes(this.f);
    }

    public String getIban() {
        return Utils.stringFromBytes(this.g);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        return super.getParamsForRequest();
    }

    @Override
    public int hashCode() {
        return (((((((((((((((super.hashCode() * 31) + Arrays.hashCode(this.f)) * 31) + Arrays.hashCode(this.g)) * 31) + Arrays.hashCode(this.h)) * 31) + Arrays.hashCode(this.i)) * 31) + Arrays.hashCode(this.j)) * 31) + Arrays.hashCode(this.k)) * 31) + Arrays.hashCode(this.l)) * 31) + (this.m ? 1 : 0);
    }

    public boolean isTokenizationEnabled() {
        return this.m;
    }

    @Override
    public void mask() {
        if (this.g != null) {
            String iban = getIban();
            if (iban.length() > 4) {
                this.g = iban.substring(iban.length() - 4).getBytes();
            }
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        Utils.writeByteArray(parcel, this.f);
        Utils.writeByteArray(parcel, this.g);
        Utils.writeByteArray(parcel, this.h);
        Utils.writeByteArray(parcel, this.i);
        Utils.writeByteArray(parcel, this.j);
        Utils.writeByteArray(parcel, this.k);
        Utils.writeByteArray(parcel, this.l);
        parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
    }

    protected BankAccountPaymentParams(Parcel parcel) {
        super(parcel);
        this.m = false;
        this.f = Utils.readByteArray(parcel);
        this.g = Utils.readByteArray(parcel);
        this.h = Utils.readByteArray(parcel);
        this.i = Utils.readByteArray(parcel);
        this.j = Utils.readByteArray(parcel);
        this.k = Utils.readByteArray(parcel);
        this.l = Utils.readByteArray(parcel);
        this.m = parcel.readByte() != 0;
    }
}
