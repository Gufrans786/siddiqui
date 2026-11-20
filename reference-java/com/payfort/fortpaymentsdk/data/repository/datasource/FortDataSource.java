package com.payfort.fortpaymentsdk.data.repository.datasource;

import com.google.gson.JsonObject;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import io.reactivex.Observable;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\u0011\u001a\u00020\u000bH&J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0011\u001a\u00020\u000bH&¨\u0006\u0013"}, d2 = {"Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;", "", "complete3ds", "Lio/reactivex/Observable;", "Lcom/google/gson/JsonObject;", "sdkToken", "", "responseToken", "generateOtp", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "body", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "getCustomerAccount", "logData", "pay", "stcPurchase", "validate", "request", "validateCardNumber", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface FortDataSource {
    Observable<JsonObject> complete3ds(String sdkToken, String responseToken);

    Observable<SdkResponse> generateOtp(SdkRequest body);

    Observable<SdkResponse> getCustomerAccount(SdkRequest body);

    Observable<SdkResponse> logData(SdkRequest body);

    Observable<SdkResponse> pay(SdkRequest body);

    Observable<SdkResponse> stcPurchase(SdkRequest body);

    Observable<SdkResponse> validate(SdkRequest request);

    Observable<String> validateCardNumber(SdkRequest request);
}
