package com.payfort.fortpaymentsdk.presentation.stc.stc_token;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.fragment.FragmentKt;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.databinding.RepeatStcFragmentBinding;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.ResponseState;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.utils.ViewExtKt;
import kotlin.KotlinNothingValueException;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0011H\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u001e\u001a\u00020\u0011H\u0016J\u001a\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u0019H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\b\u001a\u0004\b\r\u0010\u000e¨\u0006#"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "args", "Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;", "getArgs", "()Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;", "args$delegate", "Lkotlin/Lazy;", "binding", "Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;", "viewModel", "Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;", "getViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;", "viewModel$delegate", "initListeners", "", "observeValues", "onBackPressed", "onCreateDialog", "Landroid/app/Dialog;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "setup", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RepeatStcFragment extends DialogFragment {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy args = LazyKt.lazy(new Function0<RepeatStcFragmentArgs>() {
        {
            super(0);
        }

        @Override
        public final RepeatStcFragmentArgs invoke() {
            Bundle extras = this.this$0.requireActivity().getIntent().getExtras();
            Intrinsics.checkNotNull(extras);
            RepeatStcFragmentArgs repeatStcFragmentArgsFromBundle = RepeatStcFragmentArgs.fromBundle(extras);
            Intrinsics.checkNotNullExpressionValue(repeatStcFragmentArgsFromBundle, "fromBundle(requireActivity().intent.extras!!)");
            return repeatStcFragmentArgsFromBundle;
        }
    });
    private RepeatStcFragmentBinding binding;

    private final Lazy viewModel;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment$Companion;", "", "()V", "newInstance", "Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragment;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RepeatStcFragment newInstance() {
            return new RepeatStcFragment();
        }
    }

    public final RepeatStcFragmentArgs getArgs() {
        return (RepeatStcFragmentArgs) this.args.getValue();
    }

    public final RepeatStcViewModel getViewModel() {
        return (RepeatStcViewModel) this.viewModel.getValue();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.repeat_stc_fragment, container, false);
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
        requireActivity().finish();
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
        RepeatStcFragmentBinding repeatStcFragmentBindingBind = RepeatStcFragmentBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(repeatStcFragmentBindingBind, "bind(view)");
        this.binding = repeatStcFragmentBindingBind;
        RepeatStcFragmentBinding repeatStcFragmentBinding = null;
        if (repeatStcFragmentBindingBind == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            repeatStcFragmentBindingBind = null;
        }
        repeatStcFragmentBindingBind.btnContinue.setEnabled(false);
        RepeatStcViewModel viewModel = getViewModel();
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext()");
        FortRequest merchantReq = getArgs().getMerchantReq();
        Intrinsics.checkNotNullExpressionValue(merchantReq, "args.merchantReq");
        viewModel.getCustomAccount(contextRequireContext, merchantReq);
        Integer currencySymbolResId = Utils.INSTANCE.getCurrencySymbolResId(Utils.INSTANCE.getParamValue(getArgs().getMerchantReq().getRequestMap(), "currency"));
        if (currencySymbolResId != null) {
            RepeatStcFragmentBinding repeatStcFragmentBinding2 = this.binding;
            if (repeatStcFragmentBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                repeatStcFragmentBinding2 = null;
            }
            repeatStcFragmentBinding2.currencySymbolIV.setImageDrawable(AppCompatResources.getDrawable(requireContext(), currencySymbolResId.intValue()));
            RepeatStcFragmentBinding repeatStcFragmentBinding3 = this.binding;
            if (repeatStcFragmentBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                repeatStcFragmentBinding3 = null;
            }
            repeatStcFragmentBinding3.currencySymbolIV.setVisibility(0);
            RepeatStcFragmentBinding repeatStcFragmentBinding4 = this.binding;
            if (repeatStcFragmentBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                repeatStcFragmentBinding = repeatStcFragmentBinding4;
            }
            repeatStcFragmentBinding.tvAmount.setText(Utils.INSTANCE.formatAmount(getArgs().getMerchantReq().getRequestMap(), 2, false));
            return;
        }
        RepeatStcFragmentBinding repeatStcFragmentBinding5 = this.binding;
        if (repeatStcFragmentBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            repeatStcFragmentBinding5 = null;
        }
        repeatStcFragmentBinding5.currencySymbolIV.setVisibility(8);
        RepeatStcFragmentBinding repeatStcFragmentBinding6 = this.binding;
        if (repeatStcFragmentBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            repeatStcFragmentBinding = repeatStcFragmentBinding6;
        }
        repeatStcFragmentBinding.tvAmount.setText(Utils.formatAmount$default(Utils.INSTANCE, getArgs().getMerchantReq().getRequestMap(), 2, false, 4, null));
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.stc_token.RepeatStcFragment$observeValues$1", f = "RepeatStcFragment.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RepeatStcFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SharedFlow<ResponseState<SdkResponse>> resultGetCustomer = RepeatStcFragment.this.getViewModel().getResultGetCustomer();
                final RepeatStcFragment repeatStcFragment = RepeatStcFragment.this;
                this.label = 1;
                if (resultGetCustomer.collect(new FlowCollector() {
                    @Override
                    public Object emit(Object obj2, Continuation continuation) {
                        return emit((ResponseState<? extends SdkResponse>) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(ResponseState<? extends SdkResponse> responseState, Continuation<? super Unit> continuation) {
                        RepeatStcFragmentBinding repeatStcFragmentBinding = null;
                        if (responseState instanceof ResponseState.Failure) {
                            RepeatStcFragmentBinding repeatStcFragmentBinding2 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            } else {
                                repeatStcFragmentBinding = repeatStcFragmentBinding2;
                            }
                            ProgressBar progressBar = repeatStcFragmentBinding.progressLoading;
                            Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressLoading");
                            ViewExtKt.gone(progressBar);
                        } else if (Intrinsics.areEqual(responseState, ResponseState.Loading.INSTANCE)) {
                            RepeatStcFragmentBinding repeatStcFragmentBinding3 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            } else {
                                repeatStcFragmentBinding = repeatStcFragmentBinding3;
                            }
                            ProgressBar progressBar2 = repeatStcFragmentBinding.progressLoading;
                            Intrinsics.checkNotNullExpressionValue(progressBar2, "binding.progressLoading");
                            ViewExtKt.visible(progressBar2);
                        } else if (responseState instanceof ResponseState.Success) {
                            RepeatStcFragmentBinding repeatStcFragmentBinding4 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                repeatStcFragmentBinding4 = null;
                            }
                            ProgressBar progressBar3 = repeatStcFragmentBinding4.progressLoading;
                            Intrinsics.checkNotNullExpressionValue(progressBar3, "binding.progressLoading");
                            ViewExtKt.gone(progressBar3);
                            String strValueOf = String.valueOf(((SdkResponse) ((ResponseState.Success) responseState).getItem()).getResponseMap().get(Constants.EXTRAS.SDK_MASKED_PHONE_NUMBER));
                            RepeatStcFragmentBinding repeatStcFragmentBinding5 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                repeatStcFragmentBinding5 = null;
                            }
                            repeatStcFragmentBinding5.tvMobileNumber.setText(strValueOf);
                            RepeatStcFragmentBinding repeatStcFragmentBinding6 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding6 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                repeatStcFragmentBinding6 = null;
                            }
                            repeatStcFragmentBinding6.btnContinue.setEnabled(true);
                            RepeatStcFragmentBinding repeatStcFragmentBinding7 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding7 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            } else {
                                repeatStcFragmentBinding = repeatStcFragmentBinding7;
                            }
                            LinearLayoutCompat linearLayoutCompat = repeatStcFragmentBinding.holder;
                            Intrinsics.checkNotNullExpressionValue(linearLayoutCompat, "binding.holder");
                            ViewExtKt.visible(linearLayoutCompat);
                        }
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    private final void observeValues() {
        RepeatStcFragment repeatStcFragment = this;
        LifecycleOwnerKt.getLifecycleScope(repeatStcFragment).launchWhenStarted(new AnonymousClass1(null));
        LifecycleOwnerKt.getLifecycleScope(repeatStcFragment).launchWhenStarted(new AnonymousClass2(null));
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.stc_token.RepeatStcFragment$observeValues$2", f = "RepeatStcFragment.kt", i = {}, l = {111}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RepeatStcFragment.this.new AnonymousClass2(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SharedFlow<ResponseState<SdkResponse>> generateOtpResult = RepeatStcFragment.this.getViewModel().getGenerateOtpResult();
                final RepeatStcFragment repeatStcFragment = RepeatStcFragment.this;
                this.label = 1;
                if (generateOtpResult.collect(new FlowCollector() {
                    @Override
                    public Object emit(Object obj2, Continuation continuation) {
                        return emit((ResponseState<? extends SdkResponse>) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(ResponseState<? extends SdkResponse> responseState, Continuation<? super Unit> continuation) {
                        RepeatStcFragmentBinding repeatStcFragmentBinding = null;
                        if (responseState instanceof ResponseState.Failure) {
                            RepeatStcFragmentBinding repeatStcFragmentBinding2 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            } else {
                                repeatStcFragmentBinding = repeatStcFragmentBinding2;
                            }
                            ProgressBar progressBar = repeatStcFragmentBinding.progressLoading;
                            Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressLoading");
                            ViewExtKt.gone(progressBar);
                        } else if (Intrinsics.areEqual(responseState, ResponseState.Loading.INSTANCE)) {
                            RepeatStcFragmentBinding repeatStcFragmentBinding3 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            } else {
                                repeatStcFragmentBinding = repeatStcFragmentBinding3;
                            }
                            ProgressBar progressBar2 = repeatStcFragmentBinding.progressLoading;
                            Intrinsics.checkNotNullExpressionValue(progressBar2, "binding.progressLoading");
                            ViewExtKt.visible(progressBar2);
                        } else if (responseState instanceof ResponseState.Success) {
                            RepeatStcFragmentBinding repeatStcFragmentBinding4 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                repeatStcFragmentBinding4 = null;
                            }
                            ProgressBar progressBar3 = repeatStcFragmentBinding4.progressLoading;
                            Intrinsics.checkNotNullExpressionValue(progressBar3, "binding.progressLoading");
                            ViewExtKt.gone(progressBar3);
                            RepeatStcFragmentBinding repeatStcFragmentBinding5 = repeatStcFragment.binding;
                            if (repeatStcFragmentBinding5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            } else {
                                repeatStcFragmentBinding = repeatStcFragmentBinding5;
                            }
                            RepeatStcFragmentDirections.ActionRepeatStcFragmentToStcPayFragment actionRepeatStcFragmentToStcPayFragment = RepeatStcFragmentDirections.actionRepeatStcFragmentToStcPayFragment(repeatStcFragmentBinding.tvMobileNumber.getText().toString());
                            Intrinsics.checkNotNullExpressionValue(actionRepeatStcFragmentToStcPayFragment, "actionRepeatStcFragmentT…                        )");
                            FragmentKt.findNavController(repeatStcFragment).navigate(actionRepeatStcFragmentToStcPayFragment);
                        }
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    private final void initListeners() {
        RepeatStcFragmentBinding repeatStcFragmentBinding = this.binding;
        RepeatStcFragmentBinding repeatStcFragmentBinding2 = null;
        if (repeatStcFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            repeatStcFragmentBinding = null;
        }
        repeatStcFragmentBinding.btnContinue.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RepeatStcFragment.initListeners$lambda$0(this.f$0, view);
            }
        });
        RepeatStcFragmentBinding repeatStcFragmentBinding3 = this.binding;
        if (repeatStcFragmentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            repeatStcFragmentBinding3 = null;
        }
        repeatStcFragmentBinding3.btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RepeatStcFragment.initListeners$lambda$1(this.f$0, view);
            }
        });
        RepeatStcFragmentBinding repeatStcFragmentBinding4 = this.binding;
        if (repeatStcFragmentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            repeatStcFragmentBinding2 = repeatStcFragmentBinding4;
        }
        repeatStcFragmentBinding2.btnChangeMobile.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RepeatStcFragment.initListeners$lambda$2(this.f$0, view);
            }
        });
    }

    public static final void initListeners$lambda$0(RepeatStcFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RepeatStcViewModel viewModel = this$0.getViewModel();
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext()");
        FortRequest merchantReq = this$0.getArgs().getMerchantReq();
        Intrinsics.checkNotNullExpressionValue(merchantReq, "args.merchantReq");
        RepeatStcFragmentBinding repeatStcFragmentBinding = this$0.binding;
        if (repeatStcFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            repeatStcFragmentBinding = null;
        }
        viewModel.generateOtp(contextRequireContext, merchantReq, repeatStcFragmentBinding.tvMobileNumber.getText().toString());
    }

    public static final void initListeners$lambda$1(RepeatStcFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onBackPressed();
    }

    public static final void initListeners$lambda$2(RepeatStcFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RepeatStcFragmentDirections.ActionRepeatStcFragmentToStcGenerateOtpFragment actionRepeatStcFragmentToStcGenerateOtpFragment = RepeatStcFragmentDirections.actionRepeatStcFragmentToStcGenerateOtpFragment(this$0.getArgs().getEnvironment(), this$0.getArgs().getMerchantReq());
        Intrinsics.checkNotNullExpressionValue(actionRepeatStcFragmentToStcGenerateOtpFragment, "actionRepeatStcFragmentT…onment, args.merchantReq)");
        actionRepeatStcFragmentToStcGenerateOtpFragment.setIsFromRepeat(true);
        FragmentKt.findNavController(this$0).navigate(actionRepeatStcFragmentToStcGenerateOtpFragment);
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

    public RepeatStcFragment() {
        final RepeatStcFragment repeatStcFragment = this;
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
                return repeatStcFragment;
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
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(repeatStcFragment, Reflection.getOrCreateKotlinClass(RepeatStcViewModel.class), new Function0<ViewModelStore>() {
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
    }
}
