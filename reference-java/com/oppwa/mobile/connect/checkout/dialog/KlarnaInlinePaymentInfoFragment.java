package com.oppwa.mobile.connect.checkout.dialog;

import android.animation.Animator;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.klarna.mobile.sdk.api.payments.KlarnaPaymentView;
import com.klarna.mobile.sdk.api.payments.KlarnaPaymentViewCallback;
import com.klarna.mobile.sdk.api.payments.KlarnaPaymentsSDKError;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.klarna.KlarnaInlinePaymentParams;
import com.oppwa.mobile.connect.provider.HttpUtils;
import com.oppwa.mobile.connect.provider.Transaction;
import java.util.Map;

public class KlarnaInlinePaymentInfoFragment extends PaymentInfoFragment {
    private View A;
    private boolean B;
    private final KlarnaPaymentViewCallback C = new a();
    private CheckoutSettings o;
    private Transaction p;
    private String q;
    private String r;
    private String s;
    private String t;
    private Button u;
    private ScrollView v;
    private RelativeLayout w;
    private KlarnaPaymentView x;
    private RelativeLayout y;
    private View z;

    class a implements KlarnaPaymentViewCallback {
        a() {
        }

        public void onAuthorized(KlarnaPaymentView klarnaPaymentView, boolean z, String str, Boolean bool) {
            if (!z || str == null) {
                KlarnaInlinePaymentInfoFragment klarnaInlinePaymentInfoFragment = KlarnaInlinePaymentInfoFragment.this;
                klarnaInlinePaymentInfoFragment.a(klarnaInlinePaymentInfoFragment.s, "Authorization error.");
            } else {
                KlarnaInlinePaymentInfoFragment.this.a(KlarnaInlinePaymentInfoFragment.this.r.replace("{{authorization_token}}", str), (String) null);
            }
        }

        public void onErrorOccurred(KlarnaPaymentView klarnaPaymentView, KlarnaPaymentsSDKError klarnaPaymentsSDKError) {
            KlarnaInlinePaymentInfoFragment klarnaInlinePaymentInfoFragment = KlarnaInlinePaymentInfoFragment.this;
            klarnaInlinePaymentInfoFragment.a(klarnaInlinePaymentInfoFragment.s, klarnaPaymentsSDKError.getMessage());
        }

        public void onFinalized(KlarnaPaymentView klarnaPaymentView, boolean z, String str) {
        }

        public void onInitialized(KlarnaPaymentView klarnaPaymentView) {
            if (KlarnaInlinePaymentInfoFragment.this.B) {
                klarnaPaymentView.load((String) null);
            }
        }

        public void onLoadPaymentReview(KlarnaPaymentView klarnaPaymentView, boolean z) {
        }

        public void onLoaded(KlarnaPaymentView klarnaPaymentView) {
            if (KlarnaInlinePaymentInfoFragment.this.B) {
                KlarnaInlinePaymentInfoFragment.this.e();
                KlarnaInlinePaymentInfoFragment.this.u.setVisibility(0);
            }
        }

        public void onReauthorized(KlarnaPaymentView klarnaPaymentView, boolean z, String str) {
        }
    }

    class b implements Animator.AnimatorListener {
        final boolean a;
        final int b;

