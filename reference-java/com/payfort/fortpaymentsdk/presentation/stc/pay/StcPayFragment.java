package com.payfort.fortpaymentsdk.presentation.stc.pay;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.fragment.FragmentKt;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.databinding.StcPayFragmentBinding;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.ResponseState;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.presentation.stc.StcViewModel;
import com.payfort.fortpaymentsdk.presentation.stc.generate_otp.StcGenerateOtpFragmentArgs;
import com.payfort.fortpaymentsdk.presentation.threeds.ThreeDsActivity;
import com.payfort.fortpaymentsdk.utils.CommonServiceUtil;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.utils.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0002J&\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010(\u001a\u00020\u001eH\u0016J\u001a\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020!2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0016\u0010+\u001a\u00020\u001e2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-H\u0002J\u0010\u0010/\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020!H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0010\u001a\u0004\b\u0018\u0010\u0019¨\u00061"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "args", "Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragmentArgs;", "getArgs", "()Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lcom/payfort/fortpaymentsdk/databinding/StcPayFragmentBinding;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "getFortRequest", "()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "fortRequest$delegate", "Lkotlin/Lazy;", "mainViewModel", "Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;", "getMainViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;", "mainViewModel$delegate", "viewModel", "Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;", "getViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;", "viewModel$delegate", "getEnvironment", "", "initListeners", "", "observeValues", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "onViewCreated", "view", "setResult", "it", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "setup", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StcPayFragment extends DialogFragment {

    public static final Companion INSTANCE = new Companion(null);

    private final NavArgsLazy args;
    private StcPayFragmentBinding binding;

    private final Lazy fortRequest = LazyKt.lazy(new Function0<FortRequest>() {
        {
            super(0);
        }

        @Override
        public final FortRequest invoke() {
            Intent intent = this.this$0.requireActivity().getIntent();
            Bundle extras = intent != null ? intent.getExtras() : null;
            Intrinsics.checkNotNull(extras);
            FortRequest merchantReq = StcGenerateOtpFragmentArgs.fromBundle(extras).getMerchantReq();
            Intrinsics.checkNotNullExpressionValue(merchantReq, "fromBundle(requireActivi…nt?.extras!!).merchantReq");
            return merchantReq;
        }
    });

    private final Lazy mainViewModel;

    private final Lazy viewModel;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment$Companion;", "", "()V", "newInstance", "Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayFragment;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StcPayFragment newInstance() {
            return new StcPayFragment();
        }
    }

    private final StcPayFragmentArgs getArgs() {
        return (StcPayFragmentArgs) this.args.getValue();
    }

    private final FortRequest getFortRequest() {
        return (FortRequest) this.fortRequest.getValue();
    }

    public final String getEnvironment() {
        String environment = CommonServiceUtil.getEnvironment(requireActivity().getIntent());
        Intrinsics.checkNotNullExpressionValue(environment, "getEnvironment(requireActivity().intent)");
        return environment;
    }

    public final StcPayViewModel getViewModel() {
        return (StcPayViewModel) this.viewModel.getValue();
    }

    private final StcViewModel getMainViewModel() {
        return (StcViewModel) this.mainViewModel.getValue();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.stc_pay_fragment, container, false);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setup(view);
        initListeners();
        observeValues();
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.pay.StcPayFragment$observeValues$1", f = "StcPayFragment.kt", i = {}, l = {71}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StcPayFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.pay.StcPayFragment$observeValues$1$1", f = "StcPayFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00681 extends SuspendLambda implements Function2<ResponseState<? extends SdkResponse>, Continuation<? super Unit>, Object> {
            Object L$0;
            int label;
            final StcPayFragment this$0;

            C00681(StcPayFragment stcPayFragment, Continuation<? super C00681> continuation) {
                super(2, continuation);
                this.this$0 = stcPayFragment;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00681 c00681 = new C00681(this.this$0, continuation);
                c00681.L$0 = obj;
                return c00681;
            }

            @Override
            public final Object invoke(ResponseState<? extends SdkResponse> responseState, Continuation<? super Unit> continuation) {
                return ((C00681) create(responseState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ResponseState responseState = (ResponseState) this.L$0;
                StcPayFragmentBinding stcPayFragmentBinding = null;
                if (responseState instanceof ResponseState.Failure) {
                    StcPayFragmentBinding stcPayFragmentBinding2 = this.this$0.binding;
                    if (stcPayFragmentBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        stcPayFragmentBinding = stcPayFragmentBinding2;
                    }
                    FrameLayout frameLayout = stcPayFragmentBinding.loadingContainer;
                    Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.loadingContainer");
                    ViewExtKt.gone(frameLayout);
                } else if (Intrinsics.areEqual(responseState, ResponseState.Loading.INSTANCE)) {
                    StcPayFragmentBinding stcPayFragmentBinding3 = this.this$0.binding;
                    if (stcPayFragmentBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        stcPayFragmentBinding = stcPayFragmentBinding3;
                    }
                    FrameLayout frameLayout2 = stcPayFragmentBinding.loadingContainer;
                    Intrinsics.checkNotNullExpressionValue(frameLayout2, "binding.loadingContainer");
                    ViewExtKt.visible(frameLayout2);
                } else if (responseState instanceof ResponseState.Success) {
                    StcPayFragmentBinding stcPayFragmentBinding4 = this.this$0.binding;
                    if (stcPayFragmentBinding4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        stcPayFragmentBinding = stcPayFragmentBinding4;
                    }
                    FrameLayout frameLayout3 = stcPayFragmentBinding.loadingContainer;
                    Intrinsics.checkNotNullExpressionValue(frameLayout3, "binding.loadingContainer");
                    ViewExtKt.gone(frameLayout3);
                    Toast.makeText(this.this$0.requireContext(), ThreeDsActivity.KEY_SUCCESS, 0).show();
                }
                this.this$0.setResult(responseState);
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
                if (FlowKt.collectLatest(StcPayFragment.this.getViewModel().getPurchaseResult(), new C00681(StcPayFragment.this, null), this) == coroutine_suspended) {
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

    public final void setResult(ResponseState<? extends SdkResponse> it) {
        getMainViewModel().setTransactionResult(it);
    }

    private final void initListeners() {
        StcPayFragmentBinding stcPayFragmentBinding = this.binding;
        StcPayFragmentBinding stcPayFragmentBinding2 = null;
        if (stcPayFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcPayFragmentBinding = null;
        }
        stcPayFragmentBinding.btnContinue.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                StcPayFragment.initListeners$lambda$0(this.f$0, view);
            }
        });
        StcPayFragmentBinding stcPayFragmentBinding3 = this.binding;
        if (stcPayFragmentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcPayFragmentBinding3 = null;
        }
        stcPayFragmentBinding3.btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                StcPayFragment.initListeners$lambda$1(this.f$0, view);
            }
        });
        StcPayFragmentBinding stcPayFragmentBinding4 = this.binding;
        if (stcPayFragmentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            stcPayFragmentBinding2 = stcPayFragmentBinding4;
        }
        EditText editText = stcPayFragmentBinding2.etOtp;
        Intrinsics.checkNotNullExpressionValue(editText, "binding.etOtp");
        editText.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence text, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                StcPayFragmentBinding stcPayFragmentBinding5 = this.this$0.binding;
                if (stcPayFragmentBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    stcPayFragmentBinding5 = null;
                }
                stcPayFragmentBinding5.btnContinue.setEnabled(this.this$0.getViewModel().isOtpValid(String.valueOf(s)));
            }
        });
    }

    public static final void initListeners$lambda$0(StcPayFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StcPayViewModel viewModel = this$0.getViewModel();
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext()");
        FortRequest fortRequest = this$0.getFortRequest();
        String mobileNumber = this$0.getArgs().getMobileNumber();
        Intrinsics.checkNotNullExpressionValue(mobileNumber, "args.mobileNumber");
        StcPayFragmentBinding stcPayFragmentBinding = this$0.binding;
        if (stcPayFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcPayFragmentBinding = null;
        }
        viewModel.purchase(contextRequireContext, fortRequest, mobileNumber, StringsKt.trim((CharSequence) stcPayFragmentBinding.etOtp.getText().toString()).toString());
    }

    public static final void initListeners$lambda$1(StcPayFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.findNavController(this$0).popBackStack();
    }

    private final void setup(View view) {
        StcPayFragmentBinding stcPayFragmentBindingBind = StcPayFragmentBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(stcPayFragmentBindingBind, "bind(view)");
        this.binding = stcPayFragmentBindingBind;
        StcPayFragmentBinding stcPayFragmentBinding = null;
        if (stcPayFragmentBindingBind == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcPayFragmentBindingBind = null;
        }
        stcPayFragmentBindingBind.etMobileNumber.setText(getArgs().getMobileNumber());
        Integer currencySymbolResId = Utils.INSTANCE.getCurrencySymbolResId(Utils.INSTANCE.getParamValue(getFortRequest().getRequestMap(), "currency"));
        if (currencySymbolResId != null) {
            StcPayFragmentBinding stcPayFragmentBinding2 = this.binding;
            if (stcPayFragmentBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                stcPayFragmentBinding2 = null;
            }
            stcPayFragmentBinding2.currencySymbolIV.setImageDrawable(AppCompatResources.getDrawable(requireContext(), currencySymbolResId.intValue()));
            StcPayFragmentBinding stcPayFragmentBinding3 = this.binding;
            if (stcPayFragmentBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                stcPayFragmentBinding3 = null;
            }
            stcPayFragmentBinding3.currencySymbolIV.setVisibility(0);
            StcPayFragmentBinding stcPayFragmentBinding4 = this.binding;
            if (stcPayFragmentBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                stcPayFragmentBinding = stcPayFragmentBinding4;
            }
            stcPayFragmentBinding.tvAmount.setText(Utils.INSTANCE.formatAmount(getFortRequest().getRequestMap(), 2, false));
            return;
        }
        StcPayFragmentBinding stcPayFragmentBinding5 = this.binding;
        if (stcPayFragmentBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcPayFragmentBinding5 = null;
        }
        stcPayFragmentBinding5.currencySymbolIV.setVisibility(8);
        StcPayFragmentBinding stcPayFragmentBinding6 = this.binding;
        if (stcPayFragmentBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            stcPayFragmentBinding = stcPayFragmentBinding6;
        }
        stcPayFragmentBinding.tvAmount.setText(Utils.formatAmount$default(Utils.INSTANCE, getFortRequest().getRequestMap(), 2, false, 4, null));
    }

    @Override
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setLayout(-1, -1);
    }

    public StcPayFragment() {
        final StcPayFragment stcPayFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(StcPayFragmentArgs.class), new Function0<Bundle>() {
            {
                super(0);
            }

            @Override
            public final Bundle invoke() {
                Bundle arguments = stcPayFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + stcPayFragment + " has null arguments");
            }
        });
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() {
            {
                super(0);
            }

            @Override
            public final ViewModelProvider.Factory invoke() {
                return InjectionUtils.provideStcViewModelFactory(this.this$0.getEnvironment());
            }
        };
        final Function0<Fragment> function1 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return stcPayFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() {
            {
                super(0);
            }

            @Override
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function1.invoke();
            }
        });
        final Function0 function2 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(stcPayFragment, Reflection.getOrCreateKotlinClass(StcPayViewModel.class), new Function0<ViewModelStore>() {
            {
                super(0);
            }

            @Override
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m99viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() {
            {
                super(0);
            }

            @Override
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function2;
                if (function3 != null && (creationExtras = (CreationExtras) function3.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM99viewModels$lambda1 = FragmentViewModelLazyKt.m99viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM99viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM99viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, function0);
        this.mainViewModel = FragmentViewModelLazyKt.createViewModelLazy(stcPayFragment, Reflection.getOrCreateKotlinClass(StcViewModel.class), new Function0<ViewModelStore>() {
            {
                super(0);
            }

            @Override
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = stcPayFragment.requireActivity().getViewModelStore();
                Intrinsics.checkNotNullExpressionValue(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<CreationExtras>() {
            {
                super(0);
            }

            @Override
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function2;
                if (function3 != null && (creationExtras = (CreationExtras) function3.invoke()) != null) {
                    return creationExtras;
                }
                CreationExtras defaultViewModelCreationExtras = stcPayFragment.requireActivity().getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
                return defaultViewModelCreationExtras;
            }
        }, new Function0<ViewModelProvider.Factory>() {
            {
                super(0);
            }

            @Override
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory = stcPayFragment.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }
}
