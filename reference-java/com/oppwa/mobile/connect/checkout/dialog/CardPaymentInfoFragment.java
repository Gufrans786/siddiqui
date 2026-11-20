package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.FragmentResultListener;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutBrandDetectionAppearanceStyle;
import com.oppwa.mobile.connect.checkout.meta.CheckoutBrandDetectionType;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSkipCVVMode;
import com.oppwa.mobile.connect.checkout.meta.CheckoutThreeDS2Flow;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.BillingAddress;
import com.oppwa.mobile.connect.payment.CVVMode;
import com.oppwa.mobile.connect.payment.CardBrandInfo;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.card.CardPaymentParams;
import com.oppwa.mobile.connect.payment.token.Token;
import com.oppwa.mobile.connect.payment.token.TokenPaymentParams;
import com.oppwa.mobile.connect.provider.OppPaymentProvider;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.StringUtils;
import com.payfort.fortpaymentsdk.constants.Constants;
import io.card.payment.CardIOActivity;
import io.card.payment.CreditCard;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;
import org.slf4j.Marker;

public class CardPaymentInfoFragment extends PaymentInfoFragmentWithTokenization implements g.a {
    private OppPaymentProvider A;
    private LinearLayout B;
    private ScrollView C;
    private CardBrandSelectionLayout D;
    private String E;
    private CardBrandInfo H;
    private CardPaymentParams K;
    private CardNumberInputLayout p;
    private InputLayout q;
    private DateInputLayout r;
    private InputLayout s;
    private InputLayout t;
    private InputLayout u;
    private Spinner v;
    private ImageView w;
    private ImageView x;
    private View y;
    private BillingAddressLayout z;
    private String F = null;
    private StringBuilder G = new StringBuilder();
    private BillingAddress I = null;
    private int J = 0;

