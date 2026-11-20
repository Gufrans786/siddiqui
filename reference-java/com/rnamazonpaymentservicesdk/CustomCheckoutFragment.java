package com.rnamazonpaymentservicesdk;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReadableMap;
import com.payfort.fortpaymentsdk.callbacks.PayFortCallback;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.views.CardCvvView;
import com.payfort.fortpaymentsdk.views.CardExpiryView;
import com.payfort.fortpaymentsdk.views.CardHolderNameView;
import com.payfort.fortpaymentsdk.views.FortCardNumberView;
import com.payfort.fortpaymentsdk.views.PayfortPayButton;
import com.payfort.fortpaymentsdk.views.model.PayComponents;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class CustomCheckoutFragment extends Fragment {
    private static Callback callbackOnFailure;
    private static Callback callbackOnSuccess;
    private static String environment;
    private static ReadableMap payButtonProps;
    private static ReadableMap requestMap;

    public static void setRequestObject(ReadableMap readableMap) {
        requestMap = readableMap;
    }

    public static void setPayButtonProps(ReadableMap readableMap) {
        payButtonProps = readableMap;
    }

    public static void setEnvironment(String str) {
        environment = str;
    }

    public static void setCallbackOnSuccess(Callback callback) {
        callbackOnSuccess = callback;
    }

    public static void setCallbackOnFailure(Callback callback) {
        callbackOnFailure = callback;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String str;
        super.onCreateView(layoutInflater, viewGroup, bundle);
        CardHolderNameView cardHolderNameView = new CardHolderNameView(getContext(), null);
        FortCardNumberView fortCardNumberView = new FortCardNumberView(getContext(), null);
        CardCvvView cardCvvView = new CardCvvView(getContext(), null);
        CardExpiryView cardExpiryView = new CardExpiryView(getContext(), null);
        final PayfortPayButton payfortPayButton = new PayfortPayButton(getContext(), null);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        new LinearLayout.LayoutParams(-1, -1);
        linearLayout.addView(fortCardNumberView);
        linearLayout.addView(cardExpiryView);
        linearLayout.addView(cardCvvView);
        linearLayout.addView(cardHolderNameView);
        PayComponents payComponents = new PayComponents(fortCardNumberView, cardCvvView, cardExpiryView, cardHolderNameView);
        HashMap<String, Object> hashMap = payButtonProps.toHashMap();
        linearLayout.addView(Utils.customizeButton(payfortPayButton, hashMap), Utils.customizeButtonParams(hashMap));
        FortRequest fortRequest = new FortRequest();
        fortRequest.setRequestMap(requestMap.toHashMap());
        if (environment.equals("TEST")) {
            str = "https://sbcheckout.payfort.com";
        } else if (!environment.equals(sa.lg.android.locate.BuildConfig.PAYFORT_ENV)) {
            str = "";
        } else {
            str = "https://checkout.payfort.com";
        }
        payfortPayButton.setup(str, fortRequest, payComponents, new PayFortCallback() {
            @Override
            public void startLoading() {
                payfortPayButton.setText("...");
                payfortPayButton.setEnabled(false);
                payfortPayButton.setClickable(false);
            }

            @Override
            public void onSuccess(Map map, Map map2) {
                CustomCheckoutFragment.callbackOnSuccess.invoke(new JSONObject(map2).toString());
                payfortPayButton.setText("Done");
            }

            @Override
            public void onFailure(Map map, Map map2) {
                CustomCheckoutFragment.callbackOnFailure.invoke(new JSONObject(map2).toString());
            }
        });
        return linearLayout;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }
}
