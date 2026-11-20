package com.google.firebase.analytics;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzfb;

public class GoogleAnalyticsServerPreviewActivity extends Activity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzfb.zza(this, null).zze(getIntent());
        finish();
    }
}
