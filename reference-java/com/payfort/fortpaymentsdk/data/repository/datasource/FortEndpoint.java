package com.payfort.fortpaymentsdk.data.repository.datasource;

import com.google.gson.JsonObject;
import com.payfort.fortpaymentsdk.constants.Constants;
import io.reactivex.Observable;
import java.util.HashMap;
import kotlin.Metadata;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.POST;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J4\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\bH'J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\n0\u0003H'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\b\b\u0001\u0010\f\u001a\u00020\u0007H'J\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\b\b\u0001\u0010\f\u001a\u00020\u0007H'J\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\b\b\u0001\u0010\f\u001a\u00020\u0007H'¨\u0006\u000f"}, d2 = {"Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;", "", "complete3dsFlow", "Lio/reactivex/Observable;", "Lcom/google/gson/JsonObject;", "hashMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getSslCertificate", "Lretrofit2/Response;", "logData", "bodyMap", "processData", "validateData", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface FortEndpoint {
    @POST("/FortAPI/sdk/response")
    Observable<JsonObject> complete3dsFlow(@Body HashMap<String, String> hashMap);

    @POST("/FortAPI/sdk/validate")
    Observable<Response<String>> getSslCertificate();

    @POST("/FortAPI/sdk/logging")
    Observable<String> logData(@Body String bodyMap);

    @POST(Constants.FORT_URI.PROCESS_TNX_URL)
    Observable<String> processData(@Body String bodyMap);

    @POST(Constants.FORT_URI.VALIDATE_URL)
    Observable<String> validateData(@Body String bodyMap);
}