    class b implements TextWatcher {
        b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (CardPaymentInfoFragment.this.t.getEditText().length() == 0) {
                CardPaymentInfoFragment.this.t.getEditText().setText(Marker.ANY_NON_NULL_MARKER);
                CardPaymentInfoFragment.this.t.setSelectionAtTheEnd();
            }
        }
    }

    class c implements InputLayout.d {
        c() {
        }

        @Override
        public void a(Editable editable) {
        }

        @Override
        public void a(boolean z) {
            if (z) {
                CardPaymentInfoFragment cardPaymentInfoFragment = CardPaymentInfoFragment.this;
                cardPaymentInfoFragment.d(cardPaymentInfoFragment.r);
            }
        }
    }

    class d implements InputLayout.d {
        d() {
        }

        @Override
        public void a(Editable editable) {
        }

        @Override
        public void a(boolean z) {
            if (z) {
                CardPaymentInfoFragment cardPaymentInfoFragment = CardPaymentInfoFragment.this;
                cardPaymentInfoFragment.d(cardPaymentInfoFragment.s);
            }
        }
    }

    private void A() {
        if (this.h == null && LibraryHelper.isCardIOAvailable) {
            ImageView imageView = (ImageView) getView().findViewById(R.id.ic_camera);
            this.p.setPaddingEnd(imageView.getDrawable().getIntrinsicWidth() + c(R.dimen.checkout_input_layout_drawable_padding));
            imageView.setVisibility(0);
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f$0.i(view);
                }
            });
        }
    }

    private void B() {
        String expiryMonth = this.h.getCard().getExpiryMonth();
        String expiryYear = this.h.getCard().getExpiryYear();
        this.r.setHint(getString(R.string.checkout_layout_hint_card_expiration_date));
        this.r.setNotEditableText(expiryMonth + "/" + expiryYear);
        if (H()) {
            this.r.showError(getString(R.string.checkout_error_expiration_date));
            this.l.setVisibility(8);
        }
    }

    private void C() {
        this.H = this.f.getCardBrandInfo(this.h.getPaymentBrand());
        this.y.setVisibility(0);
        if (this.h.getCard().getHolder() != null) {
            this.q.setHint(getString(R.string.checkout_layout_hint_card_holder));
            this.q.setNotEditableText(this.h.getCard().getHolder());
        } else {
            this.q.setVisibility(8);
        }
        this.p.setCardBrand(this.h.getPaymentBrand());
        this.p.setHint(getString(R.string.checkout_layout_hint_card_number));
        this.p.setNotEditableText("•••• " + this.h.getCard().getLast4Digits());
        B();
        u();
        g();
    }

    private void D() {
        this.F = this.E.equalsIgnoreCase(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD) ? null : this.E;
    }

    private void E() {
        if (this.h == null) {
            s();
            w();
            r();
            y();
            A();
            v();
            q();
            c(this.g);
        } else {
            C();
        }
        x();
    }

    private boolean F() {
        CheckoutSkipCVVMode skipCVVMode = this.d.getSkipCVVMode();
        if (this.H.getCvvMode() == CVVMode.NONE || skipCVVMode == CheckoutSkipCVVMode.ALWAYS) {
            return true;
        }
        if (this.h != null) {
            return skipCVVMode == CheckoutSkipCVVMode.FOR_STORED_CARDS || H();
        }
        return false;
    }

    private boolean G() {
        return !this.d.isCardHolderVisible();
    }

    private boolean H() {
        Token token = this.h;
        if (token != null) {
            return CardPaymentParams.isCardExpired(token.getCard().getExpiryMonth(), this.h.getCard().getExpiryYear());
        }
        return false;
    }

    public void I() {
        this.p.requestFocus();
    }

    public void J() {
        c(this.G);
    }

    public void K() throws Throwable {
        Bitmap bitmapC = ImageLoader.a(getActivity()).c(this.g);
        if (bitmapC != null) {
            this.w.setImageBitmap(bitmapC);
        }
    }

    private void L() {
        CardBrandSelectionLayout cardBrandSelectionLayout = this.D;
        if (cardBrandSelectionLayout != null) {
            cardBrandSelectionLayout.hide(false);
        }
        ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(this.p.getEditText().getWindowToken(), 0);
        this.C.clearFocus();
    }

    private void M() {
        D();
        o();
        P();
    }

    private void N() {
        this.p.setText(this.K.getNumber());
        this.r.setText(this.K.getExpiryMonth() + this.K.getExpiryYear());
        this.s.setText(this.K.getCvv());
        this.t.setText(this.K.getCountryCode());
        this.u.setText(this.K.getMobilePhone());
    }

    private void O() {
        Intent intent = new Intent(getActivity(), (Class<?>) CardIOActivity.class);
        intent.putExtra("io.card.payment.intentSenderIsPayPal", false);
        intent.putExtra("io.card.payment.hideLogo", true);
        intent.putExtra("io.card.payment.scanExpiry", true);
        intent.putExtra("io.card.payment.requireExpiry", true);
        intent.putExtra("io.card.payment.suppressManual", true);
        startActivityForResult(intent, 100);
    }

    private void P() {
        if (this.g.equalsIgnoreCase(this.E)) {
            return;
        }
        c(this.E);
    }

    private void Q() {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.f$0.K();
            }
        });
    }

    private void R() {
        this.x.setImageResource(R.drawable.collapse);
        this.x.setTag("Collapse");
    }

    private void S() {
        this.x.setImageResource(R.drawable.expand);
        this.x.setTag("Expand");
    }

    private void T() {
        this.p.setListener(new a());
    }

    private void U() {
        this.p.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.a(textView, i, keyEvent);
            }
        });
    }

    private void V() {
        if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.NONE) {
            return;
        }
        if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.INACTIVE) {
            R();
        }
        this.D.show();
    }

    private void W() {
        if (this.x.getVisibility() == 8) {
            CardNumberInputLayout cardNumberInputLayout = this.p;
            cardNumberInputLayout.setPaddingStart(cardNumberInputLayout.getPaddingStart() + this.x.getDrawable().getIntrinsicWidth());
            this.x.setVisibility(0);
        }
    }

    public void X() {
        if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.INACTIVE) {
            W();
        } else if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.ACTIVE) {
            V();
        }
    }

    private boolean Y() {
        boolean z = G() || this.q.validate();
        if (!this.p.validate()) {
            z = false;
        }
        if (!this.r.validate()) {
            z = false;
        }
        if (!F() && !this.s.validate()) {
            z = false;
        }
        if (this.H.isMobilePhoneRequired()) {
            if (!this.t.validate()) {
                z = false;
            }
            if (!this.u.validate()) {
                z = false;
            }
        }
        BillingAddress billingAddress = this.I;
        if (billingAddress == null || f.a(billingAddress)) {
            return z;
        }
        return false;
    }

    private s.m h() {
        return new s.m(this.d.getBrandDetectionType() == CheckoutBrandDetectionType.REGEX ? this.f.getCardValidationPattern(this.g) : null, this.H.isLuhnCheckRequired(), R.string.checkout_error_card_number_invalid);
    }

    public void i(View view) {
        O();
    }

    private PaymentParams j() {
        if (!F() && !this.s.validate()) {
            return null;
        }
        try {
            TokenPaymentParams tokenPaymentParams = new TokenPaymentParams(this.d.getCheckoutId(), this.h.getTokenId(), this.g, k());
            if (this.d.isInstallmentEnabled()) {
                tokenPaymentParams.setNumberOfInstallments((Integer) this.v.getSelectedItem());
            }
            return tokenPaymentParams;
        } catch (PaymentException unused) {
            return null;
        }
    }

    private String k() {
        if (F()) {
            return null;
        }
        if (this.H.getCvvMode() == CVVMode.OPTIONAL && this.s.isEmpty()) {
            return null;
        }
        return StringUtils.replaceNonstandardDigits(this.s.getText());
    }

    private String l() {
        if (this.H.isExpiryDateOptional() && this.r.isEmpty()) {
            return null;
        }
        return this.r.getMonth();
    }

    private String m() {
        if (this.H.isExpiryDateOptional() && this.r.isEmpty()) {
            return null;
        }
        return this.r.getYear();
    }

    public void n() {
        if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.INACTIVE) {
            S();
        }
        this.D.hide();
    }

    private void o() {
        if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.INACTIVE) {
            p();
        }
        n();
    }

    private void p() {
        if (this.x.getVisibility() == 0) {
            CardNumberInputLayout cardNumberInputLayout = this.p;
            cardNumberInputLayout.setPaddingStart(cardNumberInputLayout.getPaddingStart() - this.x.getDrawable().getIntrinsicWidth());
            this.x.setVisibility(8);
        }
    }

    private void q() {
        if (this.I != null) {
            this.z.setVisibility(0);
            if (f.a(this.I)) {
                String strB = f.b(this.I);
                if (strB.isEmpty()) {
                    this.z.changeStyleOfBillingAddress(R.attr.checkoutHelperLabelTextViewStyle);
                    this.z.showBillingAddress(getString(R.string.checkout_billing_address_fragment_title));
                } else {
                    this.z.changeStyleOfBillingAddress(R.attr.checkoutSecondaryTextViewStyle);
                    this.z.showBillingAddress(strB);
                }
            } else {
                this.z.changeStyleOfBillingAddress(R.attr.checkoutHelperTextViewStyle);
                this.z.showBillingAddress(getString(R.string.checkout_billing_address_fragment_title));
            }
            this.z.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f$0.g(view);
                }
            });
        }
    }

    private void r() {
        FrameLayout frameLayout = (FrameLayout) getView().findViewById(R.id.ic_brand);
        frameLayout.setVisibility(0);
        frameLayout.findViewById(R.id.loading_panel).setVisibility(4);
        this.w = (ImageView) frameLayout.findViewById(R.id.card_brand_logo);
        ImageView imageView = (ImageView) frameLayout.findViewById(R.id.expand_brand_selection_imageview);
        this.x = imageView;
        imageView.setTag("Expand");
        if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.INACTIVE) {
            frameLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f$0.h(view);
                }
            });
        }
    }

    private void s() {
        this.D.setListener(new CardBrandSelectionLayout.b() {
            @Override
            public final void a(String str) {
                this.f$0.b(str);
            }
        });
    }

    private void t() {
        this.t.setHint(getString(R.string.checkout_layout_hint_country_code));
        this.t.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(R.integer.countryCodeMaxLegth))});
        this.t.setVisibility(0);
        this.t.clearFocus();
        this.t.getEditText().setInputType(524290);
        this.t.setHelperText(getString(R.string.checkout_helper_country_code));
        this.t.setInputValidator(s.e());
        final b bVar = new b();
        this.t.getEditText().setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                this.f$0.a(bVar, view, z);
            }
        });
    }

    private void u() {
        if (F()) {
            this.s.setVisibility(8);
            ((ViewGroup.MarginLayoutParams) this.r.getLayoutParams()).setMarginEnd(0);
            return;
        }
        this.s.setVisibility(0);
        if (this.H.getCvvLength() == 4) {
            this.s.setHelperText(getString(R.string.checkout_helper_security_code_amex));
        } else {
            this.s.setHelperText(getString(R.string.checkout_helper_security_code));
        }
        this.s.getEditText().setInputType(2);
        this.s.getEditText().setTransformationMethod(PasswordTransformationMethod.getInstance());
        this.s.setHint(getString(R.string.checkout_layout_hint_card_cvv));
        this.s.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.H.getCvvLength())});
        this.s.setInputValidator(s.a(this.H.getCvvLength()));
        this.s.setOptional(this.H.getCvvMode() == CVVMode.OPTIONAL);
        if (this.J == 1) {
            this.s.setGravityForRTLLanguages();
        }
        this.s.setListener(new d());
    }

    private void v() {
        this.r.setHint(getString(R.string.checkout_layout_hint_card_expiration_date));
        this.r.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_card_expiration_date));
        this.r.setHelperText(getString(R.string.checkout_helper_expiration_date));
        this.r.setInputValidator(new s.n(R.string.checkout_error_expiration_date_invalid, R.string.checkout_error_expiration_date));
        if (this.J == 1) {
            this.r.setGravityForRTLLanguages();
        }
        this.r.setListener(new c());
        if (getActivity() == null || !f0.b(getActivity())) {
            return;
        }
        this.r.getEditText().getLayoutParams().height = c(R.dimen.checkout_card_number_input_layout_height);
    }

    private void w() {
        if (G()) {
            this.q.setVisibility(8);
            return;
        }
        this.q.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(R.integer.cardHolderMaxLength))});
        this.q.getEditText().setInputType(528384);
        this.q.setHint(getString(R.string.checkout_layout_hint_card_holder));
        this.q.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_card_holder));
        this.q.setHelperText(getString(R.string.checkout_helper_card_holder));
        this.q.setInputValidator(s.d());
        this.q.setOptional(true);
        if (getActivity() != null && f0.b(getActivity())) {
            this.q.getEditText().getLayoutParams().height = c(R.dimen.checkout_card_number_input_layout_height);
        }
        this.q.setPaymentFormListener(this.d.getPaymentFormListener());
    }

    private void x() {
        if ((this.h == null || !H()) && this.d.isInstallmentEnabled()) {
            this.C.findViewById(R.id.number_of_installments_layout).setVisibility(0);
            this.v.setAdapter((SpinnerAdapter) new ArrayAdapter(getActivity(), R.layout.opp_item_installments, this.d.getInstallmentOptions()));
            this.v.setSelection(0);
        }
    }

    private void y() {
        int iC = c(R.dimen.checkout_card_number_input_layout_height);
        this.p.setHint(getString(R.string.checkout_layout_hint_card_number));
        this.p.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_card_number));
        this.p.setHelperText(getString(R.string.checkout_helper_card_number));
        this.p.getEditText().getLayoutParams().height = iC;
        this.p.setPaddingStart(c(R.dimen.card_brand_logo_width) + c(R.dimen.checkout_input_layout_drawable_padding));
        if (this.J == 1) {
            this.p.setGravityForRTLLanguages();
        }
        T();
        U();
    }

    private void z() {
        this.u.setVisibility(0);
        this.u.clearFocus();
        this.u.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(R.integer.mobilePhoneNumberMaxLength))});
        this.u.getEditText().setInputType(524290);
        this.u.setHint(getString(R.string.checkout_layout_hint_phone_number));
        this.u.setHelperText(getString(R.string.checkout_helper_phone_number));
        this.u.setInputValidator(s.g());
        this.u.getEditText().setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                this.f$0.a(view, z);
            }
        });
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            if (intent != null && intent.hasExtra("io.card.payment.scanResult")) {
                CreditCard parcelableExtra = intent.getParcelableExtra("io.card.payment.scanResult");
                this.p.setText(parcelableExtra.getFormattedCardNumber());
                this.p.setSelectionAtTheEnd();
                if (parcelableExtra.isExpiryValid()) {
                    this.r.setText(new DecimalFormat(Constants.FORT_STATUS.INVALID_REQUEST).format(parcelableExtra.expiryMonth) + parcelableExtra.expiryYear);
                }
            }
            this.p.post(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.I();
                }
            });
        }
    }

    @Override
    public void onBrandsLoaded(String str, String[] strArr) {
        if (this.G.indexOf(str) == 0 && this.p.hasFocus()) {
            getActivity().runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.J();
                }
            });
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getParentFragmentManager().setFragmentResultListener(BillingAddressFragment.class.getName(), this, new FragmentResultListener() {
            @Override
            public final void onFragmentResult(String str, Bundle bundle2) {
                this.f$0.a(str, bundle2);
            }
        });
        this.E = this.g;
        D();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_card_payment_info, viewGroup, false);
    }

    @Override
    public void onDetach() {
        super.onDetach();
        g.b().a();
    }

    @Override
    public void onImageLoaded(String str) {
        super.onImageLoaded(str);
        if (this.w != null && str.equals(this.g)) {
            Q();
        }
        CardBrandSelectionLayout cardBrandSelectionLayout = this.D;
        if (cardBrandSelectionLayout != null) {
            cardBrandSelectionLayout.updateCardBrands(str);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.p.hasFocus()) {
            X();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("CARD_BRAND_STATE_KEY", this.g);
        bundle.putString("CLEANED_CARD_NUMBER_STATE_KEY", this.G.toString());
        bundle.putParcelable("BILLING_ADDRESS_STATE_KEY", this.I);
    }

    @Override
    public void onStart() {
        super.onStart();
        OppPaymentProvider oppPaymentProvider = new OppPaymentProvider(getContext(), this.d.getProviderMode());
        this.A = oppPaymentProvider;
        oppPaymentProvider.setProviderDomain(this.d.getProviderDomain());
        g.b().a(this);
        if (!CheckoutThreeDS2Flow.APP.equals(this.e.getThreeDS2Flow()) || this.K == null) {
            return;
        }
        N();
    }

    @Override
    public void onStop() {
        super.onStop();
        g.b().b(this);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.J = getResources().getConfiguration().getLayoutDirection();
        this.C = (ScrollView) view.findViewById(R.id.payment_info_scroll_view);
        this.p = (CardNumberInputLayout) view.findViewById(R.id.number_input_layout);
        this.q = (InputLayout) view.findViewById(R.id.holder_input_layout);
        this.r = (DateInputLayout) view.findViewById(R.id.expiry_date_input_layout);
        this.s = (InputLayout) view.findViewById(R.id.cvv_input_layout);
        this.t = (InputLayout) view.findViewById(R.id.country_code_input_layout);
        this.u = (InputLayout) view.findViewById(R.id.phone_number_input_layout);
        this.B = (LinearLayout) view.findViewById(R.id.country_code_and_phone_number);
        this.v = (Spinner) view.findViewById(R.id.number_of_installments_spinner);
        this.D = (CardBrandSelectionLayout) view.findViewById(R.id.card_brand_selection_layout);
        this.y = view.findViewById(R.id.payment_info_header);
        this.z = (BillingAddressLayout) view.findViewById(R.id.billing_address_layout);
    }

    @Override
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        if (bundle != null) {
            this.g = bundle.getString("CARD_BRAND_STATE_KEY");
            this.G = new StringBuilder(bundle.getString("CLEANED_CARD_NUMBER_STATE_KEY"));
            this.I = (BillingAddress) bundle.getParcelable("BILLING_ADDRESS_STATE_KEY");
        }
        if (this.I == null) {
            this.I = this.d.getBillingAddress();
        }
        E();
    }

    public void b(String str) {
        this.F = str;
        c(str);
        if (this.D.getCardBrands().length == 1) {
            o();
        }
        if (this.d.getBrandDetectionAppearanceStyle() == CheckoutBrandDetectionAppearanceStyle.INACTIVE) {
            n();
        }
    }

    private void c(String str) {
        this.g = str;
        CardBrandInfo cardBrandInfo = this.f.getCardBrandInfo(str);
        this.H = cardBrandInfo;
        this.r.setOptional(cardBrandInfo.isExpiryDateOptional());
        Q();
        this.p.setCardBrand(str);
        this.p.setBrandDetected(a(str));
        this.p.setNumberPatternAndValidator(this.H.getPattern(), h());
        u();
        g();
        f();
    }

    private boolean d(String str) {
        long length = str.length();
        return (length == 6 || length == 8) && !g.b().c(str);
    }

    private int e(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1];
    }

    private void f() {
        if (!this.H.isMobilePhoneRequired()) {
            this.t.setVisibility(8);
            this.u.setVisibility(8);
            return;
        }
        if (this.J == 1) {
            this.B.setLayoutDirection(0);
            this.t.setGravityForRTLLanguages();
            this.u.setGravityForRTLLanguages();
        }
        t();
        z();
    }

    public void g(View view) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("BILLING_ADDRESS_KEY", this.I);
        getParentFragmentManager().beginTransaction().setReorderingAllowed(true).add(R.id.container, BillingAddressFragment.class, bundle).addToBackStack(BillingAddressFragment.class.getName()).setCustomAnimations(R.anim.opp_fragment_in, R.anim.opp_fragment_out).commit();
    }

    private PaymentParams i() {
        if (!Y()) {
            return null;
        }
        try {
            CardPaymentParams cardPaymentParams = new CardPaymentParams(this.d.getCheckoutId(), this.g, a((CharSequence) this.p.getText()).toString(), this.q.getText(), l(), m(), k());
            this.K = cardPaymentParams;
            cardPaymentParams.setTokenizationEnabled(e());
            this.K.setBillingAddress(this.I);
            if (this.H.isMobilePhoneRequired()) {
                String text = this.t.getText();
                String text2 = this.u.getText();
                this.K.setCountryCode(text.replace(Marker.ANY_NON_NULL_MARKER, ""));
                this.K.setMobilePhone(text2);
            }
            if (this.d.isInstallmentEnabled()) {
                this.K.setNumberOfInstallments((Integer) this.v.getSelectedItem());
            }
            return this.K;
        } catch (PaymentException unused) {
            return null;
        }
    }

    public void a(String str, Bundle bundle) {
        this.I = (BillingAddress) bundle.getParcelable("BILLING_ADDRESS_KEY");
        q();
    }

    private boolean a(String str) {
        String[] cardBrands;
        if (TextUtils.equals(str, PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD) || this.d.getBrandDetectionType() == CheckoutBrandDetectionType.REGEX || (cardBrands = this.D.getCardBrands()) == null) {
            return true;
        }
        for (String str2 : cardBrands) {
            if (TextUtils.equals(str2, str)) {
                return true;
            }
        }
        return false;
    }

    public void d(final View view) {
        view.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f$0.f(view);
            }
        }, 300L);
    }

    public void h(View view) {
        if (this.x.getVisibility() == 0) {
            if (this.D.isVisible()) {
                n();
            } else {
                V();
            }
        }
    }

    private void g() {
        InputLayout inputLayout;
        this.p.getEditText().setImeOptions(5);
        this.q.getEditText().setImeOptions(5);
        this.r.getEditText().setImeOptions(5);
        this.s.getEditText().setImeOptions(5);
        this.t.getEditText().setImeOptions(5);
        this.u.getEditText().setImeOptions(5);
        if (this.H.isMobilePhoneRequired()) {
            inputLayout = this.u;
        } else if (F()) {
            inputLayout = this.r;
        } else {
            inputLayout = this.s;
        }
        inputLayout.getEditText().setImeOptions(6);
    }

    class a implements InputLayout.d {
        a() {
        }

        @Override
        public void a(boolean z) {
            if (CardPaymentInfoFragment.this.isResumed()) {
                if (!z) {
                    CardPaymentInfoFragment.this.n();
                    return;
                }
                CardPaymentInfoFragment cardPaymentInfoFragment = CardPaymentInfoFragment.this;
                cardPaymentInfoFragment.b(cardPaymentInfoFragment.p.getEditText().getText());
                if (CardPaymentInfoFragment.this.D.isVisible()) {
                    return;
                }
                CardPaymentInfoFragment.this.X();
            }
        }

        @Override
        public void a(Editable editable) {
            if (CardPaymentInfoFragment.this.isResumed()) {
                CardPaymentInfoFragment.this.b(editable);
            }
        }
    }

    public void b(CharSequence charSequence) {
        StringBuilder sbA = a(charSequence);
        if (StringUtils.compareStringBuilders(sbA, this.G)) {
            return;
        }
        StringUtils.wipeString(this.G);
        this.G = sbA;
        c(sbA);
    }

    public void f(View view) {
        int iE = e(this.l);
        int iE2 = e(view);
        if (iE < view.getHeight() + iE2) {
            this.C.scrollBy(0, (iE2 + view.getHeight()) - iE);
        }
    }

    public boolean a(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        if (G()) {
            this.r.getEditText().requestFocus();
            return true;
        }
        this.q.getEditText().requestFocus();
        return true;
    }

    private void b(StringBuilder sb) {
        a(this.f.getDetectedCardBrands(sb.toString(), this.E), false);
    }

    private void a(StringBuilder sb) {
        String string = sb.toString();
        if (d(string)) {
            g.b().a(this.A, this.d.getCheckoutId(), string, this.f);
        }
        String[] strArrA = g.b().a(string);
        if (strArrA == null) {
            b(sb);
        } else {
            a(Arrays.asList(strArrA), strArrA.length == 0);
        }
    }

    @Override
    protected PaymentParams b() {
        L();
        return this.h == null ? i() : j();
    }

    private void c(StringBuilder sb) {
        if (sb.length() >= 4) {
            if (this.d.getBrandDetectionType().equals(CheckoutBrandDetectionType.REGEX)) {
                b(sb);
                return;
            } else {
                a(sb);
                return;
            }
        }
        if (sb.length() > 0) {
            o();
        } else {
            M();
        }
    }

    private int c(int i) {
        return (int) getResources().getDimension(i);
    }

    private void a(List<String> list, boolean z) {
        String str;
        if (list != null && !list.isEmpty() && !z) {
            String str2 = this.F;
            if (str2 != null && !str2.equalsIgnoreCase(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD)) {
                str = this.F;
            } else {
                str = list.get(0);
            }
            a(list, str);
            c(str);
        } else {
            this.D.setCardBrands(new String[0], PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD);
            this.D.setSelectedBrand(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD);
            o();
        }
        a(z);
    }

    private void a(boolean z) {
        if (z && !this.p.hasError()) {
            this.p.showError(getString(R.string.checkout_error_card_number_invalid));
            c(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD);
        } else {
            if (z || !this.p.hasError()) {
                return;
            }
            this.p.clearError();
            String str = this.F;
            if (str != null) {
                c(str);
            }
        }
    }

    private void a(List<String> list, String str) {
        boolean z = (list.size() != 1 || this.F == null || list.get(0).equalsIgnoreCase(this.F)) ? false : true;
        this.D.setCardBrands((String[]) list.toArray(new String[0]), this.g);
        if (list.size() <= 1 && !z) {
            o();
            return;
        }
        String str2 = this.F;
        if (str2 != null) {
            str = str2;
        }
        this.D.setSelectedBrand(str);
        X();
    }

    public void a(TextWatcher textWatcher, View view, boolean z) {
        if (!z) {
            this.t.getEditText().removeTextChangedListener(textWatcher);
            if (this.t.getText().equals(Marker.ANY_NON_NULL_MARKER)) {
                this.t.setText("");
            }
            this.t.validate();
            this.u.validate();
            return;
        }
        this.t.getEditText().addTextChangedListener(textWatcher);
        if (this.t.getText().equals("")) {
            this.t.setText(Marker.ANY_NON_NULL_MARKER);
        }
        this.t.clearError();
        this.u.clearError();
        this.t.setSelectionAtTheEnd();
        d(this.t);
    }

    public void a(View view, boolean z) {
        if (!z) {
            this.t.validate();
            this.u.validate();
        } else {
            this.t.clearError();
            this.u.clearError();
            d(this.u);
        }
    }

    private StringBuilder a(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(charSequence);
        StringUtils.replaceNonstandardDigits(sb);
        StringUtils.removeSubstring(sb, " ");
        return sb;
    }
}
