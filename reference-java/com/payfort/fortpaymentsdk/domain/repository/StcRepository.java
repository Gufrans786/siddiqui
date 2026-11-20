package com.payfort.fortpaymentsdk.domain.repository;

import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import io.reactivex.Observable;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\t"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;", "", "generateOtp", "Lio/reactivex/Observable;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "body", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "getCustomerAccount", "stcPurchase", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface StcRepository {
    Observable<SdkResponse> generateOtp(SdkRequest body);

    Observable<SdkResponse> getCustomerAccount(SdkRequest body);

    Observable<SdkResponse> stcPurchase(SdkRequest body);
}
