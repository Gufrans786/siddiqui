package com.pairip.application;

import android.content.Context;
import com.pairip.licensecheck.LicenseClient;
import sa.lg.android.locate.MainApplication;

public class Application extends MainApplication {
    @Override
    protected void attachBaseContext(Context context) {
        LicenseClient.checkLicense(context);
        super.attachBaseContext(context);
    }
}
