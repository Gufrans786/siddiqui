.class public final Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;
.super Ljava/lang/Object;
.source "FortCallback.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;,
        Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFortCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FortCallback.kt\ncom/payfort/fortpaymentsdk/callbacks/FortCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,29:1\n1#2:30\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;",
        "()V",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "registerCallback",
        "",
        "callback",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;",
        "Callback",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Companion;

.field private static final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;->Companion:Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Companion;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 22
    sget-object v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final registerCallback(ILcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 18
    sget-object v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callback"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
