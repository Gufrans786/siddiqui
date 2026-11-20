package com.oppwa.mobile.connect.checkout.dialog;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.token.Token;

public abstract class PaymentInfoFragment extends BaseFragment implements ImageLoader.Listener {
    protected CheckoutSettings d;
    protected CheckoutInfo e;
    protected BrandsValidation f;
    protected String g;
    protected Token h;
    protected String i;
    protected TextView j;
    protected ImageView k;
    protected Button l;
    protected ProgressBar m;

    protected boolean f3728n;

    public void a(View view) {
        getActivity().onBackPressed();
    }

    public void c(View view) {
        PaymentParams paymentParamsB = b();
        if (paymentParamsB != null) {
            getParentFragmentManager().setFragmentResult(PaymentInfoFragment.class.getName(), a(paymentParamsB, this.h != null));
        }
    }

    protected abstract PaymentParams b();

    protected void b(int i) {
        TextView textView = this.j;
        if (textView == null) {
            a(i);
        } else {
            textView.setText(i);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.d = (CheckoutSettings) arguments.getParcelable(CheckoutActivity.CHECKOUT_SETTINGS);
            this.e = (CheckoutInfo) arguments.getParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO");
            this.f = (BrandsValidation) arguments.getParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION");
            this.g = arguments.getString(CheckoutActivity.EXTRA_PAYMENT_BRAND);
            this.h = (Token) arguments.getParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_TOKEN");
            this.i = arguments.getString("com.oppwa.mobile.connect.checkout.dialog.EXTRA_PROVIDER_MODE");
            this.f3728n = arguments.getBoolean("com.oppwa.mobile.connect.checkout.dialog.EXTRA_SKIP_PAYMENT_METHOD_SELECTION_SCREEN");
        }
    }

    public void onImageLoaded(String str) {
        if (this.g.equals(str)) {
            this.k.setImageBitmap(ImageCache.getInstance().a(str));
            this.m.setVisibility(8);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        ImageLoader.a(getActivity()).a(this);
    }

    @Override
    public void onStop() {
        super.onStop();
        ImageLoader.a(getActivity()).b(this);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        Bitmap bitmapC;
        super.onViewCreated(view, bundle);
        a(R.string.checkout_payment_details);
        b(view);
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.loading_panel);
        this.m = progressBar;
        progressBar.setVisibility(0);
        this.j = (TextView) view.findViewById(R.id.payment_info_title);
        ImageView imageView = (ImageView) view.findViewById(R.id.logo);
        this.k = imageView;
        if (imageView != null && (bitmapC = ImageLoader.a(getActivity()).c(this.g)) != null) {
            this.k.setImageBitmap(bitmapC);
            this.m.setVisibility(8);
        }
        if (this.f3728n) {
            return;
        }
        this.b.setVisibility(0);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.f$0.a(view2);
            }
        });
    }

    private Bundle a(PaymentParams paymentParams, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("PAYMENT_PARAMS_RESULT_KEY", paymentParams);
        bundle.putBoolean("TOKENIZED_RESULT_KEY", z);
        return bundle;
    }

    private void b(View view) {
        this.l = (Button) view.findViewById(R.id.payment_button);
        String strC = c();
        this.l.setText(strC);
        this.l.setContentDescription(strC);
        this.l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.f$0.c(view2);
            }
        });
    }

    private String c() {
        if (this.d.isTotalAmountRequired() && this.e != null) {
            return String.format(getString(R.string.checkout_layout_text_pay_amount), f0.a(this.e.getAmount(), this.e.getCurrencyCode()));
        }
        return getString(R.string.checkout_layout_text_pay);
    }
}
