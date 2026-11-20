.class final Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreeDsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->callCompleteSdkFlow(Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;)V
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
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->access$get_result$p(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
