package com.oppwa.mobile.connect.payment;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.oppwa.mobile.connect.BuildConfig;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;

public class PaymentParams implements Parcelable {
    public static final Parcelable.Creator<PaymentParams> CREATOR = new a();
    private static SoftReference<Pattern> e;
    protected Map<String, String> a;
    private String b;
    private final String c;
    private String d;

    class a implements Parcelable.Creator<PaymentParams> {
        a() {
        }

        @Override
        public PaymentParams createFromParcel(Parcel parcel) {
            return new PaymentParams(parcel);
        }

        @Override
        public PaymentParams[] newArray(int i) {
            return new PaymentParams[i];
        }
    }

    public PaymentParams(String str, String str2) throws PaymentException {
        if (TextUtils.isEmpty(str)) {
            throw new PaymentException(PaymentError.getPaymentParamsCheckoutIdInvalidError());
        }
        if (!a(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsPaymentSchemeInvalidError());
        }
        this.b = str;
        this.c = str2;
        this.a = new HashMap();
    }

    private static String b() {
        return Build.MANUFACTURER + " " + Build.BRAND + " " + Build.MODEL;
    }

    private static String c() {
        return BuildConfig.VERSION_NAME;
    }

    private static String d() {
        return "Android " + Build.VERSION.RELEASE;
    }

    protected boolean a(String str) {
        return str != null && str.length() > 0;
    }

    public boolean addParam(String str, String str2) {
        if (!a().matcher(str).matches() || str2.length() > 2048) {
            return false;
        }
        this.a.put(str, str2);
        return true;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            PaymentParams paymentParams = (PaymentParams) obj;
            if (this.a.equals(paymentParams.a) && this.b.equals(paymentParams.b) && this.c.equals(paymentParams.c) && Objects.equals(this.d, paymentParams.d)) {
                return true;
            }
        }
        return false;
    }

    public String getCheckoutId() {
        return this.b;
    }

    public Parcelable.Creator<?> getCreator() {
        return CREATOR;
    }

    public Map<String, String> getParamsForRequest() {
        HashMap map = new HashMap();
        map.put("paymentBrand", this.c);
        map.put("source", "MSDK");
        a("shopperResultUrl", this.d, map);
        a(this.a, map);
        return map;
    }

    public String getPaymentBrand() {
        return this.c;
    }

    public String getShopperResultUrl() {
        return this.d;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d);
    }

    public void mask() {
    }

    public void removeParam(String str) {
        this.a.remove(str);
    }

    public void setCheckoutId(String str) {
        this.b = str;
    }

    public void setShopperResultUrl(String str) {
        this.d = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.a.size());
        if (this.a.isEmpty()) {
            return;
        }
        for (String str : this.a.keySet()) {
            parcel.writeString(str);
            parcel.writeString(this.a.get(str));
        }
    }

    private void a(Map<String, String> map, Map<String, String> map2) {
        a("customParameters[SHOPPER_MSDKIntegrationType]", map.containsKey("customParameters[SHOPPER_MSDKIntegrationType]") ? null : TypedValues.Custom.NAME, map2);
        map2.put("customParameters[SHOPPER_OS]", d());
        map2.put("customParameters[SHOPPER_device]", b());
        map2.put("customParameters[SHOPPER_MSDKVersion]", c());
        for (String str : map.keySet()) {
            a(str, map.get(str), map2);
        }
    }

    protected PaymentParams(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        int i = parcel.readInt();
        this.a = new HashMap();
        if (i > 0) {
            this.a = new HashMap(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.a.put(parcel.readString(), parcel.readString());
            }
        }
    }

    protected void a(String str, String str2, Map<String, String> map) {
        if (str2 == null) {
            return;
        }
        map.put(str, str2);
    }

    private static Pattern a() {
        SoftReference<Pattern> softReference = e;
        if (softReference == null || softReference.get() == null) {
            e = new SoftReference<>(Pattern.compile("^[a-zA-Z0-9\\._\\]\\[]{2,64}$"));
        }
        return e.get();
    }
}
