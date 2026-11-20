.class public final Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;
.super Ljava/lang/Object;
.source "FortDataSourceImpl.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J$\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J*\u0010\u0016\u001a\n \u0017*\u0004\u0018\u00010\u000c0\u000c2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;",
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;",
        "fortEndpoint",
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;",
        "(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;)V",
        "complete3ds",
        "Lio/reactivex/Observable;",
        "Lcom/google/gson/JsonObject;",
        "sdkToken",
        "",
        "responseToken",
        "generateOtp",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "request",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "getCustomerAccount",
        "getEncryptedData",
        "publicKey",
        "Ljava/security/interfaces/RSAPublicKey;",
        "body",
        "secretKeySpec",
        "Ljavax/crypto/spec/SecretKeySpec;",
        "handleResponse",
        "kotlin.jvm.PlatformType",
        "it",
        "logData",
        "pay",
        "stcPurchase",
        "validate",
        "validateCardNumber",
        "Companion",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$Companion;

.field private static final aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

.field private static final gson:Lcom/google/gson/Gson;

.field private static rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private final fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;


# direct methods
.method public static synthetic $r8$lambda$7UQdjmVLUnhRE0ql-6xsOZ_JZ4I(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->pay$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cn8fC6-7YaU4f_VDPsODapDjsMc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->logData$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DPtj17f6BQpH22lOVJzec8boZsY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->logData$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G5Up8HypqBY446oqiXGspBtsVjQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->validate$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Km7CffB4GByc1LQehrRXcei3GHU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->pay$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MEOsfP7jnRLeESQAYk_P-QIN5b4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->validateCardNumber$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MnCS8KyG9YGvABSdr7qunvDvxn8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->validateCardNumber$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PIOPCOIoeixlF3bq8l-1v_2SI8s(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getCustomerAccount$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UDZqDQntoy0fkFMSpLExciJCVls(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->generateOtp$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XA3os90rWxkofLT9DcgEinOxa-w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->pay$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$blaSpbx9N1JsC5g-helQo8Hsj6Y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->validateCardNumber$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$em8rH0ylwB7FVQE8ezaKb3VxWr4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->stcPurchase$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$esxHFm0FKMYfLi6W8IZ6nsWgU88(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->validate$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f3e-Vl39oRsT35SIY3Y29-nOOgA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getCustomerAccount$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g-xpIyRklL6q0vqH96oW1OUY9NE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->stcPurchase$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jdAAeJjyLf8v5ADyIWGtHOHDJrA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->stcPurchase$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lGZ1fpY62AiPpOT2GB7u19IMnbQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->generateOtp$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mmh7bPwGb_C_jMNAepZ-C0O6oJg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->logData$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xi7iTjUkbHTn_tHEQzH6gvD9HPg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getCustomerAccount$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zFDlev7RToWf2BiEtr28qJwKM_I(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->generateOtp$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->Companion:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$Companion;

    .line 26
    new-instance v0, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;-><init>()V

    sput-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    .line 27
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;)V
    .locals 1

    const-string v0, "fortEndpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    return-void
.end method

.method public static final synthetic access$getAesCipherManager$cp()Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    return-object v0
.end method

.method public static final synthetic access$getEncryptedData(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFortEndpoint$p(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;)Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    return-object p0
.end method

.method public static final synthetic access$getGson$cp()Lcom/google/gson/Gson;
    .locals 1

    .line 24
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic access$getRsaPublicKey$cp()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 24
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method public static final synthetic access$handleResponse(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->handleResponse(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setRsaPublicKey$cp(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method private static final generateOtp$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final generateOtp$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final generateOtp$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final getCustomerAccount$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final getCustomerAccount$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final getCustomerAccount$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private final getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;
    .locals 2

    .line 196
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2

    .line 195
    invoke-static {p2, p1, p3}, Lcom/payfort/fortpaymentsdk/security/DataSecurityService;->encryptRequestData(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "encryptRequestData(\n    \u2026  secretKeySpec\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final handleResponse(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 2

    .line 211
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getTechnicalProblemResponse(Ljava/lang/String;Ljava/util/Map;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 214
    :catch_0
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    check-cast p3, Ljava/security/Key;

    invoke-virtual {v0, p1, p3}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->decryptMsg(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object p1

    .line 215
    sget-object p3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->collectResponse(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/util/Map;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    return-object p1
.end method

.method private static final logData$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final logData$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final logData$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final pay$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final pay$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final pay$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final stcPurchase$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final stcPurchase$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final stcPurchase$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final validate$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final validate$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private static final validateCardNumber$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final validateCardNumber$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final validateCardNumber$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public complete3ds(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    const-string v0, "sdkToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string v1, "sdk_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string p1, "response_token"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->complete3dsFlow(Ljava/util/HashMap;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public generateOtp(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->generateAESKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    const-string v2, "override fun generateOtp\u2026Spec)\n            }\n    }"

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->getSslCertificate()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$generateOtp$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$generateOtp$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v4, v3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 138
    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$generateOtp$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$generateOtp$2;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda9;

    invoke-direct {p1, v3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-direct {p0, v1, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->processData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 142
    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$generateOtp$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$generateOtp$3;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda10;

    invoke-direct {p1, v3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCustomerAccount(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->generateAESKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->getSslCertificate()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda18;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 172
    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$2;

    invoke-direct {v2, v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$2;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda19;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda19;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun getCustomer\u2026tMap)\n            }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-direct {p0, v1, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->processData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 177
    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;

    invoke-direct {v2, v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "request: SdkRequest): Ob\u2026requestMap)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public logData(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->generateAESKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    const-string v2, "override fun logData(req\u2026pec)\n\n            }\n    }"

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->getSslCertificate()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$logData$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$logData$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 112
    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$logData$2;

    invoke-direct {v3, v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$logData$2;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda6;

    invoke-direct {p1, v3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-direct {p0, v1, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->logData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 117
    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$logData$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$logData$3;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda7;

    invoke-direct {p1, v3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public pay(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->generateAESKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->getSslCertificate()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$pay$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$pay$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$pay$2;

    invoke-direct {v2, v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$pay$2;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda11;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun pay(request\u2026tMap)\n            }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-direct {p0, v1, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->processData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$pay$3;

    invoke-direct {v2, v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$pay$3;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda12;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "request: SdkRequest): Ob\u2026requestMap)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public stcPurchase(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->generateAESKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->getSslCertificate()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$stcPurchase$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$stcPurchase$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 154
    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$stcPurchase$2;

    invoke-direct {v2, v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$stcPurchase$2;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda14;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun stcPurchase\u2026tMap)\n            }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-direct {p0, v1, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->processData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 159
    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$stcPurchase$3;

    invoke-direct {v2, v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$stcPurchase$3;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda15;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "request: SdkRequest): Ob\u2026requestMap)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public validate(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->generateAESKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->getSslCertificate()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validate$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validate$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validate$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validate$2;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda17;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun validate(re\u2026eySpec)\n        }\n\n\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public validateCardNumber(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->aesCipherManager:Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->generateAESKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->getSslCertificate()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    new-instance v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$2;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$2;-><init>(Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun validateCar\u2026ptMsg\n            }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->fortEndpoint:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    invoke-direct {p0, v1, p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getEncryptedData(Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->validateData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    new-instance v1, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$3;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$3;-><init>(Ljavax/crypto/spec/SecretKeySpec;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "secretKeySpec = aesCiphe\u2026 decryptMsg\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
