package com.nsoftware.ipworks3ds.sdk.core;

import android.os.Bundle;
import android.webkit.WebSettings;
import com.nsoftware.ipworks3ds.sdk.R;
import nts.ActivityC0477;
import nts.C0273;
import nts.C0558;
import nts.C0600;
import nts.C0621;

public class ClientWebChallengeListener extends ActivityC0477 {

    public boolean f34 = false;

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(8192, 8192);
        setContentView(R.layout.activity_nsoftwaresdk_html);
        C0600 c0600 = C0273.f1383.m3986().f3298;
        m1176(c0600 == null ? "" : c0600.f3316.f2494.m4571());
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.f34) {
            C0600 c0600 = C0273.f1383.m3986().f3298;
            String strM4571 = c0600 == null ? "" : c0600.f3316.f2443.m4571();
            if (strM4571 == null || strM4571.length() <= 0) {
                return;
            }
            ((MyWebView) findViewById(R.id.htmlWebView)).stopLoading();
            m1176(strM4571);
            this.f34 = false;
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        this.f34 = true;
    }

    public final void m1176(String str) {
        String strM5470 = C0558.m5470(0, 9, 38);
        String strM5471 = C0558.m5470(9, 5, 125);
        C0558.m5490(getWindow(), getIntent());
        m5152(this);
        MyWebView myWebView = (MyWebView) findViewById(R.id.htmlWebView);
        WebSettings settings = myWebView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setJavaScriptEnabled(false);
        myWebView.setWebViewClient(new C0621(this));
        myWebView.loadDataWithBaseURL("", str, strM5470, strM5471, null);
        m5154(this, C0273.f1383.m3986());
    }

    public void m1177(String str) {
        m5159(str, this);
    }
}
