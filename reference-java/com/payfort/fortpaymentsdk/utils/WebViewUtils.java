package com.payfort.fortpaymentsdk.utils;

import android.webkit.WebSettings;
import android.webkit.WebView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/payfort/fortpaymentsdk/utils/WebViewUtils;", "", "()V", "setupWebView", "", "webView", "Landroid/webkit/WebView;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WebViewUtils {
    public static final WebViewUtils INSTANCE = new WebViewUtils();

    private WebViewUtils() {
    }

    public final void setupWebView(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        WebSettings settings = webView.getSettings();
        Intrinsics.checkNotNullExpressionValue(settings, "webView.settings");
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(2);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDisplayZoomControls(true);
        settings.setSupportZoom(true);
        webView.setVerticalScrollBarEnabled(true);
        webView.setHorizontalScrollBarEnabled(true);
    }
}
