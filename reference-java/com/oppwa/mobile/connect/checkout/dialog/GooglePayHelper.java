package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.PaymentsClient;
import com.google.android.gms.wallet.Wallet;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.utils.googlepay.IsReadyToPayRequestJsonBuilder;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GooglePayHelper {
    public static final String GATEWAY = "aciworldwide";

    static void a(PaymentsClient paymentsClient, IsReadyToPayRequest isReadyToPayRequest, OnCompleteListener<Boolean> onCompleteListener) {
        paymentsClient.isReadyToPay(isReadyToPayRequest).addOnCompleteListener(onCompleteListener);
    }

    public static PaymentsClient getPaymentsClient(Context context, Connect.ProviderMode providerMode) {
        return Wallet.getPaymentsClient(context, new Wallet.WalletOptions.Builder().setEnvironment(providerMode == Connect.ProviderMode.LIVE ? 1 : 3).build());
    }

    public static void isReadyToPayWithGoogle(Context context, Connect.ProviderMode providerMode, String str, OnCompleteListener<Boolean> onCompleteListener) throws PaymentException {
        a(getPaymentsClient(context, providerMode), IsReadyToPayRequest.fromJson(a(str).toString()), onCompleteListener);
    }

    static JSONObject a(String str) throws PaymentException {
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("allowedPaymentMethods");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    jSONArrayOptJSONArray.getJSONObject(i).remove("tokenizationSpecification");
                }
                return new IsReadyToPayRequestJsonBuilder().setAllowedPaymentMethods(jSONArrayOptJSONArray).toJson();
            }
            return new JSONObject();
        } catch (JSONException e) {
            throw new PaymentException(PaymentError.getUnexpectedExceptionError(e));
        }
    }
}
