.class final Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FortDataSourceImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->validateCardNumber(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lretrofit2/Response<",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a*\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0014\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/ObservableSource;",
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "Lretrofit2/Response;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $request:Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

.field final synthetic $secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->this$0:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->$request:Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->$secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    sget-object v0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->Companion:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$Companion;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/security/DataSecurityService;->getPublicKey(Ljava/util/List;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->access$setRsaPublicKey$cp(Ljava/security/interfaces/RSAPublicKey;)V

    .line 63
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->this$0:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->access$getFortEndpoint$p(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;)Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;

    move-result-object p1

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->this$0:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;

    invoke-static {}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->access$getRsaPublicKey$cp()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->$request:Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->$secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0, v1, v2, v3}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->access$getEncryptedData(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;Ljava/security/interfaces/RSAPublicKey;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;Ljavax/crypto/spec/SecretKeySpec;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;->validateData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$validateCardNumber$1;->invoke(Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
