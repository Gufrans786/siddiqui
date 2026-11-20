package com.payfort.fortpaymentsdk.handlers;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import androidx.appcompat.widget.AppCompatButton;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.callbacks.FortPayInternalCallback;
import com.payfort.fortpaymentsdk.callbacks.PayFortCallback;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.ErrorEnum;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.usecase.PayUseCase;
import com.payfort.fortpaymentsdk.domain.usecase.ValidateDataUseCase;
import com.payfort.fortpaymentsdk.presentation.threeds.ThreeDsActivity;
import com.payfort.fortpaymentsdk.presentation.viewmodel.PayViewModel;
import com.payfort.fortpaymentsdk.utils.CommonServiceUtil;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.MapUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.views.CardCvvView;
import com.payfort.fortpaymentsdk.views.CardExpiryView;
import com.payfort.fortpaymentsdk.views.CardHolderNameView;
import com.payfort.fortpaymentsdk.views.FortCardNumberView;
import com.payfort.fortpaymentsdk.views.model.PayComponents;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 A2\u00020\u0001:\u0001AB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00106\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u00107\u001a\u00020\u001bH\u0002J\b\u00108\u001a\u000202H\u0002J\u0006\u00109\u001a\u000202J\b\u0010:\u001a\u000202H\u0002J\u0012\u0010;\u001a\u0002022\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J \u0010<\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\b\u0010\"\u001a\u0004\u0018\u00010#J(\u0010<\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010=\u001a\u00020>2\b\u0010\"\u001a\u0004\u0018\u00010\u0017J(\u0010<\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010=\u001a\u00020>2\b\u0010\"\u001a\u0004\u0018\u00010#J\b\u0010?\u001a\u000202H\u0002J\b\u0010@\u001a\u000202H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020%X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0016\u0010*\u001a\n \u000b*\u0004\u0018\u00010+0+X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u001c\"\u0004\b0\u0010\u001e¨\u0006B"}, d2 = {"Lcom/payfort/fortpaymentsdk/handlers/PayHandler;", "", "appCompatButton", "Landroidx/appcompat/widget/AppCompatButton;", "(Landroidx/appcompat/widget/AppCompatButton;)V", "broadcastReceiver", "Landroid/content/BroadcastReceiver;", "cardNumberView", "Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "kotlin.jvm.PlatformType", "cvvView", "Lcom/payfort/fortpaymentsdk/views/CardCvvView;", Constants.EXTRAS.SDK_ENVIRONMENT, "", "getEnvironment", "()Ljava/lang/String;", "setEnvironment", "(Ljava/lang/String;)V", "expiryView", "Lcom/payfort/fortpaymentsdk/views/CardExpiryView;", "fortInternalPayCallback", "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;", "holderNameView", "Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;", "isRememberMe", "", "()Z", "setRememberMe", "(Z)V", "isValidatedBefore", "isValidatedBefore$fortpayment_release", "setValidatedBefore$fortpayment_release", "payFortCallback", "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;", "request", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "getRequest$fortpayment_release", "()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "setRequest$fortpayment_release", "(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V", "resources", "Landroid/content/res/Resources;", "viewModel", "Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;", "withoutForm", "getWithoutForm", "setWithoutForm", "handleResponse", "", "sdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "handleSuccessResponse", "initViewModel", "isValid", "normalPay", "pay", "payWithoutFields", "removeInternalReceiver", "setUpPayButton", "payComponents", "Lcom/payfort/fortpaymentsdk/views/model/PayComponents;", "startInternalReceiverToGetResult", "startValidationFields", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PayHandler {
    private final AppCompatButton appCompatButton;
    private BroadcastReceiver broadcastReceiver;
    private FortCardNumberView cardNumberView;
    private final Context context;
    private CardCvvView cvvView;
    public String environment;
    private CardExpiryView expiryView;
    private FortPayInternalCallback fortInternalPayCallback;
    private CardHolderNameView holderNameView;
    private boolean isRememberMe;
    private boolean isValidatedBefore;
    private PayFortCallback payFortCallback;
    public FortRequest request;
    private final Resources resources;
    private PayViewModel viewModel;
    private boolean withoutForm;

    public static final Companion INSTANCE = new Companion(null);
    private static final String THREEDS_INTENT_FILTER = "com.payfort.fortpaymentsdk.webview.threeds";
    private static final String TAG = "PayHandler";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0004X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "THREEDS_INTENT_FILTER", "getTHREEDS_INTENT_FILTER$fortpayment_release", "()Ljava/lang/String;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getTHREEDS_INTENT_FILTER$fortpayment_release() {
            return PayHandler.THREEDS_INTENT_FILTER;
        }
    }

    public PayHandler(AppCompatButton appCompatButton) {
        Intrinsics.checkNotNullParameter(appCompatButton, "appCompatButton");
        this.appCompatButton = appCompatButton;
        this.context = appCompatButton.getContext();
        this.resources = appCompatButton.getContext().getResources();
        this.isRememberMe = true;
    }

    public final FortRequest getRequest$fortpayment_release() {
        FortRequest fortRequest = this.request;
        if (fortRequest != null) {
            return fortRequest;
        }
        Intrinsics.throwUninitializedPropertyAccessException("request");
        return null;
    }

    public final void setRequest$fortpayment_release(FortRequest fortRequest) {
        Intrinsics.checkNotNullParameter(fortRequest, "<set-?>");
        this.request = fortRequest;
    }

    public final boolean getIsRememberMe() {
        return this.isRememberMe;
    }

    public final void setRememberMe(boolean z) {
        this.isRememberMe = z;
    }

    public final boolean getWithoutForm() {
        return this.withoutForm;
    }

    public final void setWithoutForm(boolean z) {
        this.withoutForm = z;
    }

    public final boolean getIsValidatedBefore() {
        return this.isValidatedBefore;
    }

    public final void setValidatedBefore$fortpayment_release(boolean z) {
        this.isValidatedBefore = z;
    }

    public final String getEnvironment() {
        String str = this.environment;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Constants.EXTRAS.SDK_ENVIRONMENT);
        return null;
    }

    public final void setEnvironment(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.environment = str;
    }

    public final void setUpPayButton(String environment, FortRequest request, PayFortCallback payFortCallback) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(request, "request");
        initViewModel(environment);
        setEnvironment(environment);
        setRequest$fortpayment_release(request);
        this.payFortCallback = payFortCallback;
        this.withoutForm = true;
    }

    public final void setUpPayButton(String environment, FortRequest request, PayComponents payComponents, PayFortCallback payFortCallback) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(payComponents, "payComponents");
        setEnvironment(environment);
        this.cardNumberView = payComponents.getCardNumberView$fortpayment_release();
        this.cvvView = payComponents.getCvvView$fortpayment_release();
        this.expiryView = payComponents.getCardExpiryView$fortpayment_release();
        this.holderNameView = payComponents.getHolderNameView$fortpayment_release();
        initViewModel(environment);
        String paymentOptionValue = MapUtils.getPaymentOptionValue(request.getRequestMap());
        FortCardNumberView fortCardNumberView = this.cardNumberView;
        FortCardNumberView fortCardNumberView2 = null;
        if (fortCardNumberView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardNumberView");
            fortCardNumberView = null;
        }
        fortCardNumberView.setUp$fortpayment_release(environment, CardBrand.INSTANCE.fromCodeOrNull(paymentOptionValue));
        CardCvvView cardCvvView = this.cvvView;
        if (cardCvvView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvView");
            cardCvvView = null;
        }
        FortCardNumberView fortCardNumberView3 = this.cardNumberView;
        if (fortCardNumberView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardNumberView");
        } else {
            fortCardNumberView2 = fortCardNumberView3;
        }
        cardCvvView.setCardNumberView$fortpayment_release(fortCardNumberView2);
        setRequest$fortpayment_release(request);
        this.payFortCallback = payFortCallback;
    }

    public final void setUpPayButton(String environment, FortRequest request, PayComponents payComponents, FortPayInternalCallback payFortCallback) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(payComponents, "payComponents");
        setEnvironment(environment);
        this.cardNumberView = payComponents.getCardNumberView$fortpayment_release();
        this.cvvView = payComponents.getCvvView$fortpayment_release();
        this.expiryView = payComponents.getCardExpiryView$fortpayment_release();
        this.holderNameView = payComponents.getHolderNameView$fortpayment_release();
        initViewModel(environment);
        String paymentOptionValue = MapUtils.getPaymentOptionValue(request.getRequestMap());
        FortCardNumberView fortCardNumberView = this.cardNumberView;
        FortCardNumberView fortCardNumberView2 = null;
        if (fortCardNumberView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardNumberView");
            fortCardNumberView = null;
        }
        fortCardNumberView.setUp$fortpayment_release(environment, CardBrand.INSTANCE.fromCodeOrNull(paymentOptionValue));
        CardCvvView cardCvvView = this.cvvView;
        if (cardCvvView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvView");
            cardCvvView = null;
        }
        FortCardNumberView fortCardNumberView3 = this.cardNumberView;
        if (fortCardNumberView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardNumberView");
        } else {
            fortCardNumberView2 = fortCardNumberView3;
        }
        cardCvvView.setCardNumberView$fortpayment_release(fortCardNumberView2);
        setRequest$fortpayment_release(request);
        this.fortInternalPayCallback = payFortCallback;
    }

    private final void initViewModel(String environment) {
        this.viewModel = new PayViewModel(new ValidateDataUseCase(InjectionUtils.INSTANCE.provideFortRepository(environment)), new PayUseCase(InjectionUtils.INSTANCE.provideFortRepository(environment)));
    }

    public final void pay() {
        Utils utils = Utils.INSTANCE;
        Context context = this.context;
        Intrinsics.checkNotNullExpressionValue(context, "context");
        if (!utils.haveNetworkConnection(context)) {
            CommonServiceUtil.displayConnectionAlert(this.appCompatButton.getRootView().findViewById(R.id.content), this.context);
            return;
        }
        if (this.withoutForm) {
            PayViewModel payViewModel = this.viewModel;
            if (payViewModel != null && payViewModel.isFormWithoutFields(getRequest$fortpayment_release())) {
                payWithoutFields();
                return;
            }
            PayFortCallback payFortCallback = this.payFortCallback;
            if (payFortCallback != null) {
                Map<String, ? extends Object> requestMap = getRequest$fortpayment_release().getRequestMap();
                Intrinsics.checkNotNull(requestMap);
                Map<String, Object> responseMap = MapUtils.getTechnicalProblemResponse(this.resources.getString(com.payfort.fortpaymentsdk.R.string.pf_technical_problem_missing_token_name_or_card_security), getRequest$fortpayment_release().getRequestMap()).getResponseMap();
                Intrinsics.checkNotNullExpressionValue(responseMap, "getTechnicalProblemRespo…t.requestMap).responseMap");
                payFortCallback.onFailure(requestMap, responseMap);
            }
            WorkerHandler workerHandler = WorkerHandler.INSTANCE;
            Context context2 = this.context;
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            workerHandler.createWorkerRequest(context2, getRequest$fortpayment_release(), ErrorEnum.INTERNAL, new Exception(this.resources.getString(com.payfort.fortpaymentsdk.R.string.pf_technical_problem_missing_token_name_or_card_security)));
            return;
        }
        normalPay();
    }

    private final void payWithoutFields() {
        PayViewModel payViewModel = this.viewModel;
        if (payViewModel != null) {
            Context context = this.context;
            Intrinsics.checkNotNullExpressionValue(context, "context");
            payViewModel.validateAndPay(context, getRequest$fortpayment_release(), new FortPayInternalCallback() {
                @Override
                public void startLoading() {
                    PayFortCallback payFortCallback = PayHandler.this.payFortCallback;
                    if (payFortCallback != null) {
                        payFortCallback.startLoading();
                    }
                }

                @Override
                public void onSuccess(SdkResponse sdkResponse) {
                    Intrinsics.checkNotNullParameter(sdkResponse, "sdkResponse");
                    PayHandler.this.handleSuccessResponse(sdkResponse);
                }

                @Override
                public void onFailure(SdkResponse sdkResponse) {
                    Intrinsics.checkNotNullParameter(sdkResponse, "sdkResponse");
                    PayFortCallback payFortCallback = PayHandler.this.payFortCallback;
                    if (payFortCallback != null) {
                        Map<String, Object> requestMap = PayHandler.this.getRequest$fortpayment_release().getRequestMap();
                        Intrinsics.checkNotNullExpressionValue(requestMap, "request.requestMap");
                        Map<String, ? extends Object> responseMap = sdkResponse.getResponseMap();
                        Intrinsics.checkNotNullExpressionValue(responseMap, "sdkResponse.responseMap");
                        payFortCallback.onFailure(requestMap, responseMap);
                    }
                }
            });
        }
    }

    private final void normalPay() {
        startValidationFields();
        if (isValid()) {
            CreatorHandler creatorHandler = CreatorHandler.INSTANCE;
            Context context = this.context;
            Intrinsics.checkNotNullExpressionValue(context, "context");
            FortCardNumberView fortCardNumberView = this.cardNumberView;
            CardExpiryView cardExpiryView = null;
            if (fortCardNumberView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cardNumberView");
                fortCardNumberView = null;
            }
            CardCvvView cardCvvView = this.cvvView;
            if (cardCvvView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cvvView");
                cardCvvView = null;
            }
            CardHolderNameView cardHolderNameView = this.holderNameView;
            if (cardHolderNameView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("holderNameView");
                cardHolderNameView = null;
            }
            CardExpiryView cardExpiryView2 = this.expiryView;
            if (cardExpiryView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("expiryView");
            } else {
                cardExpiryView = cardExpiryView2;
            }
            SdkRequest sdkRequestCreateSdkRequestFromComponents = creatorHandler.createSdkRequestFromComponents(context, fortCardNumberView, cardCvvView, cardHolderNameView, cardExpiryView, this.isRememberMe, getRequest$fortpayment_release());
            PayViewModel payViewModel = this.viewModel;
            if (payViewModel != null) {
                Context context2 = this.context;
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                payViewModel.validateAndPay(context2, getRequest$fortpayment_release(), sdkRequestCreateSdkRequestFromComponents, this.isValidatedBefore, new FortPayInternalCallback() {
                    @Override
                    public void startLoading() {
                        PayFortCallback payFortCallback = PayHandler.this.payFortCallback;
                        if (payFortCallback != null) {
                            payFortCallback.startLoading();
                        }
                        FortPayInternalCallback fortPayInternalCallback = PayHandler.this.fortInternalPayCallback;
                        if (fortPayInternalCallback != null) {
                            fortPayInternalCallback.startLoading();
                        }
                    }

                    @Override
                    public void onSuccess(SdkResponse sdkResponse) {
                        Intrinsics.checkNotNullParameter(sdkResponse, "sdkResponse");
                        PayHandler.this.handleSuccessResponse(sdkResponse);
                    }

                    @Override
                    public void onFailure(SdkResponse sdkResponse) {
                        Intrinsics.checkNotNullParameter(sdkResponse, "sdkResponse");
                        PayFortCallback payFortCallback = PayHandler.this.payFortCallback;
                        if (payFortCallback != null) {
                            Map<String, Object> requestMap = PayHandler.this.getRequest$fortpayment_release().getRequestMap();
                            Intrinsics.checkNotNull(requestMap);
                            Map<String, ? extends Object> responseMap = sdkResponse.getResponseMap();
                            Intrinsics.checkNotNullExpressionValue(responseMap, "sdkResponse.responseMap");
                            payFortCallback.onFailure(requestMap, responseMap);
                        }
                        FortPayInternalCallback fortPayInternalCallback = PayHandler.this.fortInternalPayCallback;
                        if (fortPayInternalCallback != null) {
                            fortPayInternalCallback.onFailure(sdkResponse);
                        }
                    }
                });
            }
        }
    }

    public final void handleSuccessResponse(SdkResponse sdkResponse) {
        String checker3DsURL = sdkResponse.getChecker3DsURL();
        if (checker3DsURL != null && checker3DsURL.length() != 0) {
            startInternalReceiverToGetResult();
            Object obj = getRequest$fortpayment_release().getRequestMap().get(Constants.FORT_PARAMS.SDK_TOKEN);
            if (obj == null) {
                obj = "";
            }
            ThreeDsActivity.Companion companion = ThreeDsActivity.INSTANCE;
            Context context = this.context;
            Intrinsics.checkNotNullExpressionValue(context, "context");
            String checker3DsURL2 = sdkResponse.getChecker3DsURL();
            Intrinsics.checkNotNullExpressionValue(checker3DsURL2, "sdkResponse.checker3DsURL");
            companion.start(context, checker3DsURL2, getEnvironment(), (String) obj);
            return;
        }
        handleResponse(sdkResponse);
    }

    private final boolean isValid() {
        CardCvvView cardCvvView = this.cvvView;
        CardExpiryView cardExpiryView = null;
        if (cardCvvView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvView");
            cardCvvView = null;
        }
        if (!cardCvvView.isValid()) {
            return false;
        }
        FortCardNumberView fortCardNumberView = this.cardNumberView;
        if (fortCardNumberView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardNumberView");
            fortCardNumberView = null;
        }
        if (!fortCardNumberView.isValid()) {
            return false;
        }
        CardExpiryView cardExpiryView2 = this.expiryView;
        if (cardExpiryView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("expiryView");
        } else {
            cardExpiryView = cardExpiryView2;
        }
        return cardExpiryView.isValid();
    }

    private final void startValidationFields() {
        FortCardNumberView fortCardNumberView = this.cardNumberView;
        CardExpiryView cardExpiryView = null;
        if (fortCardNumberView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardNumberView");
            fortCardNumberView = null;
        }
        fortCardNumberView.validateCardNumber$fortpayment_release();
        CardCvvView cardCvvView = this.cvvView;
        if (cardCvvView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvView");
            cardCvvView = null;
        }
        cardCvvView.validateCvc$fortpayment_release();
        CardExpiryView cardExpiryView2 = this.expiryView;
        if (cardExpiryView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("expiryView");
        } else {
            cardExpiryView = cardExpiryView2;
        }
        cardExpiryView.validateExpiryDate$fortpayment_release();
    }

    public final void handleResponse(SdkResponse sdkResponse) {
        FortPayInternalCallback fortPayInternalCallback = this.fortInternalPayCallback;
        if (fortPayInternalCallback != null) {
            fortPayInternalCallback.onSuccess(sdkResponse);
        }
        if (sdkResponse.isSuccess()) {
            PayFortCallback payFortCallback = this.payFortCallback;
            if (payFortCallback != null) {
                Map<String, ? extends Object> requestMap = getRequest$fortpayment_release().getRequestMap();
                Intrinsics.checkNotNullExpressionValue(requestMap, "request.requestMap");
                Map<String, ? extends Object> responseMap = sdkResponse.getResponseMap();
                Intrinsics.checkNotNullExpressionValue(responseMap, "sdkResponse.responseMap");
                payFortCallback.onSuccess(requestMap, responseMap);
                return;
            }
            return;
        }
        PayFortCallback payFortCallback2 = this.payFortCallback;
        if (payFortCallback2 != null) {
            Map<String, ? extends Object> requestMap2 = getRequest$fortpayment_release().getRequestMap();
            Intrinsics.checkNotNullExpressionValue(requestMap2, "request.requestMap");
            Map<String, ? extends Object> responseMap2 = sdkResponse.getResponseMap();
            Intrinsics.checkNotNullExpressionValue(responseMap2, "sdkResponse.responseMap");
            payFortCallback2.onFailure(requestMap2, responseMap2);
        }
    }

    private final void startInternalReceiverToGetResult() {
        this.broadcastReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                if (Intrinsics.areEqual(intent.getAction(), PayHandler.INSTANCE.getTHREEDS_INTENT_FILTER$fortpayment_release()) && intent.getSerializableExtra(ThreeDsActivity.KEY_SUCCESS) != null) {
                    PayHandler payHandler = PayHandler.this;
                    Serializable serializableExtra = intent.getSerializableExtra(ThreeDsActivity.KEY_SUCCESS);
                    Intrinsics.checkNotNull(serializableExtra, "null cannot be cast to non-null type com.payfort.fortpaymentsdk.domain.model.SdkResponse");
                    payHandler.handleResponse((SdkResponse) serializableExtra);
                } else if (Intrinsics.areEqual(intent.getAction(), PayHandler.INSTANCE.getTHREEDS_INTENT_FILTER$fortpayment_release()) && intent.getBooleanExtra(ThreeDsActivity.KEY_FAILURE, false)) {
                    SdkResponse sdkResponseConvertThrowableToSdkResponse = CreatorHandler.INSTANCE.convertThrowableToSdkResponse(context, new IOException(), PayHandler.this.getRequest$fortpayment_release());
                    PayFortCallback payFortCallback = PayHandler.this.payFortCallback;
                    if (payFortCallback != null) {
                        Map<String, Object> requestMap = PayHandler.this.getRequest$fortpayment_release().getRequestMap();
                        Intrinsics.checkNotNullExpressionValue(requestMap, "request.requestMap");
                        Map<String, ? extends Object> responseMap = sdkResponseConvertThrowableToSdkResponse.getResponseMap();
                        Intrinsics.checkNotNullExpressionValue(responseMap, "sdkResponse.responseMap");
                        payFortCallback.onFailure(requestMap, responseMap);
                    }
                    FortPayInternalCallback fortPayInternalCallback = PayHandler.this.fortInternalPayCallback;
                    if (fortPayInternalCallback != null) {
                        fortPayInternalCallback.onFailure(sdkResponseConvertThrowableToSdkResponse);
                    }
                }
                PayHandler.this.removeInternalReceiver(context);
            }
        };
        if (Build.VERSION.SDK_INT >= 26) {
            Context context = this.context;
            if (context != null) {
                context.registerReceiver(this.broadcastReceiver, new IntentFilter(THREEDS_INTENT_FILTER), 2);
                return;
            }
            return;
        }
        Context context2 = this.context;
        if (context2 != null) {
            context2.registerReceiver(this.broadcastReceiver, new IntentFilter(THREEDS_INTENT_FILTER));
        }
    }

    public final void removeInternalReceiver(Context context) {
        BroadcastReceiver broadcastReceiver = this.broadcastReceiver;
        if (broadcastReceiver == null || context == null) {
            return;
        }
        context.unregisterReceiver(broadcastReceiver);
    }
}
