.class final Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;ZLcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fortPayCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

.field final synthetic $fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->$fortPayCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->$fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->$fortPayCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;->$fortRequest:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->access$handleResult(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Lcom/payfort/fortpaymentsdk/domain/model/Result;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    return-void
.end method
