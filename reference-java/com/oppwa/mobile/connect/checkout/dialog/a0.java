package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSecurityPolicyMode;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.BrandInfo;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.token.Token;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

class a0 implements Parcelable {
    public static final Parcelable.Creator<a0> CREATOR = new a();
    private Set<String> a;
    private Token[] b;

    class a implements Parcelable.Creator<a0> {
        a() {
        }

        @Override
        public a0 createFromParcel(Parcel parcel) {
            return new a0(parcel, (a) null);
        }

        @Override
        public a0[] newArray(int i) {
            return new a0[i];
        }
    }

    a0(Parcel parcel, a aVar) {
        this(parcel);
    }

    void a(String str, Connect.ProviderMode providerMode) throws PaymentException {
        if ((this.a.contains("KLARNA_INVOICE") || this.a.contains("KLARNA_INSTALLMENTS")) && !u.a(str)) {
            if (providerMode == Connect.ProviderMode.TEST) {
                throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE, "Klarna country is not supported."));
            }
            this.a.remove("KLARNA_INVOICE");
            this.a.remove("KLARNA_INSTALLMENTS");
        }
    }

    Set<String> b() {
        return this.a;
    }

    String[] c() {
        return (String[]) this.a.toArray(new String[0]);
    }

    Token[] d() {
        return this.b;
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
            a0 a0Var = (a0) obj;
            if (Utils.compare(this.a, a0Var.a) && Arrays.equals(this.b, a0Var.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode();
        return iHashCode + (iHashCode * 31) + Arrays.hashCode(this.b);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(c());
        parcel.writeTypedArray(this.b, i);
    }

    a0(Set<String> set, Token[] tokenArr) {
        this.a = set == null ? new LinkedHashSet<>() : set;
        this.b = tokenArr;
    }

    private boolean c(BrandsValidation brandsValidation) {
        Iterator<String> it = this.a.iterator();
        while (it.hasNext()) {
            if (!brandsValidation.isCardBrand(it.next())) {
                return true;
            }
        }
        return false;
    }

    boolean b(BrandsValidation brandsValidation) {
        Token[] tokenArr = this.b;
        return (tokenArr == null || tokenArr.length == 0) && !c(brandsValidation);
    }

    private void b(CheckoutSettings checkoutSettings, boolean z) {
        CheckoutSecurityPolicyMode securityPolicyModeForTokens = checkoutSettings.getSecurityPolicyModeForTokens();
        if (z || securityPolicyModeForTokens != CheckoutSecurityPolicyMode.DEVICE_AUTH_REQUIRED) {
            return;
        }
        this.b = null;
    }

    private a0(Parcel parcel) {
        this.a = new LinkedHashSet(Arrays.asList(parcel.createStringArray()));
        this.b = (Token[]) parcel.createTypedArray(Token.CREATOR);
    }

    void a(Connect.ProviderMode providerMode, String str) throws PaymentException {
        PaymentError paymentError = ((this.a.contains("KLARNA_PAYMENTS_PAYNOW") || this.a.contains("KLARNA_PAYMENTS_PAYLATER") || this.a.contains("KLARNA_PAYMENTS_SLICEIT")) && TextUtils.isEmpty(str)) ? new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE, "The shopperResult URL is required for Klarna Payments proper configuration.") : null;
        if (paymentError != null) {
            if (providerMode != Connect.ProviderMode.TEST) {
                this.a.remove("KLARNA_PAYMENTS_PAYNOW");
                this.a.remove("KLARNA_PAYMENTS_PAYLATER");
                this.a.remove("KLARNA_PAYMENTS_SLICEIT");
                return;
            }
            throw new PaymentException(paymentError);
        }
    }

    void a(CheckoutInfo checkoutInfo, boolean z) {
        Token[] tokenArr;
        if (checkoutInfo.isBrandsActivated() && checkoutInfo.getBrands() != null) {
            List listAsList = Arrays.asList(checkoutInfo.getBrands());
            if (checkoutInfo.isShopBrandsOverridden()) {
                this.a = new LinkedHashSet(listAsList);
            } else {
                this.a.retainAll(listAsList);
            }
        }
        if (!z || (tokenArr = this.b) == null || tokenArr.length <= 0) {
            return;
        }
        a(this.a, tokenArr);
    }

    private void a(Set<String> set, Token[] tokenArr) {
        final LinkedList linkedList = new LinkedList(set);
        Arrays.sort(tokenArr, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return a0.a(linkedList, (Token) obj, (Token) obj2);
            }
        });
    }

    public static int a(LinkedList linkedList, Token token, Token token2) {
        String paymentBrand = token.getPaymentBrand();
        String paymentBrand2 = token2.getPaymentBrand();
        if (linkedList.contains(paymentBrand) && linkedList.contains(paymentBrand2)) {
            return linkedList.indexOf(paymentBrand) - linkedList.indexOf(paymentBrand2);
        }
        if (linkedList.contains(paymentBrand2)) {
            return 1;
        }
        return linkedList.contains(paymentBrand) ? -1 : 0;
    }

    void a(CheckoutSettings checkoutSettings, boolean z) {
        a();
        Token[] tokenArr = this.b;
        if (tokenArr != null && tokenArr.length > 0) {
            b(checkoutSettings, z);
        }
        Iterator<String> it = this.a.iterator();
        while (it.hasNext()) {
            if (checkoutSettings.getSecurityPolicyModeForBrand(it.next()) == CheckoutSecurityPolicyMode.DEVICE_AUTH_REQUIRED && !z) {
                it.remove();
            }
        }
    }

    void a(BrandsValidation brandsValidation) {
        for (Map.Entry<String, BrandInfo> entry : brandsValidation.getBrandInfoMap().entrySet()) {
            String key = entry.getKey();
            if (entry.getValue().isCustomUiRequired() && !brandsValidation.isCardBrand(key) && !z.a(key)) {
                this.a.remove(key);
            }
        }
    }

    void a(Task<Boolean> task, Connect.ProviderMode providerMode) throws PaymentException {
        try {
            if (task.getResult(ApiException.class).booleanValue()) {
                return;
            }
            this.a.remove("GOOGLEPAY");
        } catch (ApiException e) {
            if (providerMode == Connect.ProviderMode.LIVE) {
                this.a.remove("GOOGLEPAY");
                return;
            }
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, e.getMessage()));
        }
    }

    private void a() {
        if (!LibraryHelper.isPlayServicesWalletAvailable) {
            this.a.remove("GOOGLEPAY");
        }
        this.a.remove("APPLEPAY");
        this.a.remove(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD);
    }
}
