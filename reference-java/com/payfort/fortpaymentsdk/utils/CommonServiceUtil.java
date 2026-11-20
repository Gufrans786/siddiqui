package com.payfort.fortpaymentsdk.utils;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.google.android.material.snackbar.Snackbar;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import java.util.HashMap;

public class CommonServiceUtil {
    private CommonServiceUtil() {
    }

    public static String getEnvironment(Intent intent) {
        if (intent.hasExtra(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            return intent.getStringExtra(Constants.EXTRAS.SDK_ENVIRONMENT);
        }
        return null;
    }

    public static String hackMaskedCardForArabic(String str) {
        return str.substring(str.lastIndexOf(42) + 1) + str.substring(str.indexOf(42), str.lastIndexOf(42) + 1) + str.substring(0, str.indexOf(42));
    }

    public static FortRequest getMerchantRequestObjFromIntent(Intent intent) {
        FortRequest fortRequest = intent.hasExtra(Constants.EXTRAS.SDK_MERCHANT_REQUEST) ? (FortRequest) intent.getSerializableExtra(Constants.EXTRAS.SDK_MERCHANT_REQUEST) : null;
        if (fortRequest != null) {
            return fortRequest;
        }
        FortRequest fortRequest2 = new FortRequest();
        fortRequest2.setRequestMap(new HashMap());
        return fortRequest2;
    }

    public static Snackbar displayConnectionAlert(View view, final Context context) {
        Snackbar action = Snackbar.make(view, context.getResources().getString(R.string.pf_no_connection), 0).setAction(context.getResources().getString(R.string.pf_wifi_settings), new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                context.startActivity(new Intent("android.net.wifi.PICK_WIFI_NETWORK"));
            }
        });
        action.show();
        return action;
    }
}
