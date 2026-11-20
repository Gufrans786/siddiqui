package com.oppwa.mobile.connect.checkout.meta;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.caverock.androidsvg.SVGParser;
import com.oppwa.mobile.connect.checkout.dialog.CheckoutActivity;
import com.oppwa.mobile.connect.checkout.dialog.IPaymentFormListener;
import com.oppwa.mobile.connect.payment.BillingAddress;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.utils.ParcelUtils;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class CheckoutSettings implements Parcelable {
    public static final Parcelable.Creator<CheckoutSettings> CREATOR = new a();
    private boolean A;
    private Map<String, Integer> B;
    private BillingAddress C;
    private boolean D;
    private String a;
    private String b;
    private Connect.ProviderMode c;
    private Connect.ProviderDomain d;
    private Set<String> e;
    private CheckoutStorePaymentDetailsMode f;
    private CheckoutSkipCVVMode g;
    private CheckoutCardBrandsDisplayMode h;
    private boolean i;
    private boolean j;
    private boolean k;
    private HashMap<String, CheckoutSecurityPolicyMode> l;
    private CheckoutSecurityPolicyMode m;

    private int f3730n;
    private String o;
    private boolean p;
    private String q;
    private double r;
    private double s;
    private IPaymentFormListener t;
    private boolean u;
    private Integer[] v;
    private CheckoutBrandDetectionType w;
    private CheckoutBrandDetectionAppearanceStyle x;
    private List<String> y;
    private String z;

    class a implements Parcelable.Creator<CheckoutSettings> {
        a() {
        }

        @Override
        public CheckoutSettings createFromParcel(Parcel parcel) {
            return new CheckoutSettings(parcel, null);
        }

        @Override
        public CheckoutSettings[] newArray(int i) {
            return new CheckoutSettings[i];
        }
    }

    CheckoutSettings(Parcel parcel, a aVar) {
        this(parcel);
    }

    private Integer[] a(Parcel parcel) {
        Object[] array = parcel.readArray(Integer.class.getClassLoader());
        Integer[] numArr = new Integer[array.length];
        for (int i = 0; i < array.length; i++) {
            numArr[i] = (Integer) array[i];
        }
        return numArr;
    }

    public Intent createCheckoutActivityIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) CheckoutActivity.class);
        intent.putExtra(CheckoutActivity.CHECKOUT_SETTINGS, this);
        return intent;
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
            CheckoutSettings checkoutSettings = (CheckoutSettings) obj;
            if (this.k == checkoutSettings.k && this.j == checkoutSettings.j && this.f3730n == checkoutSettings.f3730n && this.p == checkoutSettings.p && this.i == checkoutSettings.i && this.u == checkoutSettings.u && this.A == checkoutSettings.A && this.D == checkoutSettings.D && Double.compare(checkoutSettings.r, this.r) == 0 && Double.compare(checkoutSettings.s, this.s) == 0 && Arrays.equals(this.v, checkoutSettings.v) && Utils.compare(this.a, checkoutSettings.a) && Utils.compare(this.b, checkoutSettings.b) && Utils.compare(this.c, checkoutSettings.c) && Utils.compare(this.d, checkoutSettings.d) && Utils.compare(this.e, checkoutSettings.e) && Utils.compare(this.f, checkoutSettings.f) && Utils.compare(this.g, checkoutSettings.g) && Utils.compare(this.h, checkoutSettings.h) && Utils.compare(this.m, checkoutSettings.m) && Utils.compare(this.w, checkoutSettings.w) && Utils.compare(this.x, checkoutSettings.x) && Utils.compare(this.y, checkoutSettings.y) && Utils.compare(this.o, checkoutSettings.o) && Utils.compare(this.q, checkoutSettings.q) && Utils.compare(this.l, checkoutSettings.l) && Utils.compare(this.B, checkoutSettings.B) && Utils.compare(this.C, checkoutSettings.C) && Utils.compare(this.z, checkoutSettings.z)) {
                return true;
            }
        }
        return false;
    }

    public BillingAddress getBillingAddress() {
        return this.C;
    }

    public CheckoutBrandDetectionAppearanceStyle getBrandDetectionAppearanceStyle() {
        return this.x;
    }

    public List<String> getBrandDetectionPriority() {
        return this.y;
    }

    public CheckoutBrandDetectionType getBrandDetectionType() {
        return this.w;
    }

    public CheckoutCardBrandsDisplayMode getCardBrandsDisplayMode() {
        return this.h;
    }

    public String getCheckoutId() {
        return this.a;
    }

    public Map<String, Integer> getCustomLogos() {
        return this.B;
    }

    public String getGooglePayPaymentDataRequestJson() {
        return this.z;
    }

    public Integer[] getInstallmentOptions() {
        return this.v;
    }

    public String getKlarnaCountry() {
        return this.q;
    }

    public double getKlarnaInstallmentsFee() {
        return this.s;
    }

    public double getKlarnaInvoiceFee() {
        return this.r;
    }

    public String getLocale() {
        return this.o;
    }

    public Set<String> getPaymentBrands() {
        return this.e;
    }

    public IPaymentFormListener getPaymentFormListener() {
        return this.t;
    }

    public Connect.ProviderDomain getProviderDomain() {
        return this.d;
    }

    public Connect.ProviderMode getProviderMode() {
        return this.c;
    }

    public CheckoutSecurityPolicyMode getSecurityPolicyModeForBrand(String str) {
        return this.l.get(str);
    }

    public CheckoutSecurityPolicyMode getSecurityPolicyModeForTokens() {
        return this.m;
    }

    public String getShopperResultUrl() {
        return this.b;
    }

    public CheckoutSkipCVVMode getSkipCVVMode() {
        return this.g;
    }

    public CheckoutStorePaymentDetailsMode getStorePaymentDetailsMode() {
        return this.f;
    }

    public int getThemeResId() {
        return this.f3730n;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31;
        Set<String> set = this.e;
        int iHashCode3 = (((((((((((((((((iHashCode2 + (set != null ? set.hashCode() : 0)) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode()) * 31) + (this.i ? 1 : 0)) * 31) + (this.k ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.j ? 1 : 0)) * 31) + this.l.hashCode()) * 31;
        CheckoutSecurityPolicyMode checkoutSecurityPolicyMode = this.m;
        int iHashCode4 = (iHashCode3 + (checkoutSecurityPolicyMode != null ? checkoutSecurityPolicyMode.hashCode() : 0)) * 31;
        CheckoutBrandDetectionType checkoutBrandDetectionType = this.w;
        int iHashCode5 = (iHashCode4 + (checkoutBrandDetectionType != null ? checkoutBrandDetectionType.hashCode() : 0)) * 31;
        CheckoutBrandDetectionAppearanceStyle checkoutBrandDetectionAppearanceStyle = this.x;
        int iHashCode6 = (iHashCode5 + (checkoutBrandDetectionAppearanceStyle != null ? checkoutBrandDetectionAppearanceStyle.hashCode() : 0)) * 31;
        List<String> list = this.y;
        int iHashCode7 = (((iHashCode6 + (list != null ? list.hashCode() : 0)) * 31) + this.f3730n) * 31;
        String str2 = this.o;
        int iHashCode8 = (((iHashCode7 + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.p ? 1 : 0)) * 31;
        String str3 = this.q;
        int iHashCode9 = str3 != null ? str3.hashCode() : 0;
        long jDoubleToLongBits = Double.doubleToLongBits(this.r);
        int i = ((iHashCode8 + iHashCode9) * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.s);
        int iHashCode10 = ((((((((((i * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31) + (this.u ? 1 : 0)) * 31) + Arrays.hashCode(this.v)) * 31) + this.B.hashCode()) * 31) + (this.A ? 1 : 0)) * 31;
        BillingAddress billingAddress = this.C;
        int iHashCode11 = (iHashCode10 + (billingAddress != null ? billingAddress.hashCode() : 0)) * 31;
        String str4 = this.z;
        return iHashCode11 + (str4 != null ? str4.hashCode() : 0);
    }

    public boolean isCardHolderVisible() {
        return this.j;
    }

    public boolean isIBANRequired() {
        return this.k;
    }

    public boolean isInstallmentEnabled() {
        return this.u;
    }

    public boolean isPaymentBrandsOrderUsedForTokens() {
        return this.D;
    }

    public boolean isSTCPayQrCodeRequired() {
        return this.A;
    }

    public boolean isTotalAmountRequired() {
        return this.i;
    }

    public boolean isWindowSecurityEnabled() {
        return this.p;
    }

    public CheckoutSettings setBillingAddress(BillingAddress billingAddress) {
        this.C = billingAddress;
        return this;
    }

    public CheckoutSettings setBrandDetectionAppearanceStyle(CheckoutBrandDetectionAppearanceStyle checkoutBrandDetectionAppearanceStyle) {
        this.x = checkoutBrandDetectionAppearanceStyle;
        return this;
    }

    public CheckoutSettings setBrandDetectionPriority(List<String> list) {
        this.y = list;
        return this;
    }

    public CheckoutSettings setBrandDetectionType(CheckoutBrandDetectionType checkoutBrandDetectionType) {
        this.w = checkoutBrandDetectionType;
        return this;
    }

    public CheckoutSettings setCardBrandsDisplayMode(CheckoutCardBrandsDisplayMode checkoutCardBrandsDisplayMode) {
        this.h = checkoutCardBrandsDisplayMode;
        return this;
    }

    public CheckoutSettings setCardHolderVisible(boolean z) {
        this.j = z;
        return this;
    }

    public void setCheckoutId(String str) {
        this.a = str;
    }

    public CheckoutSettings setCustomLogo(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            this.B.put(str, Integer.valueOf(i));
        }
        return this;
    }

    public CheckoutSettings setGooglePayPaymentDataRequestJson(String str) {
        this.z = str;
        return this;
    }

    public CheckoutSettings setIBANRequired(boolean z) {
        this.k = z;
        return this;
    }

    public CheckoutSettings setInstallmentEnabled(boolean z) {
        this.u = z;
        return this;
    }

    public CheckoutSettings setInstallmentOptions(Integer[] numArr) {
        this.v = numArr;
        return this;
    }

    public CheckoutSettings setKlarnaCountry(String str) {
        this.q = str;
        return this;
    }

    public CheckoutSettings setKlarnaInstallmentsFee(double d) {
        this.s = d;
        return this;
    }

    public CheckoutSettings setKlarnaInvoiceFee(double d) {
        this.r = d;
        return this;
    }

    public CheckoutSettings setLocale(String str) {
        this.o = str;
        return this;
    }

    public CheckoutSettings setPaymentBrands(Set<String> set) {
        this.e = set;
        return this;
    }

    public CheckoutSettings setPaymentBrandsOrderUsedForTokens(boolean z) {
        this.D = z;
        return this;
    }

    public CheckoutSettings setPaymentFormListener(IPaymentFormListener iPaymentFormListener) {
        this.t = iPaymentFormListener;
        return this;
    }

    public CheckoutSettings setProviderDomain(Connect.ProviderDomain providerDomain) {
        this.d = providerDomain;
        return this;
    }

    public CheckoutSettings setProviderMode(Connect.ProviderMode providerMode) {
        this.c = providerMode;
        return this;
    }

    public CheckoutSettings setSTCPayQrCodeRequired(boolean z) {
        this.A = z;
        return this;
    }

    public CheckoutSettings setSecurityPolicyModeForBrand(String str, CheckoutSecurityPolicyMode checkoutSecurityPolicyMode) {
        if ("ANDROIDPAY".equals(str)) {
            checkoutSecurityPolicyMode = CheckoutSecurityPolicyMode.DEVICE_AUTH_NOT_REQUIRED;
        }
        this.l.put(str, checkoutSecurityPolicyMode);
        return this;
    }

    public CheckoutSettings setSecurityPolicyModeForTokens(CheckoutSecurityPolicyMode checkoutSecurityPolicyMode) {
        this.m = checkoutSecurityPolicyMode;
        return this;
    }

    public CheckoutSettings setShopperResultUrl(String str) {
        this.b = str;
        return this;
    }

    public CheckoutSettings setSkipCVVMode(CheckoutSkipCVVMode checkoutSkipCVVMode) {
        this.g = checkoutSkipCVVMode;
        return this;
    }

    public CheckoutSettings setStorePaymentDetailsMode(CheckoutStorePaymentDetailsMode checkoutStorePaymentDetailsMode) {
        this.f = checkoutStorePaymentDetailsMode;
        return this;
    }

    public CheckoutSettings setThemeResId(int i) {
        this.f3730n = i;
        return this;
    }

    public CheckoutSettings setTotalAmountRequired(boolean z) {
        this.i = z;
        return this;
    }

    public CheckoutSettings setWindowSecurityEnabled(boolean z) {
        this.p = z;
        return this;
    }

    public String toString() {
        IPaymentFormListener iPaymentFormListener = this.t;
        return "checkoutId=" + this.a + "\nshopperResultUrl=" + this.b + "\nproviderMode=" + this.c + "\nproviderDomain=" + this.d + "\npaymentBrands=" + this.e + "\nstorePaymentDetailsMode=" + this.f + "\nskipCVVMode=" + this.g + "\ncardBrandsDisplayMode=" + this.h + "\nisTotalAmountRequired=" + this.i + "\nisIBANRequired=" + this.k + "\nisCardHolderVisible=" + this.j + "\nsecurityPolicies=" + this.l + "\nsecurityPolicyModeForTokens=" + this.m + "\nbrandDetectionType=" + this.w + "\nbrandDetectionType=" + this.x + "\nbrandDetectionPriority=" + this.y + "\nthemeResId=" + this.f3730n + "\nlocale=" + this.o + "\nklarnaCountry=" + this.q + "\nklarnaInvoiceFee=" + this.r + "\nklarnaInstallmentsFee=" + this.s + "\nisWindowSecurityEnabled=" + this.p + "\ngooglePayPaymentDataRequestJson=" + this.z + "\npaymentFormListener=" + (iPaymentFormListener != null ? iPaymentFormListener.getClass().toString() : SVGParser.XML_STYLESHEET_ATTR_ALTERNATE_NO) + "\nisInstallmentEnabled=" + this.u + "\ninstallmentOptions=" + Arrays.toString(this.v) + "\ncustomLogos=" + this.B.keySet() + "\nisSTCPayQrCodeRequired=" + this.A + "\nhasBillingAddress=" + (this.C != null) + "\nisPaymentBrandsOrderUsedForTokens=" + this.D;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c.name());
        parcel.writeString(this.d.name());
        parcel.writeStringArray((String[]) this.e.toArray(new String[0]));
        parcel.writeParcelable(this.f, 0);
        parcel.writeParcelable(this.g, 0);
        parcel.writeParcelable(this.h, 0);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        ParcelUtils.writeMapToParcel(parcel, this.l);
        ParcelUtils.writeMapToParcel(parcel, this.B);
        parcel.writeParcelable(this.m, 0);
        parcel.writeInt(this.f3730n);
        parcel.writeString(this.o);
        parcel.writeString(this.q);
        parcel.writeDouble(this.r);
        parcel.writeDouble(this.s);
        parcel.writeByte(this.p ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.t, 0);
        parcel.writeByte(this.u ? (byte) 1 : (byte) 0);
        parcel.writeArray(this.v);
        parcel.writeParcelable(this.w, 0);
        parcel.writeParcelable(this.x, 0);
        parcel.writeByte((byte) (this.y != null ? 1 : 0));
        List<String> list = this.y;
        if (list != null) {
            parcel.writeStringList(list);
        }
        parcel.writeByte(this.A ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.C, 0);
        parcel.writeString(this.z);
        parcel.writeByte(this.D ? (byte) 1 : (byte) 0);
    }

    public CheckoutSettings(String str, Set<String> set, Connect.ProviderMode providerMode) {
        this.f = CheckoutStorePaymentDetailsMode.NEVER;
        this.g = CheckoutSkipCVVMode.NEVER;
        this.h = CheckoutCardBrandsDisplayMode.GROUPED;
        this.j = true;
        this.l = new HashMap<>();
        this.p = true;
        this.u = false;
        this.v = new Integer[]{1, 3, 5};
        this.w = CheckoutBrandDetectionType.REGEX;
        this.x = CheckoutBrandDetectionAppearanceStyle.ACTIVE;
        this.A = true;
        this.B = new HashMap();
        this.D = false;
        this.a = str;
        this.e = set;
        if (set != null) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                setSecurityPolicyModeForBrand(it.next(), CheckoutSecurityPolicyMode.DEVICE_AUTH_NOT_REQUIRED);
            }
        } else {
            this.e = new LinkedHashSet();
        }
        this.c = providerMode;
        this.d = Connect.ProviderDomain.DEFAULT;
    }

    public Intent createCheckoutActivityIntent(Context context, ComponentName componentName) {
        Intent intentCreateCheckoutActivityIntent = createCheckoutActivityIntent(context);
        if (componentName != null) {
            intentCreateCheckoutActivityIntent.putExtra(CheckoutActivity.CHECKOUT_RECEIVER, componentName);
        }
        return intentCreateCheckoutActivityIntent;
    }

    private CheckoutSettings(Parcel parcel) {
        this.f = CheckoutStorePaymentDetailsMode.NEVER;
        this.g = CheckoutSkipCVVMode.NEVER;
        this.h = CheckoutCardBrandsDisplayMode.GROUPED;
        this.j = true;
        this.l = new HashMap<>();
        this.p = true;
        this.u = false;
        this.v = new Integer[]{1, 3, 5};
        this.w = CheckoutBrandDetectionType.REGEX;
        this.x = CheckoutBrandDetectionAppearanceStyle.ACTIVE;
        this.A = true;
        this.B = new HashMap();
        this.D = false;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = Connect.ProviderMode.valueOf(parcel.readString());
        this.d = Connect.ProviderDomain.valueOf(parcel.readString());
        this.e = new LinkedHashSet(Arrays.asList(parcel.createStringArray()));
        this.f = (CheckoutStorePaymentDetailsMode) parcel.readParcelable(CheckoutStorePaymentDetailsMode.class.getClassLoader());
        this.g = (CheckoutSkipCVVMode) parcel.readParcelable(CheckoutSkipCVVMode.class.getClassLoader());
        this.h = (CheckoutCardBrandsDisplayMode) parcel.readParcelable(CheckoutCardBrandsDisplayMode.class.getClassLoader());
        this.i = parcel.readByte() != 0;
        this.k = parcel.readByte() != 0;
        this.j = parcel.readByte() != 0;
        this.l = ParcelUtils.readMapFromParcel(parcel, CheckoutSecurityPolicyMode.class);
        this.B = ParcelUtils.readMapFromParcel(parcel, Integer.class);
        this.m = (CheckoutSecurityPolicyMode) parcel.readParcelable(CheckoutSecurityPolicyMode.class.getClassLoader());
        this.f3730n = parcel.readInt();
        this.o = parcel.readString();
        this.q = parcel.readString();
        this.r = parcel.readDouble();
        this.s = parcel.readDouble();
        this.p = parcel.readByte() != 0;
        this.t = (IPaymentFormListener) parcel.readParcelable(IPaymentFormListener.class.getClassLoader());
        this.u = parcel.readByte() != 0;
        this.v = a(parcel);
        this.w = (CheckoutBrandDetectionType) parcel.readParcelable(CheckoutBrandDetectionType.class.getClassLoader());
        this.x = (CheckoutBrandDetectionAppearanceStyle) parcel.readParcelable(CheckoutBrandDetectionAppearanceStyle.class.getClassLoader());
        if (parcel.readByte() > 0) {
            ArrayList arrayList = new ArrayList();
            this.y = arrayList;
            parcel.readStringList(arrayList);
        }
        this.A = parcel.readByte() != 0;
        this.C = (BillingAddress) parcel.readParcelable(BillingAddress.class.getClassLoader());
        this.z = parcel.readString();
        this.D = parcel.readByte() != 0;
    }
}