        b(boolean z, int i) {
            this.a = z;
            this.b = i;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                return;
            }
            KlarnaInlinePaymentInfoFragment.this.v.setBackgroundColor(this.b);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (this.a) {
                KlarnaInlinePaymentInfoFragment.this.v.setBackgroundColor(this.b);
            }
        }
    }

    public void g() {
        this.x.initialize(this.q, this.o.getShopperResultUrl());
    }

    public void continueWithPayment(Transaction transaction, PaymentError paymentError) {
        if (this.B) {
            if (paymentError != null) {
                a(this.s, paymentError.getErrorMessage());
            } else if (transaction == null) {
                a(this.s, "Unexpected PA transaction failure");
            } else {
                b(transaction);
                d();
            }
        }
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        this.B = true;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.o = (CheckoutSettings) arguments.getParcelable(CheckoutActivity.CHECKOUT_SETTINGS);
            Transaction transaction = (Transaction) arguments.getParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_TRANSACTION");
            this.p = transaction;
            if (transaction != null) {
                b(transaction);
            }
        }
        return layoutInflater.inflate(R.layout.opp_fragment_klarna_inline_info, viewGroup, false);
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.B = false;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.v = (ScrollView) view.findViewById(R.id.payment_info_scroll_view);
        this.y = (RelativeLayout) view.findViewById(R.id.progress_view);
        this.w = (RelativeLayout) view.findViewById(R.id.payment_info);
        this.u = (Button) view.findViewById(R.id.payment_button);
        this.z = view.findViewById(R.id.overlap_view);
        this.A = view.findViewById(R.id.progress_text);
        b(this.g);
        this.u.setVisibility(8);
    }

    private void d() {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.f();
            }
        });
    }

    public void e() {
        this.y.setVisibility(8);
        this.z.setVisibility(8);
        KlarnaPaymentView klarnaPaymentView = this.x;
        if (klarnaPaymentView == null || klarnaPaymentView.getAlpha() >= 1.0f) {
            return;
        }
        a(true);
    }

    public void f() {
        this.x.authorize(true, (String) null);
        e();
    }

    @Override
    protected PaymentParams b() {
        this.u.setVisibility(8);
        b(true);
        try {
            KlarnaInlinePaymentParams klarnaInlinePaymentParams = new KlarnaInlinePaymentParams(this.o.getCheckoutId(), this.g);
            klarnaInlinePaymentParams.setInitialTransactionId(this.t);
            return klarnaInlinePaymentParams;
        } catch (PaymentException unused) {
            return null;
        }
    }

    private String a(String str) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "KLARNA_PAYMENTS_PAYNOW":
                return "pay_now";
            case "KLARNA_PAYMENTS_PAYLATER":
                return "pay_later";
            case "KLARNA_PAYMENTS_SLICEIT":
                return "pay_over_time";
            default:
                return null;
        }
    }

    private void b(String str) {
        String strA = a(str);
        if (strA != null) {
            KlarnaPaymentView klarnaPaymentView = new KlarnaPaymentView(getContext(), strA, this.C);
            this.x = klarnaPaymentView;
            klarnaPaymentView.setAlpha(0.0f);
            this.w.addView(this.x);
            getActivity().runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.g();
                }
            });
        }
    }

    private void a(boolean z) {
        float f = z ? 1.0f : 0.0f;
        KlarnaPaymentView klarnaPaymentView = this.x;
        if (klarnaPaymentView == null || klarnaPaymentView.getAlpha() == f) {
            return;
        }
        this.x.animate().alpha(f).setDuration(500L).setListener(new b(z, z ? getResources().getColor(R.color.checkout_background_color_light) : 0));
    }

    private void b(Transaction transaction) {
        Map<String, String> brandSpecificInfo = transaction.getBrandSpecificInfo();
        this.q = brandSpecificInfo.get(Transaction.KLARNA_INLINE_CLIENT_TOKEN_KEY);
        this.r = brandSpecificInfo.get(Transaction.KLARNA_INLINE_CALLBACK_URL_KEY);
        this.t = brandSpecificInfo.get(Transaction.KLARNA_INLINE_INITIAL_TRANSACTION_ID);
        String str = brandSpecificInfo.get(Transaction.KLARNA_INLINE_FAILURE_CALLBACK_URL_KEY);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.s = str;
    }

    private void b(boolean z) {
        this.y.setVisibility(0);
        if (z) {
            this.z.setVisibility(0);
            this.A.setVisibility(8);
        } else {
            this.A.setVisibility(0);
            a(false);
        }
    }

    public void b(String str, String str2) {
        a(HttpUtils.sendCallbackRequestToPaypipe(getContext(), str, this.o.getShopperResultUrl()).booleanValue(), str2);
    }

    public void a(final String str, final String str2) {
        b(false);
        if (!this.B || getContext() == null || this.o.getShopperResultUrl() == null) {
            return;
        }
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.b(str, str2);
            }
        }).start();
    }

    private void a(boolean z, String str) {
        if (!z) {
            a(this.p, new PaymentError(ErrorCode.ERROR_CODE_KLARNA_INLINE, "Error sending request to callbackUrl/failureCallbackUrl."));
        } else if (str == null) {
            a(this.p);
        } else {
            a(this.p, new PaymentError(ErrorCode.ERROR_CODE_KLARNA_INLINE, str));
        }
    }
}
