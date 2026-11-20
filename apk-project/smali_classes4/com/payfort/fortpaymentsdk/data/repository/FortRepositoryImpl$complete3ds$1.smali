.class final Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$complete3ds$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FortRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->complete3ds(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/gson/JsonObject;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/google/gson/JsonObject;",
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$complete3ds$1;->this$0:Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/gson/JsonObject;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$complete3ds$1;->this$0:Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;

    invoke-static {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->access$convertJsonObjectToSdkResponse(Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;Lcom/google/gson/JsonObject;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$complete3ds$1;->invoke(Lcom/google/gson/JsonObject;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    return-object p1
.end method
