package com.payfort.fortpaymentsdk.presentation.base;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.FortSdkCache;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.utils.CommonServiceUtil;
import com.payfort.fortpaymentsdk.utils.LocalizationService;
import com.payfort.fortpaymentsdk.utils.LocalizationServicePerDevice;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b \u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0010J\r\u0010\u0011\u001a\u00020\u0012H\u0000¢\u0006\u0002\b\u0013J\u0015\u0010\u0014\u001a\n \u0016*\u0004\u0018\u00010\u00150\u0015H\u0000¢\u0006\u0002\b\u0017J\u0012\u0010\u0018\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "localizationService", "Lcom/payfort/fortpaymentsdk/utils/LocalizationService;", "getLocalizationService", "()Lcom/payfort/fortpaymentsdk/utils/LocalizationService;", "setLocalizationService", "(Lcom/payfort/fortpaymentsdk/utils/LocalizationService;)V", "attachBaseContext", "", "newBase", "Landroid/content/Context;", "failedMessage", "sdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "failedMessage$fortpayment_release", "getEnvironment", "", "getEnvironment$fortpayment_release", "getMerchantRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "kotlin.jvm.PlatformType", "getMerchantRequest$fortpayment_release", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class FortActivity extends AppCompatActivity {
    protected LocalizationService localizationService;

    protected final LocalizationService getLocalizationService() {
        LocalizationService localizationService = this.localizationService;
        if (localizationService != null) {
            return localizationService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localizationService");
        return null;
    }

    protected final void setLocalizationService(LocalizationService localizationService) {
        Intrinsics.checkNotNullParameter(localizationService, "<set-?>");
        this.localizationService = localizationService;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setLocalizationService(new LocalizationServicePerDevice());
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        setLocalizationService(new LocalizationServicePerDevice());
        super.attachBaseContext(getLocalizationService().updateByLanguage(newBase, FortSdkCache.getREQUEST_LANGUAGE(), FortSdkCache.getDEFAULT_SYSTEM_LANGUAGE()));
    }

    public void failedMessage$fortpayment_release(SdkResponse sdkResponse) {
        Intrinsics.checkNotNullParameter(sdkResponse, "sdkResponse");
        Intent intent = getIntent();
        intent.putExtra(Constants.EXTRAS.SDK_RESPONSE, sdkResponse);
        setResult(-1, intent);
        finish();
    }

    public final String getEnvironment$fortpayment_release() {
        String environment = CommonServiceUtil.getEnvironment(getIntent());
        Intrinsics.checkNotNullExpressionValue(environment, "getEnvironment(intent)");
        return environment;
    }

    public final FortRequest getMerchantRequest$fortpayment_release() {
        return CommonServiceUtil.getMerchantRequestObjFromIntent(getIntent());
    }
}
