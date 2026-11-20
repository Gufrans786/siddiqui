.class public final Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;
.super Ljava/lang/Object;
.source "InjectionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\r\u0010\r\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;",
        "",
        "()V",
        "gson",
        "Lcom/google/gson/Gson;",
        "provideCompleteThreeDsUseViewModelFactory",
        "Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModelFactory;",
        "environment",
        "",
        "provideFortApi",
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;",
        "provideFortRepository",
        "Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;",
        "provideGson",
        "provideGson$fortpayment_release",
        "provideStcRepository",
        "Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;",
        "provideStcViewModelFactory",
        "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;",
        "provideValidateViewModel",
        "Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;",
        "provideValidateViewModelFactory",
        "Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModelFactory;",
        "fortpayment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

.field private static gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;-><init>()V

    sput-object v0, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final provideCompleteThreeDsUseViewModelFactory(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModelFactory;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "environment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModelFactory;

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase;

    sget-object v2, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-virtual {v2, p0}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;)V

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModelFactory;-><init>(Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase;)V

    return-object v0
.end method

.method private final provideFortApi(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;
    .locals 2

    .line 54
    sget-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->Companion:Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;

    invoke-virtual {v0, p1}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;->setEnvironment(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;

    sget-object v1, Lcom/payfort/fortpaymentsdk/data/network/RetrofitClient;->INSTANCE:Lcom/payfort/fortpaymentsdk/data/network/RetrofitClient;

    invoke-virtual {v1, p1}, Lcom/payfort/fortpaymentsdk/data/network/RetrofitClient;->getInstance(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;)V

    check-cast v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    return-object v0
.end method

.method public static final provideStcViewModelFactory(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "environment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;

    sget-object v1, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-virtual {v1, p0}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideStcRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V

    return-object v0
.end method

.method public static final provideValidateViewModel(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "environment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;

    sget-object v2, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-virtual {v2, p0}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;)V

    check-cast v1, Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;-><init>(Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;)V

    return-object v0
.end method

.method public static final provideValidateViewModelFactory(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModelFactory;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "environment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModelFactory;

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;

    sget-object v2, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-virtual {v2, p0}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;)V

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModelFactory;-><init>(Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;)V

    return-object v0
.end method


# virtual methods
.method public final provideFortRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;

    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortApi(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;

    return-object v0
.end method

.method public final provideGson$fortpayment_release()Lcom/google/gson/Gson;
    .locals 1

    .line 60
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public final provideStcRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;

    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortApi(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    return-object v0
.end method
