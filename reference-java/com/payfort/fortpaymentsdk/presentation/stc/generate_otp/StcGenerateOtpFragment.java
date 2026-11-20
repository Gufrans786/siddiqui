package com.payfort.fortpaymentsdk.presentation.stc.generate_otp;

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
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.databinding.StcGenerateOtpFragmentBinding;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.ResponseState;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.presentation.stc.StcViewModel;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 12\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u001cH\u0002J\u0012\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010)\u001a\u00020\u001cH\u0016J\u001a\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020$2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0016\u0010,\u001a\u00020\u001c2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.H\u0002J\u0010\u00100\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020$H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\b\u001a\u0004\b\u000b\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\b\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\b\u001a\u0004\b\u0016\u0010\u0017¨\u00062"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "args", "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragmentArgs;", "getArgs", "()Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragmentArgs;", "args$delegate", "Lkotlin/Lazy;", "binding", "Lcom/payfort/fortpaymentsdk/databinding/StcGenerateOtpFragmentBinding;", "isFromRepeat", "", "()Z", "isFromRepeat$delegate", "mainViewModel", "Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;", "getMainViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;", "mainViewModel$delegate", "viewModel", "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;", "getViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;", "viewModel$delegate", "getMobileNumber", "", "initListeners", "", "observeValues", "onBackPressed", "onCreateDialog", "Landroid/app/Dialog;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "setErrorResult", "it", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "setup", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StcGenerateOtpFragment extends DialogFragment {

    public static final Companion INSTANCE = new Companion(null);
    private StcGenerateOtpFragmentBinding binding;

    private final Lazy mainViewModel;

    private final Lazy viewModel;

    private final Lazy args = LazyKt.lazy(new Function0<StcGenerateOtpFragmentArgs>() {
        {
            super(0);
        }

        @Override
        public final StcGenerateOtpFragmentArgs invoke() {
            Intent intent = this.this$0.requireActivity().getIntent();
            Bundle extras = intent != null ? intent.getExtras() : null;
            Intrinsics.checkNotNull(extras);
            StcGenerateOtpFragmentArgs stcGenerateOtpFragmentArgsFromBundle = StcGenerateOtpFragmentArgs.fromBundle(extras);
            Intrinsics.checkNotNullExpressionValue(stcGenerateOtpFragmentArgsFromBundle, "fromBundle(requireActivity().intent?.extras!!)");
            return stcGenerateOtpFragmentArgsFromBundle;
        }
    });

    private final Lazy isFromRepeat = LazyKt.lazy(new Function0<Boolean>() {
        {
            super(0);
        }

        @Override
        public final Boolean invoke() {
            return Boolean.valueOf(StcGenerateOtpFragmentArgs.fromBundle(StcGenerateOtpFragment.this.requireArguments()).getIsFromRepeat());
        }
    });

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$Companion;", "", "()V", "newInstance", "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StcGenerateOtpFragment newInstance() {
            return new StcGenerateOtpFragment();
        }
    }

    public final StcGenerateOtpFragmentArgs getArgs() {
        return (StcGenerateOtpFragmentArgs) this.args.getValue();
    }

    private final boolean isFromRepeat() {
        return ((Boolean) this.isFromRepeat.getValue()).booleanValue();
    }

    public final StcGenerateOtpViewModel getViewModel() {
        return (StcGenerateOtpViewModel) this.viewModel.getValue();
    }

    private final StcViewModel getMainViewModel() {
        return (StcViewModel) this.mainViewModel.getValue();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.stc_generate_otp_fragment, container, false);
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        final Context contextRequireContext = requireContext();
        final int theme = getTheme();
        Dialog dialog = new Dialog(contextRequireContext, theme) {
            @Override
            public void onBackPressed() {
                this.this$0.onBackPressed();
            }
        };
        dialog.setCanceledOnTouchOutside(false);
        return dialog;
    }

    public final void onBackPressed() {
        if (isFromRepeat()) {
            FragmentKt.findNavController(this).popBackStack();
        } else {
            requireActivity().finish();
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setup(view);
        initListeners();
        observeValues();
    }

    private final void setup(View view) {
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBindingBind = StcGenerateOtpFragmentBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(stcGenerateOtpFragmentBindingBind, "bind(view)");
        this.binding = stcGenerateOtpFragmentBindingBind;
        getViewModel().validateMobileNumber(getMobileNumber());
    }

    private final void initListeners() {
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding = this.binding;
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding2 = null;
        if (stcGenerateOtpFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcGenerateOtpFragmentBinding = null;
        }
        stcGenerateOtpFragmentBinding.btnContinue.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                StcGenerateOtpFragment.initListeners$lambda$0(this.f$0, view);
            }
        });
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding3 = this.binding;
        if (stcGenerateOtpFragmentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcGenerateOtpFragmentBinding3 = null;
        }
        stcGenerateOtpFragmentBinding3.btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                StcGenerateOtpFragment.initListeners$lambda$1(this.f$0, view);
            }
        });
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding4 = this.binding;
        if (stcGenerateOtpFragmentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcGenerateOtpFragmentBinding4 = null;
        }
        EditText editText = stcGenerateOtpFragmentBinding4.etMobileNumber;
        Intrinsics.checkNotNullExpressionValue(editText, "binding.etMobileNumber");
        editText.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence text, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                this.this$0.getViewModel().validateMobileNumber(String.valueOf(s));
            }
        });
        Integer currencySymbolResId = Utils.INSTANCE.getCurrencySymbolResId(Utils.INSTANCE.getParamValue(getArgs().getMerchantReq().getRequestMap(), "currency"));
        if (currencySymbolResId != null) {
            StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding5 = this.binding;
            if (stcGenerateOtpFragmentBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                stcGenerateOtpFragmentBinding5 = null;
            }
            stcGenerateOtpFragmentBinding5.currencySymbolIV.setImageDrawable(AppCompatResources.getDrawable(requireContext(), currencySymbolResId.intValue()));
            StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding6 = this.binding;
            if (stcGenerateOtpFragmentBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                stcGenerateOtpFragmentBinding6 = null;
            }
            stcGenerateOtpFragmentBinding6.currencySymbolIV.setVisibility(0);
            StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding7 = this.binding;
            if (stcGenerateOtpFragmentBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                stcGenerateOtpFragmentBinding2 = stcGenerateOtpFragmentBinding7;
            }
            stcGenerateOtpFragmentBinding2.tvAmount.setText(Utils.INSTANCE.formatAmount(getArgs().getMerchantReq().getRequestMap(), 2, false));
            return;
        }
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding8 = this.binding;
        if (stcGenerateOtpFragmentBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcGenerateOtpFragmentBinding8 = null;
        }
        stcGenerateOtpFragmentBinding8.currencySymbolIV.setVisibility(8);
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding9 = this.binding;
        if (stcGenerateOtpFragmentBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            stcGenerateOtpFragmentBinding2 = stcGenerateOtpFragmentBinding9;
        }
        stcGenerateOtpFragmentBinding2.tvAmount.setText(Utils.formatAmount$default(Utils.INSTANCE, getArgs().getMerchantReq().getRequestMap(), 2, false, 4, null));
    }

    public static final void initListeners$lambda$0(StcGenerateOtpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StcGenerateOtpViewModel viewModel = this$0.getViewModel();
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext()");
        FortRequest merchantReq = this$0.getArgs().getMerchantReq();
        Intrinsics.checkNotNullExpressionValue(merchantReq, "args.merchantReq");
        viewModel.generateOtp(contextRequireContext, merchantReq, this$0.getMobileNumber());
    }

    public static final void initListeners$lambda$1(StcGenerateOtpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onBackPressed();
    }

    private final void observeValues() {
        getViewModel().getValidateMobileNumberResult().observe(getViewLifecycleOwner(), new StcGenerateOtpFragment$sam$androidx_lifecycle_Observer$0(new Function1<Boolean, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            public final void invoke2(Boolean it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding = null;
                if (it.booleanValue()) {
                    StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding2 = StcGenerateOtpFragment.this.binding;
                    if (stcGenerateOtpFragmentBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        stcGenerateOtpFragmentBinding2 = null;
                    }
                    stcGenerateOtpFragmentBinding2.mobileTextInputLayout.setError(null);
                } else {
                    StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding3 = StcGenerateOtpFragment.this.binding;
                    if (stcGenerateOtpFragmentBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        stcGenerateOtpFragmentBinding3 = null;
                    }
                    stcGenerateOtpFragmentBinding3.mobileTextInputLayout.setError(StcGenerateOtpFragment.this.getString(R.string.pf_error_invalid_mobilenumber));
                }
                StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding4 = StcGenerateOtpFragment.this.binding;
                if (stcGenerateOtpFragmentBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    stcGenerateOtpFragmentBinding = stcGenerateOtpFragmentBinding4;
                }
                stcGenerateOtpFragmentBinding.btnContinue.setEnabled(it.booleanValue());
            }
        }));
        LifecycleOwnerKt.getLifecycleScope(this).launchWhenStarted(new C08602(null));
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.generate_otp.StcGenerateOtpFragment$observeValues$2", f = "StcGenerateOtpFragment.kt", i = {}, l = {118}, m = "invokeSuspend", n = {}, s = {})
    static final class C08602 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08602(Continuation<? super C08602> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StcGenerateOtpFragment.this.new C08602(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08602) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.generate_otp.StcGenerateOtpFragment$observeValues$2$1", f = "StcGenerateOtpFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<ResponseState<? extends SdkResponse>, Continuation<? super Unit>, Object> {
            Object L$0;
            int label;
            final StcGenerateOtpFragment this$0;

            AnonymousClass1(StcGenerateOtpFragment stcGenerateOtpFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = stcGenerateOtpFragment;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override
            public final Object invoke(ResponseState<? extends SdkResponse> responseState, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(responseState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ResponseState responseState = (ResponseState) this.L$0;
                StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding = null;
                if (responseState instanceof ResponseState.Failure) {
                    ResponseState.Failure failure = (ResponseState.Failure) responseState;
                    if (Intrinsics.areEqual(StringsKt.takeLast(String.valueOf(failure.getResponse().getResponseMap().get(Constants.FORT_PARAMS.RESPONSE_CODE)), 3), Constants.FORT_CODE.INVALID_SDK_TOKEN)) {
                        this.this$0.setErrorResult(responseState);
                    } else {
                        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding2 = this.this$0.binding;
                        if (stcGenerateOtpFragmentBinding2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            stcGenerateOtpFragmentBinding2 = null;
                        }
                        stcGenerateOtpFragmentBinding2.mobileTextInputLayout.setError(String.valueOf(failure.getResponse().getResponseMap().get(Constants.FORT_PARAMS.RESPONSE_MSG)));
                        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding3 = this.this$0.binding;
                        if (stcGenerateOtpFragmentBinding3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        } else {
                            stcGenerateOtpFragmentBinding = stcGenerateOtpFragmentBinding3;
                        }
                        FrameLayout frameLayout = stcGenerateOtpFragmentBinding.loadingContainer;
                        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.loadingContainer");
                        ViewExtKt.gone(frameLayout);
                    }
                } else if (Intrinsics.areEqual(responseState, ResponseState.Loading.INSTANCE)) {
                    StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding4 = this.this$0.binding;
                    if (stcGenerateOtpFragmentBinding4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        stcGenerateOtpFragmentBinding = stcGenerateOtpFragmentBinding4;
                    }
                    FrameLayout frameLayout2 = stcGenerateOtpFragmentBinding.loadingContainer;
                    Intrinsics.checkNotNullExpressionValue(frameLayout2, "binding.loadingContainer");
                    ViewExtKt.visible(frameLayout2);
                } else if (responseState instanceof ResponseState.Success) {
                    StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding5 = this.this$0.binding;
                    if (stcGenerateOtpFragmentBinding5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        stcGenerateOtpFragmentBinding = stcGenerateOtpFragmentBinding5;
                    }
                    FrameLayout frameLayout3 = stcGenerateOtpFragmentBinding.loadingContainer;
                    Intrinsics.checkNotNullExpressionValue(frameLayout3, "binding.loadingContainer");
                    ViewExtKt.gone(frameLayout3);
                    NavController navControllerFindNavController = FragmentKt.findNavController(this.this$0);
                    StcGenerateOtpFragmentDirections.ActionStcGenerateOtpFragmentToStcPayFragment actionStcGenerateOtpFragmentToStcPayFragment = StcGenerateOtpFragmentDirections.actionStcGenerateOtpFragmentToStcPayFragment(this.this$0.getMobileNumber());
                    Intrinsics.checkNotNullExpressionValue(actionStcGenerateOtpFragmentToStcPayFragment, "actionStcGenerateOtpFrag…                        )");
                    navControllerFindNavController.navigate(actionStcGenerateOtpFragmentToStcPayFragment);
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
                if (FlowKt.collectLatest(StcGenerateOtpFragment.this.getViewModel().getGenerateOtpResult(), new AnonymousClass1(StcGenerateOtpFragment.this, null), this) == coroutine_suspended) {
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

    public final String getMobileNumber() {
        StcGenerateOtpFragmentBinding stcGenerateOtpFragmentBinding = this.binding;
        if (stcGenerateOtpFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            stcGenerateOtpFragmentBinding = null;
        }
        return stcGenerateOtpFragmentBinding.etMobileNumber.getText().toString().toString();
    }

    public final void setErrorResult(ResponseState<? extends SdkResponse> it) {
        getMainViewModel().setTransactionResult(it);
    }

    public StcGenerateOtpFragment() {
        final StcGenerateOtpFragment stcGenerateOtpFragment = this;
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() {
            {
                super(0);
            }

            @Override
            public final ViewModelProvider.Factory invoke() {
                String environment = this.this$0.getArgs().getEnvironment();
                Intrinsics.checkNotNullExpressionValue(environment, "args.environment");
                return InjectionUtils.provideStcViewModelFactory(environment);
            }
        };
        final Function0<Fragment> function1 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return stcGenerateOtpFragment;
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
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(stcGenerateOtpFragment, Reflection.getOrCreateKotlinClass(StcGenerateOtpViewModel.class), new Function0<ViewModelStore>() {
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
        this.mainViewModel = FragmentViewModelLazyKt.createViewModelLazy(stcGenerateOtpFragment, Reflection.getOrCreateKotlinClass(StcViewModel.class), new Function0<ViewModelStore>() {
            {
                super(0);
            }

            @Override
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = stcGenerateOtpFragment.requireActivity().getViewModelStore();
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
                CreationExtras defaultViewModelCreationExtras = stcGenerateOtpFragment.requireActivity().getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
                return defaultViewModelCreationExtras;
            }
        }, new Function0<ViewModelProvider.Factory>() {
            {
                super(0);
            }

            @Override
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory = stcGenerateOtpFragment.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }
}
