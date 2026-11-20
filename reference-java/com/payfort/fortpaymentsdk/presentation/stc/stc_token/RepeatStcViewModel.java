package com.payfort.fortpaymentsdk.presentation.stc.stc_token;

import android.content.Context;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.ResponseState;
import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.usecase.stc.GenerateOtpUseCase;
import com.payfort.fortpaymentsdk.domain.usecase.stc.GetCustomerAccountUseCase;
import com.payfort.fortpaymentsdk.handlers.CreatorHandler;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.rxkotlin.DisposableKt;
import io.reactivex.schedulers.Schedulers;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;", "Landroidx/lifecycle/ViewModel;", "getCustomerAccountUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;", "generateOtpUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;", "(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V", "_generateOtpResult", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "_resultGetCustomer", "disposable", "Lio/reactivex/disposables/CompositeDisposable;", "generateOtpResult", "Lkotlinx/coroutines/flow/SharedFlow;", "getGenerateOtpResult", "()Lkotlinx/coroutines/flow/SharedFlow;", "resultGetCustomer", "getResultGetCustomer", "generateOtp", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "mobileNumber", "", "getCustomAccount", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RepeatStcViewModel extends ViewModel {
    private final MutableSharedFlow<ResponseState<SdkResponse>> _generateOtpResult;
    private final MutableSharedFlow<ResponseState<SdkResponse>> _resultGetCustomer;
    private CompositeDisposable disposable;
    private final SharedFlow<ResponseState<SdkResponse>> generateOtpResult;
    private final GenerateOtpUseCase generateOtpUseCase;
    private final GetCustomerAccountUseCase getCustomerAccountUseCase;
    private final SharedFlow<ResponseState<SdkResponse>> resultGetCustomer;

    public RepeatStcViewModel(GetCustomerAccountUseCase getCustomerAccountUseCase, GenerateOtpUseCase generateOtpUseCase) {
        Intrinsics.checkNotNullParameter(getCustomerAccountUseCase, "getCustomerAccountUseCase");
        Intrinsics.checkNotNullParameter(generateOtpUseCase, "generateOtpUseCase");
        this.getCustomerAccountUseCase = getCustomerAccountUseCase;
        this.generateOtpUseCase = generateOtpUseCase;
        this.disposable = new CompositeDisposable();
        MutableSharedFlow<ResponseState<SdkResponse>> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._resultGetCustomer = mutableSharedFlowMutableSharedFlow$default;
        this.resultGetCustomer = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        MutableSharedFlow<ResponseState<SdkResponse>> mutableSharedFlowMutableSharedFlow$default2 = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._generateOtpResult = mutableSharedFlowMutableSharedFlow$default2;
        this.generateOtpResult = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default2);
    }

    public final SharedFlow<ResponseState<SdkResponse>> getResultGetCustomer() {
        return this.resultGetCustomer;
    }

    public final SharedFlow<ResponseState<SdkResponse>> getGenerateOtpResult() {
        return this.generateOtpResult;
    }

    public final void getCustomAccount(final Context context, final FortRequest fortRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        SdkRequest sdkRequestCreateSdkRequest = CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest);
        Map<String, Object> requestMap = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap, "sdkRequest.requestMap");
        requestMap.put(Constants.EXTRAS.SDK_SERVICE_COMMAND, Constants.EXTRAS.STC_GET_CUSTOMER_ACCOUNTS);
        Map<String, Object> requestMap2 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap2, "sdkRequest.requestMap");
        requestMap2.put(Constants.EXTRAS.SDK_DIGITAL_WALLET, Constants.EXTRAS.STC_DIGITAL_WALLET);
        Observable<Result> observableObserveOn = this.getCustomerAccountUseCase.execute(sdkRequestCreateSdkRequest).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function1 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.stc_token.RepeatStcViewModel$getCustomAccount$1$1", f = "RepeatStcViewModel.kt", i = {}, l = {53, 55, 58, 60}, m = "invokeSuspend", n = {}, s = {})
            static final class C00711 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final Context $context;
                final FortRequest $fortRequest;
                final Result $it;
                int label;
                final RepeatStcViewModel this$0;

                C00711(Result result, Context context, FortRequest fortRequest, RepeatStcViewModel repeatStcViewModel, Continuation<? super C00711> continuation) {
                    super(2, continuation);
                    this.$it = result;
                    this.$context = context;
                    this.$fortRequest = fortRequest;
                    this.this$0 = repeatStcViewModel;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00711(this.$it, this.$context, this.$fortRequest, this.this$0, continuation);
                }

                @Override
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00711) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override
                public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                    throw new UnsupportedOperationException("Method not decompiled: com.payfort.fortpaymentsdk.presentation.stc.stc_token.RepeatStcViewModel.C08611.C00711.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(RepeatStcViewModel.this), null, null, new C00711(result, context, fortRequest, RepeatStcViewModel.this, null), 3, null);
            }
        };
        Disposable disposableSubscribe = observableObserveOn.subscribe(new Consumer() {
            @Override
            public final void accept(Object obj) {
                RepeatStcViewModel.getCustomAccount$lambda$0(function1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "fun getCustomAccount(con…}.addTo(disposable)\n    }");
        DisposableKt.addTo(disposableSubscribe, this.disposable);
    }

    public static final void getCustomAccount$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void generateOtp(final Context context, final FortRequest fortRequest, String mobileNumber) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        SdkRequest sdkRequestCreateSdkRequest = CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest);
        Map<String, Object> requestMap = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap, "sdkRequest.requestMap");
        requestMap.put(Constants.EXTRAS.SDK_PHONE_NUMBER, mobileNumber);
        Observable<Result> observableObserveOn = this.generateOtpUseCase.execute(sdkRequestCreateSdkRequest).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function1 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.stc_token.RepeatStcViewModel$generateOtp$1$1", f = "RepeatStcViewModel.kt", i = {}, l = {84, 86, 89, 91}, m = "invokeSuspend", n = {}, s = {})
            static final class C00701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final Context $context;
                final FortRequest $fortRequest;
                final Result $it;
                int label;
                final RepeatStcViewModel this$0;

                C00701(Result result, Context context, FortRequest fortRequest, RepeatStcViewModel repeatStcViewModel, Continuation<? super C00701> continuation) {
                    super(2, continuation);
                    this.$it = result;
                    this.$context = context;
                    this.$fortRequest = fortRequest;
                    this.this$0 = repeatStcViewModel;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00701(this.$it, this.$context, this.$fortRequest, this.this$0, continuation);
                }

                @Override
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00701) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override
                public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                    throw new UnsupportedOperationException("Method not decompiled: com.payfort.fortpaymentsdk.presentation.stc.stc_token.RepeatStcViewModel.AnonymousClass1.C00701.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(RepeatStcViewModel.this), null, null, new C00701(result, context, fortRequest, RepeatStcViewModel.this, null), 3, null);
            }
        };
        Disposable disposableSubscribe = observableObserveOn.subscribe(new Consumer() {
            @Override
            public final void accept(Object obj) {
                RepeatStcViewModel.generateOtp$lambda$1(function1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "fun generateOtp(context:…}.addTo(disposable)\n    }");
        DisposableKt.addTo(disposableSubscribe, this.disposable);
    }

    public static final void generateOtp$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
