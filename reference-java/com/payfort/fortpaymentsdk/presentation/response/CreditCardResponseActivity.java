package com.payfort.fortpaymentsdk.presentation.response;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import androidx.appcompat.app.ActionBar;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.databinding.ActivityCcResponseBinding;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.presentation.base.FortActivity;
import com.payfort.fortpaymentsdk.utils.Utils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0002J\b\u0010\u000e\u001a\u00020\nH\u0016J\u0012\u0010\u000f\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;", "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;", "()V", "binding", "Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;", "getBinding$fortpayment_release", "()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;", "setBinding$fortpayment_release", "(Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;)V", "fillViews", "", "finish", "getSdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CreditCardResponseActivity extends FortActivity {
    public static final long TIME_REQUEST = 5000;
    public ActivityCcResponseBinding binding;

    public final ActivityCcResponseBinding getBinding$fortpayment_release() {
        ActivityCcResponseBinding activityCcResponseBinding = this.binding;
        if (activityCcResponseBinding != null) {
            return activityCcResponseBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding$fortpayment_release(ActivityCcResponseBinding activityCcResponseBinding) {
        Intrinsics.checkNotNullParameter(activityCcResponseBinding, "<set-?>");
        this.binding = activityCcResponseBinding;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityCcResponseBinding activityCcResponseBindingInflate = ActivityCcResponseBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityCcResponseBindingInflate, "inflate(layoutInflater)");
        setBinding$fortpayment_release(activityCcResponseBindingInflate);
        setContentView(getBinding$fortpayment_release().getRoot());
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.hide();
        }
        getBinding$fortpayment_release().responseStatusIconIV.setTypeface(Typeface.createFromAsset(getResources().getAssets(), "fontello.ttf"));
        fillViews();
    }

    private final void fillViews() {
        SdkResponse sdkResponse = getSdkResponse();
        if (sdkResponse != null) {
            if (sdkResponse.isSuccess()) {
                getBinding$fortpayment_release().responseContainerRL.setBackgroundColor(ContextCompat.getColor(this, R.color.pf_green));
                getBinding$fortpayment_release().responseStatusIconIV.setText(getResources().getString(R.string.icon_ok_circled));
                getBinding$fortpayment_release().responseStatusHintTV.setText(getResources().getString(R.string.pf_resp_page_great));
                getBinding$fortpayment_release().responseInfo1TV.setText(Utils.INSTANCE.getParamValue(sdkResponse.getResponseMap(), Constants.FORT_PARAMS.FORT_ID));
                getBinding$fortpayment_release().responseInfo2TV.setText(Utils.INSTANCE.getParamValue(sdkResponse.getResponseMap(), Constants.FORT_PARAMS.RESPONSE_MSG));
            } else {
                getBinding$fortpayment_release().responseContainerRL.setBackgroundColor(ContextCompat.getColor(this, R.color.pf_red));
                getBinding$fortpayment_release().responseStatusIconIV.setText(getResources().getString(R.string.icon_cancel_circled));
                getBinding$fortpayment_release().responseStatusHintTV.setText(getResources().getString(R.string.pf_resp_page_failed));
                getBinding$fortpayment_release().responseInfo1TV.setText("response_code : " + Utils.INSTANCE.getParamValue(sdkResponse.getResponseMap(), Constants.FORT_PARAMS.RESPONSE_CODE));
                getBinding$fortpayment_release().responseInfo2TV.setText("response_message : " + Utils.INSTANCE.getParamValue(sdkResponse.getResponseMap(), Constants.FORT_PARAMS.RESPONSE_MSG));
            }
        }
        new Handler().postDelayed(new Runnable() {
            @Override
            public final void run() {
                CreditCardResponseActivity.fillViews$lambda$1(this.f$0);
            }
        }, 5000L);
    }

    public static final void fillViews$lambda$1(CreditCardResponseActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    private final SdkResponse getSdkResponse() {
        return (SdkResponse) getIntent().getSerializableExtra(Constants.EXTRAS.SDK_RESPONSE);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override
    public void finish() {
        super.finish();
        Intent intent = new Intent(Constants.LOCAL_BROADCAST_EVENTS.RESPONSE_EVENT);
        intent.putExtra(Constants.EXTRAS.SDK_RESPONSE, getSdkResponse());
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }
}
