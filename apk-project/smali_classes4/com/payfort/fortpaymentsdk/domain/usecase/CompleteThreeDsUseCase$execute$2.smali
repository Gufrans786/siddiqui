.class final Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase$execute$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CompleteThreeDsUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;)Lio/reactivex/Observable;
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
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
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


# static fields
.field public static final INSTANCE:Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase$execute$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase$execute$2;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase$execute$2;-><init>()V

    sput-object v0, Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase$execute$2;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase$execute$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lcom/payfort/fortpaymentsdk/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    invoke-direct {v0, p1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/CompleteThreeDsUseCase$execute$2;->invoke(Ljava/lang/Throwable;)Lcom/payfort/fortpaymentsdk/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
