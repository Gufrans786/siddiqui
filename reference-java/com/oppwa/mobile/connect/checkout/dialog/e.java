package com.oppwa.mobile.connect.checkout.dialog;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSecurityPolicyMode;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.ImagesRequest;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.provider.IPaymentProvider;
import com.oppwa.mobile.connect.provider.ITransactionListener;
import com.oppwa.mobile.connect.provider.OppPaymentProvider;
import com.oppwa.mobile.connect.provider.Transaction;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.Logger;
import java.util.LinkedHashSet;
import java.util.Set;

class e implements ITransactionListener, ImageLoader.Listener {

    private static final String f3729n = "com.oppwa.mobile.connect.checkout.dialog.e";
    private final Fragment a;
    protected Activity b;
    protected d0 c;
    protected IPaymentProvider d;
    private String e;
    private ComponentName f;
    private ImageButton g;
    private ProgressBar h;
    private View i;
    private String j;
    private PaymentButtonIntegrationMode k = PaymentButtonIntegrationMode.STANDALONE;
    private CheckoutSettings l;
    private ImageLoader m;

    e(Fragment fragment) {
        this.a = fragment;
    }

    private void a(Activity activity) {
        if (LibraryHelper.isPlayServicesBaseAvailable) {
            try {
                ProviderInstaller.installIfNeeded(activity);
            } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException e) {
                this.j = e.getMessage();
            }
        }
    }

    private void c() {
        this.i.setVisibility(0);
        this.g.setVisibility(8);
        this.g.setBackground(null);
        this.i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f$0.a(view);
            }
        });
    }

    private void l() {
        IPaymentProvider iPaymentProvider = this.d;
        if (iPaymentProvider == null) {
            return;
        }
        try {
            iPaymentProvider.requestImages(new String[]{this.e}, this);
        } catch (PaymentException e) {
            Log.e(f3729n, e.getMessage());
        }
    }

    private void m() throws Throwable {
        Bitmap bitmapC = this.m.c(this.e);
        if (bitmapC != null) {
            b(bitmapC);
            return;
        }
        this.g.setClickable(false);
        if (this.m.e(this.e)) {
            return;
        }
        l();
    }

    private void n() {
        this.a.setRetainInstance(true);
    }

    private void o() throws PaymentException {
        Logger.info(this.e + " Drop-in Button");
        String str = this.j;
        if (str != null) {
            Logger.error(str);
        }
        String str2 = this.e;
        if (str2 == null) {
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_PAYMENT_BRAND_INVALID, "The payment brand is null."));
        }
        if ("GOOGLEPAY".equals(str2)) {
            p();
        } else {
            r();
            if ("KLARNA_INSTALLMENTS".equals(this.e) || "KLARNA_INVOICE".equals(this.e)) {
                q();
            }
        }
        a(this.l);
        c(this.l);
    }

    private void p() throws PaymentException {
        if (!LibraryHelper.isPlayServicesWalletAvailable) {
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE, "The play-services-wallet library is not available."));
        }
    }

    private void q() throws PaymentException {
        String klarnaCountry = this.l.getKlarnaCountry();
        if (klarnaCountry != null && !u.a(klarnaCountry)) {
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE, "Klarna country is not supported."));
        }
    }

    private void r() throws PaymentException {
        CheckoutSecurityPolicyMode securityPolicyModeForBrand = this.l.getSecurityPolicyModeForBrand(this.e);
        if (this.c == null) {
            this.c = new d0(this.b, this.l);
        }
        if (securityPolicyModeForBrand == CheckoutSecurityPolicyMode.DEVICE_AUTH_REQUIRED && !this.c.d()) {
            throw new PaymentException(PaymentError.getPaymentMethodNotAvailableError());
        }
    }

    void b(View view) {
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.loading_panel);
        this.h = progressBar;
        progressBar.setVisibility(8);
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.payment_button);
        this.g = imageButton;
        imageButton.setBackground(null);
        this.i = view.findViewById(R.id.googlepay_layout);
    }

    public void d(CheckoutSettings checkoutSettings) throws PaymentException {
        b(checkoutSettings);
    }

    public String e() {
        return this.e;
    }

    public ImageButton f() {
        return this.g;
    }

    void g() {
        this.b = d();
    }

    void h() {
        n();
        a(d());
        this.m = ImageLoader.a(this.b);
    }

    void i() {
        this.b = null;
    }

    @Override
    public void imagesRequestFailed() {
        a((ImagesRequest) null);
    }

    @Override
    public void imagesRequestSucceeded(ImagesRequest imagesRequest) {
        if (imagesRequest.containsPaymentBrand(this.e)) {
            a(imagesRequest);
        }
    }

    void j() throws Throwable {
        Activity activity = this.b;
        if (activity != null) {
            ImageLoader.a(activity).a(this);
            if (this.d == null) {
                Connect.ProviderMode providerMode = Connect.ProviderMode.LIVE;
                Connect.ProviderDomain providerDomain = Connect.ProviderDomain.DEFAULT;
                CheckoutSettings checkoutSettings = this.l;
                if (checkoutSettings != null) {
                    providerMode = checkoutSettings.getProviderMode();
                    providerDomain = this.l.getProviderDomain();
                }
                OppPaymentProvider oppPaymentProvider = new OppPaymentProvider(this.b, providerMode);
                this.d = oppPaymentProvider;
                oppPaymentProvider.setProviderDomain(providerDomain);
            }
            if (this.e == null || a(this.g)) {
                return;
            }
            m();
        }
    }

    void k() {
        Activity activity = this.b;
        if (activity != null) {
            ImageLoader.a(activity).b(this);
        }
    }

    @Override
    public void onImageLoaded(String str) {
        if (TextUtils.equals(this.e, str)) {
            b(ImageCache.getInstance().a(str));
        }
    }

    @Override
    public void transactionCompleted(Transaction transaction) {
    }

    @Override
    public void transactionFailed(Transaction transaction, PaymentError paymentError) {
    }

    private Activity d() {
        return this.a.getActivity();
    }

    View a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.opp_fragment_payment_button, viewGroup, false);
    }

    private void a() {
        this.g.setVisibility(0);
        this.i.setVisibility(8);
        this.i.setOnClickListener(null);
        this.g.setBackgroundResource(R.drawable.opp_btn_background_payment);
    }

    private void c(CheckoutSettings checkoutSettings) {
        Activity activityD = d();
        if (activityD == null) {
            return;
        }
        Intent intentCreateCheckoutActivityIntent = checkoutSettings.createCheckoutActivityIntent(d(), this.f);
        intentCreateCheckoutActivityIntent.putExtra(CheckoutActivity.CHECKOUT_PAYMENT_BUTTON_METHOD, this.e);
        activityD.startActivityForResult(intentCreateCheckoutActivityIntent, CheckoutActivity.REQUEST_CODE_CHECKOUT);
    }

    public void b(String str) throws Throwable {
        this.e = str;
        if ("GOOGLEPAY".equals(str)) {
            b();
            return;
        }
        m();
        a(str);
        a();
    }

    public void a(View view) {
        this.g.callOnClick();
    }

    public void a(PaymentButtonIntegrationMode paymentButtonIntegrationMode) {
        this.k = paymentButtonIntegrationMode;
    }

    public void a(CheckoutSettings checkoutSettings, ComponentName componentName) throws PaymentException {
        this.f = componentName;
        b(checkoutSettings);
    }

    private void b() {
        if (this.k.equals(PaymentButtonIntegrationMode.STANDALONE)) {
            c();
        } else {
            a();
            this.g.setBackground(null);
        }
    }

    private void a(CheckoutSettings checkoutSettings) {
        Set<String> paymentBrands = checkoutSettings.getPaymentBrands();
        if (paymentBrands == null || paymentBrands.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (!this.e.equals(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD)) {
                linkedHashSet.add(this.e);
            }
            checkoutSettings.setPaymentBrands(linkedHashSet);
        }
    }

    private void b(CheckoutSettings checkoutSettings) throws PaymentException {
        if (checkoutSettings != null) {
            this.l = checkoutSettings;
            o();
            return;
        }
        throw new PaymentException(PaymentError.getCheckoutSettingsMissedError());
    }

    private void a(ImagesRequest imagesRequest) {
        ImageLoader.a(this.b).a(imagesRequest);
        b(ImageLoader.a(this.b).c(this.e));
    }

    private void b(final Bitmap bitmap) {
        try {
            this.b.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.a(bitmap);
                }
            });
        } catch (Exception e) {
            Log.e(f3729n, e.getMessage());
        }
    }

    public void a(Bitmap bitmap) {
        this.g.setClickable(true);
        if (bitmap != null) {
            this.g.setImageBitmap(bitmap);
            this.h.setVisibility(8);
        }
    }

    private boolean a(ImageButton imageButton) {
        if ("GOOGLEPAY".equals(this.e) && this.k.equals(PaymentButtonIntegrationMode.STANDALONE)) {
            return true;
        }
        Drawable drawable = imageButton.getDrawable();
        boolean z = drawable != null;
        if (z && (drawable instanceof BitmapDrawable)) {
            return ((BitmapDrawable) drawable).getBitmap() != null;
        }
        return z;
    }

    private void a(String str) {
        this.g.setContentDescription(d().getString(R.string.checkout_layout_text_pay_with) + " " + l.b(d(), str));
    }
}
