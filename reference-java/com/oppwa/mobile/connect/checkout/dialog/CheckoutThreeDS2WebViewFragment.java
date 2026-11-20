package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.provider.Transaction;

public class CheckoutThreeDS2WebViewFragment extends BaseFragment {
    private Transaction d;
    protected WebView e;
    protected WebView f;
    private String g;

    private void f() {
        if (this.e.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.e.getParent()).removeView(this.e);
        }
    }

    private void g() {
        if (this.f.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f.getParent()).removeView(this.f);
        }
    }

    public static CheckoutThreeDS2WebViewFragment newInstance(Transaction transaction) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("TRANSACTION", transaction);
        CheckoutThreeDS2WebViewFragment checkoutThreeDS2WebViewFragment = new CheckoutThreeDS2WebViewFragment();
        checkoutThreeDS2WebViewFragment.setArguments(bundle);
        return checkoutThreeDS2WebViewFragment;
    }

    protected WebView c() {
        WebView webView = new WebView(getContext());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setLayoutParams(new RelativeLayout.LayoutParams(0, 0));
        return webView;
    }

    protected WebView d() {
        WebView webView = new WebView(getContext());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new a());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(3, R.id.header_layout);
        webView.setLayoutParams(layoutParams);
        return webView;
    }

    protected void e() {
        this.b.setVisibility(0);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f$0.d(view);
            }
        });
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.d = (Transaction) arguments.getParcelable("TRANSACTION");
        }
        this.e = c();
        this.f = d();
        c(this.d);
        d(this.d);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.opp_webview_checkout, viewGroup, false);
        b(viewInflate);
        c(viewInflate);
        return viewInflate;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        f();
        g();
    }

    @Override
    public void onStop() {
        super.onStop();
        if (this.g != null) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.g)));
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.a.setText(R.string.checkout_payment_details);
        e();
    }

    private void b(View view) {
        ((RelativeLayout) view).addView(this.e);
    }

    class a extends WebViewClient {
        a() {
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("http") || str.startsWith("https")) {
                return false;
            }
            CheckoutThreeDS2WebViewFragment checkoutThreeDS2WebViewFragment = CheckoutThreeDS2WebViewFragment.this;
            checkoutThreeDS2WebViewFragment.a(checkoutThreeDS2WebViewFragment.d);
            CheckoutThreeDS2WebViewFragment.this.g = str;
            return true;
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            CheckoutThreeDS2WebViewFragment.this.b();
        }
    }

    protected String b(Transaction transaction) {
        return transaction.getThreeDS2MethodRedirectUrl();
    }

    public void b() {
        a(this.d, PaymentError.getThreeDS2Error("ThreeDS2 web flow page loading failed"));
    }

    private void c(View view) {
        ((RelativeLayout) view).addView(this.f);
    }

    private void c(Transaction transaction) {
        this.e.loadUrl(b(transaction));
    }

    public void d(View view) {
        this.e.stopLoading();
        this.f.stopLoading();
        getActivity().onBackPressed();
    }

    private void d(Transaction transaction) {
        this.f.loadUrl(transaction.getRedirectUrl());
    }
}
