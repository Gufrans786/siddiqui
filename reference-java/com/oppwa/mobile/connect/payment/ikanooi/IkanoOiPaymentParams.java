package com.oppwa.mobile.connect.payment.ikanooi;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.lang.ref.SoftReference;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

public class IkanoOiPaymentParams extends PaymentParams {
    public static final Parcelable.Creator<IkanoOiPaymentParams> CREATOR = new a();
    private static SoftReference<Pattern> g;
    private static SoftReference<Pattern> h;
    private static SoftReference<Pattern> i;
    private final String f;

    class a implements Parcelable.Creator<IkanoOiPaymentParams> {
        a() {
        }

        @Override
        public IkanoOiPaymentParams createFromParcel(Parcel parcel) {
            return new IkanoOiPaymentParams(parcel, null);
        }

        @Override
        public IkanoOiPaymentParams[] newArray(int i) {
            return new IkanoOiPaymentParams[i];
        }
    }

    IkanoOiPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    private static boolean a(String str, String str2) {
        return b(str.substring(0, str2.length()), str2);
    }

    private static boolean b(String str) {
        if (e().matcher(str).matches()) {
            return a(str, "ddMMyy");
        }
        return false;
    }

    private static boolean c(String str) {
        if (f().matcher(str).matches()) {
            return a(str, "ddMMyy");
        }
        return false;
    }

    private static boolean d(String str) {
        if (g().matcher(str).matches()) {
            return a(str, "yyyyMMdd");
        }
        return false;
    }

    private static Pattern e() {
        SoftReference<Pattern> softReference = i;
        if (softReference == null || softReference.get() == null) {
            i = new SoftReference<>(Pattern.compile("^[0-9]{6}-[a-zA-Z0-9]{4}$"));
        }
        return i.get();
    }

    private static Pattern f() {
        SoftReference<Pattern> softReference = h;
        if (softReference == null || softReference.get() == null) {
            h = new SoftReference<>(Pattern.compile("^[0-9]{11}$"));
        }
        return h.get();
    }

    private static Pattern g() {
        SoftReference<Pattern> softReference = g;
        if (softReference == null || softReference.get() == null) {
            g = new SoftReference<>(Pattern.compile("^[0-9]{12}$"));
        }
        return g.get();
    }

    public static boolean isNationalIdentifierValid(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        str2.hashCode();
        str2.hashCode();
        switch (str2) {
            case "IKANOOI_FI":
                return b(str);
            case "IKANOOI_NO":
                return c(str);
            case "IKANOOI_SE":
                return d(str);
            default:
                return false;
        }
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
            return Utils.compare(this.f, ((IkanoOiPaymentParams) obj).f);
        }
        return false;
    }

    public String getNationalIdentifier() {
        return this.f;
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("customer.identificationDocId", this.f);
        paramsForRequest.put("customer.identificationDocType", "IDCARD");
        return paramsForRequest;
    }

    @Override
    public int hashCode() {
        return (super.hashCode() * 31) + this.f.hashCode();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f);
    }

    public IkanoOiPaymentParams(String str, String str2, String str3) throws PaymentException {
        super(str, str2);
        if (!isNationalIdentifierValid(str3, str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsNationalIdentifierInvalidError());
        }
        this.f = str3;
    }

    private static boolean b(String str, String str2) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2, Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.parse(str);
            return true;
        } catch (ParseException unused) {
            return false;
        }
    }

    private IkanoOiPaymentParams(Parcel parcel) {
        super(parcel);
        this.f = parcel.readString();
    }
}
