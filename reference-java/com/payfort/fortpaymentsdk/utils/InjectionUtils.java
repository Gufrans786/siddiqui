package com.payfort.fortpaymentsdk.utils;

import com.google.gson.Gson;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.data.network.RetrofitClient;
import com.payfort.fortpaymentsdk.data.repository.FortRepositoryImpl;
import com.payfort.fortpaymentsdk.data.repository.StcRepositoryImpl;
import com.payfort.fortpaymentsdk.data.repository.datasource.FortDataSource;
import com.payfort.fortpaymentsdk.data.repository.datasource.FortDataSourceImpl;
import com.payfort.fortpaymentsdk.domain.repository.FortRepository;
import com.payfort.fortpaymentsdk.domain.repository.StcRepository;
import com.payfort.fortpaymentsdk.domain.usecase.CompleteThreeDsUseCase;
import com.payfort.fortpaymentsdk.domain.usecase.ValidateDataUseCase;
import com.payfort.fortpaymentsdk.presentation.init.ValidateViewModel;
import com.payfort.fortpaymentsdk.presentation.init.ValidateViewModelFactory;
import com.payfort.fortpaymentsdk.presentation.stc.generate_otp.StcViewModelFactory;
import com.payfort.fortpaymentsdk.presentation.threeds.ThreeDsViewModelFactory;
import com.payfort.fortpaymentsdk.worker.SendLogsWorker;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\r\u0010\r\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;", "", "()V", "gson", "Lcom/google/gson/Gson;", "provideCompleteThreeDsUseViewModelFactory", "Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModelFactory;", Constants.EXTRAS.SDK_ENVIRONMENT, "", "provideFortApi", "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;", "provideFortRepository", "Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;", "provideGson", "provideGson$fortpayment_release", "provideStcRepository", "Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;", "provideStcViewModelFactory", "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;", "provideValidateViewModel", "Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;", "provideValidateViewModelFactory", "Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModelFactory;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class InjectionUtils {
    public static final InjectionUtils INSTANCE = new InjectionUtils();
    private static Gson gson = new Gson();

    private InjectionUtils() {
    }

    @JvmStatic
    public static final ValidateViewModel provideValidateViewModel(String environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        return new ValidateViewModel(new ValidateDataUseCase(INSTANCE.provideFortRepository(environment)));
    }

    @JvmStatic
    public static final ValidateViewModelFactory provideValidateViewModelFactory(String environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        return new ValidateViewModelFactory(new ValidateDataUseCase(INSTANCE.provideFortRepository(environment)));
    }

    public final FortRepository provideFortRepository(String environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        return new FortRepositoryImpl(provideFortApi(environment));
    }

    public final StcRepository provideStcRepository(String environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        return new StcRepositoryImpl(provideFortApi(environment));
    }

    @JvmStatic
    public static final ThreeDsViewModelFactory provideCompleteThreeDsUseViewModelFactory(String environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        return new ThreeDsViewModelFactory(new CompleteThreeDsUseCase(INSTANCE.provideFortRepository(environment)));
    }

    @JvmStatic
    public static final StcViewModelFactory provideStcViewModelFactory(String environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        return new StcViewModelFactory(INSTANCE.provideStcRepository(environment));
    }

    private final FortDataSource provideFortApi(String environment) {
        SendLogsWorker.INSTANCE.setEnvironment(environment);
        return new FortDataSourceImpl(RetrofitClient.INSTANCE.getInstance(environment));
    }

    public final Gson provideGson$fortpayment_release() {
        return gson;
    }
}
