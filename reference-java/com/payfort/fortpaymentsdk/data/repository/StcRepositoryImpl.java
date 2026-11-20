package com.payfort.fortpaymentsdk.data.repository;

import com.payfort.fortpaymentsdk.data.repository.datasource.FortDataSource;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.repository.StcRepository;
import io.reactivex.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;", "Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;", "dataSource", "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;", "(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V", "generateOtp", "Lio/reactivex/Observable;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "body", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "getCustomerAccount", "stcPurchase", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StcRepositoryImpl implements StcRepository {
    private final FortDataSource dataSource;

    public StcRepositoryImpl(FortDataSource dataSource) {
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        this.dataSource = dataSource;
    }

    @Override
    public Observable<SdkResponse> generateOtp(SdkRequest body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return this.dataSource.generateOtp(body);
    }

    @Override
    public Observable<SdkResponse> stcPurchase(SdkRequest body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return this.dataSource.stcPurchase(body);
    }

    @Override
    public Observable<SdkResponse> getCustomerAccount(SdkRequest body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return this.dataSource.getCustomerAccount(body);
    }
}
