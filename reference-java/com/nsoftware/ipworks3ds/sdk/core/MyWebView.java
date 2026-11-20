package com.nsoftware.ipworks3ds.sdk.core;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import nts.C0558;
import nts.C0621;

public class MyWebView extends WebView {
    public MyWebView(Context context) {
        super(context);
    }

    @Override
    public boolean onFilterTouchEventForSecurity(MotionEvent motionEvent) {
        if ((motionEvent.getFlags() & 1) != 1) {
            return super.onFilterTouchEventForSecurity(motionEvent);
        }
        C0558.m5488();
        return false;
    }

    @Override
    public void setWebViewClient(WebViewClient webViewClient) {
        if (webViewClient instanceof C0621) {
            super.setWebViewClient(webViewClient);
        }
    }

    public MyWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MyWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MyWebView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public MyWebView(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i, z);
    }
}
