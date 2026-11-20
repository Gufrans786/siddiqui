.class final Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ValidateViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $callback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->$fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->$callback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3

    .line 54
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->$context:Landroid/content/Context;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->$fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v0, v1, p1, v2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->convertThrowableToSdkResponse(Landroid/content/Context;Ljava/lang/Throwable;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->$callback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;->$fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "fortRequest.requestMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object p1

    const-string v2, "sdkResponse.responseMap"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;->onFailure(Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
