package com.oppwa.mobile.connect.checkout.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.TypedValue;
import android.view.Display;
import android.widget.TextView;
import androidx.browser.customtabs.CustomTabsIntent;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.payment.token.Card;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import java.text.NumberFormat;
import java.util.Currency;
import java.util.Locale;

class f0 {
    static String a(String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split("_")) {
            if (str2.length() != 0) {
                if (sb.length() > 0) {
                    sb.append(CardNumberHelper.DIVIDER);
                }
                if (str2.length() >= 2) {
                    sb.append(str2.charAt(0));
                    sb.append(str2.substring(1).toLowerCase());
                } else {
                    sb.append(str2);
                }
            }
        }
        return sb.toString();
    }

    static String c(String str) {
        return str.length() <= 8 ? str : str.substring(0, 4) + " •••• " + str.substring(str.length() - 4);
    }

    static String b(String str) {
        if (str.length() <= 4) {
            return "• " + str;
        }
        return "• " + str.substring(str.length() - 4);
    }

    static void b(Context context, String str) {
        a(context).launchUrl(context, Uri.parse(str));
    }

    static boolean b(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    static String a(Card card) {
        String expiryMonth = card.getExpiryMonth();
        String expiryYear = card.getExpiryYear();
        return expiryMonth + "/" + expiryYear.substring(expiryYear.length() - 2);
    }

    static int a(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }

    static String a(double d, String str) {
        NumberFormat currencyInstance = NumberFormat.getCurrencyInstance(Locale.getDefault());
        currencyInstance.setCurrency(Currency.getInstance(str));
        currencyInstance.setMaximumFractionDigits(2);
        return currencyInstance.format(d);
    }

    static CustomTabsIntent a(Context context) {
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.headerBackground, typedValue, true);
        builder.setToolbarColor(typedValue.data);
        builder.setStartAnimations(context, R.anim.opp_slide_in_right, R.anim.opp_slide_out_left);
        builder.setExitAnimations(context, android.R.anim.slide_in_left, android.R.anim.slide_out_right);
        builder.setShareState(2);
        return builder.build();
    }

    static void a(Context context, TextView textView, String str) {
        textView.setClickable(true);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(a(context, str));
    }

    static String a(String str, String str2) {
        return String.format("<a target='_blank' href='%s'>%s</a>", str2, str);
    }

    private static SpannableString a(Context context, String str) {
        SpannableString spannableStringValueOf = SpannableString.valueOf(Html.fromHtml(str));
        for (URLSpan uRLSpan : (URLSpan[]) spannableStringValueOf.getSpans(0, spannableStringValueOf.length(), URLSpan.class)) {
            int spanStart = spannableStringValueOf.getSpanStart(uRLSpan);
            int spanEnd = spannableStringValueOf.getSpanEnd(uRLSpan);
            spannableStringValueOf.removeSpan(uRLSpan);
            spannableStringValueOf.setSpan(new n(context, uRLSpan.getURL()), spanStart, spanEnd, 0);
        }
        return spannableStringValueOf;
    }
}
