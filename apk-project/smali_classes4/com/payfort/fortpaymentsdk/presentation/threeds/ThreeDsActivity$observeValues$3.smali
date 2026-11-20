.class final Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreeDsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->observeValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$3;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$3;->invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V
    .locals 1

    .line 69
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$3;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->access$setResultError(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V

    return-void

    .line 70
    :cond_0
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$3;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;->getResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->access$setResultSuccess(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    :cond_1
    return-void
.end method
