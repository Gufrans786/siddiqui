package com.payfort.fortpaymentsdk.presentation.viewmodel;

import android.content.Context;
import androidx.lifecycle.ViewModel;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.callbacks.FortPayInternalCallback;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.MerchantToken;
import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.usecase.PayUseCase;
import com.payfort.fortpaymentsdk.domain.usecase.ValidateDataUseCase;
import com.payfort.fortpaymentsdk.exceptions.InvalidCvcLengthException;
import com.payfort.fortpaymentsdk.exceptions.MerchantTokenNoExistException;
import com.payfort.fortpaymentsdk.handlers.CreatorHandler;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.utils.ValidationUtils;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J.\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J \u0010\u0013\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ4\u0010\u0013\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;", "Landroidx/lifecycle/ViewModel;", "validateDataUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;", "payUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;", "(Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;)V", "handleResult", "", "it", "Lcom/payfort/fortpaymentsdk/domain/model/Result;", "fortPayCallback", "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "isFormWithoutFields", "", "validateAndPay", "prepareSdkRequest", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "isValidatedBefore", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PayViewModel extends ViewModel {
    private static final String KEY_CARD_SECURITY_CODE = "card_security_code";
    public static final String KEY_TOKEN_NAME = "token_name";
    private final PayUseCase payUseCase;
    private final ValidateDataUseCase validateDataUseCase;

    public PayViewModel(ValidateDataUseCase validateDataUseCase, PayUseCase payUseCase) {
        Intrinsics.checkNotNullParameter(validateDataUseCase, "validateDataUseCase");
        Intrinsics.checkNotNullParameter(payUseCase, "payUseCase");
        this.validateDataUseCase = validateDataUseCase;
        this.payUseCase = payUseCase;
    }

    public final boolean isFormWithoutFields(FortRequest fortRequest) {
        Map<String, Object> requestMap;
        if (fortRequest == null || (requestMap = fortRequest.getRequestMap()) == null || !requestMap.containsKey("card_security_code")) {
            return false;
        }
        Map<String, Object> requestMap2 = fortRequest.getRequestMap();
        Boolean boolValueOf = requestMap2 != null ? Boolean.valueOf(requestMap2.containsKey("token_name")) : null;
        Intrinsics.checkNotNull(boolValueOf);
        return boolValueOf.booleanValue();
    }

    public static void validateAndPay$default(PayViewModel payViewModel, Context context, FortRequest fortRequest, SdkRequest sdkRequest, boolean z, FortPayInternalCallback fortPayInternalCallback, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        payViewModel.validateAndPay(context, fortRequest, sdkRequest, z, fortPayInternalCallback);
    }

    public final void validateAndPay(final Context context, final FortRequest fortRequest, final SdkRequest prepareSdkRequest, boolean isValidatedBefore, final FortPayInternalCallback fortPayCallback) {
        Observable observableFlatMap;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(prepareSdkRequest, "prepareSdkRequest");
        SdkRequest sdkRequestCreateSdkRequest = CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest);
        final Function1<Result, ObservableSource<? extends Result>> function1 = new Function1<Result, ObservableSource<? extends Result>>() {
            {
                super(1);
            }

            @Override
            public final ObservableSource<? extends Result> invoke(Result it) {
                Observable<Result> observableJust;
                Intrinsics.checkNotNullParameter(it, "it");
                if (!(it instanceof Result.Success)) {
                    Observable observableJust2 = Observable.just(it);
                    Intrinsics.checkNotNullExpressionValue(observableJust2, "just(it)");
                    return observableJust2;
                }
                if (((Result.Success) it).getResponse().isSuccess()) {
                    observableJust = this.this$0.payUseCase.execute(prepareSdkRequest);
                } else {
                    observableJust = Observable.just(it);
                    Intrinsics.checkNotNullExpressionValue(observableJust, "just(it)");
                }
                return observableJust;
            }
        };
        if (isValidatedBefore) {
            observableFlatMap = this.payUseCase.execute(prepareSdkRequest);
        } else {
            observableFlatMap = this.validateDataUseCase.execute(sdkRequestCreateSdkRequest).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return PayViewModel.validateAndPay$lambda$0(function1, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(observableFlatMap, "validateDataUseCase.exec…equest).flatMap(function)");
        }
        Observable observableObserveOn = observableFlatMap.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function2 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                PayViewModel.this.handleResult(result, fortPayCallback, context, fortRequest);
            }
        };
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                PayViewModel.validateAndPay$lambda$1(function2, obj);
            }
        };
        final Function1<Throwable, Unit> function3 = new Function1<Throwable, Unit>() {
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
                FortPayInternalCallback fortPayInternalCallback = fortPayCallback;
                if (fortPayInternalCallback != null) {
                    fortPayInternalCallback.onFailure(sdkResponseConvertThrowableToSdkResponse);
                }
            }
        };
        observableObserveOn.subscribe(consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                PayViewModel.validateAndPay$lambda$2(function3, obj);
            }
        });
    }

    public static final ObservableSource validateAndPay$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final void validateAndPay$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void validateAndPay$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void validateAndPay(final Context context, final FortRequest fortRequest, final FortPayInternalCallback fortPayCallback) {
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        Map<String, Object> requestMap = fortRequest.getRequestMap();
        final String string = (requestMap == null || (obj = requestMap.get("card_security_code")) == null) ? null : obj.toString();
        if (isFormWithoutFields(fortRequest)) {
            fortRequest.getRequestMap().remove("card_security_code");
        }
        SdkRequest sdkRequestCreateSdkRequest = CreatorHandler.INSTANCE.createSdkRequest(context, fortRequest);
        final String strValueOf = String.valueOf(Utils.INSTANCE.getParamValue(fortRequest.getRequestMap(), Constants.FORT_PARAMS.SDK_TOKEN));
        final Function1<Result, Observable<Result>> function1 = new Function1<Result, Observable<Result>>() {
            {
                super(1);
            }

            @Override
            public final Observable<Result> invoke(Result it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (!(it instanceof Result.Success)) {
                    return Observable.just(it);
                }
                Result.Success success = (Result.Success) it;
                if (success.getResponse().isSuccess()) {
                    MerchantToken merchantToken = success.getResponse().getMerchantToken();
                    if (merchantToken.getMaskedCardNumber() != null) {
                        CardBrand cardBrandFromCodeOrNull = CardBrand.INSTANCE.fromCodeOrNull(merchantToken.getPaymentOptionName());
                        String str = string;
                        if (str == null) {
                            return null;
                        }
                        PayViewModel payViewModel = this;
                        Context context2 = context;
                        String str2 = strValueOf;
                        if (ValidationUtils.INSTANCE.isDigitsOnlyKotlin$fortpayment_release(str) && cardBrandFromCodeOrNull != null && cardBrandFromCodeOrNull.getDefaultCvcLength() == str.toString().length()) {
                            return payViewModel.payUseCase.execute(CreatorHandler.INSTANCE.createSdkRequestFromMerchantToken(context2, str2, merchantToken, str));
                        }
                        return Observable.just(new Result.Failure(new InvalidCvcLengthException(cardBrandFromCodeOrNull)));
                    }
                    return Observable.just(new Result.Failure(new MerchantTokenNoExistException()));
                }
                return Observable.just(it);
            }
        };
        Observable observableObserveOn = this.validateDataUseCase.execute(sdkRequestCreateSdkRequest).flatMap(new Function() {
            @Override
            public final Object apply(Object obj2) {
                return PayViewModel.validateAndPay$lambda$3(function1, obj2);
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function2 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                if ((result instanceof Result.Failure) || (result instanceof Result.Success)) {
                    Map<String, Object> requestMap2 = fortRequest.getRequestMap();
                    Intrinsics.checkNotNullExpressionValue(requestMap2, "fortRequest.requestMap");
                    requestMap2.put("card_security_code", string);
                }
                this.handleResult(result, fortPayCallback, context, fortRequest);
            }
        };
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj2) {
                PayViewModel.validateAndPay$lambda$4(function2, obj2);
            }
        };
        final Function1<Throwable, Unit> function3 = new Function1<Throwable, Unit>() {
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
                FortPayInternalCallback fortPayInternalCallback = fortPayCallback;
                if (fortPayInternalCallback != null) {
                    fortPayInternalCallback.onFailure(sdkResponseConvertThrowableToSdkResponse);
                }
            }
        };
        observableObserveOn.subscribe(consumer, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                PayViewModel.validateAndPay$lambda$5(function3, obj2);
            }
        });
    }

    public static final ObservableSource validateAndPay$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final void validateAndPay$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void validateAndPay$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void handleResult(Result it, FortPayInternalCallback fortPayCallback, Context context, FortRequest fortRequest) {
        if (it instanceof Result.Success) {
            if (fortPayCallback != null) {
                fortPayCallback.onSuccess(((Result.Success) it).getResponse());
            }
        } else {
            if (it instanceof Result.Failure) {
                SdkResponse sdkResponseConvertThrowableToSdkResponse = CreatorHandler.INSTANCE.convertThrowableToSdkResponse(context, ((Result.Failure) it).getThrowable(), fortRequest);
                if (fortPayCallback != null) {
                    fortPayCallback.onFailure(sdkResponseConvertThrowableToSdkResponse);
                    return;
                }
                return;
            }
            if (!Intrinsics.areEqual(it, Result.Loading.INSTANCE) || fortPayCallback == null) {
                return;
            }
            fortPayCallback.startLoading();
        }
    }
}
