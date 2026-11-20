package com.payfort.fortpaymentsdk.presentation.stc.pay;

import android.content.Context;
import androidx.core.text.HtmlCompat;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import ch.qos.logback.core.CoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.ResponseState;
import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.usecase.stc.StcPurchaseUseCase;
import com.payfort.fortpaymentsdk.handlers.CreatorHandler;
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
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;", "Landroidx/lifecycle/ViewModel;", "purchaseUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;", "(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;)V", "_purchaseResult", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "disposable", "Lio/reactivex/disposables/CompositeDisposable;", "purchaseResult", "Lkotlinx/coroutines/flow/SharedFlow;", "getPurchaseResult", "()Lkotlinx/coroutines/flow/SharedFlow;", "isOtpValid", "", Constants.EXTRAS.SDK_OTP, "", FirebaseAnalytics.Event.PURCHASE, "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "mobileNumber", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StcPayViewModel extends ViewModel {
    private final MutableSharedFlow<ResponseState<SdkResponse>> _purchaseResult;
    private CompositeDisposable disposable;
    private final SharedFlow<ResponseState<SdkResponse>> purchaseResult;
    private final StcPurchaseUseCase purchaseUseCase;

    public StcPayViewModel(StcPurchaseUseCase purchaseUseCase) {
        Intrinsics.checkNotNullParameter(purchaseUseCase, "purchaseUseCase");
        this.purchaseUseCase = purchaseUseCase;
        this.disposable = new CompositeDisposable();
        MutableSharedFlow<ResponseState<SdkResponse>> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._purchaseResult = mutableSharedFlowMutableSharedFlow$default;
        this.purchaseResult = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
    }

    public final SharedFlow<ResponseState<SdkResponse>> getPurchaseResult() {
        return this.purchaseResult;
    }

    public final void purchase(final Context context, final FortRequest fortRequest, String mobileNumber, String otp) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
        Intrinsics.checkNotNullParameter(otp, "otp");
        SdkRequest sdkRequestCreateSdkRequest = CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest);
        Map<String, Object> requestMap = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap, "sdkRequest.requestMap");
        requestMap.put(Constants.EXTRAS.SDK_PHONE_NUMBER, mobileNumber);
        Map<String, Object> requestMap2 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap2, "sdkRequest.requestMap");
        requestMap2.put(Constants.EXTRAS.SDK_OTP, otp);
        Map<String, Object> requestMap3 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap3, "sdkRequest.requestMap");
        requestMap3.put(Constants.EXTRAS.SDK_COMMAND, Constants.EXTRAS.STC_PURCHASE);
        Map<String, Object> requestMap4 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap4, "sdkRequest.requestMap");
        requestMap4.put(Constants.EXTRAS.SDK_DIGITAL_WALLET, Constants.EXTRAS.STC_DIGITAL_WALLET);
        List listListOf = CollectionsKt.listOf(Constants.EXTRAS.SDK_SERVICE_COMMAND);
        Map<String, Object> requestMap5 = sdkRequestCreateSdkRequest.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap5, "sdkRequest.requestMap");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : requestMap5.entrySet()) {
            if (!listListOf.contains(entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        sdkRequestCreateSdkRequest.setRequestMap(linkedHashMap);
        Observable<Result> observableObserveOn = this.purchaseUseCase.execute(sdkRequestCreateSdkRequest).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function1 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.pay.StcPayViewModel$purchase$2$1", f = "StcPayViewModel.kt", i = {}, l = {56, 58, LockFreeTaskQueueCore.CLOSED_SHIFT, HtmlCompat.FROM_HTML_MODE_COMPACT}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final Context $context;
                final FortRequest $fortRequest;
                final Result $it;
                int label;
                final StcPayViewModel this$0;

                AnonymousClass1(Result result, Context context, FortRequest fortRequest, StcPayViewModel stcPayViewModel, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$it = result;
                    this.$context = context;
                    this.$fortRequest = fortRequest;
                    this.this$0 = stcPayViewModel;
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
                    throw new UnsupportedOperationException("Method not decompiled: com.payfort.fortpaymentsdk.presentation.stc.pay.StcPayViewModel.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(StcPayViewModel.this), null, null, new AnonymousClass1(result, context, fortRequest, StcPayViewModel.this, null), 3, null);
            }
        };
        Disposable disposableSubscribe = observableObserveOn.subscribe(new Consumer() {
            @Override
            public final void accept(Object obj) {
                StcPayViewModel.purchase$lambda$1(function1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "fun purchase(context: Co…}.addTo(disposable)\n    }");
        DisposableKt.addTo(disposableSubscribe, this.disposable);
    }

    public static final void purchase$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final boolean isOtpValid(String otp) {
        Intrinsics.checkNotNullParameter(otp, "otp");
        return otp.length() == 4;
    }
}
