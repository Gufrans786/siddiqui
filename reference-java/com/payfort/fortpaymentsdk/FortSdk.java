package com.payfort.fortpaymentsdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.callbacks.FortCallBackManager;
import com.payfort.fortpaymentsdk.callbacks.FortCallback;
import com.payfort.fortpaymentsdk.callbacks.FortInterfaces;
import com.payfort.fortpaymentsdk.callbacks.PayFortCallback;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.FortSdkCache;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.presentation.init.InitSecureConnectionActivity;
import com.payfort.fortpaymentsdk.presentation.stc.StcActivity;
import com.payfort.fortpaymentsdk.security.DataSecurityService;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.LocalizationService;
import com.payfort.fortpaymentsdk.utils.MapUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000  2\u00020\u0001:\u0002 !B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002J8\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0001\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J:\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0013H\u0007JD\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0013J2\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0013J(\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f¨\u0006\""}, d2 = {"Lcom/payfort/fortpaymentsdk/FortSdk;", "", "()V", "initializeSharedValues", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "onActivityResult", "", "requestParams", "", "", "resultCode", "", "data", "Landroid/content/Intent;", "tnxProcessedCallback", "Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;", "registerCallback", "Landroid/app/Activity;", Constants.EXTRAS.SDK_ENVIRONMENT, "requestCode", "callbackManager", "Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;", "callback", Constants.EXTRAS.SDK_SHOW_LOADING, "startStcPayment", "validate", "fortCallback", "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;", "Companion", Constants.FORT_PARAMS.ENVIRONMENT, "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FortSdk {

    public static final Companion INSTANCE = new Companion(null);
    private static volatile FortSdk instance;

    public FortSdk(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final synchronized String getDeviceId(Context context) {
        return INSTANCE.getDeviceId(context);
    }

    @JvmStatic
    public static final FortSdk getInstance() {
        return INSTANCE.getInstance();
    }

    private FortSdk() {
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/payfort/fortpaymentsdk/FortSdk$ENVIRONMENT;", "", "()V", sa.lg.android.locate.BuildConfig.PAYFORT_ENV, "", "TEST", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ENVIRONMENT {
        public static final ENVIRONMENT INSTANCE = new ENVIRONMENT();
        public static final String PRODUCTION = "https://checkout.payfort.com";
        public static final String TEST = "https://sbcheckout.payfort.com";

        private ENVIRONMENT() {
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/payfort/fortpaymentsdk/FortSdk$Companion;", "", "()V", "instance", "Lcom/payfort/fortpaymentsdk/FortSdk;", "getDeviceId", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "getInstance", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final FortSdk getInstance() {
            FortSdk fortSdk;
            if (FortSdk.instance != null) {
                FortSdk fortSdk2 = FortSdk.instance;
                Intrinsics.checkNotNull(fortSdk2);
                return fortSdk2;
            }
            synchronized (this) {
                if (FortSdk.instance == null) {
                    Companion companion = FortSdk.INSTANCE;
                    FortSdk.instance = new FortSdk(null);
                }
                fortSdk = FortSdk.instance;
                Intrinsics.checkNotNull(fortSdk);
            }
            return fortSdk;
        }

        @JvmStatic
        public final synchronized String getDeviceId(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return Utils.INSTANCE.getDeviceId(context);
        }
    }

    @Deprecated(message = "")
    public final void registerCallback(Activity context, final FortRequest fortRequest, String environment, final int requestCode, FortCallBackManager callbackManager, final FortInterfaces.OnTnxProcessed callback) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(callbackManager, "callbackManager");
        if (!(callbackManager instanceof FortCallback)) {
            throw new Exception("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((FortCallback) callbackManager).registerCallback(requestCode, new FortCallback.Callback() {
            @Override
            public boolean onActivityResult(int mRequestCode, int resultCode, Intent data) {
                if (requestCode == mRequestCode) {
                    return this.onActivityResult(fortRequest.getRequestMap(), resultCode, data, callback);
                }
                return false;
            }
        });
        DataSecurityService.cleanMerhcantRequestMap(fortRequest.getRequestMap());
        Activity activity = context;
        initializeSharedValues(activity, fortRequest);
        Intent intent = new Intent(activity, (Class<?>) InitSecureConnectionActivity.class);
        intent.putExtra(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
        intent.putExtra(Constants.EXTRAS.SDK_ENVIRONMENT, environment);
        intent.putExtra(Constants.EXTRAS.SDK_SHOW_LOADING, true);
        context.startActivityForResult(intent, requestCode);
    }

    public final void registerCallback(Activity context, final FortRequest fortRequest, String environment, final int requestCode, FortCallBackManager callbackManager, boolean showLoading, final FortInterfaces.OnTnxProcessed callback) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        if (!(callbackManager instanceof FortCallback)) {
            throw new Exception("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((FortCallback) callbackManager).registerCallback(requestCode, new FortCallback.Callback() {
            @Override
            public boolean onActivityResult(int mRequestCode, int resultCode, Intent data) {
                if (requestCode == mRequestCode) {
                    return this.onActivityResult(fortRequest.getRequestMap(), resultCode, data, callback);
                }
                return false;
            }
        });
        DataSecurityService.cleanMerhcantRequestMap(fortRequest.getRequestMap());
        Activity activity = context;
        initializeSharedValues(activity, fortRequest);
        Intent intent = new Intent(activity, (Class<?>) InitSecureConnectionActivity.class);
        intent.putExtra(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
        intent.putExtra(Constants.EXTRAS.SDK_ENVIRONMENT, environment);
        intent.putExtra(Constants.EXTRAS.SDK_SHOW_LOADING, showLoading);
        context.startActivityForResult(intent, requestCode);
    }

    public final boolean onActivityResult(Map<String, ? extends Object> requestParams, int resultCode, Intent data, FortInterfaces.OnTnxProcessed tnxProcessedCallback) {
        String str;
        if (data != null) {
            Bundle extras = data.getExtras();
            Boolean boolValueOf = extras != null ? Boolean.valueOf(extras.containsKey(Constants.EXTRAS.SDK_RESPONSE)) : null;
            Intrinsics.checkNotNull(boolValueOf);
            if (boolValueOf.booleanValue()) {
                SdkResponse sdkResponse = (SdkResponse) data.getSerializableExtra(Constants.EXTRAS.SDK_RESPONSE);
                Boolean boolValueOf2 = sdkResponse != null ? Boolean.valueOf(sdkResponse.isSuccess()) : null;
                Intrinsics.checkNotNull(boolValueOf2);
                if (boolValueOf2.booleanValue()) {
                    if (tnxProcessedCallback != null) {
                        tnxProcessedCallback.onSuccess(requestParams, sdkResponse.getResponseMap());
                    }
                } else if (tnxProcessedCallback != null) {
                    tnxProcessedCallback.onFailure(requestParams, sdkResponse.getResponseMap());
                }
                return false;
            }
        }
        if (Intrinsics.areEqual(MapUtils.getLanguage(requestParams), Constants.LANGUAGES.ARABIC)) {
            str = "تم الغاء العملية من المشتري";
        } else {
            str = "Transaction canceled by payer";
        }
        if (tnxProcessedCallback != null) {
            tnxProcessedCallback.onCancel(requestParams, MapUtils.getCanceledByUserResponse(str, requestParams));
        }
        return false;
    }

    private final void initializeSharedValues(Context context, FortRequest fortRequest) {
        if (fortRequest != null && fortRequest.getRequestMap() != null) {
            String language = MapUtils.getLanguage(fortRequest.getRequestMap());
            Intrinsics.checkNotNullExpressionValue(language, "getLanguage(fortRequest.requestMap)");
            FortSdkCache.setREQUEST_LANGUAGE(language);
        }
        String defaultLocale = LocalizationService.getDefaultLocale(context);
        Intrinsics.checkNotNullExpressionValue(defaultLocale, "getDefaultLocale(context)");
        FortSdkCache.setDEFAULT_SYSTEM_LANGUAGE(defaultLocale);
    }

    public final void validate(Context context, String environment, FortRequest fortRequest, PayFortCallback fortCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        InjectionUtils.provideValidateViewModel(environment).validateRequest(context, fortRequest, fortCallback);
    }

    public final void startStcPayment(Activity context, String environment, final FortRequest fortRequest, FortCallBackManager callbackManager, final FortInterfaces.OnTnxProcessed callback) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        if (!(callbackManager instanceof FortCallback)) {
            throw new Exception("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((FortCallback) callbackManager).registerCallback(StcActivity.STC_REQUEST_CODE, new FortCallback.Callback() {
            @Override
            public boolean onActivityResult(int mRequestCode, int resultCode, Intent data) {
                if (9090909 == mRequestCode) {
                    return FortSdk.this.onActivityResult(fortRequest.getRequestMap(), resultCode, data, callback);
                }
                return false;
            }
        });
        if (fortRequest.getRequestMap().get(Constants.FORT_PARAMS.AMOUNT) == null || fortRequest.getRequestMap().get("currency") == null) {
            if (callback != null) {
                callback.onFailure(fortRequest.getRequestMap(), MapUtils.getTechnicalProblemResponse("Missing Amount Or Currency", fortRequest.getRequestMap()).getResponseMap());
            }
        } else {
            DataSecurityService.cleanMerhcantRequestMap(fortRequest.getRequestMap());
            initializeSharedValues(context, fortRequest);
            StcActivity.INSTANCE.start(context, environment, fortRequest);
        }
    }
}
