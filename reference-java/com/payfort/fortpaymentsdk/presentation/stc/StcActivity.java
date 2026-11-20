package com.payfort.fortpaymentsdk.presentation.stc;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavController;
import androidx.navigation.NavGraph;
import androidx.navigation.fragment.NavHostFragment;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.ResponseState;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.presentation.base.FortActivity;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0002J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;", "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;", "()V", "navController", "Landroidx/navigation/NavController;", "viewModel", "Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;", "getViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "observeValues", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSupportNavigateUp", "", "setupNavigation", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StcActivity extends FortActivity {

    public static final Companion INSTANCE = new Companion(null);
    public static final int STC_REQUEST_CODE = 9090909;
    private NavController navController;

    private final Lazy viewModel;

    public StcActivity() {
        final StcActivity stcActivity = this;
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.getOrCreateKotlinClass(StcViewModel.class), new Function0<ViewModelStore>() {
            {
                super(0);
            }

            @Override
            public final ViewModelStore invoke() {
                return stcActivity.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() {
            {
                super(0);
            }

            @Override
            public final ViewModelProvider.Factory invoke() {
                return stcActivity.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() {
            {
                super(0);
            }

            @Override
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.invoke()) == null) ? stcActivity.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;", "", "()V", "STC_REQUEST_CODE", "", "start", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/app/Activity;", Constants.EXTRAS.SDK_ENVIRONMENT, "", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void start(Activity context, String environment, FortRequest fortRequest) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(environment, "environment");
            Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
            Intent intent = new Intent(context, (Class<?>) StcActivity.class);
            intent.putExtra(Constants.EXTRAS.SDK_ENVIRONMENT, environment);
            intent.putExtra(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
            context.startActivityForResult(intent, StcActivity.STC_REQUEST_CODE);
        }
    }

    public final StcViewModel getViewModel() {
        return (StcViewModel) this.viewModel.getValue();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.stc_pay_activity);
        setupNavigation();
        observeValues();
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.StcActivity$observeValues$1", f = "StcActivity.kt", i = {}, l = {42}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StcActivity.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.StcActivity$observeValues$1$1", f = "StcActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00671 extends SuspendLambda implements Function2<ResponseState<? extends SdkResponse>, Continuation<? super Unit>, Object> {
            Object L$0;
            int label;
            final StcActivity this$0;

            C00671(StcActivity stcActivity, Continuation<? super C00671> continuation) {
                super(2, continuation);
                this.this$0 = stcActivity;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00671 c00671 = new C00671(this.this$0, continuation);
                c00671.L$0 = obj;
                return c00671;
            }

            @Override
            public final Object invoke(ResponseState<? extends SdkResponse> responseState, Continuation<? super Unit> continuation) {
                return ((C00671) create(responseState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ResponseState responseState = (ResponseState) this.L$0;
                if (responseState instanceof ResponseState.Failure) {
                    this.this$0.failedMessage$fortpayment_release(((ResponseState.Failure) responseState).getResponse());
                } else if (responseState instanceof ResponseState.Success) {
                    SdkResponse sdkResponse = (SdkResponse) ((ResponseState.Success) responseState).getItem();
                    if (sdkResponse.isSuccess()) {
                        Intent intent = this.this$0.getIntent();
                        intent.putExtra(Constants.EXTRAS.SDK_RESPONSE, sdkResponse);
                        this.this$0.setResult(-1, intent);
                        this.this$0.finish();
                    } else {
                        this.this$0.failedMessage$fortpayment_release(sdkResponse);
                    }
                }
                return Unit.INSTANCE;
            }
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (FlowKt.collectLatest(StcActivity.this.getViewModel().getTransactionResult(), new C00671(StcActivity.this, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final void observeValues() {
        LifecycleOwnerKt.getLifecycleScope(this).launchWhenStarted(new AnonymousClass1(null));
    }

    private final void setupNavigation() {
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment_content);
        Intrinsics.checkNotNull(fragmentFindFragmentById, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
        NavController navController = ((NavHostFragment) fragmentFindFragmentById).getNavController();
        this.navController = navController;
        if (navController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            navController = null;
        }
        NavGraph navGraphInflate = navController.getNavInflater().inflate(R.navigation.stc_navigation);
        if (getViewModel().isMerchantRequestContainsTokenName(getMerchantRequest$fortpayment_release())) {
            navGraphInflate.setStartDestination(R.id.repeatStcFragment);
        } else {
            navGraphInflate.setStartDestination(R.id.stcGenerateOtpFragment);
        }
        Intent intent = getIntent();
        navGraphInflate.addInDefaultArgs(intent != null ? intent.getExtras() : null);
        NavController navController2 = this.navController;
        if (navController2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            navController2 = null;
        }
        navController2.setLifecycleOwner(this);
        NavController navController3 = this.navController;
        if (navController3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            navController3 = null;
        }
        Intent intent2 = getIntent();
        navController3.setGraph(navGraphInflate, intent2 != null ? intent2.getExtras() : null);
    }

    @Override
    public boolean onSupportNavigateUp() {
        NavController navController = this.navController;
        if (navController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            navController = null;
        }
        return navController.navigateUp() || super.onSupportNavigateUp();
    }
}
