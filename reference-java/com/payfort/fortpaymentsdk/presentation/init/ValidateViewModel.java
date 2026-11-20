package com.payfort.fortpaymentsdk.presentation.init;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.callbacks.PayFortCallback;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.usecase.UseCase;
import com.payfort.fortpaymentsdk.handlers.CreatorHandler;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003¢\u0006\u0002\u0010\u0007J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;", "Landroidx/lifecycle/ViewModel;", "validateDataUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "Lio/reactivex/Observable;", "Lcom/payfort/fortpaymentsdk/domain/model/Result;", "(Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;)V", "_result", "Landroidx/lifecycle/MutableLiveData;", "result", "Landroidx/lifecycle/LiveData;", "getResult", "()Landroidx/lifecycle/LiveData;", "validateRequest", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "callback", "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ValidateViewModel extends ViewModel {
    private MutableLiveData<Result> _result;
    private final UseCase<SdkRequest, Observable<Result>> validateDataUseCase;

    public ValidateViewModel(UseCase<SdkRequest, Observable<Result>> validateDataUseCase) {
        Intrinsics.checkNotNullParameter(validateDataUseCase, "validateDataUseCase");
        this.validateDataUseCase = validateDataUseCase;
        this._result = new MutableLiveData<>();
    }

    public final LiveData<Result> getResult() {
        return this._result;
    }

    public final void validateRequest(Context context, FortRequest fortRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        Observable<Result> observableObserveOn = this.validateDataUseCase.execute(CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function1 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                ValidateViewModel.this._result.setValue(result);
            }
        };
        Consumer<? super Result> consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ValidateViewModel.validateRequest$lambda$0(function1, obj);
            }
        };
        final Function1<Throwable, Unit> function2 = new Function1<Throwable, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            public final void invoke2(Throwable it) {
                MutableLiveData mutableLiveData = ValidateViewModel.this._result;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                mutableLiveData.setValue(new Result.Failure(it));
            }
        };
        observableObserveOn.subscribe(consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ValidateViewModel.validateRequest$lambda$1(function2, obj);
            }
        });
    }

    public static final void validateRequest$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void validateRequest$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void validateRequest(final Context context, final FortRequest fortRequest, final PayFortCallback callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        Observable<Result> observableObserveOn = this.validateDataUseCase.execute(CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function1 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                if (Intrinsics.areEqual(result, Result.Loading.INSTANCE)) {
                    PayFortCallback payFortCallback = callback;
                    if (payFortCallback != null) {
                        payFortCallback.startLoading();
                        return;
                    }
                    return;
                }
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    if (success.getResponse().isSuccess()) {
                        PayFortCallback payFortCallback2 = callback;
                        if (payFortCallback2 != null) {
                            Map<String, Object> requestMap = fortRequest.getRequestMap();
                            Intrinsics.checkNotNullExpressionValue(requestMap, "fortRequest.requestMap");
                            Map<String, ? extends Object> responseMap = success.getResponse().getResponseMap();
                            Intrinsics.checkNotNullExpressionValue(responseMap, "it.response.responseMap");
                            payFortCallback2.onSuccess(requestMap, responseMap);
                            return;
                        }
                        return;
                    }
                    PayFortCallback payFortCallback3 = callback;
                    if (payFortCallback3 != null) {
                        Map<String, Object> requestMap2 = fortRequest.getRequestMap();
                        Intrinsics.checkNotNullExpressionValue(requestMap2, "fortRequest.requestMap");
                        Map<String, ? extends Object> responseMap2 = success.getResponse().getResponseMap();
                        Intrinsics.checkNotNullExpressionValue(responseMap2, "it.response.responseMap");
                        payFortCallback3.onFailure(requestMap2, responseMap2);
                        return;
                    }
                    return;
                }
                if (result instanceof Result.Failure) {
                    SdkResponse sdkResponseConvertThrowableToSdkResponse = CreatorHandler.INSTANCE.convertThrowableToSdkResponse(context, ((Result.Failure) result).getThrowable(), fortRequest);
                    PayFortCallback payFortCallback4 = callback;
                    if (payFortCallback4 != null) {
                        Map<String, Object> requestMap3 = fortRequest.getRequestMap();
                        Intrinsics.checkNotNullExpressionValue(requestMap3, "fortRequest.requestMap");
                        Map<String, ? extends Object> responseMap3 = sdkResponseConvertThrowableToSdkResponse.getResponseMap();
                        Intrinsics.checkNotNullExpressionValue(responseMap3, "sdkResponse.responseMap");
                        payFortCallback4.onFailure(requestMap3, responseMap3);
                    }
                }
            }
        };
        Consumer<? super Result> consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ValidateViewModel.validateRequest$lambda$2(function1, obj);
            }
        };
        final Function1<Throwable, Unit> function2 = new Function1<Throwable, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            public final void invoke2(Throwable it) {
                CreatorHandler creatorHandler = CreatorHandler.INSTANCE;
                Context context2 = context;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                SdkResponse sdkResponseConvertThrowableToSdkResponse = creatorHandler.convertThrowableToSdkResponse(context2, it, fortRequest);
                PayFortCallback payFortCallback = callback;
                if (payFortCallback != null) {
                    Map<String, Object> requestMap = fortRequest.getRequestMap();
                    Intrinsics.checkNotNullExpressionValue(requestMap, "fortRequest.requestMap");
                    Map<String, ? extends Object> responseMap = sdkResponseConvertThrowableToSdkResponse.getResponseMap();
                    Intrinsics.checkNotNullExpressionValue(responseMap, "sdkResponse.responseMap");
                    payFortCallback.onFailure(requestMap, responseMap);
                }
            }
        };
        observableObserveOn.subscribe(consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ValidateViewModel.validateRequest$lambda$3(function2, obj);
            }
        });
    }

    public static final void validateRequest$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void validateRequest$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
