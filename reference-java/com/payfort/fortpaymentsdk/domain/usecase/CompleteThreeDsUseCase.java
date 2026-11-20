package com.payfort.fortpaymentsdk.domain.usecase;

import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.model.ThreeDsRequest;
import com.payfort.fortpaymentsdk.domain.repository.FortRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase;", "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;", "Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;", "Lio/reactivex/Observable;", "Lcom/payfort/fortpaymentsdk/domain/model/Result;", "fortRepository", "Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;", "(Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;)V", "execute", "request", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CompleteThreeDsUseCase implements UseCase<ThreeDsRequest, Observable<Result>> {
    private final FortRepository fortRepository;

    public CompleteThreeDsUseCase(FortRepository fortRepository) {
        Intrinsics.checkNotNullParameter(fortRepository, "fortRepository");
        this.fortRepository = fortRepository;
    }

    @Override
    public Observable<Result> execute(ThreeDsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Observable<SdkResponse> observableComplete3ds = this.fortRepository.complete3ds(request.getSdkToken(), request.getResponseToken());
        final AnonymousClass1 anonymousClass1 = new Function1<SdkResponse, Result>() {
            @Override
            public final Result invoke(SdkResponse it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new Result.Success(it);
            }
        };
        Observable<R> map = observableComplete3ds.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return CompleteThreeDsUseCase.execute$lambda$0(anonymousClass1, obj);
            }
        });
        final AnonymousClass2 anonymousClass2 = new Function1<Throwable, Result>() {
            @Override
            public final Result invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new Result.Failure(it);
            }
        };
        Observable<Result> observableStartWith = map.onErrorReturn(new Function() {
            @Override
            public final Object apply(Object obj) {
                return CompleteThreeDsUseCase.execute$lambda$1(anonymousClass2, obj);
            }
        }).startWith(Result.Loading.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(observableStartWith, "fortRepository.complete3…startWith(Result.Loading)");
        return observableStartWith;
    }

    public static final Result execute$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    public static final Result execute$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }
}
