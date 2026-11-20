package com.payfort.fortpaymentsdk.presentation.stc.generate_otp;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LiveData;
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
import com.payfort.fortpaymentsdk.handlers.CreatorHandler;
import com.payfort.fortpaymentsdk.utils.SingleLiveEvent;
import com.yalantis.ucrop.UCrop;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.rxkotlin.DisposableKt;
import io.reactivex.schedulers.Schedulers;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001dR\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;", "Landroidx/lifecycle/ViewModel;", "generateOtpUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;", "(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V", "_generateOtpResult", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "_validateMobileNumberResult", "Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;", "", "disposable", "Lio/reactivex/disposables/CompositeDisposable;", "generateOtpResult", "Lkotlinx/coroutines/flow/SharedFlow;", "getGenerateOtpResult", "()Lkotlinx/coroutines/flow/SharedFlow;", "validateMobileNumberResult", "Landroidx/lifecycle/LiveData;", "getValidateMobileNumberResult", "()Landroidx/lifecycle/LiveData;", "generateOtp", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "mobileNumber", "", "validateMobileNumber", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StcGenerateOtpViewModel extends ViewModel {
    private final MutableSharedFlow<ResponseState<SdkResponse>> _generateOtpResult;
    private final SingleLiveEvent<Boolean> _validateMobileNumberResult;
    private CompositeDisposable disposable;
    private final SharedFlow<ResponseState<SdkResponse>> generateOtpResult;
    private final GenerateOtpUseCase generateOtpUseCase;
    private final LiveData<Boolean> validateMobileNumberResult;

    public StcGenerateOtpViewModel(GenerateOtpUseCase generateOtpUseCase) {
        Intrinsics.checkNotNullParameter(generateOtpUseCase, "generateOtpUseCase");
        this.generateOtpUseCase = generateOtpUseCase;
        this.disposable = new CompositeDisposable();
        SingleLiveEvent<Boolean> singleLiveEvent = new SingleLiveEvent<>();
        this._validateMobileNumberResult = singleLiveEvent;
        Intrinsics.checkNotNull(singleLiveEvent, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Boolean>");
        this.validateMobileNumberResult = singleLiveEvent;
        MutableSharedFlow<ResponseState<SdkResponse>> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._generateOtpResult = mutableSharedFlowMutableSharedFlow$default;
        this.generateOtpResult = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
    }

    public final LiveData<Boolean> getValidateMobileNumberResult() {
        return this.validateMobileNumberResult;
    }

    public final SharedFlow<ResponseState<SdkResponse>> getGenerateOtpResult() {
        return this.generateOtpResult;
    }

    public final void generateOtp(final Context context, final FortRequest fortRequest, String mobileNumber) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        SdkRequest sdkRequestCreateSdkRequest = CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest);
        Map<String, Object> requestMap = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap, "sdkRequest.requestMap");
        requestMap.put(Constants.EXTRAS.SDK_PHONE_NUMBER, mobileNumber);
        Map<String, Object> requestMap2 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap2, "sdkRequest.requestMap");
        requestMap2.put(Constants.EXTRAS.SDK_SERVICE_COMMAND, Constants.EXTRAS.STC_GENERATE_OTP);
        Map<String, Object> requestMap3 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap3, "sdkRequest.requestMap");
        requestMap3.put(Constants.EXTRAS.SDK_DIGITAL_WALLET, Constants.EXTRAS.STC_DIGITAL_WALLET);
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{Constants.EXTRAS.SDK_SERVICE_COMMAND, Constants.EXTRAS.SDK_DIGITAL_WALLET, Constants.EXTRAS.SDK_PHONE_NUMBER, Constants.FORT_PARAMS.MERCHANT_REFERENCE, Constants.FORT_PARAMS.AMOUNT, "currency", Constants.FORT_PARAMS.LANGUAGE, Constants.FORT_PARAMS.SDK_TOKEN});
        Map<String, Object> requestMap4 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap4, "sdkRequest.requestMap");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : requestMap4.entrySet()) {
            if (listListOf.contains(entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        sdkRequestCreateSdkRequest.setRequestMap(linkedHashMap);
        Observable<Result> observableObserveOn = this.generateOtpUseCase.execute(sdkRequestCreateSdkRequest).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function1 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.generate_otp.StcGenerateOtpViewModel$generateOtp$2$1", f = "StcGenerateOtpViewModel.kt", i = {}, l = {64, ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT, UCrop.REQUEST_CROP, 71}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final Context $context;
                final FortRequest $fortRequest;
                final Result $it;
                int label;
                final StcGenerateOtpViewModel this$0;

                AnonymousClass1(Result result, Context context, FortRequest fortRequest, StcGenerateOtpViewModel stcGenerateOtpViewModel, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$it = result;
                    this.$context = context;
                    this.$fortRequest = fortRequest;
                    this.this$0 = stcGenerateOtpViewModel;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$it, this.$context, this.$fortRequest, this.this$0, continuation);
                }

                @Override
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override
                public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                    throw new UnsupportedOperationException("Method not decompiled: com.payfort.fortpaymentsdk.presentation.stc.generate_otp.StcGenerateOtpViewModel.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(StcGenerateOtpViewModel.this), null, null, new AnonymousClass1(result, context, fortRequest, StcGenerateOtpViewModel.this, null), 3, null);
            }
        };
        Disposable disposableSubscribe = observableObserveOn.subscribe(new Consumer() {
            @Override
            public final void accept(Object obj) {
                StcGenerateOtpViewModel.generateOtp$lambda$1(function1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "fun generateOtp(context:…}.addTo(disposable)\n    }");
        DisposableKt.addTo(disposableSubscribe, this.disposable);
    }

    public static final void generateOtp$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final boolean validateMobileNumber(String mobileNumber) {
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        boolean zMatches = Constants.EXTRAS.INSTANCE.getSAUDI_NUMBERS_REGEX$fortpayment_release().matches(mobileNumber);
        this._validateMobileNumberResult.postValue(Boolean.valueOf(zMatches));
        return zMatches;
    }
}
