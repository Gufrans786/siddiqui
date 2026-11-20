package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.payfort.fortpaymentsdk.R;

public final class WebviewBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final WebView webView;

    private WebviewBinding(LinearLayout linearLayout, WebView webView) {
        this.rootView = linearLayout;
        this.webView = webView;
    }

    @Override
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static WebviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static WebviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.webview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WebviewBinding bind(View view) {
        int i = R.id.webView;
        WebView webView = (WebView) ViewBindings.findChildViewById(view, i);
        if (webView != null) {
            return new WebviewBinding((LinearLayout) view, webView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
