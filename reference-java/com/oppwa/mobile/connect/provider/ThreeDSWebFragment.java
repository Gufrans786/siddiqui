package com.oppwa.mobile.connect.provider;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.activity.OnBackPressedCallback;
import androidx.fragment.app.Fragment;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentError;

public class ThreeDSWebFragment extends Fragment {
    protected WebView a;
    protected WebView b;
    private OnBackPressedCallback c;

    class a extends OnBackPressedCallback {
        a(boolean z) {
            super(z);
        }

        @Override
        public void handleOnBackPressed() {
            ThreeDSWebFragment.this.a(PaymentError.getThreeDS2ChallengeCanceledError());
        }
    }

    class b extends WebViewClient {
        b() {
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    public ThreeDSWebFragment() {
        super(R.layout.threeds_web_fragment);
        setRetainInstance(true);
    }

    public PaymentError c() {
        return PaymentError.getThreeDS2Error("ThreeDS2 web flow page loading failed.");
    }

    private void d() {
        if (this.a.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.a.getParent()).removeView(this.a);
        }
    }

    private void e() {
        if (this.b.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.b.getParent()).removeView(this.b);
        }
    }

    protected WebView b() {
        WebView webView = new WebView(getContext());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new c());
        webView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        return webView;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        this.c = new a(true);
        requireActivity().getOnBackPressedDispatcher().addCallback(this, this.c);
    }

    @Override
    public void onDetach() {
        super.onDetach();
        d();
        e();
        this.c.remove();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        String string = requireArguments().getString(AsyncPaymentActivity.EXTRA_REDIRECT_URL);
        String string2 = requireArguments().getString(AsyncPaymentActivity.EXTRA_THREEDS_METHOD_REDIRECT_URL);
        this.a = a();
        this.b = b();
        a(string2);
        b(string);
        a(view);
        b(view);
    }

    class c extends WebViewClient {
        c() {
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            ThreeDSWebFragment threeDSWebFragment = ThreeDSWebFragment.this;
            threeDSWebFragment.a(threeDSWebFragment.c());
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("http") || str.startsWith("https")) {
                return false;
            }
            ThreeDSWebFragment.this.a((PaymentError) null);
            return true;
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            ThreeDSWebFragment threeDSWebFragment = ThreeDSWebFragment.this;
            threeDSWebFragment.a(threeDSWebFragment.c());
        }
    }

    protected WebView a() {
        WebView webView = new WebView(getContext());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new b());
        webView.setLayoutParams(new RelativeLayout.LayoutParams(0, 0));
        return webView;
    }

    private void a(View view) {
        ((RelativeLayout) view).addView(this.a);
    }

    private void a(String str) {
        this.a.loadUrl(str);
    }

    public void a(PaymentError paymentError) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(AsyncPaymentActivity.EXTRA_PAYMENT_ERROR, paymentError);
        getParentFragmentManager().setFragmentResult(AsyncPaymentActivity.REQUEST_KEY_ASYNC_RESULT, bundle);
    }

    private void b(View view) {
        ((RelativeLayout) view).addView(this.b);
    }

    private void b(String str) {
        this.b.loadUrl(str);
    }
}
