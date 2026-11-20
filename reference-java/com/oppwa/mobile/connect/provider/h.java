package com.oppwa.mobile.connect.provider;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.facebook.hermes.intl.Constants;
import com.oppwa.mobile.connect.payment.PaymentParams;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

class h {
    static String a(Context context) {
        int i;
        if (Build.VERSION.SDK_INT < 30) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                i = displayMetrics.heightPixels;
            } else {
                i = 0;
            }
        } else {
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            Display display = context.getDisplay();
            if (display != null) {
                display.getRealMetrics(displayMetrics2);
                i = displayMetrics2.heightPixels;
            } else {
                i = 0;
            }
        }
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        int identifier2 = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        int dimensionPixelSize2 = ((i - dimensionPixelSize) - dimension) - (identifier2 > 0 ? context.getResources().getDimensionPixelSize(identifier2) : 0);
        return dimensionPixelSize2 > 0 ? Integer.toString(dimensionPixelSize2) : "0";
    }

    static String b() {
        return Constants.CASEFIRST_FALSE;
    }

    static String c() {
        return "true";
    }

    static String d() {
        return Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry();
    }

    static String e() {
        return "32";
    }

    static String b(Context context) {
        if (Build.VERSION.SDK_INT < 30) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return "0";
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return Integer.toString(displayMetrics.widthPixels);
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        Display display = context.getDisplay();
        if (display == null) {
            return "0";
        }
        display.getRealMetrics(displayMetrics2);
        return Integer.toString(displayMetrics2.widthPixels);
    }

    static String c(Context context) {
        return WebSettings.getDefaultUserAgent(context);
    }

    static String a() {
        return "5";
    }

    static String a(TimeZone timeZone) {
        return Integer.toString(-((timeZone.getOffset(new Date().getTime()) / 1000) / 60));
    }

    static void a(Context context, PaymentParams paymentParams) {
        paymentParams.addParam("customer.browser.language", d());
        paymentParams.addParam("customer.browser.javaEnabled", b());
        paymentParams.addParam("customer.browser.javascriptEnabled", c());
        paymentParams.addParam("customer.browser.userAgent", c(context));
        paymentParams.addParam("customer.browser.screenHeight", a(context));
        paymentParams.addParam("customer.browser.screenWidth", b(context));
        paymentParams.addParam("customer.browser.screenColorDepth", e());
        paymentParams.addParam("customer.browser.challengeWindow", a());
        paymentParams.addParam("customer.browser.timezone", a(TimeZone.getDefault()));
    }
}
