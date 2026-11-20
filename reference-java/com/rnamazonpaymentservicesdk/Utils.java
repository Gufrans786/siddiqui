package com.rnamazonpaymentservicesdk;

import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import com.facebook.react.uimanager.ViewProps;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.views.PayfortPayButton;
import com.reactcommunity.rndatetimepicker.Common;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class Utils {
    static final boolean $assertionsDisabled = false;
    private static Random rand = new Random();

    public static String getAlphaNumericString(int i) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvxyz".charAt((int) (((double) "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvxyz".length()) * Math.random())));
        }
        return sb.toString();
    }

    public static int randInt() {
        return rand.nextInt(1000) + 1;
    }

    public static Map collectRequestMap(String str, String str2) {
        HashMap map = new HashMap();
        map.put(Constants.EXTRAS.SDK_COMMAND, Constants.EXTRAS.STC_PURCHASE);
        map.put("customer_email", "Sam@gmail.com");
        map.put(Constants.EXTRAS.SDK_PHONE_NUMBER, "Sam@gmail.com");
        map.put("currency", "AED");
        map.put(Constants.FORT_PARAMS.AMOUNT, str2);
        map.put(Constants.FORT_PARAMS.LANGUAGE, Constants.LANGUAGES.ENGLISH);
        map.put(Constants.FORT_PARAMS.MERCHANT_REFERENCE, getAlphaNumericString(10));
        map.put(Constants.FORT_PARAMS.CUSTOMER_NAME, "Sam");
        map.put("customer_ip", "172.150.16.10");
        map.put("token_name", "Op9Vmp");
        map.put(Constants.FORT_PARAMS.PAYMENT_OPTION, Constants.CREDIT_CARDS_TYPES.VISA);
        map.put("eci", "ECOMMERCE");
        map.put(Constants.FORT_PARAMS.ORDER_DESCRIPTION, "DESCRIPTION");
        map.put("settlement_reference", "DESCRIPTION");
        map.put(Constants.FORT_PARAMS.SDK_TOKEN, str);
        return map;
    }

    public static Map collectDirectPayRequestMap(String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put(Constants.EXTRAS.SDK_COMMAND, "AUTHORIZATION");
        map.put("customer_email", "Sam@gmail.com");
        map.put("currency", "AED");
        map.put(Constants.FORT_PARAMS.AMOUNT, str3);
        map.put(Constants.FORT_PARAMS.LANGUAGE, Constants.LANGUAGES.ENGLISH);
        map.put(Constants.FORT_PARAMS.CARD_SECURITY_CODE, "123");
        map.put("token_name", str2);
        map.put(Constants.FORT_PARAMS.MERCHANT_REFERENCE, getAlphaNumericString(10));
        map.put(Constants.FORT_PARAMS.SDK_TOKEN, str);
        return map;
    }

    public static PayfortPayButton customizeButton(PayfortPayButton payfortPayButton, HashMap map) {
        CharSequence charSequence = (String) map.get("text");
        String str = (String) map.get("textFontFamily");
        String str2 = (String) map.get(ViewProps.BACKGROUND_COLOR);
        String str3 = (String) map.get(Common.TEXT_COLOR);
        Double d = (Double) map.get("textSize");
        Double d2 = (Double) map.get(ViewProps.BORDER_WIDTH);
        Double d3 = (Double) map.get(ViewProps.BORDER_RADIUS);
        String str4 = (String) map.get(ViewProps.BORDER_COLOR);
        float fFloatValue = d.floatValue();
        int iIntValue = d2.intValue();
        int iIntValue2 = d3.intValue();
        Typeface typefaceCreate = Typeface.create(str, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(str2));
        gradientDrawable.setCornerRadius(iIntValue2);
        gradientDrawable.setStroke(iIntValue, Color.parseColor(str4));
        payfortPayButton.setText(charSequence);
        payfortPayButton.setTextColor(Color.parseColor(str3));
        payfortPayButton.setTextSize(fFloatValue);
        payfortPayButton.setTypeface(typefaceCreate);
        payfortPayButton.setGravity(17);
        payfortPayButton.setBackground(gradientDrawable);
        return payfortPayButton;
    }

    public static LinearLayout.LayoutParams customizeButtonParams(HashMap map) {
        Double d = (Double) map.get(ViewProps.MARGIN_LEFT);
        Double d2 = (Double) map.get(ViewProps.MARGIN_TOP);
        Double d3 = (Double) map.get("buttonHeight");
        Double d4 = (Double) map.get("buttonWidth");
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int iIntValue = d3.intValue();
        int iIntValue2 = d4.intValue();
        layoutParams.leftMargin = d.intValue();
        layoutParams.topMargin = d2.intValue();
        layoutParams.width = iIntValue2;
        layoutParams.height = iIntValue;
        return layoutParams;
    }
}
