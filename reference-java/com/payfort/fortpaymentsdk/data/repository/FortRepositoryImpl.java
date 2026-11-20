package com.payfort.fortpaymentsdk.data.repository;

import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.payfort.fortpaymentsdk.data.repository.datasource.FortDataSource;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.domain.repository.FortRepository;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.MapUtils;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\f\u001a\u00020\rH\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;", "Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;", "dataSource", "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;", "(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V", "complete3ds", "Lio/reactivex/Observable;", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "sdkToken", "", "responseToken", "convertJsonObjectToSdkResponse", "it", "Lcom/google/gson/JsonObject;", "logData", "body", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "processData", "validateCardNumber", "validateData", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FortRepositoryImpl implements FortRepository {
    private final FortDataSource dataSource;

    public FortRepositoryImpl(FortDataSource dataSource) {
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        this.dataSource = dataSource;
    }

    @Override
    public Observable<SdkResponse> validateData(SdkRequest body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return this.dataSource.validate(body);
    }

    @Override
    public Observable<String> validateCardNumber(SdkRequest body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return this.dataSource.validateCardNumber(body);
    }

    @Override
    public Observable<SdkResponse> processData(SdkRequest body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return this.dataSource.pay(body);
    }

    @Override
    public Observable<SdkResponse> logData(SdkRequest body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return this.dataSource.logData(body);
    }

    public static final SdkResponse complete3ds$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    @Override
    public Observable<SdkResponse> complete3ds(String sdkToken, String responseToken) {
        Intrinsics.checkNotNullParameter(sdkToken, "sdkToken");
        Intrinsics.checkNotNullParameter(responseToken, "responseToken");
        Observable<JsonObject> observableComplete3ds = this.dataSource.complete3ds(sdkToken, responseToken);
        final Function1<JsonObject, SdkResponse> function1 = new Function1<JsonObject, SdkResponse>() {
            {
                super(1);
            }

            @Override
            public final SdkResponse invoke(JsonObject it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return FortRepositoryImpl.this.convertJsonObjectToSdkResponse(it);
            }
        };
        Observable map = observableComplete3ds.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortRepositoryImpl.complete3ds$lambda$0(function1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "override fun complete3ds…ponse(it)\n        }\n    }");
        return map;
    }

    public final SdkResponse convertJsonObjectToSdkResponse(JsonObject it) {
        return MapUtils.collectResponseFromHashMap((HashMap) InjectionUtils.INSTANCE.provideGson$fortpayment_release().fromJson(it, new TypeToken<HashMap<String, Object>>() {
        }.getType()));
    }
}
