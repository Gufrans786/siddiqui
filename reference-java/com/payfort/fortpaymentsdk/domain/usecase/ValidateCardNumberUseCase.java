package com.payfort.fortpaymentsdk.domain.usecase;

import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.StringResult;
import com.payfort.fortpaymentsdk.domain.repository.FortRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateCardNumberUseCase;", "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "Lio/reactivex/Observable;", "Lcom/payfort/fortpaymentsdk/domain/model/StringResult;", "fortRepository", "Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;", "(Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;)V", "execute", "request", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ValidateCardNumberUseCase implements UseCase<SdkRequest, Observable<StringResult>> {
    private final FortRepository fortRepository;

    public ValidateCardNumberUseCase(FortRepository fortRepository) {
        Intrinsics.checkNotNullParameter(fortRepository, "fortRepository");
        this.fortRepository = fortRepository;
    }

    @Override
    public Observable<StringResult> execute(SdkRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Observable<String> observableValidateCardNumber = this.fortRepository.validateCardNumber(request);
        final AnonymousClass1 anonymousClass1 = new Function1<String, StringResult>() {
            @Override
            public final StringResult invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new StringResult.Success(it);
            }
        };
        Observable<R> map = observableValidateCardNumber.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ValidateCardNumberUseCase.execute$lambda$0(anonymousClass1, obj);
            }
        });
        final AnonymousClass2 anonymousClass2 = new Function1<Throwable, StringResult>() {
            @Override
            public final StringResult invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new StringResult.Failure(it);
            }
        };
        Observable<StringResult> observableStartWith = map.onErrorReturn(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ValidateCardNumberUseCase.execute$lambda$1(anonymousClass2, obj);
            }
        }).startWith(StringResult.Loading.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(observableStartWith, "fortRepository.validateC…ith(StringResult.Loading)");
        return observableStartWith;
    }

    public static final StringResult execute$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (StringResult) tmp0.invoke(obj);
    }

    public static final StringResult execute$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (StringResult) tmp0.invoke(obj);
    }
}
