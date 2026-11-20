package com.oppwa.mobile.connect.checkout.dialog;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
import com.google.android.gms.wallet.PaymentData;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.card.CardPaymentParams;
import com.oppwa.mobile.connect.payment.googlepay.GooglePayPaymentParams;
import com.oppwa.mobile.connect.payment.token.Card;
import com.oppwa.mobile.connect.payment.token.Token;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.Logger;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

class k {
    public static void a(Context context, String str) {
        Configuration configuration = context.getResources().getConfiguration();
        String[] strArrSplit = str.split("_");
        if (strArrSplit.length != 2) {
            return;
        }
        Locale locale = new Locale(strArrSplit[0], strArrSplit[1]);
        Locale.setDefault(locale);
        Configuration configuration2 = new Configuration(configuration);
        configuration2.locale = locale;
        context.getResources().updateConfiguration(configuration2, context.getResources().getDisplayMetrics());
    }

    static void b(String str) throws PaymentException {
        if (TextUtils.isEmpty(str)) {
            throw new PaymentException(PaymentError.getPaymentProviderInternalError("Redirect URL is null or empty."));
        }
        if (!str.startsWith("http") && !str.startsWith("https")) {
            throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError("Redirect URL is not valid: " + str));
        }
    }

    static Token a(String str, Token[] tokenArr) {
        if (tokenArr == null) {
            return null;
        }
        for (Token token : tokenArr) {
            if ((token.getPaymentBrand().equals(str) && !a(token)) || (str.equalsIgnoreCase(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD) && !a(token) && token.getCard() != null)) {
                return token;
            }
        }
        return null;
    }

    static void a(Context context, String str, Connect.ProviderMode providerMode) {
        if (LibraryHelper.isPlayServicesBaseAvailable) {
            try {
                ProviderInstaller.installIfNeeded(context);
            } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException e) {
                Logger.error(e.getMessage());
            }
        }
    }

    static Intent a(Activity activity, ComponentName componentName, PaymentParams paymentParams, PaymentData paymentData) {
        Intent intent = new Intent(CheckoutActivity.ACTION_ON_BEFORE_SUBMIT);
        intent.setComponent(componentName);
        intent.setPackage(componentName.getPackageName());
        intent.putExtra(CheckoutActivity.EXTRA_PAYMENT_BRAND, paymentParams.getPaymentBrand());
        intent.putExtra(CheckoutActivity.EXTRA_CHECKOUT_ID, paymentParams.getCheckoutId());
        if (paymentData != null) {
            intent.putExtra(CheckoutActivity.EXTRA_GOOGLE_PAY_PAYMENT_DATA, (Parcelable) paymentData);
        }
        intent.putExtra(CheckoutActivity.EXTRA_SENDER_COMPONENT_NAME, new ComponentName(activity.getPackageName(), activity.getClass().getName()));
        return intent;
    }

    static PaymentParams a(String str, PaymentData paymentData, String str2) throws PaymentException {
        String strA;
        if (paymentData == null) {
            strA = null;
        } else {
            String json = paymentData.toJson();
            if (json == null) {
                if (paymentData.getPaymentMethodToken() != null) {
                    strA = paymentData.getPaymentMethodToken().getToken();
                } else {
                    strA = null;
                }
            } else {
                strA = a(json);
            }
        }
        return new GooglePayPaymentParams(str, strA, str2);
    }

    private static String a(String str) throws PaymentException {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObjectOptJSONObject2 = new JSONObject(str).optJSONObject("paymentMethodData");
            if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("tokenizationData")) == null) {
                return null;
            }
            return jSONObjectOptJSONObject.optString("token");
        } catch (JSONException e) {
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, e.getMessage()));
        }
    }

    private static boolean a(Token token) {
        if (token == null || token.getCard() == null) {
            return false;
        }
        Card card = token.getCard();
        return CardPaymentParams.isCardExpired(card.getExpiryMonth(), card.getExpiryYear());
    }
}
