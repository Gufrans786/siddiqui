package com.payfort.fortpaymentsdk.data.network;

import com.payfort.fortpaymentsdk.data.repository.datasource.FortEndpoint;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.converter.scalars.ScalarsConverterFactory;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/payfort/fortpaymentsdk/data/network/RetrofitClient;", "", "()V", "CONNECT_TIMEOUT_SECONDS", "", "instance", "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;", "getInstance", "baseUrl", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RetrofitClient {
    private static final long CONNECT_TIMEOUT_SECONDS = 30000;
    public static final RetrofitClient INSTANCE = new RetrofitClient();
    private static FortEndpoint instance;

    private RetrofitClient() {
    }

    public final FortEndpoint getInstance(String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        FortEndpoint fortEndpoint = (FortEndpoint) new Retrofit.Builder().baseUrl(baseUrl).client(new OkHttpClient.Builder().writeTimeout(30000L, TimeUnit.SECONDS).readTimeout(30000L, TimeUnit.SECONDS).connectTimeout(30000L, TimeUnit.SECONDS).build()).addConverterFactory(ScalarsConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create()).build().create(FortEndpoint.class);
        instance = fortEndpoint;
        Intrinsics.checkNotNull(fortEndpoint);
        return fortEndpoint;
    }
}
