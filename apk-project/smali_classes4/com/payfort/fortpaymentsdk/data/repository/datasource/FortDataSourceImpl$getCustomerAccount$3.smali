.class final Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;
.super Lkotlin/jvm/internal/Lambda;
.source "FortDataSourceImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->getCustomerAccount(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
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


# direct methods
.method constructor <init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;->$secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;->$request:Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->access$getAesCipherManager$cp()Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;->$secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, p1, v1}, Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;->decryptMsg(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;->access$getGson$cp()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;->$request:Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->collectResponse(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/util/Map;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$getCustomerAccount$3;->invoke(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    return-object p1
.end method
