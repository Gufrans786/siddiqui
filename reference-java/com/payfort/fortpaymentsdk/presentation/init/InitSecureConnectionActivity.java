package com.payfort.fortpaymentsdk.presentation.init;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.databinding.ActivityInitSecureConnBinding;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.FortSdkCache;
import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.handlers.CreatorHandler;
import com.payfort.fortpaymentsdk.presentation.base.FortActivity;
import com.payfort.fortpaymentsdk.presentation.credit.CreditCardPaymentActivity;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.MapUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.utils.ViewExtKt;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0002J\u0012\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\b\u0010\u0014\u001a\u00020\u000eH\u0014J\b\u0010\u0015\u001a\u00020\u000eH\u0002J\b\u0010\u0016\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;", "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;", "()V", "binding", "Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;", "mMessageReceiver", "Landroid/content/BroadcastReceiver;", "viewModel", "Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;", "getViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "finish", "", "handleShowLoading", "observeValues", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "setNoInternetMessageResult", "setupLocalBroadCastConfigs", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class InitSecureConnectionActivity extends FortActivity {
    private ActivityInitSecureConnBinding binding;
    private BroadcastReceiver mMessageReceiver;

    private final Lazy viewModel;

    public InitSecureConnectionActivity() {
        final InitSecureConnectionActivity initSecureConnectionActivity = this;
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.getOrCreateKotlinClass(ValidateViewModel.class), new Function0<ViewModelStore>() {
            {
                super(0);
            }

            @Override
            public final ViewModelStore invoke() {
                return initSecureConnectionActivity.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() {
            {
                super(0);
            }

            @Override
            public final ViewModelProvider.Factory invoke() {
                return InjectionUtils.provideValidateViewModelFactory(this.this$0.getEnvironment$fortpayment_release());
            }
        }, new Function0<CreationExtras>() {
            {
                super(0);
            }

            @Override
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.invoke()) == null) ? initSecureConnectionActivity.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    private final ValidateViewModel getViewModel() {
        return (ValidateViewModel) this.viewModel.getValue();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityInitSecureConnBinding activityInitSecureConnBindingInflate = ActivityInitSecureConnBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityInitSecureConnBindingInflate, "inflate(layoutInflater)");
        this.binding = activityInitSecureConnBindingInflate;
        if (activityInitSecureConnBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityInitSecureConnBindingInflate = null;
        }
        RelativeLayout root = activityInitSecureConnBindingInflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        setContentView(root);
        setFinishOnTouchOutside(false);
        handleShowLoading();
        setupLocalBroadCastConfigs();
        observeValues();
    }

    private final void handleShowLoading() {
        if (getIntent().hasExtra(Constants.EXTRAS.SDK_SHOW_LOADING)) {
            Bundle extras = getIntent().getExtras();
            Intrinsics.checkNotNull(extras);
            if (extras.getBoolean(Constants.EXTRAS.SDK_SHOW_LOADING, true)) {
                return;
            }
            ActivityInitSecureConnBinding activityInitSecureConnBinding = this.binding;
            if (activityInitSecureConnBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityInitSecureConnBinding = null;
            }
            RelativeLayout relativeLayout = activityInitSecureConnBinding.initContainerRL;
            Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.initContainerRL");
            ViewExtKt.gone(relativeLayout);
        }
    }

    private final void observeValues() {
        InitSecureConnectionActivity initSecureConnectionActivity = this;
        if (Utils.INSTANCE.haveNetworkConnection(initSecureConnectionActivity)) {
            ValidateViewModel viewModel = getViewModel();
            FortRequest merchantRequest$fortpayment_release = getMerchantRequest$fortpayment_release();
            Intrinsics.checkNotNullExpressionValue(merchantRequest$fortpayment_release, "getMerchantRequest()");
            viewModel.validateRequest(initSecureConnectionActivity, merchantRequest$fortpayment_release);
            getViewModel().getResult().observe(this, new InitSecureConnectionActivity$sam$androidx_lifecycle_Observer$0(new Function1<Result, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Result result) {
                    invoke2(result);
                    return Unit.INSTANCE;
                }

                public final void invoke2(Result result) {
                    if (result instanceof Result.Success) {
                        SdkResponse response = ((Result.Success) result).getResponse();
                        if (response.isSuccess()) {
                            Intent intent = new Intent(InitSecureConnectionActivity.this, (Class<?>) CreditCardPaymentActivity.class);
                            intent.putExtra(Constants.EXTRAS.SDK_MERCHANT_REQUEST, InitSecureConnectionActivity.this.getMerchantRequest$fortpayment_release());
                            intent.putExtra(Constants.EXTRAS.SDK_CURRENCY_DP, response.getCurrencyDecimalPoints());
                            if (response.getMerchantToken() != null) {
                                intent.putExtra(Constants.EXTRAS.SDK_MERCHANT_TOKEN, response.getMerchantToken());
                            }
                            intent.putExtra(Constants.EXTRAS.SDK_ENVIRONMENT, InitSecureConnectionActivity.this.getEnvironment$fortpayment_release());
                            intent.putExtra(Constants.EXTRAS.SDK_DEFAULT_LOCALE, FortSdkCache.getDEFAULT_SYSTEM_LANGUAGE());
                            InitSecureConnectionActivity.this.startActivity(intent);
                            return;
                        }
                        InitSecureConnectionActivity.this.failedMessage$fortpayment_release(response);
                        return;
                    }
                    if (result instanceof Result.Failure) {
                        InitSecureConnectionActivity.this.failedMessage$fortpayment_release(CreatorHandler.INSTANCE.convertThrowableToSdkResponse(InitSecureConnectionActivity.this, ((Result.Failure) result).getThrowable(), InitSecureConnectionActivity.this.getMerchantRequest$fortpayment_release()));
                    }
                }
            }));
            return;
        }
        setNoInternetMessageResult();
    }

    private final void setNoInternetMessageResult() {
        Toast.makeText(this, getResources().getString(R.string.pf_no_connection), 1).show();
        SdkResponse failedToInitConnectionResponse = MapUtils.getFailedToInitConnectionResponse(getResources().getString(R.string.pf_no_connection), getMerchantRequest$fortpayment_release().getRequestMap());
        Intrinsics.checkNotNullExpressionValue(failedToInitConnectionResponse, "getFailedToInitConnectio…hantRequest().requestMap)");
        failedMessage$fortpayment_release(failedToInitConnectionResponse);
    }

    private final void setupLocalBroadCastConfigs() {
        this.mMessageReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                Intent intent2 = InitSecureConnectionActivity.this.getIntent();
                if (intent.hasExtra(Constants.EXTRAS.SDK_RESPONSE)) {
                    intent2.putExtra(Constants.EXTRAS.SDK_RESPONSE, intent.getSerializableExtra(Constants.EXTRAS.SDK_RESPONSE));
                }
                InitSecureConnectionActivity.this.setResult(-1, intent2);
                InitSecureConnectionActivity.this.finish();
            }
        };
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this);
        BroadcastReceiver broadcastReceiver = this.mMessageReceiver;
        if (broadcastReceiver == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMessageReceiver");
            broadcastReceiver = null;
        }
        localBroadcastManager.registerReceiver(broadcastReceiver, new IntentFilter(Constants.LOCAL_BROADCAST_EVENTS.RESPONSE_EVENT));
    }

    @Override
    protected void onDestroy() {
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this);
        BroadcastReceiver broadcastReceiver = this.mMessageReceiver;
        if (broadcastReceiver == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMessageReceiver");
            broadcastReceiver = null;
        }
        localBroadcastManager.unregisterReceiver(broadcastReceiver);
        super.onDestroy();
    }

    @Override
    public void finish() {
        super.getLocalizationService().restoreLocale(this, FortSdkCache.getDEFAULT_SYSTEM_LANGUAGE());
        super.finish();
    }
}
