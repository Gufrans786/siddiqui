package com.payfort.fortpaymentsdk.presentation.stc;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.ResponseState;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "_transactionResult", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "transactionResult", "Lkotlinx/coroutines/flow/SharedFlow;", "getTransactionResult", "()Lkotlinx/coroutines/flow/SharedFlow;", "isMerchantRequestContainsTokenName", "", "merchantRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "setTransactionResult", "", "it", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StcViewModel extends ViewModel {
    private final MutableSharedFlow<ResponseState<SdkResponse>> _transactionResult;
    private final SharedFlow<ResponseState<SdkResponse>> transactionResult;

    public StcViewModel() {
        MutableSharedFlow<ResponseState<SdkResponse>> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._transactionResult = mutableSharedFlowMutableSharedFlow$default;
        this.transactionResult = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
    }

    public final SharedFlow<ResponseState<SdkResponse>> getTransactionResult() {
        return this.transactionResult;
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.payfort.fortpaymentsdk.presentation.stc.StcViewModel$setTransactionResult$1", f = "StcViewModel.kt", i = {}, l = {21}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final ResponseState<SdkResponse> $it;
        int label;

        AnonymousClass1(ResponseState<? extends SdkResponse> responseState, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$it = responseState;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StcViewModel.this.new AnonymousClass1(this.$it, continuation);
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
                this.label = 1;
                if (StcViewModel.this._transactionResult.emit(this.$it, this) == coroutine_suspended) {
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

    public final void setTransactionResult(ResponseState<? extends SdkResponse> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(it, null), 3, null);
    }

    public final boolean isMerchantRequestContainsTokenName(FortRequest merchantRequest) {
        Map<String, Object> requestMap;
        return (merchantRequest == null || (requestMap = merchantRequest.getRequestMap()) == null || !requestMap.containsKey("token_name")) ? false : true;
    }
}
